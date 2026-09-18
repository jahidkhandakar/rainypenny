import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/di/providers.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/financial/presentation/providers/finance_providers.dart';
import 'package:rainypenny/features/transactions/presentation/controllers/add_transaction_controller.dart';

/// A source whose category list resolves only when the test says so, standing
/// in for the real gap between opening the form and the categories arriving.
class _SlowCategories extends MockFinanceDataSource {
  _SlowCategories() : super(latency: Duration.zero);

  final _gate = Completer<List<Category>>();

  void release(List<Category> categories) => _gate.complete(categories);

  @override
  Future<List<Category>> fetchCategories() => _gate.future;
}

ProviderContainer _container(_SlowCategories source) {
  final container = ProviderContainer(
    overrides: [financeDataSourceProvider.overrideWithValue(source)],
  );
  addTearDown(container.dispose);
  return container;
}

void main() {
  group('the default category', () {
    test('opens on a placeholder before the list arrives', () {
      final container = _container(_SlowCategories());
      final draft = container.read(addTransactionControllerProvider);

      expect(draft.category.id, 'other');
      expect(draft.categoryChosen, isFalse);
    });

    test('is replaced once the real list lands', () async {
      final source = _SlowCategories();
      final container = _container(source);

      // Open the form, then subscribe, then let the categories through.
      container.read(addTransactionControllerProvider);
      container.listen(categoriesProvider, (_, _) {});
      source.release(const [
        Category(id: 'food', name: 'Food', icon: CategoryIcon.food),
        Category(id: 'housing', name: 'Rent', icon: CategoryIcon.housing),
      ]);
      await container.read(categoriesProvider.future);
      await Future<void>.delayed(Duration.zero);

      expect(
        container.read(addTransactionControllerProvider).category.id,
        'food',
      );
    });

    test('does not overwrite a category the user already picked', () async {
      final source = _SlowCategories();
      final container = _container(source);
      final notifier = container.read(
        addTransactionControllerProvider.notifier,
      );

      notifier.setCategory(
        const Category(id: 'travel', name: 'Travel', icon: CategoryIcon.travel),
      );

      container.listen(categoriesProvider, (_, _) {});
      source.release(const [
        Category(id: 'food', name: 'Food', icon: CategoryIcon.food),
      ]);
      await container.read(categoriesProvider.future);
      await Future<void>.delayed(Duration.zero);

      expect(
        container.read(addTransactionControllerProvider).category.id,
        'travel',
      );
    });

    test('does not overwrite the category of a row being edited', () async {
      final source = _SlowCategories();
      final container = _container(source);

      container
          .read(addTransactionControllerProvider.notifier)
          .startEdit(
            Transaction(
              id: 'tx-1',
              title: 'Flight',
              amount: 200,
              date: DateTime(2026, 9, 10),
              type: TransactionType.expense,
              category: const Category(
                id: 'travel',
                name: 'Travel',
                icon: CategoryIcon.travel,
              ),
            ),
          );

      container.listen(categoriesProvider, (_, _) {});
      source.release(const [
        Category(id: 'food', name: 'Food', icon: CategoryIcon.food),
      ]);
      await container.read(categoriesProvider.future);
      await Future<void>.delayed(Duration.zero);

      final draft = container.read(addTransactionControllerProvider);
      expect(draft.category.id, 'travel');
      expect(draft.isEditing, isTrue);
    });

    test('switching direction clears the chosen flag', () {
      final container = _container(_SlowCategories());
      final notifier = container.read(
        addTransactionControllerProvider.notifier,
      );

      notifier.setCategory(
        const Category(id: 'travel', name: 'Travel', icon: CategoryIcon.travel),
      );
      expect(
        container.read(addTransactionControllerProvider).categoryChosen,
        isTrue,
      );

      notifier.setType(TransactionType.income);
      final draft = container.read(addTransactionControllerProvider);
      expect(draft.categoryChosen, isFalse);
      expect(draft.category.isIncome, isTrue);
    });
  });
}
