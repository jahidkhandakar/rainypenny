import 'category.dart';

/// Aggregated totals for a reporting window, plus the equivalent figures for
/// the preceding window so the UI can show trend deltas.
class PeriodSummary {
  const PeriodSummary({
    required this.start,
    required this.end,
    required this.income,
    required this.expenses,
    required this.balance,
    required this.previousIncome,
    required this.previousExpenses,
    required this.previousBalance,
    required this.spendingByCategory,
    required this.previousSpendingByCategory,
  });

  final DateTime start;
  final DateTime end;

  final double income;
  final double expenses;

  /// Total balance across all accounts at the end of the period.
  final double balance;

  final double previousIncome;
  final double previousExpenses;
  final double previousBalance;

  final Map<Category, double> spendingByCategory;
  final Map<Category, double> previousSpendingByCategory;

  double get net => income - expenses;

  double get savingsRate => income <= 0 ? 0 : (income - expenses) / income;

  double get incomeChange => _change(income, previousIncome);
  double get expenseChange => _change(expenses, previousExpenses);
  double get balanceChange => _change(balance, previousBalance);

  static double _change(double current, double previous) {
    if (previous == 0) return 0;
    return (current - previous) / previous;
  }
}
