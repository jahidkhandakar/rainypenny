import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Key-value storage for user preferences.
///
/// Abstracted so the notifiers stay synchronous and testable: production
/// overrides this with [PrefsSettingsStore], tests and widget previews get the
/// in-memory implementation for free.
abstract interface class SettingsStore {
  String? read(String key);

  Future<void> write(String key, String value);
}

class PrefsSettingsStore implements SettingsStore {
  const PrefsSettingsStore(this._prefs);

  final SharedPreferences _prefs;

  @override
  String? read(String key) => _prefs.getString(key);

  @override
  Future<void> write(String key, String value) => _prefs.setString(key, value);
}

class InMemorySettingsStore implements SettingsStore {
  final _values = <String, String>{};

  @override
  String? read(String key) => _values[key];

  @override
  Future<void> write(String key, String value) async => _values[key] = value;
}

/// Overridden in `main` once shared preferences have loaded.
final settingsStoreProvider = Provider<SettingsStore>((ref) {
  return InMemorySettingsStore();
});

/// Boolean and enum-ish flags on top of the string-only store.
///
/// Kept as an extension rather than widening [SettingsStore] itself so the
/// two implementations stay as small as they are — everything persisted is
/// still a string underneath.
extension SettingsStoreFlags on SettingsStore {
  bool readFlag(String key, {bool fallback = false}) => switch (read(key)) {
    'true' => true,
    'false' => false,
    _ => fallback,
  };

  Future<void> writeFlag(String key, {required bool value}) =>
      write(key, value ? 'true' : 'false');
}

abstract final class SettingsKeys {
  static const themeMode = 'settings.themeMode';
  static const accent = 'settings.accent';
  static const locale = 'settings.locale';
  static const currency = 'settings.currency';

  /// Set once the new-user setup flow has been completed or skipped. Until it
  /// is, a signed-in user is routed to onboarding rather than the dashboard.
  static const onboardingComplete = 'settings.onboardingComplete';

  /// Set once the beginner walkthrough has been finished or dismissed, so it
  /// never reappears uninvited. Replaying it from Settings clears this.
  static const tutorialComplete = 'settings.tutorialComplete';

  /// The display name captured during onboarding, used to greet the user
  /// before their profile record has loaded.
  static const displayName = 'settings.displayName';

  /// Day of the month the user is paid on, 1–31. The financial cycle runs from
  /// this day to the day before the next one, so it drives every period figure
  /// in the app rather than only the home screen.
  static const payday = 'settings.payday';

  /// Sessions in which the user reached the dashboard. Drives the rating
  /// prompt, which is due once this passes its threshold.
  static const reviewUses = 'settings.reviewUses';

  /// Whether the user has rated, declined, or not yet been asked.
  static const reviewDecision = 'settings.reviewDecision';

  /// The use count the rating prompt is waiting for. Moves out each time the
  /// user postpones it.
  static const reviewAskAfter = 'settings.reviewAskAfter';
}
