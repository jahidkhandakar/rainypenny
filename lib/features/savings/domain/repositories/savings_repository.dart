import '../../../financial/domain/entities/savings_goal.dart';

abstract interface class SavingsRepository {
  Future<List<SavingsGoal>> getGoals();

  Future<void> addGoal(SavingsGoal goal);

  Future<void> updateGoal(SavingsGoal goal);

  Future<void> deleteGoal(String goalId);

  /// Moves money into a goal. Kept separate from [updateGoal] because it is a
  /// distinct business action that will later post a savings transaction too.
  Future<void> contribute(String goalId, double amount);
}
