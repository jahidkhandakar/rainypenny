import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/settings/settings_store.dart';
import '../../../financial/domain/entities/insight.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../data/repositories/notification_preferences_repository.dart';
import '../../data/services/local_notification_service.dart';
import '../../domain/entities/notification_preferences.dart';
import '../../domain/entities/scheduled_notification.dart';
import '../../domain/services/notification_scheduler.dart';
import '../../domain/services/notification_service.dart';

/// Web has no notification scheduler, so the app falls back to a no-op there
/// and every call site stays identical.
final notificationServiceProvider = Provider<NotificationService>((ref) {
  if (kIsWeb) return const NoopNotificationService();
  return LocalNotificationService();
});

final notificationPreferencesRepositoryProvider =
    Provider<NotificationPreferencesRepository>((ref) {
  return LocalNotificationPreferencesRepository(
    ref.watch(settingsStoreProvider),
  );
});

/// The user's channel choices, persisted on every change.
class NotificationPreferencesNotifier
    extends Notifier<NotificationPreferences> {
  @override
  NotificationPreferences build() {
    return ref.read(notificationPreferencesRepositoryProvider).load();
  }

  Future<void> setChannel(NotificationChannel channel, bool enabled) async {
    state = state.withChannel(channel, enabled);
    await _persist();
  }

  Future<void> setReminderHour(int hour) async {
    state = state.copyWith(reminderHour: hour);
    await _persist();
  }

  Future<void> setQuietHours(int start, int end) async {
    state = state.copyWith(quietHourStart: start, quietHourEnd: end);
    await _persist();
  }

  Future<void> setSummarySlot(int weekday, int hour) async {
    state = state.copyWith(summaryWeekday: weekday, summaryHour: hour);
    await _persist();
  }

  Future<void> _persist() {
    return ref
        .read(notificationPreferencesRepositoryProvider)
        .save(state);
  }
}

final notificationPreferencesProvider = NotifierProvider<
    NotificationPreferencesNotifier, NotificationPreferences>(
  NotificationPreferencesNotifier.new,
);

/// The schedule the app intends to deliver, recomputed whenever the ledger,
/// the debts or the preferences change.
final notificationScheduleProvider =
    FutureProvider<List<ScheduledNotification>>((ref) async {
  final insights = await ref.watch(insightsProvider.future);
  final loans = await ref.watch(loansProvider.future);
  final preferences = ref.watch(notificationPreferencesProvider);

  return NotificationScheduler.build(
    insights: insights,
    loans: loans,
    preferences: preferences,
    now: DateTime.now(),
  );
});

/// Whether the OS has granted permission to post notifications.
final notificationPermissionProvider = FutureProvider<bool>((ref) {
  return ref.watch(notificationServiceProvider).hasPermission();
});

/// Insights that would reach the device, for the preview in Settings.
final deliverableInsightsProvider = Provider<List<Insight>>((ref) {
  return ref.watch(notificationScheduleProvider).maybeWhen(
        data: (schedule) => schedule.map((n) => n.insight).toList(),
        orElse: () => const [],
      );
});

/// Loans with a reminder booked, exposed for the schedule preview.
final remindableLoansProvider = Provider<List<Loan>>((ref) {
  return ref.watch(loansProvider).maybeWhen(
        data: (loans) => loans,
        orElse: () => const [],
      );
});
