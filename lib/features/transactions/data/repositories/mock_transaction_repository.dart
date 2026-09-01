import '../../../financial/data/datasources/mock_finance_data_source.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../domain/repositories/transaction_repository.dart';

/// Mock implementation of [TransactionRepository].
///
/// Replace with `SupabaseTransactionRepository` — same contract, same call
/// sites — once the backend is wired up.
class MockTransactionRepository implements TransactionRepository {
  MockTransactionRepository(this._dataSource);

  final MockFinanceDataSource _dataSource;

  @override
  Future<List<Transaction>> getTransactions() => _dataSource.fetchTransactions();

  @override
  Future<void> addTransaction(Transaction transaction) =>
      _dataSource.insertTransaction(transaction);

  @override
  Future<void> updateTransaction(Transaction transaction) =>
      _dataSource.updateTransaction(transaction);

  @override
  Future<void> deleteTransaction(String id) =>
      _dataSource.deleteTransaction(id);

  @override
  Future<List<Category>> getCategories() => _dataSource.fetchCategories();
}
