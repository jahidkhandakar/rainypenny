/// One repayment recorded against a debt.
///
/// The `loan_payments` table has existed since the first migration and every
/// recorded payment has been written to it — nothing ever read it back, so the
/// history the specification asks for had no way of reaching the screen. This
/// is that row, as the app sees it.
class LoanPayment {
  const LoanPayment({
    required this.id,
    required this.loanId,
    required this.amount,
    required this.paidAt,
  });

  final String id;
  final String loanId;

  /// Always positive: a payment reduces what is owed, and the direction is not
  /// in question the way it is for a transaction.
  final double amount;

  final DateTime paidAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is LoanPayment && other.id == id);

  @override
  int get hashCode => id.hashCode;
}

/// Roll-ups over a debt's repayments.
abstract final class LoanPayments {
  /// Newest first — the order a history reads in.
  static List<LoanPayment> newestFirst(List<LoanPayment> payments) {
    return [...payments]..sort((a, b) => b.paidAt.compareTo(a.paidAt));
  }

  static double total(Iterable<LoanPayment> payments) =>
      payments.fold(0.0, (sum, p) => sum + p.amount);

  /// When the debt was last paid, or null if it never has been.
  ///
  /// Requirement 24 asks for this next to the *next* payment date: together
  /// they say where the user is in the cycle, which one date alone cannot.
  static DateTime? lastPaidAt(Iterable<LoanPayment> payments) {
    DateTime? latest;
    for (final payment in payments) {
      if (latest == null || payment.paidAt.isAfter(latest)) {
        latest = payment.paidAt;
      }
    }
    return latest;
  }
}
