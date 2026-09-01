import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';

/// The contract every finance backend must satisfy.
///
/// `MockFinanceDataSource` implements it in memory; `SupabaseFinanceDataSource`
/// implements it against PostgreSQL. Nothing above the repositories knows
/// which one is in play — the composition root picks based on configuration.
abstract interface class FinanceDataSource {
  // Transactions
  Future<List<Transaction>> fetchTransactions();
  Future<void> insertTransaction(Transaction transaction);
  Future<void> updateTransaction(Transaction transaction);
  Future<void> deleteTransaction(String id);

  // Budgets — limits joined against live spend so the bars follow the ledger.
  Future<List<Budget>> fetchBudgets(Map<String, double> spendByCategoryId);
  Future<void> upsertBudgetLimit(String categoryId, double limit);
  Future<void> deleteBudget(String categoryId);

  // Savings
  Future<List<SavingsGoal>> fetchSavingsGoals();
  Future<void> insertSavingsGoal(SavingsGoal goal);
  Future<void> updateSavingsGoal(SavingsGoal goal);
  Future<void> deleteSavingsGoal(String goalId);
  Future<void> contributeToGoal(String goalId, double amount);

  // Loans
  Future<List<Loan>> fetchLoans();
  Future<void> insertLoan(Loan loan);
  Future<void> updateLoan(Loan loan);
  Future<void> deleteLoan(String loanId);
  Future<void> recordLoanPayment(String loanId, double amount);

  // Reference data and profile
  Future<List<Category>> fetchCategories();
  Future<UserProfile> fetchProfile();
  Future<Map<Category, double>> fetchPreviousPeriodSpending();
}
