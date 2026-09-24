import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

enum TransactionFilter { all, income, expense }

/// Search text, type filter and category filter for the Transactions screen.
class TransactionQuery {
  const TransactionQuery({
    this.search = '',
    this.filter = TransactionFilter.all,
    this.categoryId,
    this.wholeHistory = false,
  });

  final String search;
  final TransactionFilter filter;

  /// Null means every category.
  final String? categoryId;

  /// Whether to ignore the salary cycle and search the entire ledger.
  ///
  /// The list is scoped to the selected cycle by default, because that is the
  /// period the rest of the app reasons in. Looking further back is a
  /// deliberate act, so it is a deliberate toggle.
  final bool wholeHistory;

  TransactionQuery copyWith({
    String? search,
    TransactionFilter? filter,
    String? categoryId,
    bool clearCategory = false,
    bool? wholeHistory,
  }) => TransactionQuery(
    search: search ?? this.search,
    filter: filter ?? this.filter,
    categoryId: clearCategory ? null : (categoryId ?? this.categoryId),
    wholeHistory: wholeHistory ?? this.wholeHistory,
  );

  bool get isActive =>
      search.isNotEmpty || filter != TransactionFilter.all || categoryId != null || wholeHistory;
}

class TransactionQueryNotifier extends Notifier<TransactionQuery> {
  @override
  TransactionQuery build() => const TransactionQuery();

  void search(String value) => state = state.copyWith(search: value);

  void filter(TransactionFilter filter) => state = state.copyWith(filter: filter);

  /// Passing null, or the category already selected, clears the filter — so the
  /// same chip both applies and removes it.
  void selectCategory(String? categoryId) {
    if (categoryId == null || categoryId == state.categoryId) {
      state = state.copyWith(clearCategory: true);
      return;
    }
    state = state.copyWith(categoryId: categoryId);
  }

  void setWholeHistory(bool value) => state = state.copyWith(wholeHistory: value);

  void clear() => state = const TransactionQuery();
}

final transactionQueryProvider = NotifierProvider<TransactionQueryNotifier, TransactionQuery>(
  TransactionQueryNotifier.new,
);

/// A day's worth of transactions, with the day's net movement.
class TransactionGroup {
  const TransactionGroup({required this.date, required this.transactions});

  final DateTime date;
  final List<Transaction> transactions;

  double get net => transactions.fold(0.0, (sum, t) => sum + t.signedAmount);
}

/// The rows matching the current query, before grouping.
///
/// Split out from the grouping so the totals line and the category chips can
/// read the same filtered set rather than recomputing it with slightly
/// different rules.
final filteredTransactionsProvider = FutureProvider<List<Transaction>>((ref) async {
  final all = await ref.watch(transactionsProvider.future);
  final query = ref.watch(transactionQueryProvider);
  // Synchronized with the dashboard's active period (cycle, today, 7D, 30D, custom)
  final dateRange = ref.watch(dashboardRangeProvider);
  final needle = query.search.trim().toLowerCase();

  return all.where((t) {
    if (!query.wholeHistory && !dateRange.contains(t.date)) return false;

    final matchesFilter = switch (query.filter) {
      TransactionFilter.all => true,
      TransactionFilter.income => t.isIncome,
      TransactionFilter.expense => !t.isIncome,
    };
    if (!matchesFilter) return false;

    if (query.categoryId != null && t.category.id != query.categoryId) {
      return false;
    }

    if (needle.isEmpty) return true;
    return t.title.toLowerCase().contains(needle) ||
        t.category.name.toLowerCase().contains(needle) ||
        (t.note?.toLowerCase().contains(needle) ?? false);
  }).toList();
});

/// The filtered ledger, grouped by day.
final groupedTransactionsProvider = FutureProvider<List<TransactionGroup>>((ref) async {
  final filtered = await ref.watch(filteredTransactionsProvider.future);

  final byDay = <DateTime, List<Transaction>>{};
  for (final t in filtered) {
    final key = DateTime(t.date.year, t.date.month, t.date.day);
    byDay.putIfAbsent(key, () => []).add(t);
  }

  return byDay.entries.map((e) => TransactionGroup(date: e.key, transactions: e.value)).toList()
    ..sort((a, b) => b.date.compareTo(a.date));
});

/// Count of rows matching the current query, for the results summary line.
final filteredTransactionCountProvider = Provider<int>((ref) {
  return ref
      .watch(filteredTransactionsProvider)
      .maybeWhen(data: (list) => list.length, orElse: () => 0);
});

/// What the current filter adds up to — the figure the client asked to see
/// beside a category filter, and the one a filtered list is useless without.
final filteredTotalProvider = Provider<double>((ref) {
  final query = ref.watch(transactionQueryProvider);
  return ref
      .watch(filteredTransactionsProvider)
      .maybeWhen(
        data: (list) {
          if (query.filter == TransactionFilter.income) {
            return list.where((t) => t.isIncome).fold(0.0, (sum, t) => sum + t.amount);
          }
          return list.where((t) => !t.isIncome).fold(0.0, (sum, t) => sum + t.amount);
        },
        orElse: () => 0.0,
      );
});

/// The categories actually present in the cycle being viewed, ordered by spend.
///
/// Offering every category that exists would bury the five someone uses under
/// thirty they do not; offering the ones with rows in this period keeps the
/// chip row short and relevant.
final cycleCategoriesProvider = FutureProvider<List<Category>>((ref) async {
  final all = await ref.watch(transactionsProvider.future);
  final query = ref.watch(transactionQueryProvider);
  final dateRange = ref.watch(dashboardRangeProvider);

  final inScope = all.where((t) => query.wholeHistory || dateRange.contains(t.date));

  final totals = <Category, double>{};
  for (final t in inScope) {
    totals[t.category] = (totals[t.category] ?? 0) + t.amount;
  }

  final sorted = totals.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
  return sorted.map((e) => e.key).toList();
});
