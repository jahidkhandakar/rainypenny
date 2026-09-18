import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Create, rename and remove the user's own categories.
///
/// Every mutation invalidates the ledger-facing providers as well as the
/// category list: a rename changes how transactions read, and a delete would
/// otherwise leave a stale name on a budget row.
class CategoryController {
  const CategoryController(this._ref);

  final Ref _ref;

  Future<void> add(Category category) async {
    await _ref
        .read(transactionRepositoryProvider)
        .addCategory(category.copyWith(isCustom: true));
    _invalidate();
  }

  Future<void> update(Category category) async {
    await _ref.read(transactionRepositoryProvider).updateCategory(category);
    _invalidate();
  }

  /// Removes a category. Throws when it is still referenced, which the UI turns
  /// into an explanation rather than a silent failure.
  Future<void> delete(String categoryId) async {
    await _ref.read(transactionRepositoryProvider).deleteCategory(categoryId);
    _invalidate();
  }

  Future<int> usageCount(String categoryId) {
    return _ref
        .read(transactionRepositoryProvider)
        .countCategoryUsage(categoryId);
  }

  /// A category id derived from the name, so a Supabase row and a demo row are
  /// addressed the same way.
  ///
  /// `categories.id` is a single global primary key shared with the seeded
  /// rows, so two users both adding "Pet care" would otherwise collide on
  /// `pet-care` and the second insert would fail. A short random token keeps
  /// the id readable in a database console while making that effectively
  /// impossible; the numeric suffix on top of it resolves the — far more
  /// likely — case of one user adding the same name twice.
  static String idFor(
    String name,
    Iterable<Category> existing, {
    Random? random,
  }) {
    final base = name
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
        .replaceAll(RegExp(r'^-+|-+$'), '');
    final stem = base.isEmpty ? 'category' : base;

    final candidate = '$stem-${_token(random ?? Random.secure())}';

    final taken = existing.map((c) => c.id).toSet();
    if (!taken.contains(candidate)) return candidate;

    var suffix = 2;
    while (taken.contains('$candidate-$suffix')) {
      suffix++;
    }
    return '$candidate-$suffix';
  }

  static String _token(Random random) {
    const alphabet = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(
      6,
      (_) => alphabet[random.nextInt(alphabet.length)],
    ).join();
  }

  void _invalidate() {
    _ref.invalidate(categoriesProvider);
    _ref.invalidate(transactionsProvider);
    _ref.invalidate(budgetsProvider);
  }
}

final categoryControllerProvider = Provider<CategoryController>((ref) {
  return CategoryController(ref);
});
