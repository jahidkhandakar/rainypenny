import '../entities/loan.dart';
import '../rules/debt_rules.dart';

abstract final class DebtCalculator {
  static double totalOutstanding(List<Loan> loans) =>
      loans.fold(0.0, (sum, l) => sum + l.remaining);

  static double totalMonthlyPayments(List<Loan> loans) =>
      loans.fold(0.0, (sum, l) => sum + l.monthlyPayment);

  static double totalPaidOff(List<Loan> loans) =>
      loans.fold(0.0, (sum, l) => sum + l.paidOff);

  static double overallProgress(List<Loan> loans) {
    final principal = loans.fold(0.0, (sum, l) => sum + l.principal);
    return principal <= 0
        ? 0
        : (totalPaidOff(loans) / principal).clamp(0.0, 1.0);
  }

  /// Share of monthly income committed to servicing debt.
  static double debtToIncome(List<Loan> loans, double monthlyIncome) {
    if (monthlyIncome <= 0) return 0;
    return totalMonthlyPayments(loans) / monthlyIncome;
  }

  /// Payments that are overdue or fall inside the reminder window.
  static List<Loan> upcomingPayments(List<Loan> loans, DateTime now) {
    return loans.where((l) {
      final days = l.daysUntilPayment(now);
      return DebtRules.isOverdue(days) || DebtRules.isDueSoon(days);
    }).toList()
      ..sort((a, b) => a.nextPaymentDate.compareTo(b.nextPaymentDate));
  }

  /// All payments ordered by due date, for the schedule timeline.
  static List<Loan> paymentSchedule(List<Loan> loans) {
    return [...loans]
      ..sort((a, b) => a.nextPaymentDate.compareTo(b.nextPaymentDate));
  }
}
