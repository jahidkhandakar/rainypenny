import '../entities/category.dart';
import '../entities/transaction.dart';

/// Pure aggregation over a list of transactions.
///
/// Every figure the dashboard and reports display is derived here, so the mock
/// data and the UI can never drift apart.
abstract final class BalanceCalculator {
  static Iterable<Transaction> inRange(
    List<Transaction> transactions,
    DateTime start,
    DateTime end,
  ) {
    return transactions.where(
      (t) => !t.date.isBefore(start) && !t.date.isAfter(end),
    );
  }

  static double totalIncome(Iterable<Transaction> transactions) =>
      transactions.where((t) => t.isIncome).fold(0.0, (sum, t) => sum + t.amount);

  static double totalExpenses(Iterable<Transaction> transactions) =>
      transactions.where((t) => !t.isIncome).fold(0.0, (sum, t) => sum + t.amount);

  static double net(Iterable<Transaction> transactions) =>
      transactions.fold(0.0, (sum, t) => sum + t.signedAmount);

  /// Expense totals per category, sorted from biggest spend down.
  static Map<Category, double> spendingByCategory(
    Iterable<Transaction> transactions,
  ) {
    final totals = <Category, double>{};
    for (final t in transactions.where((t) => !t.isIncome)) {
      totals[t.category] = (totals[t.category] ?? 0) + t.amount;
    }
    final sorted = totals.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return Map.fromEntries(sorted);
  }

  /// Net movement per day across [start]..[end], with empty days filled in as
  /// zero so charts keep an even x-axis.
  static List<DailyTotal> dailyTotals(
    Iterable<Transaction> transactions,
    DateTime start,
    DateTime end,
  ) {
    final byDay = <DateTime, DailyTotal>{};
    var cursor = DateTime(start.year, start.month, start.day);
    final last = DateTime(end.year, end.month, end.day);
    while (!cursor.isAfter(last)) {
      byDay[cursor] = DailyTotal(date: cursor, income: 0, expenses: 0);
      cursor = cursor.add(const Duration(days: 1));
    }

    for (final t in transactions) {
      final key = DateTime(t.date.year, t.date.month, t.date.day);
      final existing = byDay[key];
      if (existing == null) continue;
      byDay[key] = DailyTotal(
        date: key,
        income: existing.income + (t.isIncome ? t.amount : 0),
        expenses: existing.expenses + (t.isIncome ? 0 : t.amount),
      );
    }

    return byDay.values.toList()..sort((a, b) => a.date.compareTo(b.date));
  }

  /// Collapses daily totals into [bucketCount] evenly sized buckets, so a
  /// 30-day window renders as a readable handful of bars.
  static List<PeriodTotal> bucketed(List<DailyTotal> days, int bucketCount) {
    if (days.isEmpty || bucketCount <= 0) return const [];
    final size = (days.length / bucketCount).ceil();
    final buckets = <PeriodTotal>[];
    for (var i = 0; i < days.length; i += size) {
      final end = i + size < days.length ? i + size : days.length;
      final slice = days.sublist(i, end);
      buckets.add(
        PeriodTotal(
          start: slice.first.date,
          end: slice.last.date,
          income: slice.fold(0.0, (s, d) => s + d.income),
          expenses: slice.fold(0.0, (s, d) => s + d.expenses),
        ),
      );
    }
    return buckets;
  }
}

class DailyTotal {
  const DailyTotal({
    required this.date,
    required this.income,
    required this.expenses,
  });

  final DateTime date;
  final double income;
  final double expenses;

  double get net => income - expenses;
}

class PeriodTotal {
  const PeriodTotal({
    required this.start,
    required this.end,
    required this.income,
    required this.expenses,
  });

  final DateTime start;
  final DateTime end;
  final double income;
  final double expenses;

  double get net => income - expenses;
}
