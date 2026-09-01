import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

/// Emits on every sign-in and sign-out, and seeds with the session already on
/// disk so a returning user is not bounced to the sign-in screen.
final authStateProvider = StreamProvider<AuthUser?>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.authStateChanges;
});

final currentUserProvider = Provider<AuthUser?>((ref) {
  return ref.watch(authStateProvider).maybeWhen(
        data: (user) => user,
        orElse: () => ref.watch(authRepositoryProvider).currentUser,
      );
});

/// What the sign-in form is doing right now.
class AuthFormState {
  const AuthFormState({this.isSubmitting = false, this.error});

  final bool isSubmitting;
  final String? error;
}

class AuthController extends Notifier<AuthFormState> {
  @override
  AuthFormState build() => const AuthFormState();

  Future<bool> signIn(String email, String password) {
    return _run(
      () => ref
          .read(authRepositoryProvider)
          .signIn(email: email.trim(), password: password),
    );
  }

  Future<bool> signUp(String name, String email, String password) {
    return _run(
      () => ref.read(authRepositoryProvider).signUp(
            email: email.trim(),
            password: password,
            name: name.trim(),
          ),
    );
  }

  Future<bool> sendReset(String email) {
    return _run(
      () => ref.read(authRepositoryProvider).sendPasswordReset(email.trim()),
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
      state = AuthFormState(error: failure.message);
      return false;
    } catch (_) {
      state = const AuthFormState(error: 'Something went wrong');
      return false;
    }
  }
}

final authControllerProvider =
    NotifierProvider<AuthController, AuthFormState>(AuthController.new);
