import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart' hide AuthUser;

import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

/// Supabase Auth implementation.
///
/// Every `AuthException` is translated into an [AuthFailure] so nothing above
/// the data layer has to know Supabase exists. The raw `message` is kept as
/// the fallback, but wherever the cause is recognisable it also carries an
/// [AuthFailureCode] so the screen can offer the right way out — resending a
/// confirmation email, say — instead of only printing the error.
class SupabaseAuthRepository implements AuthRepository {
  SupabaseAuthRepository(this._client) {
    _subscription = _client.auth.onAuthStateChange.listen((event) {
      if (event.event == AuthChangeEvent.passwordRecovery) {
        _recovery.add(null);
      }
    });
  }

  final SupabaseClient _client;
  final _recovery = StreamController<void>.broadcast();
  late final StreamSubscription<AuthState> _subscription;

  AuthUser? _map(User? user) {
    if (user == null) return null;
    return AuthUser(
      id: user.id,
      email: user.email ?? '',
      name: user.userMetadata?['full_name'] as String?,
    );
  }

  @override
  AuthUser? get currentUser => _map(_client.auth.currentUser);

  @override
  Stream<AuthUser?> get authStateChanges =>
      _client.auth.onAuthStateChange.map((event) => _map(event.session?.user));

  @override
  Stream<void> get passwordRecoveryRequests => _recovery.stream;

  @override
  Future<void> signIn({required String email, required String password}) {
    return _guard(() async {
      await _client.auth.signInWithPassword(email: email, password: password);
    });
  }

  @override
  Future<SignUpOutcome> signUp({
    required String email,
    required String password,
    required String name,
  }) {
    return _guard(() async {
      final response = await _client.auth.signUp(
        email: email,
        password: password,
        data: {'full_name': name},
      );
      // Whether a project demands email confirmation is a server setting, so
      // the presence of a session is the only reliable way to tell.
      return response.session == null
          ? SignUpOutcome.confirmationRequired
          : SignUpOutcome.signedIn;
    });
  }

  @override
  Future<void> sendPasswordReset(String email) {
    return _guard(() => _client.auth.resetPasswordForEmail(email));
  }

  @override
  Future<void> updatePassword(String password) {
    return _guard(
      () => _client.auth.updateUser(UserAttributes(password: password)),
    );
  }

  @override
  Future<void> resendConfirmation(String email) {
    return _guard(
      () => _client.auth.resend(type: OtpType.signup, email: email),
    );
  }

  @override
  Future<void> signOut() => _client.auth.signOut();

  void dispose() {
    _subscription.cancel();
    _recovery.close();
  }

  Future<T> _guard<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on AuthException catch (error) {
      throw AuthFailure(error.message, code: _codeFor(error));
    }
  }

  /// Maps Supabase's error identifiers onto ours.
  ///
  /// Both `code` and the message are checked: `code` is the stable signal on
  /// current versions, but it is null on older GoTrue responses and on some
  /// rate-limit replies, where the message is all there is.
  AuthFailureCode _codeFor(AuthException error) {
    final code = error.code?.toLowerCase() ?? '';
    final message = error.message.toLowerCase();

    bool has(String needle) =>
        code.contains(needle) || message.contains(needle);

    if (has('email_not_confirmed') || has('not confirmed')) {
      return AuthFailureCode.emailNotConfirmed;
    }
    if (has('already registered') ||
        has('user_already_exists') ||
        has('email_exists')) {
      return AuthFailureCode.emailAlreadyRegistered;
    }
    if (has('invalid_credentials') || has('invalid login')) {
      return AuthFailureCode.invalidCredentials;
    }
    if (has('weak_password') || has('password should be')) {
      return AuthFailureCode.weakPassword;
    }
    if (error.statusCode == '429' || has('rate limit') || has('over_email')) {
      return AuthFailureCode.rateLimited;
    }
    return AuthFailureCode.unknown;
  }
}
