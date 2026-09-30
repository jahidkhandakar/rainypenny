import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../../financial/domain/entities/loan_payment.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Write operations for loans and credit cards.
class LoanController {
  const LoanController(this._ref);

  final Ref _ref;

  Future<void> save(Loan loan) async {
    final repository = _ref.read(loanRepositoryProvider);
    final existing = await repository.getLoans();

    if (existing.any((l) => l.id == loan.id)) {
      await repository.updateLoan(loan);
    } else {
      await repository.addLoan(loan);
    }
    _ref.invalidate(loansProvider);
  }

  Future<void> delete(String loanId) async {
    await _ref.read(loanRepositoryProvider).deleteLoan(loanId);
    _ref.invalidate(loansProvider);
  }

  Future<void> recordPayment(String loanId, double amount) async {
    await _ref.read(loanRepositoryProvider).recordPayment(loanId, amount);
    _ref.invalidate(loansProvider);
    // The history is what the payment just became part of, so it has to be
    // refetched alongside the balance it moved.
    _ref.invalidate(loanPaymentsProvider(loanId));
  }
}

final loanControllerProvider = Provider<LoanController>(LoanController.new);

/// Every repayment recorded against one debt, newest first.
final loanPaymentsProvider = FutureProvider.family<List<LoanPayment>, String>((
  ref,
  loanId,
) {
  return ref.watch(loanRepositoryProvider).getPayments(loanId);
});
