import '../entities/budget.dart';
import '../rules/budget_rules.dart';

/// Roll-ups across the whole budget set.
abstract final class BudgetCalculator {
  static double totalLimit(List<Budget> budgets) =>
      budgets.fold(0.0, (sum, b) => sum + b.limit);

  static double totalSpent(List<Budget> budgets) =>
      budgets.fold(0.0, (sum, b) => sum + b.spent);

  static double totalRemaining(List<Budget> budgets) =>
      totalLimit(budgets) - totalSpent(budgets);

  static double overallProgress(List<Budget> budgets) {
    final limit = totalLimit(budgets);
    return limit <= 0 ? 0 : (totalSpent(budgets) / limit).clamp(0.0, 1.0);
  }

  /// Budgets in trouble, worst first. Drives the dashboard warning banner.
  static List<Budget> needingAttention(List<Budget> budgets) {
    return budgets.where(BudgetRules.shouldWarn).toList()
      ..sort((a, b) => b.ratio.compareTo(a.ratio));
  }

  /// The budgets shown in the dashboard preview: most pressing first.
  static List<Budget> preview(List<Budget> budgets, {int count = 3}) {
    final sorted = [...budgets]..sort((a, b) => b.ratio.compareTo(a.ratio));
    return sorted.take(count).toList();
  }
}
