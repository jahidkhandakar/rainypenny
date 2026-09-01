import '../../../financial/data/datasources/mock_finance_data_source.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../domain/repositories/budget_repository.dart';

class MockBudgetRepository implements BudgetRepository {
  MockBudgetRepository(this._dataSource);

  final MockFinanceDataSource _dataSource;

  @override
  Future<List<Budget>> getBudgets(Map<String, double> spendByCategoryId) =>
      _dataSource.fetchBudgets(spendByCategoryId);

  @override
  Future<void> setLimit(String categoryId, double limit) =>
      _dataSource.upsertBudgetLimit(categoryId, limit);

  @override
  Future<void> deleteBudget(String categoryId) =>
      _dataSource.deleteBudget(categoryId);
}
