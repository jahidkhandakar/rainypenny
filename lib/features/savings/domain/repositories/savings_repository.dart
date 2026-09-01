import '../../../financial/domain/entities/savings_goal.dart';

abstract interface class SavingsRepository {
  Future<List<SavingsGoal>> getGoals();

  Future<void> contribute(String goalId, double amount);
}
