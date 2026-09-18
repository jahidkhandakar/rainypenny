import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
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
///
/// Reads the live category list rather than the bundled demo set, so a category
/// the user created can actually be budgeted for, and a build on a real backend
/// offers what is in the database instead of the hardcoded fourteen.
final unbudgetedCategoriesProvider = FutureProvider<List<Category>>((
  ref,
) async {
  final budgets = await ref.watch(budgetsProvider.future);
  final categories = await ref.watch(categoriesProvider.future);
  final taken = budgets.map((b) => b.category.id).toSet();

  return categories
      .where((category) => !category.isIncome && !taken.contains(category.id))
      .toList();
});
