import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/transaction.dart';

/// The data-access contract for the ledger.
///
/// The domain and presentation layers only ever see this interface, so the
/// mock implementation can be swapped for a Supabase-backed one without any
/// change above this line.
abstract interface class TransactionRepository {
  Future<List<Transaction>> getTransactions();

  Future<void> addTransaction(Transaction transaction);

  Future<void> updateTransaction(Transaction transaction);

  Future<void> deleteTransaction(String id);

  Future<List<Category>> getCategories();
}
