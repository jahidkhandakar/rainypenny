import 'category.dart';

enum LoanKind { loan, creditCard }

/// Where a debt stands right now.
///
/// Derived rather than stored, so it can never fall out of step with the
/// balance and the due date it describes.
enum LoanStatus {
  /// Fully repaid — nothing left owing.
  completed,

  /// The due date has passed and the installment has not been recorded.
  overdue,

  /// Inside the reminder window before the due date.
  dueSoon,

  /// Being repaid normally, with the next date still comfortably ahead.
  active,
}

/// A debt the user is paying down.
///
/// The repayment plan is described by three stored numbers — [installmentAmount],
/// [totalInstallments] and [paidInstallments] — and everything a user is shown
/// about progress is derived from them. Storing the derived figures too would
/// let the card contradict itself the moment a payment lands.
class Loan {
  const Loan({
    required this.id,
    required this.name,
    required this.lender,
    required this.kind,
    required this.principal,
    required this.remaining,
    required this.installmentAmount,
    required this.nextPaymentDate,
    required this.interestRate,
    required this.icon,
    this.totalInstallments = 0,
    this.paidInstallments = 0,
    this.startDate,
  });

  final String id;
  final String name;
  final String lender;
  final LoanKind kind;

  /// The original amount borrowed (or the card limit for a credit card).
  final double principal;
  final double remaining;

  /// What falls due on each payment date.
  final double installmentAmount;

  final DateTime nextPaymentDate;
  final double interestRate;
  final CategoryIcon icon;

  /// How many installments the plan runs to. Zero means open-ended — a credit
  /// card or an overdraft, where there is no fixed term to count down.
  final int totalInstallments;

  /// How many installments have actually been recorded as paid.
  final int paidInstallments;

  /// When repayment began. Optional: older records may not carry one.
  final DateTime? startDate;

  Loan copyWith({
    String? id,
    String? name,
    String? lender,
    LoanKind? kind,
    double? principal,
    double? remaining,
    double? installmentAmount,
    DateTime? nextPaymentDate,
    double? interestRate,
    CategoryIcon? icon,
    int? totalInstallments,
    int? paidInstallments,
    DateTime? startDate,
  }) {
    return Loan(
      id: id ?? this.id,
      name: name ?? this.name,
      lender: lender ?? this.lender,
      kind: kind ?? this.kind,
      principal: principal ?? this.principal,
      remaining: remaining ?? this.remaining,
      installmentAmount: installmentAmount ?? this.installmentAmount,
      nextPaymentDate: nextPaymentDate ?? this.nextPaymentDate,
      interestRate: interestRate ?? this.interestRate,
      icon: icon ?? this.icon,
      totalInstallments: totalInstallments ?? this.totalInstallments,
      paidInstallments: paidInstallments ?? this.paidInstallments,
      startDate: startDate ?? this.startDate,
    );
  }

  // ---------------------------------------------------------------------------
  // Amounts
  // ---------------------------------------------------------------------------

  double get paidOff => (principal - remaining).clamp(0, double.infinity);

  /// Share of the debt cleared, by amount. This is the figure the progress bar
  /// and the headline percentage both read.
  double get progress =>
      principal <= 0 ? 0 : (paidOff / principal).clamp(0.0, 1.0);

  int get percentPaid => (progress * 100).round();

  // ---------------------------------------------------------------------------
  // Installments
  // ---------------------------------------------------------------------------

  /// True when this debt is repaid in a fixed number of installments, as
  /// opposed to a revolving balance with no term.
  bool get hasSchedule => totalInstallments > 0;

  int get remainingInstallments => hasSchedule
      ? (totalInstallments - paidInstallments).clamp(0, totalInstallments)
      : 0;

  /// Share of the term completed, by installment count. Distinct from
  /// [progress]: an interest-heavy plan clears installments faster than it
  /// clears the balance, and showing both is more honest than picking one.
  double get installmentProgress => hasSchedule
      ? (paidInstallments / totalInstallments).clamp(0.0, 1.0)
      : progress;

  // ---------------------------------------------------------------------------
  // Dates
  // ---------------------------------------------------------------------------

  /// Day of the month payments fall due, taken from the next scheduled date.
  int get dueDayOfMonth => nextPaymentDate.day;

  /// When the last installment falls due, assuming monthly payments from the
  /// next one onward. Null for a revolving balance, which has no final date.
  DateTime? get finalPaymentDate {
    if (!hasSchedule) return null;
    final left = remainingInstallments;
    if (left <= 0) return nextPaymentDate;
    return addMonths(nextPaymentDate, left - 1);
  }

  /// Whole days from [now] until the next payment. Negative once overdue.
  int daysUntilPayment(DateTime now) {
    final today = DateTime(now.year, now.month, now.day);
    final due = DateTime(
      nextPaymentDate.year,
      nextPaymentDate.month,
      nextPaymentDate.day,
    );
    return due.difference(today).inDays;
  }

  /// Adds whole months, clamping the day so 31 January plus one month lands on
  /// 28 (or 29) February rather than rolling into March.
  static DateTime addMonths(DateTime date, int months) {
    final target = date.month - 1 + months;
    final year = date.year + (target ~/ 12);
    final month = (target % 12) + 1;
    final lastDay = DateTime(year, month + 1, 0).day;
    return DateTime(year, month, date.day > lastDay ? lastDay : date.day);
  }

  // ---------------------------------------------------------------------------
  // Status
  // ---------------------------------------------------------------------------

  bool get isCompleted =>
      remaining <= 0.005 || (hasSchedule && remainingInstallments == 0);

  /// [dueSoonWindowDays] is passed in rather than read from the rules so the
  /// entity stays free of policy — the caller supplies the window it cares
  /// about, and `DebtRules` supplies the default everywhere in the app.
  LoanStatus statusAt(DateTime now, {int dueSoonWindowDays = 10}) {
    if (isCompleted) return LoanStatus.completed;
    final days = daysUntilPayment(now);
    if (days < 0) return LoanStatus.overdue;
    if (days <= dueSoonWindowDays) return LoanStatus.dueSoon;
    return LoanStatus.active;
  }
}
