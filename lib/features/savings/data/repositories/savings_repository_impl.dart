import '../../../financial/data/datasources/finance_data_source.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../domain/repositories/savings_repository.dart';

class SavingsRepositoryImpl implements SavingsRepository {
  SavingsRepositoryImpl(this._dataSource);

  final FinanceDataSource _dataSource;

  @override
  Future<List<SavingsGoal>> getGoals() => _dataSource.fetchSavingsGoals();

  @override
  Future<void> addGoal(SavingsGoal goal) =>
      _dataSource.insertSavingsGoal(goal);

  @override
  Future<void> updateGoal(SavingsGoal goal) =>
      _dataSource.updateSavingsGoal(goal);

  @override
  Future<void> deleteGoal(String goalId) =>
      _dataSource.deleteSavingsGoal(goalId);

  @override
  Future<void> contribute(String goalId, double amount) =>
      _dataSource.contributeToGoal(goalId, amount);
}
