import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../financial/domain/entities/transaction.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

enum TransactionFilter { all, income, expense }

/// Search text and type filter for the Transactions screen.
class TransactionQuery {
  const TransactionQuery({this.search = '', this.filter = TransactionFilter.all});

  final String search;
  final TransactionFilter filter;

  TransactionQuery copyWith({String? search, TransactionFilter? filter}) =>
      TransactionQuery(
        search: search ?? this.search,
        filter: filter ?? this.filter,
      );

  bool get isActive => search.isNotEmpty || filter != TransactionFilter.all;
}

class TransactionQueryNotifier extends Notifier<TransactionQuery> {
  @override
  TransactionQuery build() => const TransactionQuery();

  void search(String value) => state = state.copyWith(search: value);

  void filter(TransactionFilter filter) => state = state.copyWith(filter: filter);

  void clear() => state = const TransactionQuery();
}

final transactionQueryProvider =
    NotifierProvider<TransactionQueryNotifier, TransactionQuery>(
  TransactionQueryNotifier.new,
);

/// A day's worth of transactions, with the day's net movement.
class TransactionGroup {
  const TransactionGroup({required this.date, required this.transactions});

  final DateTime date;
  final List<Transaction> transactions;

  double get net =>
      transactions.fold(0.0, (sum, t) => sum + t.signedAmount);
}

/// The ledger, filtered by the active query and grouped by day.
final groupedTransactionsProvider =
    FutureProvider<List<TransactionGroup>>((ref) async {
  final all = await ref.watch(transactionsProvider.future);
  final query = ref.watch(transactionQueryProvider);
  final needle = query.search.trim().toLowerCase();

  final filtered = all.where((t) {
    final matchesFilter = switch (query.filter) {
      TransactionFilter.all => true,
      TransactionFilter.income => t.isIncome,
      TransactionFilter.expense => !t.isIncome,
    };
    if (!matchesFilter) return false;
    if (needle.isEmpty) return true;
    return t.title.toLowerCase().contains(needle) ||
        t.category.name.toLowerCase().contains(needle) ||
        (t.note?.toLowerCase().contains(needle) ?? false);
  }).toList();

  final byDay = <DateTime, List<Transaction>>{};
  for (final t in filtered) {
    final key = DateTime(t.date.year, t.date.month, t.date.day);
    byDay.putIfAbsent(key, () => []).add(t);
  }

  final groups = byDay.entries
      .map((e) => TransactionGroup(date: e.key, transactions: e.value))
      .toList()
    ..sort((a, b) => b.date.compareTo(a.date));

  return groups;
});

/// Count of rows matching the current query, for the results summary line.
final filteredTransactionCountProvider = Provider<int>((ref) {
  return ref.watch(groupedTransactionsProvider).maybeWhen(
        data: (groups) =>
            groups.fold(0, (sum, g) => sum + g.transactions.length),
        orElse: () => 0,
      );
});
