import '../../../financial/data/datasources/mock_finance_data_source.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../domain/repositories/loan_repository.dart';

class MockLoanRepository implements LoanRepository {
  MockLoanRepository(this._dataSource);

  final MockFinanceDataSource _dataSource;

  @override
  Future<List<Loan>> getLoans() => _dataSource.fetchLoans();
}
