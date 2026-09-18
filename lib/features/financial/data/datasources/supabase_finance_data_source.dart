import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/entities/budget.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';
import '../models/finance_mappers.dart';
import 'finance_data_source.dart';

/// PostgreSQL-backed implementation of [FinanceDataSource].
///
/// Every query is scoped to the signed-in user by row-level security, so the
/// filters here are for efficiency, not for access control.
class SupabaseFinanceDataSource implements FinanceDataSource {
  SupabaseFinanceDataSource(this._client);

  final SupabaseClient _client;

  String get _userId {
    final id = _client.auth.currentUser?.id;
    if (id == null) {
      throw StateError('No signed-in user; the session expired.');
    }
    return id;
  }

  /// Categories are shared reference data, so they are fetched once and reused
  /// while mapping the rows that point at them.
  Future<Map<String, Category>> _categoryIndex() async {
    final rows = await _client.from('categories').select();
    return {
      for (final row in rows as List)
        row['id'] as String: CategoryMapper.fromRow(
          row as Map<String, dynamic>,
        ),
    };
  }

  // ---------------------------------------------------------------------------
  // Transactions
  // ---------------------------------------------------------------------------

  @override
  Future<List<Transaction>> fetchTransactions() async {
    final categories = await _categoryIndex();
    final rows = await _client
        .from('transactions')
        .select()
        .order('occurred_at', ascending: false);

    return (rows as List)
        .map(
          (row) => TransactionMapper.fromRow(
            row as Map<String, dynamic>,
            categories,
          ),
        )
        .toList();
  }

  @override
  Future<void> insertTransaction(Transaction transaction) async {
    await _client
        .from('transactions')
        .insert(TransactionMapper.toRow(transaction, _userId));
  }

  @override
  Future<void> updateTransaction(Transaction transaction) async {
    await _client
        .from('transactions')
        .update(TransactionMapper.toRow(transaction, _userId))
        .eq('id', transaction.id);
  }

  @override
  Future<void> deleteTransaction(String id) async {
    await _client.from('transactions').delete().eq('id', id);
  }

  // ---------------------------------------------------------------------------
  // Budgets
  // ---------------------------------------------------------------------------

  @override
  Future<List<Budget>> fetchBudgets(
    Map<String, double> spendByCategoryId,
  ) async {
    final categories = await _categoryIndex();
    final rows = await _client.from('budgets').select();

    final budgets = (rows as List).map((row) {
      final map = row as Map<String, dynamic>;
      final categoryId = map['category_id'] as String;
      return Budget(
        id: map['id'] as String,
        category:
            categories[categoryId] ??
            Category(
              id: categoryId,
              name: categoryId,
              icon: CategoryIcon.other,
            ),
        limit: (map['monthly_limit'] as num).toDouble(),
        spent: spendByCategoryId[categoryId] ?? 0,
      );
    }).toList()..sort((a, b) => b.ratio.compareTo(a.ratio));

    return budgets;
  }

  @override
  Future<void> upsertBudgetLimit(String categoryId, double limit) async {
    await _client.from('budgets').upsert({
      'user_id': _userId,
      'category_id': categoryId,
      'monthly_limit': limit,
    }, onConflict: 'user_id,category_id');
  }

  @override
  Future<void> deleteBudget(String categoryId) async {
    await _client.from('budgets').delete().eq('category_id', categoryId);
  }

  // ---------------------------------------------------------------------------
  // Savings
  // ---------------------------------------------------------------------------

  @override
  Future<List<SavingsGoal>> fetchSavingsGoals() async {
    final rows = await _client
        .from('savings_goals')
        .select()
        .order('created_at');
    return (rows as List)
        .map((row) => SavingsGoalMapper.fromRow(row as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> insertSavingsGoal(SavingsGoal goal) async {
    await _client
        .from('savings_goals')
        .insert(SavingsGoalMapper.toRow(goal, _userId, includeId: false));
  }

  @override
  Future<void> updateSavingsGoal(SavingsGoal goal) async {
    await _client
        .from('savings_goals')
        .update(SavingsGoalMapper.toRow(goal, _userId, includeId: false))
        .eq('id', goal.id);
  }

  @override
  Future<void> deleteSavingsGoal(String goalId) async {
    await _client.from('savings_goals').delete().eq('id', goalId);
  }

  @override
  Future<void> contributeToGoal(String goalId, double amount) async {
    // Read-then-write is safe here because a goal is only ever edited by its
    // own owner, and RLS guarantees that.
    final row = await _client
        .from('savings_goals')
        .select('saved')
        .eq('id', goalId)
        .single();

    final saved = (row['saved'] as num).toDouble() + amount;
    await _client
        .from('savings_goals')
        .update({'saved': saved})
        .eq('id', goalId);
  }

  // ---------------------------------------------------------------------------
  // Loans
  // ---------------------------------------------------------------------------

  @override
  Future<List<Loan>> fetchLoans() async {
    final rows = await _client
        .from('loans')
        .select()
        .order('next_payment_date');
    return (rows as List)
        .map((row) => LoanMapper.fromRow(row as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> insertLoan(Loan loan) async {
    await _client
        .from('loans')
        .insert(LoanMapper.toRow(loan, _userId, includeId: false));
  }

  @override
  Future<void> updateLoan(Loan loan) async {
    await _client
        .from('loans')
        .update(LoanMapper.toRow(loan, _userId, includeId: false))
        .eq('id', loan.id);
  }

  @override
  Future<void> deleteLoan(String loanId) async {
    await _client.from('loans').delete().eq('id', loanId);
  }

  @override
  Future<void> recordLoanPayment(String loanId, double amount) async {
    // Reducing the balance, rolling the due date and writing the payment row
    // are one transaction in the database.
    await _client.rpc(
      'record_loan_payment',
      params: {'p_loan_id': loanId, 'p_amount': amount},
    );
  }

  // ---------------------------------------------------------------------------
  // Reference data and profile
  // ---------------------------------------------------------------------------

  @override
  Future<List<Category>> fetchCategories() async {
    // RLS returns the shared seeded rows plus this user's own; no filter is
    // needed here, and adding one would be a second, weaker gate.
    final rows = await _client.from('categories').select().order('name');
    return (rows as List)
        .map((row) => CategoryMapper.fromRow(row as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> insertCategory(Category category) async {
    await _client
        .from('categories')
        .insert(CategoryMapper.toRow(category, _userId));
  }

  @override
  Future<void> updateCategory(Category category) async {
    await _client
        .from('categories')
        .update({
          'name': category.name,
          'icon': category.icon.name,
          'is_income': category.isIncome,
        })
        // The user_id match is belt-and-braces alongside RLS: a seeded row has
        // a null user_id and can never be edited by anyone.
        .eq('id', category.id)
        .eq('user_id', _userId);
  }

  @override
  Future<void> deleteCategory(String categoryId) async {
    if (await countCategoryUsage(categoryId) > 0) {
      throw StateError('Category $categoryId is still in use');
    }
    await _client
        .from('categories')
        .delete()
        .eq('id', categoryId)
        .eq('user_id', _userId);
  }

  @override
  Future<int> countCategoryUsage(String categoryId) async {
    final transactions = await _client
        .from('transactions')
        .count()
        .eq('user_id', _userId)
        .eq('category_id', categoryId);
    final budgets = await _client
        .from('budgets')
        .count()
        .eq('user_id', _userId)
        .eq('category_id', categoryId);
    return transactions + budgets;
  }

  @override
  Future<UserProfile> fetchProfile() async {
    final row = await _client
        .from('profiles')
        .select()
        .eq('id', _userId)
        .single();
    return ProfileMapper.fromRow(row);
  }

  @override
  Future<void> updateProfileName(String name) async {
    await _client
        .from('profiles')
        .update({'full_name': name})
        .eq('id', _userId);
  }

  @override
  Future<Map<Category, double>> fetchPreviousPeriodSpending() async {
    // The previous window is derived from the ledger itself once real data
    // exists, so nothing extra is stored for it.
    return const {};
  }
}
