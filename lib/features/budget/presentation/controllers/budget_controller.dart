import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/data/demo_dataset.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Write operations for budgets.
///
/// Every mutation invalidates [budgetsProvider], which recomputes spend from
/// the ledger — so the bars, the warnings and the dashboard preview all move
/// together.
class BudgetController {
  const BudgetController(this._ref);

  final Ref _ref;

  Future<void> setLimit(String categoryId, double limit) async {
    await _ref.read(budgetRepositoryProvider).setLimit(categoryId, limit);
    _ref.invalidate(budgetsProvider);
  }

  Future<void> delete(String categoryId) async {
    await _ref.read(budgetRepositoryProvider).deleteBudget(categoryId);
    _ref.invalidate(budgetsProvider);
  }
}

final budgetControllerProvider = Provider<BudgetController>(
  BudgetController.new,
);

/// Expense categories that do not have a budget yet — the choices offered
/// when adding one.
final unbudgetedCategoriesProvider = FutureProvider<List<Category>>((ref) async {
  final budgets = await ref.watch(budgetsProvider.future);
  final taken = budgets.map((b) => b.category.id).toSet();
  return DemoDataset.expenseCategories
      .where((category) => !taken.contains(category.id))
      .toList();
});
