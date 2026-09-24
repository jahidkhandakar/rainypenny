import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/cycle_summary.dart';
import '../../domain/entities/financial_health.dart';
import '../../domain/entities/insight.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/period_summary.dart';
import '../../domain/entities/salary_cycle.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/services/balance_calculator.dart';
import '../../domain/services/cycle_calculator.dart';
import '../../domain/services/health_calculator.dart';
import '../../domain/services/insight_engine.dart';

/// The reporting windows offered by the period switcher.
///
/// [cycle] carries no day count of its own: a salary cycle is 28 to 31 days
/// depending on the month, and it is resolved from the user's payday rather
/// than from a fixed number here. Labels are localised at the point of use.
enum ReportRange {
  week(7),
  month(30),
  cycle(0),
  quarter(90);

  const ReportRange(this.days);

  final int days;
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
    return DateRange(start.subtract(length), start.subtract(const Duration(seconds: 1)));
  }

  int get days => end.difference(start).inDays + 1;

  /// Whether [date] falls within this date range.
  bool contains(DateTime date) {
    if (date.isBefore(start)) return false;
    if (date.isAfter(end)) {
      // Handles precision when end is set to 23:59:59 but date has milliseconds
      return date.year == end.year && date.month == end.month && date.day == end.day;
    }
    return true;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is DateRange && other.start == start && other.end == end);

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

final reportRangeProvider = NotifierProvider<ReportRangeNotifier, ReportRange>(
  ReportRangeNotifier.new,
);

/// The period tab options shown in the dashboard filter.
enum DashboardPeriodTab { today, sevenDays, thirtyDays, cycle, custom }

class DashboardTabNotifier extends Notifier<DashboardPeriodTab> {
  @override
  DashboardPeriodTab build() => DashboardPeriodTab.cycle;

  void select(DashboardPeriodTab tab) => state = tab;
}

final dashboardTabProvider = NotifierProvider<DashboardTabNotifier, DashboardPeriodTab>(
  DashboardTabNotifier.new,
);

/// Holds custom date range chosen by user for dashboard.
class DashboardCustomRangeNotifier extends Notifier<DateRange?> {
  @override
  DateRange? build() => null;

  void select(DateTime start, DateTime end) {
    final from = start.isAfter(end) ? end : start;
    final to = start.isAfter(end) ? start : end;
    state = DateRange(
      DateTime(from.year, from.month, from.day),
      DateTime(to.year, to.month, to.day, 23, 59, 59),
    );
  }

  void clear() => state = null;
}

final dashboardCustomRangeProvider = NotifierProvider<DashboardCustomRangeNotifier, DateRange?>(
  DashboardCustomRangeNotifier.new,
);

/// Passes selected range based on current tab selection or custom picker.
final dashboardRangeProvider = Provider<DateRange>((ref) {
  final tab = ref.watch(dashboardTabProvider);

  switch (tab) {
    case DashboardPeriodTab.today:
      return DateRange.trailing(1);
    case DashboardPeriodTab.sevenDays:
      return DateRange.trailing(7);
    case DashboardPeriodTab.thirtyDays:
      return DateRange.trailing(30);
    case DashboardPeriodTab.cycle:
      // Maps 30D directly to the active Salary Cycle range
      return ref.watch(selectedCycleRangeProvider);
    case DashboardPeriodTab.custom:
      final custom = ref.watch(dashboardCustomRangeProvider);
      return custom ?? ref.watch(selectedCycleRangeProvider);
  }
});

// -----------------------------------------------------------------------------
// Salary cycles
//
// The app's primary period. Everything the home screen shows is scoped to one
// of these rather than to a rolling 30-day window, so the figures match how
// someone paid monthly actually thinks about their money.
// -----------------------------------------------------------------------------

/// How many cycles away from the current one the user is looking.
///
/// Zero is this month, -1 last month, +1 next. Held as an offset rather than an
/// absolute cycle so it stays correct when the clock rolls past a payday while
/// the app is open — the current cycle moves, and the view moves with it.
class CycleOffsetNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void select(int offset) => state = offset;

  void previous() => state = state - 1;

  void next() => state = state + 1;

  /// Back to the live cycle.
  void reset() => state = 0;
}

final cycleOffsetProvider = NotifierProvider<CycleOffsetNotifier, int>(CycleOffsetNotifier.new);

/// The cycle containing today, for the user's configured payday.
final currentCycleProvider = Provider<SalaryCycle>((ref) {
  return SalaryCycle.current(ref.watch(paydayProvider));
});

/// The cycle currently being viewed, once navigation is taken into account.
final selectedCycleProvider = Provider<SalaryCycle>((ref) {
  return ref.watch(currentCycleProvider).shifted(ref.watch(cycleOffsetProvider));
});

/// The selected cycle expressed as a date range, for anything still working in
/// ranges rather than cycles.
final selectedCycleRangeProvider = Provider<DateRange>((ref) {
  final cycle = ref.watch(selectedCycleProvider);
  return DateRange(cycle.start, cycle.end);
});

/// Salary in, spending out, what is left and what rolled over.
final cycleSummaryProvider = FutureProvider<CycleSummary>((ref) async {
  final transactions = await ref.watch(transactionsProvider.future);
  return CycleCalculator.evaluate(
    transactions: transactions,
    cycle: ref.watch(selectedCycleProvider),
  );
});

/// The largest credit in the selected cycle — what the home screen calls the
/// monthly salary.
final cycleSalaryProvider = FutureProvider<double>((ref) async {
  final transactions = await ref.watch(transactionsProvider.future);
  return CycleCalculator.salaryIn(transactions, ref.watch(selectedCycleProvider));
});

/// Every cycle the ledger actually covers, newest first — the month picker's
/// list.
final availableCyclesProvider = FutureProvider<List<SalaryCycle>>((ref) async {
  final transactions = await ref.watch(transactionsProvider.future);
  return CycleCalculator.cyclesCovering(transactions, ref.watch(paydayProvider));
});

/// Days in the selected cycle with nothing recorded against them, up to today.
final quietDaysProvider = FutureProvider<List<DateTime>>((ref) async {
  final transactions = await ref.watch(transactionsProvider.future);
  return CycleCalculator.daysWithoutExpenses(
    transactions,
    ref.watch(selectedCycleProvider),
    DateTime.now(),
  );
});

/// The Reports window: either one of the preset trailing ranges, the salary
/// cycle, or an exact pair of dates the user picked themselves.
final reportDateRangeProvider = Provider<DateRange>((ref) {
  final custom = ref.watch(customReportRangeProvider);
  if (custom != null) return custom;

  final range = ref.watch(reportRangeProvider);
  if (range == ReportRange.cycle) return ref.watch(selectedCycleRangeProvider);
  return DateRange.trailing(range.days);
});

/// An exact period chosen from the Reports date picker. Null while one of the
/// presets is active.
class CustomReportRangeNotifier extends Notifier<DateRange?> {
  @override
  DateRange? build() => null;

  /// Normalises whatever the picker returns into a full-day window, so a range
  /// chosen as 10–19 September includes everything logged on the 19th.
  void select(DateTime start, DateTime end) {
    final from = start.isAfter(end) ? end : start;
    final to = start.isAfter(end) ? start : end;
    state = DateRange(
      DateTime(from.year, from.month, from.day),
      DateTime(to.year, to.month, to.day, 23, 59, 59),
    );
  }

  void clear() => state = null;
}

final customReportRangeProvider = NotifierProvider<CustomReportRangeNotifier, DateRange?>(
  CustomReportRangeNotifier.new,
);

// -----------------------------------------------------------------------------
// Derived aggregates
// -----------------------------------------------------------------------------

/// Builds a [PeriodSummary] for an arbitrary window.
///
/// Every figure, including the balance, is derived from the ledger. It used to
/// read the balance and the comparison figures out of [DemoDataset] constants,
/// which meant the headline number on the home screen never moved when a
/// transaction was added and showed the same seeded amount to every user of a
/// real backend.
final periodSummaryProvider = FutureProvider.family<PeriodSummary, DateRange>((ref, range) async {
  final transactions = await ref.watch(transactionsProvider.future);

  final current = BalanceCalculator.inRange(transactions, range.start, range.end);
  final previousRange = range.previous;
  final previous = BalanceCalculator.inRange(transactions, previousRange.start, previousRange.end);

  return PeriodSummary(
    start: range.start,
    end: range.end,
    income: BalanceCalculator.totalIncome(current),
    expenses: BalanceCalculator.totalExpenses(current),
    // The ledger replayed to the close of each window: the only definition of
    // a balance that an added transaction is guaranteed to move.
    balance: BalanceCalculator.balanceAt(transactions, range.end),
    previousIncome: BalanceCalculator.totalIncome(previous),
    previousExpenses: BalanceCalculator.totalExpenses(previous),
    previousBalance: BalanceCalculator.balanceAt(transactions, previousRange.end),
    spendingByCategory: BalanceCalculator.spendingByCategory(current),
    previousSpendingByCategory: BalanceCalculator.spendingByCategory(previous),
  );
});

final dashboardSummaryProvider = FutureProvider<PeriodSummary>((ref) {
  return ref.watch(periodSummaryProvider(ref.watch(dashboardRangeProvider)).future);
});

/// Budgets joined against the spend for the salary cycle being viewed.
///
/// Scoped to the cycle rather than a trailing window: a monthly budget that
/// resets on payday is the only kind that makes sense to someone paid monthly,
/// and it means stepping back a month shows that month's budget performance.
final budgetsProvider = FutureProvider<List<Budget>>((ref) async {
  final summary = await ref.watch(cycleSummaryProvider.future);
  return ref
      .watch(budgetRepositoryProvider)
      .getBudgets(CycleCalculator.spendByCategoryId(summary.spendingByCategory));
});

final financialHealthProvider = FutureProvider<FinancialHealth>((ref) async {
  final summary = await ref.watch(dashboardSummaryProvider.future);
  final budgets = await ref.watch(budgetsProvider.future);
  final loans = await ref.watch(loansProvider.future);
  return HealthCalculator.evaluate(summary: summary, budgets: budgets, loans: loans);
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
