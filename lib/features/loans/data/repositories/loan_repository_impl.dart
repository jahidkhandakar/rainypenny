import '../../../financial/data/datasources/finance_data_source.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../domain/repositories/loan_repository.dart';

class LoanRepositoryImpl implements LoanRepository {
  LoanRepositoryImpl(this._dataSource);

  final FinanceDataSource _dataSource;

  @override
  Future<List<Loan>> getLoans() => _dataSource.fetchLoans();

  @override
  Future<void> addLoan(Loan loan) => _dataSource.insertLoan(loan);

  @override
  Future<void> updateLoan(Loan loan) => _dataSource.updateLoan(loan);

  @override
  Future<void> deleteLoan(String loanId) => _dataSource.deleteLoan(loanId);

  @override
  Future<void> recordPayment(String loanId, double amount) =>
      _dataSource.recordLoanPayment(loanId, amount);
}
