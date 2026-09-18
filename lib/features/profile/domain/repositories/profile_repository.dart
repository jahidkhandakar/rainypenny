import '../../../financial/domain/entities/user_profile.dart';

abstract interface class ProfileRepository {
  Future<UserProfile> getProfile();

  /// Renames the signed-in user.
  Future<void> updateName(String name);
}
