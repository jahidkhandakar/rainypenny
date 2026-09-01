import '../../../financial/domain/entities/budget.dart';

abstract interface class BudgetRepository {
  /// Budgets for the active period, with spend already joined in.
  Future<List<Budget>> getBudgets(Map<String, double> spendByCategoryId);

  Future<void> setLimit(String categoryId, double limit);

  Future<void> deleteBudget(String categoryId);
}
