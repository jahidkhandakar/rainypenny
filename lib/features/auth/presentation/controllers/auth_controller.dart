import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/di/providers.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../data/repositories/mock_auth_repository.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

/// TEMPORARY: whether the auth buttons let anyone straight through.
///
/// Reads [AppConfig.skipAuth] in the app. It is a provider rather than a bare
/// constant so the tests can switch it off and go on covering the real flow —
/// a shortcut that quietly deletes your auth test coverage is worse than no
/// shortcut at all. Remove this with the flag.
final skipAuthProvider = Provider<bool>((ref) => AppConfig.skipAuth);

/// Emits on every sign-in and sign-out, and seeds with the session already on
/// disk so a returning user is not bounced to the sign-in screen.
final authStateProvider = StreamProvider<AuthUser?>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.authStateChanges;
});

final currentUserProvider = Provider<AuthUser?>((ref) {
  return ref
      .watch(authStateProvider)
      .maybeWhen(
        data: (user) => user,
        orElse: () => ref.watch(authRepositoryProvider).currentUser,
      );
});

/// True from the moment a recovery link opens the app until the new password
/// has been saved (or the user backs out).
///
/// The router watches this: a recovery link *does* create a session, so
/// without it the redirect would see a signed-in user and drop them on the
/// dashboard, silently skipping the reset they came to do.
class PasswordRecoveryNotifier extends Notifier<bool> {
  @override
  bool build() {
    final subscription = ref
        .watch(authRepositoryProvider)
        .passwordRecoveryRequests
        .listen((_) => state = true);
    ref.onDispose(subscription.cancel);
    return false;
  }

  void resolve() => state = false;
}

final passwordRecoveryProvider =
    NotifierProvider<PasswordRecoveryNotifier, bool>(
      PasswordRecoveryNotifier.new,
    );

/// What an auth form is doing right now.
class AuthFormState {
  const AuthFormState({this.isSubmitting = false, this.failure});

  final bool isSubmitting;
  final AuthFailure? failure;

  bool get hasError => failure != null;

  /// True when the failure is one the screen can offer a way out of, rather
  /// than just report.
  bool get canResendConfirmation =>
      failure?.code == AuthFailureCode.emailNotConfirmed;
}

class AuthController extends Notifier<AuthFormState> {
  @override
  AuthFormState build() => const AuthFormState();

  /// Clears a stale error, so switching between the auth screens does not
  /// carry the last screen's complaint along with it.
  void reset() => state = const AuthFormState();

  Future<bool> signIn(String email, String password) {
    return _run(
      () => ref
          .read(authRepositoryProvider)
          .signIn(email: email.trim(), password: password),
    );
  }

  /// Returns the outcome on success, or null if the attempt failed — the
  /// caller needs to tell "signed in" apart from "go and check your inbox".
  Future<SignUpOutcome?> signUp(
    String name,
    String email,
    String password,
  ) async {
    if (state.isSubmitting) return null;
    state = const AuthFormState(isSubmitting: true);
    try {
      final outcome = await ref
          .read(authRepositoryProvider)
          .signUp(email: email.trim(), password: password, name: name.trim());
      state = const AuthFormState();
      return outcome;
    } on AuthFailure catch (failure) {
      state = AuthFormState(failure: failure);
      return null;
    } catch (_) {
      state = const AuthFormState(failure: AuthFailure(''));
      return null;
    }
  }

  Future<bool> sendReset(String email) {
    return _run(
      () => ref.read(authRepositoryProvider).sendPasswordReset(email.trim()),
    );
  }

  Future<bool> updatePassword(String password) async {
    final ok = await _run(
      () => ref.read(authRepositoryProvider).updatePassword(password),
    );
    if (ok) ref.read(passwordRecoveryProvider.notifier).resolve();
    return ok;
  }

  Future<bool> resendConfirmation(String email) {
    return _run(
      () => ref.read(authRepositoryProvider).resendConfirmation(email.trim()),
    );
  }

  /// TEMPORARY, behind [AppConfig.skipAuth]: lets the sign-in and sign-up
  /// buttons land on the dashboard without checking anything.
  ///
  /// Signs the demo user in and marks both first-run gates done, so the button
  /// goes to the dashboard rather than to setup. Delete this together with the
  /// flag once the backend is wired up — nothing else depends on it.
  Future<void> enterWithoutCredentials({String? name}) async {
    if (name != null && name.trim().isNotEmpty) {
      ref.read(displayNameProvider.notifier).set(name);
    }
    ref.read(onboardingCompleteProvider.notifier).complete();
    ref.read(tutorialCompleteProvider.notifier).complete();

    // Straight at the repository: the router keys off currentUser, so the
    // session has to be real even when the credentials are not.
    await ref
        .read(authRepositoryProvider)
        .signIn(
          email: MockAuthRepository.demoEmail,
          password: MockAuthRepository.demoPassword,
        );
  }

  Future<void> signOut() => ref.read(authRepositoryProvider).signOut();

  Future<bool> _run(Future<void> Function() action) async {
    if (state.isSubmitting) return false;
    state = const AuthFormState(isSubmitting: true);
    try {
      await action();
      state = const AuthFormState();
      return true;
    } on AuthFailure catch (failure) {
      state = AuthFormState(failure: failure);
      return false;
    } catch (_) {
      // An empty message falls through to the generic localised string, so a
      // stray `SocketException.toString()` never reaches the user.
      state = const AuthFormState(failure: AuthFailure(''));
      return false;
    }
  }
}

final authControllerProvider = NotifierProvider<AuthController, AuthFormState>(
  AuthController.new,
);

/// Turns a failure into something the user can read in their own language.
///
/// The backend's own message is English-only, so it is used solely as a last
/// resort — every cause the app recognises gets a translated string instead.
String authFailureMessage(AppL10n l10n, AuthFailure failure) {
  return switch (failure.code) {
    AuthFailureCode.invalidCredentials => l10n.authInvalidCredentials,
    AuthFailureCode.emailNotConfirmed => l10n.authEmailNotConfirmed,
    AuthFailureCode.emailAlreadyRegistered => l10n.authEmailAlreadyRegistered,
    AuthFailureCode.weakPassword => l10n.authWeakPassword,
    AuthFailureCode.rateLimited => l10n.authRateLimited,
    AuthFailureCode.network => l10n.authNetworkError,
    AuthFailureCode.unknown =>
      failure.message.isEmpty ? l10n.authGenericError : failure.message,
  };
}
