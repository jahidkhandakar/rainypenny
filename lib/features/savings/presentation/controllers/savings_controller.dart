import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Write operations for savings goals.
class SavingsController {
  const SavingsController(this._ref);

  final Ref _ref;

  Future<void> save(SavingsGoal goal) async {
    final repository = _ref.read(savingsRepositoryProvider);
    final existing = await repository.getGoals();

    if (existing.any((g) => g.id == goal.id)) {
      await repository.updateGoal(goal);
    } else {
      await repository.addGoal(goal);
    }
    _ref.invalidate(savingsGoalsProvider);
  }

  Future<void> delete(String goalId) async {
    await _ref.read(savingsRepositoryProvider).deleteGoal(goalId);
    _ref.invalidate(savingsGoalsProvider);
  }

  Future<void> contribute(String goalId, double amount) async {
    await _ref.read(savingsRepositoryProvider).contribute(goalId, amount);
    _ref.invalidate(savingsGoalsProvider);
  }
}

final savingsControllerProvider = Provider<SavingsController>(
  SavingsController.new,
);
