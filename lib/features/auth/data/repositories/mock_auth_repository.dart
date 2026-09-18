import 'dart:async';

import '../../domain/entities/auth_user.dart';
import '../../domain/entities/password_strength.dart';
import '../../domain/repositories/auth_repository.dart';

/// An in-memory account store, used whenever the build has no Supabase
/// credentials.
///
/// It used to keep one demo user permanently signed in. That was fine while
/// sign-in was a single screen, but it made the whole auth flow untestable:
/// registering, a wrong password, a duplicate address and a recovery link all
/// have to behave differently for those screens to be worth anything. So this
/// keeps a real (if volatile) account list and enforces the same rules the
/// backend would.
class MockAuthRepository implements AuthRepository {
  MockAuthRepository({
    this.latency = const Duration(milliseconds: 400),
    bool startSignedIn = false,
  }) : _user = startSignedIn ? _demoUser : null;

  /// Fake round-trip time. Tests pass [Duration.zero] to keep pumping cheap.
  final Duration latency;

  static const demoEmail = 'alex.morgan@email.com';
  static const demoPassword = 'rainypenny';

  static const _demoUser = AuthUser(
    id: 'user-001',
    email: demoEmail,
    name: 'Alex Morgan',
  );

  final _accounts = <String, _Account>{
    demoEmail: _Account(user: _demoUser, password: demoPassword),
  };

  final _controller = StreamController<AuthUser?>.broadcast();
  final _recovery = StreamController<void>.broadcast();

  /// Starts null, so a build with no backend opens on the welcome screen and
  /// the auth flow is reachable. It used to start as the demo user, which made
  /// sense while sign-in was a placeholder — now it just means nobody can ever
  /// see the screens. Sign in with [demoEmail] / [demoPassword]; the sign-in
  /// screen offers to fill those in for you when there is no backend.
  AuthUser? _user;

  @override
  AuthUser? get currentUser => _user;

  @override
  Stream<AuthUser?> get authStateChanges => _controller.stream;

  @override
  Stream<void> get passwordRecoveryRequests => _recovery.stream;

  @override
  Future<void> signIn({required String email, required String password}) async {
    await _wait();
    final account = _accounts[_key(email)];
    if (account == null || account.password != password) {
      throw const AuthFailure(
        'Those details do not match an account',
        code: AuthFailureCode.invalidCredentials,
      );
    }
    if (!account.confirmed) {
      throw const AuthFailure(
        'Confirm your email address first',
        code: AuthFailureCode.emailNotConfirmed,
      );
    }
    _emit(account.user);
  }

  @override
  Future<SignUpOutcome> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    await _wait();
    final key = _key(email);
    if (_accounts.containsKey(key)) {
      throw const AuthFailure(
        'An account with that email already exists',
        code: AuthFailureCode.emailAlreadyRegistered,
      );
    }
    if (password.length < kMinPasswordLength) {
      throw const AuthFailure(
        'Password is too short',
        code: AuthFailureCode.weakPassword,
      );
    }

    final user = AuthUser(
      id: 'user-${_accounts.length + 1}'.padLeft(3, '0'),
      email: key,
      name: name,
    );
    _accounts[key] = _Account(user: user, password: password);
    _emit(user);
    return SignUpOutcome.signedIn;
  }

  @override
  Future<void> sendPasswordReset(String email) async {
    await _wait();
    // Deliberately silent about whether the address is registered: saying so
    // turns this screen into a way to enumerate a product's users.
  }

  @override
  Future<void> updatePassword(String password) async {
    await _wait();
    final current = _user;
    if (current == null) {
      throw const AuthFailure('That reset link is no longer valid');
    }
    final key = _key(current.email);
    final account = _accounts[key];
    if (account != null) _accounts[key] = account.withPassword(password);
  }

  @override
  Future<void> resendConfirmation(String email) async => _wait();

  @override
  Future<void> signOut() async {
    _emit(null);
  }

  /// Drives the recovery route in the demo build and in tests, standing in for
  /// the deep link that a real reset email would arrive on.
  void simulatePasswordRecovery({String email = demoEmail}) {
    final account = _accounts[_key(email)];
    if (account == null) return;
    _emit(account.user);
    _recovery.add(null);
  }

  void _emit(AuthUser? user) {
    _user = user;
    _controller.add(user);
  }

  Future<void> _wait() =>
      latency == Duration.zero ? Future.value() : Future.delayed(latency);

  String _key(String email) => email.trim().toLowerCase();
}

class _Account {
  const _Account({
    required this.user,
    required this.password,
    this.confirmed = true,
  });

  final AuthUser user;
  final String password;
  final bool confirmed;

  _Account withPassword(String value) =>
      _Account(user: user, password: value, confirmed: confirmed);
}
