import 'category.dart';
import 'salary_cycle.dart';

/// One salary cycle's figures, in the order the user thinks about them:
/// what came in, what went out, what is left, and what rolled over.
///
/// Every field is derived from the ledger. Nothing here is stored, so a new
/// transaction cannot leave any of these stale.
class CycleSummary {
  const CycleSummary({
    required this.cycle,
    required this.income,
    required this.expenses,
    required this.carriedForward,
    required this.previousIncome,
    required this.previousExpenses,
    required this.spendingByCategory,
    required this.previousSpendingByCategory,
    this.transactionCount = 0,
  });

  final SalaryCycle cycle;

  /// Everything credited during the cycle.
  final double income;

  /// Everything debited during the cycle.
  final double expenses;

  /// The net of every transaction logged before this cycle opened — an
  /// underspent month arriving as a head start on the next one.
  final double carriedForward;

  final double previousIncome;
  final double previousExpenses;

  final Map<Category, double> spendingByCategory;
  final Map<Category, double> previousSpendingByCategory;

  final int transactionCount;

  /// What is actually left to spend: the headline figure on the home screen.
  ///
  /// This is the whole ledger replayed up to the end of the cycle, so adding an
  /// expense always moves it and it can never disagree with the transaction
  /// list underneath it.
  double get remaining => carriedForward + income - expenses;

  /// What the cycle itself produced, ignoring anything carried in.
  double get net => income - expenses;

  /// Share of this cycle's income already spent, uncapped so an overspend
  /// reads above 100%.
  double get spentRatio => income <= 0 ? 0 : expenses / income;

  /// Clamped for progress bars.
  double get spentProgress => spentRatio.clamp(0.0, 1.0);

  int get percentSpent => (spentRatio * 100).round();

  /// True once spending has outrun everything available this cycle.
  bool get isOverspent => remaining < 0;

  double get savingsRate => income <= 0 ? 0 : (income - expenses) / income;

  /// Safe daily spend for the rest of the cycle: what is left, spread across
  /// the days still to come.
  double dailyAllowanceAt(DateTime now) {
    final days = cycle.daysRemainingAt(now);
    if (remaining <= 0) return 0;
    return remaining / (days <= 0 ? 1 : days + 1);
  }

  /// Average spend per day so far, for comparison against the allowance.
  double burnRateAt(DateTime now) {
    final elapsed = cycle.daysRemainingAt(now);
    final used = (cycle.lengthInDays - elapsed).clamp(1, cycle.lengthInDays);
    return expenses / used;
  }

  double get incomeChange => _change(income, previousIncome);
  double get expenseChange => _change(expenses, previousExpenses);

  static double _change(double current, double previous) {
    if (previous == 0) return 0;
    return (current - previous) / previous;
  }
}
