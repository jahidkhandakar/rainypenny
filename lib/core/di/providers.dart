import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/auth/data/repositories/mock_auth_repository.dart';
import '../../features/auth/data/repositories/supabase_auth_repository.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/budget/data/repositories/budget_repository_impl.dart';
import '../../features/budget/domain/repositories/budget_repository.dart';
import '../../features/financial/data/datasources/finance_data_source.dart';
import '../../features/financial/data/datasources/mock_finance_data_source.dart';
import '../../features/financial/data/datasources/supabase_finance_data_source.dart';
import '../../features/loans/data/repositories/loan_repository_impl.dart';
import '../../features/loans/domain/repositories/loan_repository.dart';
import '../../features/profile/data/repositories/profile_repository_impl.dart';
import '../../features/profile/domain/repositories/profile_repository.dart';
import '../../features/savings/data/repositories/savings_repository_impl.dart';
import '../../features/savings/domain/repositories/savings_repository.dart';
import '../../features/transactions/data/repositories/transaction_repository_impl.dart';
import '../../features/transactions/domain/repositories/transaction_repository.dart';
import '../config/app_config.dart';

/// Composition root.
///
/// Two swaps happen here and nowhere else: which data source backs the
/// repositories, and which auth implementation is in play. Everything above
/// depends only on the interfaces, so a build with Supabase credentials and a
/// build without run the exact same UI and domain code.

final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  if (!AppConfig.hasBackend) {
    throw StateError(
      'Supabase is not configured; pass SUPABASE_URL and SUPABASE_ANON_KEY '
      'with --dart-define.',
    );
  }
  return Supabase.instance.client;
});

final financeDataSourceProvider = Provider<FinanceDataSource>((ref) {
  if (AppConfig.hasBackend) {
    return SupabaseFinanceDataSource(ref.watch(supabaseClientProvider));
  }
  return MockFinanceDataSource();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  if (AppConfig.hasBackend) {
    return SupabaseAuthRepository(ref.watch(supabaseClientProvider));
  }
  return MockAuthRepository();
});

final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  return TransactionRepositoryImpl(ref.watch(financeDataSourceProvider));
});

final budgetRepositoryProvider = Provider<BudgetRepository>((ref) {
  return BudgetRepositoryImpl(ref.watch(financeDataSourceProvider));
});

final savingsRepositoryProvider = Provider<SavingsRepository>((ref) {
  return SavingsRepositoryImpl(ref.watch(financeDataSourceProvider));
});

final loanRepositoryProvider = Provider<LoanRepository>((ref) {
  return LoanRepositoryImpl(ref.watch(financeDataSourceProvider));
});

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepositoryImpl(ref.watch(financeDataSourceProvider));
});
