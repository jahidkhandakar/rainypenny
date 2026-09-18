import '../entities/category.dart';
import '../entities/cycle_summary.dart';
import '../entities/salary_cycle.dart';
import '../entities/transaction.dart';
import 'balance_calculator.dart';

/// Builds the salary-cycle picture from the ledger.
///
/// Everything here is derived. There is no stored balance anywhere in the app:
/// the remaining figure is the ledger replayed from the beginning, which is
/// the only way an added expense can be guaranteed to move it.
abstract final class CycleCalculator {
  static CycleSummary evaluate({
    required List<Transaction> transactions,
    required SalaryCycle cycle,
    SalaryCycle? previousCycle,
  }) {
    final inCycle = BalanceCalculator.inRange(
      transactions,
      cycle.start,
      cycle.end,
    ).toList();

    // Everything logged before this cycle opened. This is what makes an
    // underspent month visibly roll into the next one instead of vanishing.
    final carriedForward = transactions
        .where((t) => t.date.isBefore(cycle.start))
        .fold(0.0, (sum, t) => sum + t.signedAmount);

    final previous = previousCycle ?? cycle.previous;
    final inPrevious = BalanceCalculator.inRange(
      transactions,
      previous.start,
      previous.end,
    ).toList();

    return CycleSummary(
      cycle: cycle,
      income: BalanceCalculator.totalIncome(inCycle),
      expenses: BalanceCalculator.totalExpenses(inCycle),
      carriedForward: carriedForward,
      previousIncome: BalanceCalculator.totalIncome(inPrevious),
      previousExpenses: BalanceCalculator.totalExpenses(inPrevious),
      spendingByCategory: BalanceCalculator.spendingByCategory(inCycle),
      previousSpendingByCategory: BalanceCalculator.spendingByCategory(
        inPrevious,
      ),
      transactionCount: inCycle.length,
    );
  }

  /// The single largest income in the cycle — what the app calls the salary.
  ///
  /// Inferred rather than configured: asking someone to declare their salary
  /// and then also log it would mean two numbers that can disagree. The biggest
  /// credit in the cycle is the salary in every realistic ledger, and when it is
  /// not, total income is still shown alongside it.
  static double salaryIn(List<Transaction> transactions, SalaryCycle cycle) {
    final credits = BalanceCalculator.inRange(
      transactions,
      cycle.start,
      cycle.end,
    ).where((t) => t.isIncome);

    if (credits.isEmpty) return 0;
    return credits.map((t) => t.amount).reduce((a, b) => a > b ? a : b);
  }

  /// Days in the cycle with no expense recorded, up to [now].
  ///
  /// Drives both the calendar's quiet-day marking and the nudge that asks
  /// whether yesterday really had no spending or simply went unlogged.
  static List<DateTime> daysWithoutExpenses(
    List<Transaction> transactions,
    SalaryCycle cycle,
    DateTime now,
  ) {
    final spent = <DateTime>{};
    for (final t in transactions.where((t) => !t.isIncome)) {
      if (!cycle.contains(t.date)) continue;
      spent.add(DateTime(t.date.year, t.date.month, t.date.day));
    }

    final today = DateTime(now.year, now.month, now.day);
    final result = <DateTime>[];
    var cursor = DateTime(cycle.start.year, cycle.start.month, cycle.start.day);

    while (!cursor.isAfter(today) && !cursor.isAfter(cycle.end)) {
      if (!spent.contains(cursor)) result.add(cursor);
      cursor = cursor.add(const Duration(days: 1));
    }
    return result;
  }

  /// Per-category spend in the cycle, for the category filter's running total.
  static double spentOnCategory(
    List<Transaction> transactions,
    SalaryCycle cycle,
    String categoryId,
  ) {
    return BalanceCalculator.inRange(transactions, cycle.start, cycle.end)
        .where((t) => !t.isIncome && t.category.id == categoryId)
        .fold(0.0, (sum, t) => sum + t.amount);
  }

  /// The cycles a ledger actually covers, newest first, always including the
  /// current one so a brand-new account still has a month to look at.
  static List<SalaryCycle> cyclesCovering(
    List<Transaction> transactions,
    int payday, {
    DateTime? now,
  }) {
    final today = now ?? DateTime.now();
    final current = SalaryCycle.current(payday, now: today);
    if (transactions.isEmpty) return [current];

    final earliest = transactions
        .map((t) => t.date)
        .reduce((a, b) => a.isBefore(b) ? a : b);

    final cycles = <SalaryCycle>[];
    var cursor = current;
    while (!cursor.end.isBefore(earliest) && cycles.length < 120) {
      cycles.add(cursor);
      cursor = cursor.previous;
    }
    return cycles;
  }

  /// Category totals as a plain id-keyed map, which is what the budget layer
  /// joins its limits against.
  static Map<String, double> spendByCategoryId(
    Map<Category, double> spending,
  ) {
    return {for (final entry in spending.entries) entry.key.id: entry.value};
  }
}
