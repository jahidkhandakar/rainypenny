import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/categories/presentation/controllers/category_controller.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';

MockFinanceDataSource _source() =>
    MockFinanceDataSource(latency: Duration.zero);

void main() {
  group('CategoryController.idFor', () {
    // A seeded generator makes the random token reproducible, so the test can
    // assert on the shape of the id without pinning the token itself.
    Random seeded() => Random(7);

    test('slugifies the name', () {
      final id = CategoryController.idFor(
        'Pet Care & Vet',
        const [],
        random: seeded(),
      );

      expect(id, startsWith('pet-care-vet-'));
      // stem plus a six-character token.
      expect(id.split('-').last, hasLength(6));
    });

    test('two users adding the same name do not collide', () {
      // Each user's client generates its own token, and `categories.id` is a
      // single global primary key — so this is the case that would break an
      // insert if the id were the bare slug.
      final first = CategoryController.idFor(
        'Pet care',
        const [],
        random: Random(1),
      );
      final second = CategoryController.idFor(
        'Pet care',
        const [],
        random: Random(2),
      );

      expect(first, isNot(second));
    });

    test('a name that slugifies to nothing still yields an id', () {
      final id = CategoryController.idFor('!!!', const [], random: seeded());
      expect(id, startsWith('category-'));
    });

    test('a repeat within one account is suffixed', () {
      final existing = [
        Category(
          id: CategoryController.idFor('Pet care', const [], random: seeded()),
          name: 'Pet care',
          icon: CategoryIcon.other,
          isCustom: true,
        ),
      ];

      // The same seed reproduces the same token, which is exactly the clash the
      // numeric suffix exists to resolve.
      final id = CategoryController.idFor(
        'Pet care',
        existing,
        random: seeded(),
      );

      expect(id, '${existing.single.id}-2');
    });
  });

  group('category CRUD', () {
    test('a new category joins the catalogue', () async {
      final source = _source();
      final before = await source.fetchCategories();

      await source.insertCategory(
        const Category(
          id: 'pet-care-abc123',
          name: 'Pet care',
          icon: CategoryIcon.health,
          isCustom: true,
        ),
      );

      final after = await source.fetchCategories();
      expect(after, hasLength(before.length + 1));
      expect(after.any((c) => c.id == 'pet-care-abc123'), isTrue);
    });

    test(
      'renaming a category updates the transactions filed under it',
      () async {
        final source = _source();
        final transactions = await source.fetchTransactions();
        final used = transactions.first.category;

        await source.updateCategory(used.copyWith(name: 'Renamed'));

        final after = await source.fetchTransactions();
        final touched = after.where((t) => t.category.id == used.id);
        expect(touched, isNotEmpty);
        expect(touched.every((t) => t.category.name == 'Renamed'), isTrue);
      },
    );

    test('an unused category can be deleted', () async {
      final source = _source();
      const unused = Category(
        id: 'unused-xyz',
        name: 'Unused',
        icon: CategoryIcon.other,
        isCustom: true,
      );
      await source.insertCategory(unused);

      expect(await source.countCategoryUsage('unused-xyz'), 0);
      await source.deleteCategory('unused-xyz');

      final after = await source.fetchCategories();
      expect(after.any((c) => c.id == 'unused-xyz'), isFalse);
    });

    test('deleting a category still in use is refused', () async {
      final source = _source();
      final transactions = await source.fetchTransactions();
      final inUse = transactions.first.category;

      expect(await source.countCategoryUsage(inUse.id), greaterThan(0));
      expect(
        () => source.deleteCategory(inUse.id),
        throwsA(isA<StateError>()),
        reason: 'a delete must never orphan a transaction',
      );
    });

    test('a budget alone is enough to block a delete', () async {
      final source = _source();
      const category = Category(
        id: 'budgeted-only',
        name: 'Budgeted',
        icon: CategoryIcon.other,
        isCustom: true,
      );
      await source.insertCategory(category);
      await source.upsertBudgetLimit('budgeted-only', 250);

      expect(await source.countCategoryUsage('budgeted-only'), 1);
      expect(
        () => source.deleteCategory('budgeted-only'),
        throwsA(isA<StateError>()),
      );
    });

    test('the seeded set is marked as not custom', () async {
      final source = _source();
      final categories = await source.fetchCategories();

      expect(categories, isNotEmpty);
      expect(categories.every((c) => !c.isCustom), isTrue);
    });
  });

  group('Category', () {
    test('equality is by id, so a rename is still the same category', () {
      const before = Category(
        id: 'food',
        name: 'Food',
        icon: CategoryIcon.food,
      );
      final after = before.copyWith(name: 'Food & Dining');

      expect(after, before);
      expect(after.name, 'Food & Dining');
    });
  });

  group('Transaction', () {
    test('copyWith carries a renamed category through', () {
      final tx = Transaction(
        id: 't1',
        title: 'Lunch',
        amount: 12,
        date: DateTime(2026, 9, 4),
        type: TransactionType.expense,
        category: const Category(
          id: 'food',
          name: 'Food',
          icon: CategoryIcon.food,
        ),
      );

      final renamed = tx.copyWith(
        category: tx.category.copyWith(name: 'Food & Dining'),
      );

      expect(renamed.category.name, 'Food & Dining');
      expect(renamed.amount, 12);
    });
  });
}
