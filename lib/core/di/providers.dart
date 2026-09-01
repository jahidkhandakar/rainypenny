import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/budget/data/repositories/mock_budget_repository.dart';
import '../../features/budget/domain/repositories/budget_repository.dart';
import '../../features/financial/data/datasources/mock_finance_data_source.dart';
import '../../features/loans/data/repositories/mock_loan_repository.dart';
import '../../features/loans/domain/repositories/loan_repository.dart';
import '../../features/profile/data/repositories/mock_profile_repository.dart';
import '../../features/profile/domain/repositories/profile_repository.dart';
import '../../features/savings/data/repositories/mock_savings_repository.dart';
import '../../features/savings/domain/repositories/savings_repository.dart';
import '../../features/transactions/data/repositories/mock_transaction_repository.dart';
import '../../features/transactions/domain/repositories/transaction_repository.dart';

/// Composition root.
///
/// Everything above this file depends on repository *interfaces* only. Pointing
/// the app at a real backend is a matter of returning `SupabaseXRepository`
/// from these five providers.

final financeDataSourceProvider = Provider<MockFinanceDataSource>((ref) {
  return MockFinanceDataSource();
});

final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  return MockTransactionRepository(ref.watch(financeDataSourceProvider));
});

final budgetRepositoryProvider = Provider<BudgetRepository>((ref) {
  return MockBudgetRepository(ref.watch(financeDataSourceProvider));
});

final savingsRepositoryProvider = Provider<SavingsRepository>((ref) {
  return MockSavingsRepository(ref.watch(financeDataSourceProvider));
});

final loanRepositoryProvider = Provider<LoanRepository>((ref) {
  return MockLoanRepository(ref.watch(financeDataSourceProvider));
});

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return MockProfileRepository(ref.watch(financeDataSourceProvider));
});
