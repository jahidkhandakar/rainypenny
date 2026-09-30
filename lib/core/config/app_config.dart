import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Build/Runtime configuration using a `.env` file.
///
/// With missing or empty credentials, the app runs entirely on the
/// in-memory mock backend, preserving demo and widget test behavior.
abstract final class AppConfig {
  /// Reads SUPABASE_URL from the .env file at runtime.
  static String get supabaseUrl => dotenv.get('SUPABASE_URL', fallback: '');

  /// Reads SUPABASE_ANON_KEY from the .env file at runtime.
  static String get supabaseAnonKey => dotenv.get('SUPABASE_ANON_KEY', fallback: '');

  /// True once both credentials are present in the loaded environment.
  static bool get hasBackend => supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;

  /// Which backend the app is talking to — surfaced in Settings so testers can
  /// tell a mock build from a live one at a glance.
  static String get backendLabel => hasBackend ? 'Supabase' : 'Demo data';

  /// TEMPORARY: the sign-in and sign-up buttons let anyone straight through to
  /// the dashboard instead of checking credentials or running first-run setup.
  ///
  /// Set this to `false` to get the real flow back. Nothing else has to
  /// change: the screens, their validation, the password strength meter and
  /// the onboarding wizard are all still there underneath, and setup is still
  /// reachable from Settings → Run setup again while this is on.
  static const skipAuthWithoutBackend = true;

  /// Never bypasses anything in a build that has a real backend, so this
  /// cannot escape into production by being forgotten.
  static bool get skipAuth => skipAuthWithoutBackend && !hasBackend;
}
