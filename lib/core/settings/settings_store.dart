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

abstract final class SettingsKeys {
  static const themeMode = 'settings.themeMode';
  static const locale = 'settings.locale';
  static const currency = 'settings.currency';
}
