import '../entities/auth_user.dart';

/// Authentication contract.
///
/// `SupabaseAuthRepository` talks to Supabase Auth; `MockAuthRepository` keeps
/// a permanently signed-in demo user so the prototype needs no credentials.
abstract interface class AuthRepository {
  AuthUser? get currentUser;

  /// Emits on every sign-in, sign-out and token refresh.
  Stream<AuthUser?> get authStateChanges;

  Future<void> signIn({required String email, required String password});

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  });

  Future<void> sendPasswordReset(String email);

  Future<void> signOut();
}

/// Thrown for the failures the sign-in screen needs to explain to the user.
class AuthFailure implements Exception {
  const AuthFailure(this.message);

  final String message;

  @override
  String toString() => message;
}
