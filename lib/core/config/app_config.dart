import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Build/Runtime configuration using a `.env` file.
///
/// With missing or empty credentials, the app runs entirely on the
/// in-memory mock backend, preserving demo and widget test behavior.
abstract final class AppConfig {
  /// A value from the loaded `.env`, or empty when there is nothing to read.
  ///
  /// `dotenv.get`'s own `fallback` only covers a key that is missing from a
  /// file that *has* been loaded. Reading before `dotenv.load` throws
  /// `NotInitializedError` instead, and only `main` ever calls load — so every
  /// widget test that built a screen touching this threw, seventeen of them.
  ///
  /// Treating "not loaded" as "no credentials" is what the class already
  /// promises above: with nothing configured, the app runs on the in-memory
  /// backend, which is exactly what a test wants.
  static String _read(String key) =>
      dotenv.isInitialized ? dotenv.get(key, fallback: '') : '';

  /// Reads SUPABASE_URL from the .env file at runtime.
  static String get supabaseUrl => _read('SUPABASE_URL');

  /// Reads SUPABASE_ANON_KEY from the .env file at runtime.
  static String get supabaseAnonKey => _read('SUPABASE_ANON_KEY');

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
