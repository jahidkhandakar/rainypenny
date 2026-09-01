/// Build-time configuration.
///
/// Supabase credentials are supplied with `--dart-define` rather than being
/// committed:
///
/// ```
/// flutter run \
///   --dart-define=SUPABASE_URL=https://xxxx.supabase.co \
///   --dart-define=SUPABASE_ANON_KEY=eyJhbGci...
/// ```
///
/// With no credentials the app runs entirely on the in-memory mock backend, so
/// the demo and the widget tests keep working untouched.
abstract final class AppConfig {
  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  /// True once both credentials are present at build time.
  static bool get hasBackend =>
      supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;

  /// Which backend the app is talking to — surfaced in Settings so testers can
  /// tell a mock build from a live one at a glance.
  static String get backendLabel => hasBackend ? 'Supabase' : 'Demo data';
}
