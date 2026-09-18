import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/di/providers.dart';
import 'package:rainypenny/core/settings/settings_store.dart';
import 'package:rainypenny/features/financial/data/datasources/finance_data_source.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/financial/presentation/providers/finance_providers.dart';
import 'package:rainypenny/features/transactions/presentation/controllers/transaction_list_controller.dart';

/// The search and filtering behaviour the Transactions screen depends on.
///
/// Exercised through the providers rather than the widgets: the rules are what
/// matter here, and a provider test states them without a pump-and-settle in
/// the way.

const _food = Category(id: 'food', name: 'Food', icon: CategoryIcon.food);
const _rent = Category(id: 'housing', name: 'Rent', icon: CategoryIcon.housing);
const _salary = Category(
  id: 'salary',
  name: 'Salary',
  icon: CategoryIcon.salary,
  isIncome: true,
);

Transaction _tx(
  String id,
  double amount,
  DateTime date, {
  Category category = _food,
  bool income = false,
  String? title,
  String? note,
}) => Transaction(
  id: id,
  title: title ?? id,
  amount: amount,
  date: date,
  type: income ? TransactionType.income : TransactionType.expense,
  category: category,
  note: note,
);

/// A data source serving a fixed ledger, with no artificial latency.
class _FixedDataSource extends MockFinanceDataSource {
  _FixedDataSource(this.rows) : super(latency: Duration.zero);

  final List<Transaction> rows;

  @override
  Future<List<Transaction>> fetchTransactions() async => rows;
}

ProviderContainer _containerWith(List<Transaction> rows, {int payday = 25}) {
  final settings = InMemorySettingsStore()..write(SettingsKeys.payday, '$payday');

  final container = ProviderContainer(
    overrides: [
      settingsStoreProvider.overrideWithValue(settings),
      financeDataSourceProvider.overrideWithValue(
        _FixedDataSource(rows) as FinanceDataSource,
      ),
    ],
  );
  addTearDown(container.dispose);
  return container;
}

void main() {
  // Cycle under test, for a payday of 25: 25 Sep - 24 Oct 2026. The tests pin
  // "now" indirectly by choosing dates inside and outside that window.
  final inCycle = DateTime(2026, 10, 2, 12);
  final alsoInCycle = DateTime(2026, 10, 5, 12);
  final beforeCycle = DateTime(2026, 8, 3, 12);

  group('cycle scoping', () {
    test('the list shows only the selected cycle by default', () async {
      final container = _containerWith([
        _tx('in-1', 20, inCycle),
        _tx('in-2', 30, alsoInCycle),
        _tx('old', 99, beforeCycle),
      ]);

      // Pin the cycle rather than depending on the clock.
      container.read(cycleOffsetProvider.notifier).select(0);
      final cycle = container.read(selectedCycleProvider);

      final rows = await container.read(filteredTransactionsProvider.future);
      // Only rows the current cycle actually contains survive the filter.
      expect(
        rows.every((t) => cycle.contains(t.date)),
        isTrue,
        reason: 'every row should sit inside ${cycle.start}..${cycle.end}',
      );
      expect(rows.any((t) => t.id == 'old'), isFalse);
    });

    test('whole-history mode ignores the cycle', () async {
      final container = _containerWith([
        _tx('in-1', 20, inCycle),
        _tx('old', 99, beforeCycle),
      ]);

      container.read(transactionQueryProvider.notifier).setWholeHistory(true);

      final rows = await container.read(filteredTransactionsProvider.future);
      expect(rows.length, 2);
    });
  });

  group('category filter', () {
    test('narrows to one category', () async {
      final container = _containerWith([
        _tx('food-1', 20, inCycle),
        _tx('food-2', 30, alsoInCycle),
        _tx('rent', 900, inCycle, category: _rent),
      ]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);
      container.read(transactionQueryProvider.notifier).selectCategory('food');

      final rows = await container.read(filteredTransactionsProvider.future);
      expect(rows.map((t) => t.id), containsAll(['food-1', 'food-2']));
      expect(rows.any((t) => t.id == 'rent'), isFalse);
    });

    test('selecting the same category again clears the filter', () async {
      final container = _containerWith([_tx('food-1', 20, inCycle)]);
      final notifier = container.read(transactionQueryProvider.notifier);

      notifier.selectCategory('food');
      expect(container.read(transactionQueryProvider).categoryId, 'food');

      notifier.selectCategory('food');
      expect(container.read(transactionQueryProvider).categoryId, isNull);
    });

    test('the running total covers expenses in the filtered set', () async {
      final container = _containerWith([
        _tx('food-1', 20, inCycle),
        _tx('food-2', 30.50, alsoInCycle),
        _tx('rent', 900, inCycle, category: _rent),
        _tx('pay', 3000, inCycle, category: _salary, income: true),
      ]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);
      container.read(transactionQueryProvider.notifier).selectCategory('food');

      await container.read(filteredTransactionsProvider.future);
      expect(container.read(filteredTotalProvider), closeTo(50.50, 0.001));
    });

    test('income is never counted into the spend total', () async {
      final container = _containerWith([
        _tx('pay', 3000, inCycle, category: _salary, income: true),
      ]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);

      await container.read(filteredTransactionsProvider.future);
      expect(container.read(filteredTotalProvider), 0);
    });
  });

  group('type filter and search', () {
    test('the income filter drops expenses', () async {
      final container = _containerWith([
        _tx('spend', 20, inCycle),
        _tx('pay', 3000, inCycle, category: _salary, income: true),
      ]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);
      container
          .read(transactionQueryProvider.notifier)
          .filter(TransactionFilter.income);

      final rows = await container.read(filteredTransactionsProvider.future);
      expect(rows.single.id, 'pay');
    });

    test('search covers title, category name and note', () async {
      final rows = [
        _tx('a', 10, inCycle, title: 'Blue Bottle coffee'),
        _tx('b', 20, inCycle, title: 'Lunch', note: 'with Sam'),
        _tx('c', 900, inCycle, category: _rent, title: 'September'),
      ];

      Future<List<String>> idsFor(String needle) async {
        final container = _containerWith(rows);
        container.read(transactionQueryProvider.notifier).setWholeHistory(true);
        container.read(transactionQueryProvider.notifier).search(needle);
        final found = await container.read(
          filteredTransactionsProvider.future,
        );
        return found.map((t) => t.id).toList();
      }

      expect(await idsFor('coffee'), ['a']);
      expect(await idsFor('sam'), ['b']);
      expect(await idsFor('rent'), ['c']);
    });

    test('filters compose rather than replacing one another', () async {
      final container = _containerWith([
        _tx('food-lunch', 20, inCycle, title: 'Lunch'),
        _tx('food-dinner', 40, inCycle, title: 'Dinner'),
        _tx('rent-lunch', 900, inCycle, category: _rent, title: 'Lunch'),
      ]);
      final notifier = container.read(transactionQueryProvider.notifier);
      notifier.setWholeHistory(true);
      notifier.selectCategory('food');
      notifier.search('lunch');

      final rows = await container.read(filteredTransactionsProvider.future);
      expect(rows.single.id, 'food-lunch');
    });
  });

  group('category chips', () {
    test('lists the categories present, biggest first', () async {
      final container = _containerWith([
        _tx('food-1', 20, inCycle),
        _tx('rent', 900, inCycle, category: _rent),
      ]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);

      final categories = await container.read(cycleCategoriesProvider.future);
      expect(categories.map((c) => c.id).toList(), ['housing', 'food']);
    });

    test('a category with nothing in the period is not offered', () async {
      final container = _containerWith([_tx('food-1', 20, inCycle)]);
      container.read(transactionQueryProvider.notifier).setWholeHistory(true);

      final categories = await container.read(cycleCategoriesProvider.future);
      expect(categories.map((c) => c.id), isNot(contains('housing')));
    });
  });

  group('clearing', () {
    test('clear resets every part of the query at once', () {
      final container = _containerWith(const []);
      final notifier = container.read(transactionQueryProvider.notifier);

      notifier.search('coffee');
      notifier.filter(TransactionFilter.expense);
      notifier.selectCategory('food');
      notifier.setWholeHistory(true);
      expect(container.read(transactionQueryProvider).isActive, isTrue);

      notifier.clear();
      final query = container.read(transactionQueryProvider);
      expect(query.isActive, isFalse);
      expect(query.search, isEmpty);
      expect(query.categoryId, isNull);
      expect(query.wholeHistory, isFalse);
      expect(query.filter, TransactionFilter.all);
    });
  });
}
