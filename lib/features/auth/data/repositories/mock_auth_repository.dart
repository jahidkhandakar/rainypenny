import 'dart:async';

import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

/// Keeps a demo user permanently signed in.
///
/// Used whenever the build has no Supabase credentials, so the prototype opens
/// straight onto the dashboard while still exercising the real auth contract.
class MockAuthRepository implements AuthRepository {
  MockAuthRepository();

  static const _demoUser = AuthUser(
    id: 'user-001',
    email: 'alex.morgan@email.com',
    name: 'Alex Morgan',
  );

  final _controller = StreamController<AuthUser?>.broadcast();
  AuthUser? _user = _demoUser;

  @override
  AuthUser? get currentUser => _user;

  @override
  Stream<AuthUser?> get authStateChanges => _controller.stream;

  @override
  Future<void> signIn({required String email, required String password}) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _user = AuthUser(id: _demoUser.id, email: email, name: _demoUser.name);
    _controller.add(_user);
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _user = AuthUser(id: _demoUser.id, email: email, name: name);
    _controller.add(_user);
  }

  @override
  Future<void> sendPasswordReset(String email) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }

  @override
  Future<void> signOut() async {
    _user = null;
    _controller.add(null);
  }
}
