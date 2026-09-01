import 'category.dart';

enum LoanKind { loan, creditCard }

/// A debt the user is paying down.
class Loan {
  const Loan({
    required this.id,
    required this.name,
    required this.lender,
    required this.kind,
    required this.principal,
    required this.remaining,
    required this.monthlyPayment,
    required this.nextPaymentDate,
    required this.interestRate,
    required this.icon,
  });

  final String id;
  final String name;
  final String lender;
  final LoanKind kind;

  /// The original amount borrowed (or the card limit for a credit card).
  final double principal;
  final double remaining;
  final double monthlyPayment;
  final DateTime nextPaymentDate;
  final double interestRate;
  final CategoryIcon icon;

  double get paidOff => (principal - remaining).clamp(0, double.infinity);

  double get progress => principal <= 0 ? 0 : (paidOff / principal).clamp(0.0, 1.0);

  int get percentPaid => (progress * 100).round();

  int daysUntilPayment(DateTime now) {
    final today = DateTime(now.year, now.month, now.day);
    final due = DateTime(
      nextPaymentDate.year,
      nextPaymentDate.month,
      nextPaymentDate.day,
    );
    return due.difference(today).inDays;
  }
}
