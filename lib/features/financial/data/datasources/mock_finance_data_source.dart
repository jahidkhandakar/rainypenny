import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import '../demo_dataset.dart';

/// In-memory stand-in for Supabase.
///
/// This is the only place in the app that knows the data is fake. It exposes
/// exactly the operations a `SupabaseFinanceDataSource` would (`select`,
/// `insert`, `update`, `delete`), including a small artificial latency so the
/// UI exercises its real loading states.
class MockFinanceDataSource {
  MockFinanceDataSource({this.latency = const Duration(milliseconds: 550)});

  /// Simulated round-trip time. Set to [Duration.zero] in tests.
  final Duration latency;

  List<Transaction>? _transactions;
  List<SavingsGoal>? _goals;
  List<Loan>? _loans;
  Map<String, double>? _budgetLimits;

  List<Transaction> get _ledger => _transactions ??= DemoDataset.transactions;
  List<SavingsGoal> get _savings => _goals ??= DemoDataset.savingsGoals;
  List<Loan> get _debts => _loans ??= DemoDataset.loans;
  Map<String, double> get _limits =>
      _budgetLimits ??= Map.of(DemoDataset.budgetLimits);

  Future<T> _withLatency<T>(T value) async {
    if (latency > Duration.zero) await Future<void>.delayed(latency);
    return value;
  }

  // ---------------------------------------------------------------------------
  // Transactions
  // ---------------------------------------------------------------------------

  Future<List<Transaction>> fetchTransactions() =>
      _withLatency(List<Transaction>.unmodifiable(_ledger));

  Future<void> insertTransaction(Transaction transaction) async {
    await _withLatency(null);
    _ledger
      ..add(transaction)
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  Future<void> updateTransaction(Transaction transaction) async {
    await _withLatency(null);
    final index = _ledger.indexWhere((t) => t.id == transaction.id);
    if (index == -1) return;
    _ledger[index] = transaction;
    _ledger.sort((a, b) => b.date.compareTo(a.date));
  }

  Future<void> deleteTransaction(String id) async {
    await _withLatency(null);
    _ledger.removeWhere((t) => t.id == id);
  }

  // ---------------------------------------------------------------------------
  // Budgets
  // ---------------------------------------------------------------------------

  /// Budgets are limits joined against live spend, so an added expense moves
  /// the budget bars immediately.
  Future<List<Budget>> fetchBudgets(Map<String, double> spendByCategoryId) async {
    await _withLatency(null);
    return _limits.entries.map((entry) {
      final category = DemoDataset.expenseCategories
          .firstWhere((c) => c.id == entry.key, orElse: () => DemoDataset.other);
      return Budget(
        id: 'budget-${entry.key}',
        category: category,
        limit: entry.value,
        spent: spendByCategoryId[entry.key] ?? 0,
      );
    }).toList()
      ..sort((a, b) => b.ratio.compareTo(a.ratio));
  }

  Future<void> upsertBudgetLimit(String categoryId, double limit) async {
    await _withLatency(null);
    _limits[categoryId] = limit;
  }

  Future<void> deleteBudget(String categoryId) async {
    await _withLatency(null);
    _limits.remove(categoryId);
  }

  // ---------------------------------------------------------------------------
  // Savings
  // ---------------------------------------------------------------------------

  Future<List<SavingsGoal>> fetchSavingsGoals() =>
      _withLatency(List<SavingsGoal>.unmodifiable(_savings));

  Future<void> contributeToGoal(String goalId, double amount) async {
    await _withLatency(null);
    final index = _savings.indexWhere((g) => g.id == goalId);
    if (index == -1) return;
    final goal = _savings[index];
    _savings[index] = SavingsGoal(
      id: goal.id,
      name: goal.name,
      saved: goal.saved + amount,
      target: goal.target,
      icon: goal.icon,
      targetDate: goal.targetDate,
      monthlyContribution: goal.monthlyContribution,
    );
  }

  // ---------------------------------------------------------------------------
  // Loans
  // ---------------------------------------------------------------------------

  Future<List<Loan>> fetchLoans() =>
      _withLatency(List<Loan>.unmodifiable(_debts));

  // ---------------------------------------------------------------------------
  // Reference data & profile
  // ---------------------------------------------------------------------------

  Future<List<Category>> fetchCategories() => _withLatency([
        ...DemoDataset.expenseCategories,
        ...DemoDataset.incomeCategories,
      ]);

  Future<UserProfile> fetchProfile() => _withLatency(DemoDataset.profile);

  Future<Map<Category, double>> fetchPreviousPeriodSpending() =>
      _withLatency(DemoDataset.previousSpendingByCategory);
}
