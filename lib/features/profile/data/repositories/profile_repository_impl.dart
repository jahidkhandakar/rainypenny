import '../../../financial/data/datasources/finance_data_source.dart';
import '../../../financial/domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._dataSource);

  final FinanceDataSource _dataSource;

  @override
  Future<UserProfile> getProfile() => _dataSource.fetchProfile();
}
