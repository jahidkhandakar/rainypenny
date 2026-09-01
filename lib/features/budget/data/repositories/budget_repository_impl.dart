import '../../../financial/data/datasources/finance_data_source.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../domain/repositories/budget_repository.dart';

class BudgetRepositoryImpl implements BudgetRepository {
  BudgetRepositoryImpl(this._dataSource);

  final FinanceDataSource _dataSource;

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
