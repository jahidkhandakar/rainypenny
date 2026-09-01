import '../../../financial/domain/entities/loan.dart';

abstract interface class LoanRepository {
  Future<List<Loan>> getLoans();
}
