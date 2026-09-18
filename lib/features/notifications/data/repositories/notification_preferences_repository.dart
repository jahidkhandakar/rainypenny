import 'dart:convert';

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
    if (raw == null || raw.isEmpty) return const NotificationPreferences();

    // Version 1 wrote a positional CSV. It is still on devices that have had
    // the app since launch, so it is read rather than discarded — a user who
    // updates should not silently get their notification settings reset.
    if (!raw.startsWith('{')) return _fromLegacyCsv(raw);

    try {
      final map = jsonDecode(raw) as Map<String, dynamic>;

      bool flag(String key, bool fallback) =>
          map[key] is bool ? map[key] as bool : fallback;
      int number(String key, int fallback) =>
          (map[key] as num?)?.toInt() ?? fallback;

      const defaults = NotificationPreferences();

      return NotificationPreferences(
        budgetAlerts: flag('budgetAlerts', defaults.budgetAlerts),
        paymentReminders: flag('paymentReminders', defaults.paymentReminders),
        savingsUpdates: flag('savingsUpdates', defaults.savingsUpdates),
        weeklySummary: flag('weeklySummary', defaults.weeklySummary),
        dailyReminders: flag('dailyReminders', defaults.dailyReminders),
        weekendGreeting: flag('weekendGreeting', defaults.weekendGreeting),
        quietHourStart: number('quietHourStart', defaults.quietHourStart),
        quietHourEnd: number('quietHourEnd', defaults.quietHourEnd),
        summaryWeekday: number('summaryWeekday', defaults.summaryWeekday),
        summaryHour: number('summaryHour', defaults.summaryHour),
        reminderHour: number('reminderHour', defaults.reminderHour),
        enabledSlots: _slotsFrom(map['enabledSlots'], defaults.enabledSlots),
        weekendWeekday: number('weekendWeekday', defaults.weekendWeekday),
        weekendHour: number('weekendHour', defaults.weekendHour),
      );
    } catch (_) {
      // A value written by a future version, or a corrupt one, degrades to the
      // defaults rather than leaving the user with no notifications at all.
      return const NotificationPreferences();
    }
  }

  @override
  Future<void> save(NotificationPreferences preferences) {
    return _store.write(
      _key,
      jsonEncode({
        'budgetAlerts': preferences.budgetAlerts,
        'paymentReminders': preferences.paymentReminders,
        'savingsUpdates': preferences.savingsUpdates,
        'weeklySummary': preferences.weeklySummary,
        'dailyReminders': preferences.dailyReminders,
        'weekendGreeting': preferences.weekendGreeting,
        'quietHourStart': preferences.quietHourStart,
        'quietHourEnd': preferences.quietHourEnd,
        'summaryWeekday': preferences.summaryWeekday,
        'summaryHour': preferences.summaryHour,
        'reminderHour': preferences.reminderHour,
        'enabledSlots': [
          for (final slot in preferences.enabledSlots) slot.name,
        ],
        'weekendWeekday': preferences.weekendWeekday,
        'weekendHour': preferences.weekendHour,
      }),
    );
  }

  static Set<DailyReminderSlot> _slotsFrom(
    Object? value,
    Set<DailyReminderSlot> fallback,
  ) {
    if (value is! List) return fallback;
    final names = value.whereType<String>().toSet();
    final slots = DailyReminderSlot.values
        .where((slot) => names.contains(slot.name))
        .toSet();
    // An empty list is a legitimate choice — every slot switched off — so it
    // is honoured, unlike a missing or malformed value.
    return slots;
  }

  static NotificationPreferences _fromLegacyCsv(String raw) {
    final parts = raw.split(',');
    if (parts.length < 4) return const NotificationPreferences();

    bool flag(int index) => parts[index] == '1';
    int number(int index, int fallback) => parts.length > index
        ? int.tryParse(parts[index]) ?? fallback
        : fallback;

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
}
