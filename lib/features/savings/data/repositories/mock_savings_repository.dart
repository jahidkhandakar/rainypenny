import '../../../financial/data/datasources/mock_finance_data_source.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../domain/repositories/savings_repository.dart';

class MockSavingsRepository implements SavingsRepository {
  MockSavingsRepository(this._dataSource);

  final MockFinanceDataSource _dataSource;

  @override
  Future<List<SavingsGoal>> getGoals() => _dataSource.fetchSavingsGoals();

  @override
  Future<void> contribute(String goalId, double amount) =>
      _dataSource.contributeToGoal(goalId, amount);
}
