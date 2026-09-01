import '../../../financial/data/datasources/mock_finance_data_source.dart';
import '../../../financial/domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

class MockProfileRepository implements ProfileRepository {
  MockProfileRepository(this._dataSource);

  final MockFinanceDataSource _dataSource;

  @override
  Future<UserProfile> getProfile() => _dataSource.fetchProfile();
}
