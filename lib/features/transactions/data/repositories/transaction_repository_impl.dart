import '../../../financial/data/datasources/finance_data_source.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../domain/repositories/transaction_repository.dart';

/// Ledger repository.
///
/// Backend-agnostic: it talks to whichever [FinanceDataSource] the composition
/// root supplies — in-memory for the demo build, Supabase for a configured one.
class TransactionRepositoryImpl implements TransactionRepository {
  TransactionRepositoryImpl(this._dataSource);

  final FinanceDataSource _dataSource;

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
