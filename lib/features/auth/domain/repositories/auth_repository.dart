import '../entities/auth_user.dart';

/// What happened when an account was created.
///
/// Whether a project requires email confirmation is a server-side setting, so
/// the client cannot know up front which of these it will get. The sign-up
/// screen has to handle both: one drops the user straight into onboarding,
/// the other has to tell them to go and open their inbox.
enum SignUpOutcome {
  /// The backend returned a session; the user is signed in already.
  signedIn,

  /// The account exists but needs the emailed link clicked first.
  confirmationRequired,
}

/// Authentication contract.
///
/// `SupabaseAuthRepository` talks to Supabase Auth; `MockAuthRepository` keeps
/// an in-memory account store so the prototype needs no credentials.
abstract interface class AuthRepository {
  AuthUser? get currentUser;

  /// Emits on every sign-in, sign-out and token refresh.
  Stream<AuthUser?> get authStateChanges;

  /// Emits when the user has arrived through a password-recovery link and
  /// owes us a new password before they can carry on.
  ///
  /// Kept separate from [authStateChanges] because recovery *does* produce a
  /// session: without this signal the router would see a signed-in user and
  /// send them to the dashboard, quietly skipping the reset they asked for.
  Stream<void> get passwordRecoveryRequests;

  Future<void> signIn({required String email, required String password});

  Future<SignUpOutcome> signUp({
    required String email,
    required String password,
    required String name,
  });

  Future<void> sendPasswordReset(String email);

  /// Sets a new password for the session opened by a recovery link.
  Future<void> updatePassword(String password);

  /// Sends the confirmation email again, for the user who never got the first.
  Future<void> resendConfirmation(String email);

  Future<void> signOut();
}

/// Thrown for the failures the auth screens need to explain to the user.
///
/// [code] lets a screen react to a specific case — offering "resend the
/// confirmation email" when the reason a sign-in failed is that the address
/// was never confirmed — while [message] stays the fallback everything else
/// can show verbatim.
class AuthFailure implements Exception {
  const AuthFailure(this.message, {this.code = AuthFailureCode.unknown});

  final String message;
  final AuthFailureCode code;

  @override
  String toString() => message;
}

enum AuthFailureCode {
  invalidCredentials,
  emailNotConfirmed,
  emailAlreadyRegistered,
  weakPassword,
  rateLimited,
  network,
  unknown,
}
