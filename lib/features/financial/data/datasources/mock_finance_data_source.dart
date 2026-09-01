import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import '../demo_dataset.dart';
import 'finance_data_source.dart';

/// In-memory stand-in for Supabase.
///
/// This is the only place in the app that knows the data is fake. It exposes
/// exactly the operations a `SupabaseFinanceDataSource` would (`select`,
/// `insert`, `update`, `delete`), including a small artificial latency so the
/// UI exercises its real loading states.
class MockFinanceDataSource implements FinanceDataSource {
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

  @override
  Future<List<Transaction>> fetchTransactions() =>
      _withLatency(List<Transaction>.unmodifiable(_ledger));

  @override
  Future<void> insertTransaction(Transaction transaction) async {
    await _withLatency(null);
    _ledger
      ..add(transaction)
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  @override
  Future<void> updateTransaction(Transaction transaction) async {
    await _withLatency(null);
    final index = _ledger.indexWhere((t) => t.id == transaction.id);
    if (index == -1) return;
    _ledger[index] = transaction;
    _ledger.sort((a, b) => b.date.compareTo(a.date));
  }

  @override
  Future<void> deleteTransaction(String id) async {
    await _withLatency(null);
    _ledger.removeWhere((t) => t.id == id);
  }

  // ---------------------------------------------------------------------------
  // Budgets
  // ---------------------------------------------------------------------------

  /// Budgets are limits joined against live spend, so an added expense moves
  /// the budget bars immediately.
  @override
  Future<List<Budget>> fetchBudgets(
    Map<String, double> spendByCategoryId,
  ) async {
    await _withLatency(null);
    return _limits.entries.map((entry) {
      final category = DemoDataset.expenseCategories.firstWhere(
        (c) => c.id == entry.key,
        orElse: () => DemoDataset.other,
      );
      return Budget(
        id: 'budget-${entry.key}',
        category: category,
        limit: entry.value,
        spent: spendByCategoryId[entry.key] ?? 0,
      );
    }).toList()..sort((a, b) => b.ratio.compareTo(a.ratio));
  }

  @override
  Future<void> upsertBudgetLimit(String categoryId, double limit) async {
    await _withLatency(null);
    _limits[categoryId] = limit;
  }

  @override
  Future<void> deleteBudget(String categoryId) async {
    await _withLatency(null);
    _limits.remove(categoryId);
  }

  // ---------------------------------------------------------------------------
  // Savings
  // ---------------------------------------------------------------------------

  @override
  Future<List<SavingsGoal>> fetchSavingsGoals() =>
      _withLatency(List<SavingsGoal>.unmodifiable(_savings));

  @override
  Future<void> insertSavingsGoal(SavingsGoal goal) async {
    await _withLatency(null);
    _savings.add(goal);
  }

  @override
  Future<void> updateSavingsGoal(SavingsGoal goal) async {
    await _withLatency(null);
    final index = _savings.indexWhere((g) => g.id == goal.id);
    if (index == -1) return;
    _savings[index] = goal;
  }

  @override
  Future<void> deleteSavingsGoal(String goalId) async {
    await _withLatency(null);
    _savings.removeWhere((g) => g.id == goalId);
  }

  @override
  Future<void> contributeToGoal(String goalId, double amount) async {
    await _withLatency(null);
    final index = _savings.indexWhere((g) => g.id == goalId);
    if (index == -1) return;
    final goal = _savings[index];
    _savings[index] = goal.copyWith(saved: goal.saved + amount);
  }

  // ---------------------------------------------------------------------------
  // Loans
  // ---------------------------------------------------------------------------

  @override
  Future<List<Loan>> fetchLoans() =>
      _withLatency(List<Loan>.unmodifiable(_debts));

  @override
  Future<void> insertLoan(Loan loan) async {
    await _withLatency(null);
    _debts.add(loan);
  }

  @override
  Future<void> updateLoan(Loan loan) async {
    await _withLatency(null);
    final index = _debts.indexWhere((l) => l.id == loan.id);
    if (index == -1) return;
    _debts[index] = loan;
  }

  @override
  Future<void> deleteLoan(String loanId) async {
    await _withLatency(null);
    _debts.removeWhere((l) => l.id == loanId);
  }

  @override
  Future<void> recordLoanPayment(String loanId, double amount) async {
    await _withLatency(null);
    final index = _debts.indexWhere((l) => l.id == loanId);
    if (index == -1) return;
    final loan = _debts[index];
    final due = loan.nextPaymentDate;
    _debts[index] = loan.copyWith(
      remaining: (loan.remaining - amount).clamp(0, double.infinity),
      // Roll to the same day next month, clamped for short months.
      nextPaymentDate: DateTime(
        due.year,
        due.month + 1,
        due.day.clamp(1, _daysInMonth(due.year, due.month + 1)),
      ),
    );
  }

  static int _daysInMonth(int year, int month) {
    final normalisedYear = month > 12 ? year + 1 : year;
    final normalisedMonth = month > 12 ? month - 12 : month;
    return DateTime(normalisedYear, normalisedMonth + 1, 0).day;
  }

  // ---------------------------------------------------------------------------
  // Reference data & profile
  // ---------------------------------------------------------------------------

  @override
  Future<List<Category>> fetchCategories() => _withLatency([
    ...DemoDataset.expenseCategories,
    ...DemoDataset.incomeCategories,
  ]);

  @override
  Future<UserProfile> fetchProfile() => _withLatency(DemoDataset.profile);

  @override
  Future<Map<Category, double>> fetchPreviousPeriodSpending() =>
      _withLatency(DemoDataset.previousSpendingByCategory);
}
