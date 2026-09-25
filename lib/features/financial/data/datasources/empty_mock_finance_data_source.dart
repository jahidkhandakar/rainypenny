import 'package:rainypenny/features/financial/data/empty_demo_dataset.dart';

import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import 'finance_data_source.dart';

/// In-memory stand-in for Supabase.
///
/// This is the only place in the app that knows the data is fake. It exposes
/// exactly the operations a `SupabaseFinanceDataSource` would (`select`,
/// `insert`, `update`, `delete`), including a small artificial latency so the
/// UI exercises its real loading states.
class EmptyMockFinanceDataSource implements FinanceDataSource {
  EmptyMockFinanceDataSource({this.latency = const Duration(milliseconds: 550), this.payday = 1});

  /// Simulated round-trip time. Set to [Duration.zero] in tests.
  final Duration latency;

  /// Which day the seeded salary lands on, so the demo ledger lines up with
  /// whatever cycle the user has configured rather than only with the default.
  final int payday;

  List<Transaction>? _transactions;
  List<SavingsGoal>? _goals;
  List<Loan>? _loans;
  Map<String, double>? _budgetLimits;
  List<Category>? _categories;

  List<Transaction> get _ledger =>
      _transactions ??= EmptyDemoDataset.transactionsFor(payday: payday);
  List<SavingsGoal> get _savings => _goals ??= EmptyDemoDataset.savingsGoals;
  List<Loan> get _debts => _loans ??= EmptyDemoDataset.loans;
  Map<String, double> get _limits => _budgetLimits ??= Map.of(EmptyDemoDataset.budgetLimits);

  /// The seeded set, plus anything the user adds during the session.
  List<Category> get _catalogue =>
      _categories ??= [...EmptyDemoDataset.expenseCategories, ...EmptyDemoDataset.incomeCategories];

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
  Future<List<Budget>> fetchBudgets(Map<String, double> spendByCategoryId) async {
    await _withLatency(null);
    return _limits.entries.map((entry) {
      final category = EmptyDemoDataset.expenseCategories.firstWhere(
        (c) => c.id == entry.key,
        orElse: () => EmptyDemoDataset.other,
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
  Future<List<Loan>> fetchLoans() => _withLatency(List<Loan>.unmodifiable(_debts));

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
      // Mirrors `record_loan_payment` in the database: an open-ended debt
      // keeps counting, a fixed term stops at its own length.
      paidInstallments: loan.hasSchedule
          ? (loan.paidInstallments + 1).clamp(0, loan.totalInstallments)
          : loan.paidInstallments + 1,
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
  Future<List<Category>> fetchCategories() => _withLatency(List<Category>.unmodifiable(_catalogue));

  @override
  Future<void> insertCategory(Category category) async {
    await _withLatency(null);
    _catalogue.add(category);
  }

  @override
  Future<void> updateCategory(Category category) async {
    await _withLatency(null);
    final index = _catalogue.indexWhere((c) => c.id == category.id);
    if (index == -1) return;
    _catalogue[index] = category;

    // Transactions hold a Category rather than an id, so a rename has to be
    // pushed through the ledger for the change to show up everywhere.
    for (var i = 0; i < _ledger.length; i++) {
      if (_ledger[i].category.id == category.id) {
        _ledger[i] = _ledger[i].copyWith(category: category);
      }
    }
  }

  @override
  Future<void> deleteCategory(String categoryId) async {
    await _withLatency(null);
    if (await countCategoryUsage(categoryId) > 0) {
      throw StateError('Category $categoryId is still in use');
    }
    _catalogue.removeWhere((c) => c.id == categoryId);
  }

  @override
  Future<int> countCategoryUsage(String categoryId) async {
    final inLedger = _ledger.where((t) => t.category.id == categoryId).length;
    final inBudgets = _limits.containsKey(categoryId) ? 1 : 0;
    return inLedger + inBudgets;
  }

  UserProfile? _profile;

  @override
  Future<UserProfile> fetchProfile() => _withLatency(_profile ??= EmptyDemoDataset.profile);

  @override
  Future<void> updateProfileName(String name) async {
    await _withLatency(null);
    _profile = (_profile ??= EmptyDemoDataset.profile).copyWith(name: name);
  }

  @override
  Future<Map<Category, double>> fetchPreviousPeriodSpending() =>
      _withLatency(EmptyDemoDataset.previousSpendingByCategory);
}
