import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/domain/entities/loan.dart';
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
  }
}

final loanControllerProvider = Provider<LoanController>(LoanController.new);
