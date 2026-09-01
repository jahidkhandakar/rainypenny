import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../data/demo_dataset.dart';
import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/financial_health.dart';
import '../../domain/entities/insight.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/period_summary.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/services/balance_calculator.dart';
import '../../domain/services/health_calculator.dart';
import '../../domain/services/insight_engine.dart';

/// The reporting windows offered by the period switcher.
enum ReportRange {
  week(7, 'Week'),
  month(30, 'Month'),
  quarter(90, 'Quarter');

  const ReportRange(this.days, this.label);

  final int days;
  final String label;
}

/// A start/end pair, resolved from a [ReportRange] against today.
class DateRange {
  const DateRange(this.start, this.end);

  factory DateRange.trailing(int days) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    return DateRange(
      today.subtract(Duration(days: days - 1)),
      today.add(const Duration(hours: 23, minutes: 59, seconds: 59)),
    );
  }

  final DateTime start;
  final DateTime end;

  DateRange get previous {
    final length = end.difference(start);
    return DateRange(
      start.subtract(length).subtract(const Duration(days: 1)),
      start.subtract(const Duration(seconds: 1)),
    );
  }

  int get days => end.difference(start).inDays + 1;

  // Value equality matters: this type is used as a provider family key.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DateRange && other.start == start && other.end == end);

  @override
  int get hashCode => Object.hash(start, end);
}

// -----------------------------------------------------------------------------
// Raw data
// -----------------------------------------------------------------------------

final transactionsProvider = FutureProvider<List<Transaction>>((ref) {
  return ref.watch(transactionRepositoryProvider).getTransactions();
});

final categoriesProvider = FutureProvider<List<Category>>((ref) {
  return ref.watch(transactionRepositoryProvider).getCategories();
});

final profileProvider = FutureProvider<UserProfile>((ref) {
  return ref.watch(profileRepositoryProvider).getProfile();
});

final savingsGoalsProvider = FutureProvider<List<SavingsGoal>>((ref) {
  return ref.watch(savingsRepositoryProvider).getGoals();
});

final loansProvider = FutureProvider<List<Loan>>((ref) {
  return ref.watch(loanRepositoryProvider).getLoans();
});

// -----------------------------------------------------------------------------
// Period selection
// -----------------------------------------------------------------------------

/// Range driving the Reports screen. The dashboard always reports on 30 days.
class ReportRangeNotifier extends Notifier<ReportRange> {
  @override
  ReportRange build() => ReportRange.month;

  void select(ReportRange range) => state = range;
}

final reportRangeProvider =
    NotifierProvider<ReportRangeNotifier, ReportRange>(ReportRangeNotifier.new);

final dashboardRangeProvider = Provider<DateRange>((ref) {
  return DateRange.trailing(DemoDataset.periodDays);
});

final reportDateRangeProvider = Provider<DateRange>((ref) {
  return DateRange.trailing(ref.watch(reportRangeProvider).days);
});

// -----------------------------------------------------------------------------
// Derived aggregates
// -----------------------------------------------------------------------------

/// Builds a [PeriodSummary] for an arbitrary window.
///
/// For the headline 30-day window the previous-period figures come from the
/// seeded comparison set; for any other window they are computed from the
/// ledger itself.
final periodSummaryProvider =
    FutureProvider.family<PeriodSummary, DateRange>((ref, range) async {
  final transactions = await ref.watch(transactionsProvider.future);

  final current = BalanceCalculator.inRange(transactions, range.start, range.end);
  final previousRange = range.previous;
  final previous = BalanceCalculator.inRange(
    transactions,
    previousRange.start,
    previousRange.end,
  );

  final income = BalanceCalculator.totalIncome(current);
  final expenses = BalanceCalculator.totalExpenses(current);

  final isHeadlineWindow =
      range.end.difference(range.start).inDays + 1 == DemoDataset.periodDays;

  return PeriodSummary(
    start: range.start,
    end: range.end,
    income: income,
    expenses: expenses,
    balance: DemoDataset.totalBalance,
    previousIncome: isHeadlineWindow
        ? DemoDataset.previousIncome
        : BalanceCalculator.totalIncome(previous),
    previousExpenses: isHeadlineWindow
        ? DemoDataset.previousExpenses
        : BalanceCalculator.totalExpenses(previous),
    previousBalance: DemoDataset.previousBalance,
    spendingByCategory: BalanceCalculator.spendingByCategory(current),
    previousSpendingByCategory: isHeadlineWindow
        ? DemoDataset.previousSpendingByCategory
        : BalanceCalculator.spendingByCategory(previous),
  );
});

final dashboardSummaryProvider = FutureProvider<PeriodSummary>((ref) {
  return ref.watch(
    periodSummaryProvider(ref.watch(dashboardRangeProvider)).future,
  );
});

/// Budgets joined against live spend for the headline window.
final budgetsProvider = FutureProvider<List<Budget>>((ref) async {
  final summary = await ref.watch(dashboardSummaryProvider.future);
  final spendByCategoryId = {
    for (final entry in summary.spendingByCategory.entries)
      entry.key.id: entry.value,
  };
  return ref.watch(budgetRepositoryProvider).getBudgets(spendByCategoryId);
});

final financialHealthProvider = FutureProvider<FinancialHealth>((ref) async {
  final summary = await ref.watch(dashboardSummaryProvider.future);
  final budgets = await ref.watch(budgetsProvider.future);
  final loans = await ref.watch(loansProvider.future);
  return HealthCalculator.evaluate(
    summary: summary,
    budgets: budgets,
    loans: loans,
  );
});

final insightsProvider = FutureProvider<List<Insight>>((ref) async {
  final summary = await ref.watch(dashboardSummaryProvider.future);
  final budgets = await ref.watch(budgetsProvider.future);
  final goals = await ref.watch(savingsGoalsProvider.future);
  final loans = await ref.watch(loansProvider.future);

  return InsightEngine.generate(
    summary: summary,
    budgets: budgets,
    goals: goals,
    loans: loans,
    now: DateTime.now(),
  );
});

/// Invalidates every derived provider after a write. Called by the controllers
/// once a mutation lands so the whole app reflects the new ledger.
void refreshFinanceData(Ref ref) {
  ref.invalidate(transactionsProvider);
  ref.invalidate(savingsGoalsProvider);
  ref.invalidate(loansProvider);
}
