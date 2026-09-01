import '../../../../core/settings/settings_store.dart';
import '../../domain/entities/notification_preferences.dart';

/// Stores which alerts the user wants.
///
/// Backed by the same key-value store as the other preferences today; the
/// `notification_preferences` table is already in the Supabase schema for when
/// these need to follow a user across devices.
abstract interface class NotificationPreferencesRepository {
  NotificationPreferences load();

  Future<void> save(NotificationPreferences preferences);
}

class LocalNotificationPreferencesRepository
    implements NotificationPreferencesRepository {
  const LocalNotificationPreferencesRepository(this._store);

  final SettingsStore _store;

  static const _key = 'notifications.preferences';

  @override
  NotificationPreferences load() {
    final raw = _store.read(_key);
    if (raw == null) return const NotificationPreferences();

    // Compact encoding: four flags plus the three scheduling hours, so a
    // corrupt or older value degrades to the defaults rather than throwing.
    final parts = raw.split(',');
    if (parts.length < 4) return const NotificationPreferences();

    bool flag(int index) => parts[index] == '1';
    int number(int index, int fallback) =>
        parts.length > index ? int.tryParse(parts[index]) ?? fallback : fallback;

    return NotificationPreferences(
      budgetAlerts: flag(0),
      paymentReminders: flag(1),
      savingsUpdates: flag(2),
      weeklySummary: flag(3),
      quietHourStart: number(4, 22),
      quietHourEnd: number(5, 8),
      summaryWeekday: number(6, DateTime.sunday),
      summaryHour: number(7, 18),
      reminderHour: number(8, 9),
    );
  }

  @override
  Future<void> save(NotificationPreferences preferences) {
    final encoded = [
      preferences.budgetAlerts ? '1' : '0',
      preferences.paymentReminders ? '1' : '0',
      preferences.savingsUpdates ? '1' : '0',
      preferences.weeklySummary ? '1' : '0',
      preferences.quietHourStart,
      preferences.quietHourEnd,
      preferences.summaryWeekday,
      preferences.summaryHour,
      preferences.reminderHour,
    ].join(',');

    return _store.write(_key, encoded);
  }
}
