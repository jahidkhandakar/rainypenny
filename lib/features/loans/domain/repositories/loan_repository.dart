import '../../../financial/domain/entities/loan.dart';
import '../../../financial/domain/entities/loan_payment.dart';

abstract interface class LoanRepository {
  Future<List<Loan>> getLoans();

  Future<void> addLoan(Loan loan);

  Future<void> updateLoan(Loan loan);

  Future<void> deleteLoan(String loanId);

  /// Records a repayment: reduces the outstanding balance and rolls the due
  /// date forward to the next cycle.
  Future<void> recordPayment(String loanId, double amount);

  /// Every repayment recorded against one debt, newest first.
  Future<List<LoanPayment>> getPayments(String loanId);
}
