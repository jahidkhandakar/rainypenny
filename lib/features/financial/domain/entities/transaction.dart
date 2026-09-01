import 'category.dart';

enum TransactionType { income, expense }

/// A single money movement.
class Transaction {
  const Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
    this.note,
    this.account = 'Main Account',
  });

  final String id;
  final String title;

  /// Always stored as a positive magnitude; [type] carries the direction.
  final double amount;
  final DateTime date;
  final TransactionType type;
  final Category category;
  final String? note;
  final String account;

  bool get isIncome => type == TransactionType.income;

  /// Positive for income, negative for expense — used by balance maths.
  double get signedAmount => isIncome ? amount : -amount;

  Transaction copyWith({
    String? id,
    String? title,
    double? amount,
    DateTime? date,
    TransactionType? type,
    Category? category,
    String? note,
    String? account,
  }) {
    return Transaction(
      id: id ?? this.id,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      type: type ?? this.type,
      category: category ?? this.category,
      note: note ?? this.note,
      account: account ?? this.account,
    );
  }
}
