import '../../../financial/domain/entities/insight.dart';
import '../../../financial/domain/entities/loan.dart';
import '../entities/notification_preferences.dart';
import '../entities/scheduled_notification.dart';
import '../rules/notification_rules.dart';

/// Turns the current financial picture into a schedule of notifications.
///
/// Pure and synchronous: given the same inputs it always produces the same
/// schedule, which makes the delivery step a dumb executor and lets the whole
/// policy be unit-tested without touching a platform channel.
abstract final class NotificationScheduler {
  static List<ScheduledNotification> build({
    required List<Insight> insights,
    required List<Loan> loans,
    required NotificationPreferences preferences,
    required DateTime now,
  }) {
    if (preferences.allSilenced) return const [];

    final scheduled = <ScheduledNotification>[
      ..._fromInsights(insights, preferences, now),
      ..._paymentReminders(loans, preferences, now),
      ..._dailyReminders(preferences, now),
    ];

    if (preferences.weeklySummary) {
      scheduled.add(_weeklySummary(preferences, now));
    }
    if (preferences.weekendGreeting) {
      scheduled.add(_weekendGreeting(preferences, now));
    }

    // Never schedule into the past, and keep the soonest first.
    final future =
        scheduled.where((n) => n.recurs || n.scheduledFor.isAfter(now)).toList()
          ..sort((a, b) => a.scheduledFor.compareTo(b.scheduledFor));

    return _deduplicate(future);
  }

  /// Insights worth an interruption fire at the next reminder hour.
  static List<ScheduledNotification> _fromInsights(
    List<Insight> insights,
    NotificationPreferences preferences,
    DateTime now,
  ) {
    final result = <ScheduledNotification>[];

    for (final insight in insights) {
      if (!NotificationRules.isWorthDelivering(insight)) continue;

      final channel = NotificationRules.channelFor(insight);
      if (!preferences.isEnabled(channel)) continue;

      result.add(
        ScheduledNotification(
          id: NotificationRules.idFor(insight.id),
          insight: insight,
          channel: channel,
          scheduledFor: nextReminderSlot(now, preferences),
        ),
      );
    }

    return result;
  }

  /// Two reminders per debt: one a few days ahead, one on the morning it is
  /// actually due.
  ///
  /// These are separate from the debt insights: an insight fires once the
  /// payment is already inside the warning window, whereas these are booked as
  /// soon as the due date is known. A debt that is already settled is skipped —
  /// nagging someone about a loan they have cleared is the fastest way to lose
  /// their trust in the reminders.
  static List<ScheduledNotification> _paymentReminders(
    List<Loan> loans,
    NotificationPreferences preferences,
    DateTime now,
  ) {
    if (!preferences.paymentReminders) return const [];

    final result = <ScheduledNotification>[];

    for (final loan in loans) {
      if (loan.isCompleted) continue;
      final due = loan.nextPaymentDate;

      // Ahead of the due date.
      final leadInsight = Insight(
        id: 'reminder-${loan.id}',
        code: InsightCode.debtDueSoon,
        level: InsightLevel.warning,
        topic: InsightTopic.debt,
        subject: loan.name,
        amount: loan.installmentAmount,
        days: NotificationRules.paymentReminderLeadDays,
      );
      result.add(
        ScheduledNotification(
          id: NotificationRules.idFor(leadInsight.id),
          insight: leadInsight,
          channel: NotificationChannel.paymentReminders,
          scheduledFor: _atHour(
            due.subtract(
              const Duration(days: NotificationRules.paymentReminderLeadDays),
            ),
            preferences.reminderHour,
            preferences,
          ),
        ),
      );

      // On the day itself.
      final dueInsight = Insight(
        id: 'due-today-${loan.id}',
        code: InsightCode.debtDueToday,
        level: InsightLevel.critical,
        topic: InsightTopic.debt,
        subject: loan.name,
        amount: loan.installmentAmount,
        days: 0,
      );
      result.add(
        ScheduledNotification(
          id: NotificationRules.idFor(dueInsight.id),
          insight: dueInsight,
          channel: NotificationChannel.paymentReminders,
          scheduledFor: _atHour(due, preferences.reminderHour, preferences),
        ),
      );
    }

    return result;
  }

  /// The gentle prompts through the day to keep the ledger current.
  ///
  /// Each enabled slot becomes one daily-repeating notification. A slot whose
  /// hour falls inside the quiet window is dropped rather than pushed to the
  /// end of it — shifting them all would stack several nudges on the same
  /// minute, which is exactly the nagging these are meant to avoid.
  static List<ScheduledNotification> _dailyReminders(
    NotificationPreferences preferences,
    DateTime now,
  ) {
    if (!preferences.dailyReminders) return const [];

    final result = <ScheduledNotification>[];

    for (final slot in DailyReminderSlot.values) {
      if (!preferences.isSlotEnabled(slot)) continue;

      final hour = NotificationPreferences.hourFor(slot);
      if (isWithinQuietHours(hour, preferences)) continue;

      final insight = Insight(
        id: 'expense-reminder-${slot.name}',
        code: NotificationRules.codeForSlot(slot),
        level: InsightLevel.informative,
        topic: InsightTopic.engagement,
      );

      result.add(
        ScheduledNotification(
          id: NotificationRules.idFor(insight.id),
          insight: insight,
          channel: NotificationChannel.dailyReminders,
          scheduledFor: nextOccurrenceOfHour(now, hour),
          repeat: NotificationRepeat.daily,
        ),
      );
    }

    return result;
  }

  static ScheduledNotification _weeklySummary(
    NotificationPreferences preferences,
    DateTime now,
  ) {
    return ScheduledNotification(
      id: NotificationRules.idFor('weekly-summary'),
      insight: const Insight(
        id: 'weekly-summary',
        code: InsightCode.weeklySummary,
        level: InsightLevel.informative,
        topic: InsightTopic.spending,
      ),
      channel: NotificationChannel.weeklySummary,
      scheduledFor: nextWeekday(
        now,
        preferences.summaryWeekday,
        preferences.summaryHour,
      ),
      repeat: NotificationRepeat.weekly,
    );
  }

  static ScheduledNotification _weekendGreeting(
    NotificationPreferences preferences,
    DateTime now,
  ) {
    return ScheduledNotification(
      id: NotificationRules.idFor('happy-weekend'),
      insight: const Insight(
        id: 'happy-weekend',
        code: InsightCode.happyWeekend,
        level: InsightLevel.positive,
        topic: InsightTopic.engagement,
      ),
      channel: NotificationChannel.weekendGreeting,
      scheduledFor: nextWeekday(
        now,
        preferences.weekendWeekday,
        preferences.weekendHour,
      ),
      repeat: NotificationRepeat.weekly,
    );
  }

  /// The next time today or tomorrow that respects the reminder hour and the
  /// quiet window.
  static DateTime nextReminderSlot(
    DateTime now,
    NotificationPreferences preferences,
  ) {
    final today = _atHour(now, preferences.reminderHour, preferences);
    if (today.isAfter(now)) return today;
    return _atHour(
      now.add(const Duration(days: 1)),
      preferences.reminderHour,
      preferences,
    );
  }

  /// The next time [hour] comes round, today if it has not passed yet.
  ///
  /// A daily-repeating notification needs a first occurrence in the future;
  /// the platform then repeats it at the same clock time thereafter.
  static DateTime nextOccurrenceOfHour(DateTime now, int hour) {
    final today = DateTime(now.year, now.month, now.day, hour);
    if (today.isAfter(now)) return today;
    final tomorrow = now.add(const Duration(days: 1));
    return DateTime(tomorrow.year, tomorrow.month, tomorrow.day, hour);
  }

  /// The next occurrence of [weekday] at [hour], always strictly in the future.
  static DateTime nextWeekday(DateTime now, int weekday, int hour) {
    var daysAhead = (weekday - now.weekday) % 7;
    if (daysAhead < 0) daysAhead += 7;

    var candidate = DateTime(now.year, now.month, now.day + daysAhead, hour);
    if (!candidate.isAfter(now)) {
      candidate = candidate.add(const Duration(days: 7));
    }
    return candidate;
  }

  /// Places [date] at [hour], then pushes it out of the quiet window.
  static DateTime _atHour(
    DateTime date,
    int hour,
    NotificationPreferences preferences,
  ) {
    final at = DateTime(date.year, date.month, date.day, hour);
    return applyQuietHours(at, preferences);
  }

  /// Whether [hour] falls inside the configured quiet window.
  static bool isWithinQuietHours(
    int hour,
    NotificationPreferences preferences,
  ) {
    final start = preferences.quietHourStart;
    final end = preferences.quietHourEnd;
    if (start == end) return false;
    // The window normally wraps midnight (22:00 → 08:00).
    return start > end
        ? (hour >= start || hour < end)
        : (hour >= start && hour < end);
  }

  /// Moves a time that lands inside the quiet window to the moment it ends.
  static DateTime applyQuietHours(
    DateTime time,
    NotificationPreferences preferences,
  ) {
    if (!isWithinQuietHours(time.hour, preferences)) return time;

    final start = preferences.quietHourStart;
    final end = preferences.quietHourEnd;

    // Late evening rolls into the following morning; early morning stays put.
    final rollsToTomorrow = start > end && time.hour >= start;
    final target = time.add(Duration(days: rollsToTomorrow ? 1 : 0));
    return DateTime(target.year, target.month, target.day, end);
  }

  /// Keeps the earliest entry per id, so an insight and its payment reminder
  /// can never both claim the same slot.
  static List<ScheduledNotification> _deduplicate(
    List<ScheduledNotification> notifications,
  ) {
    final seen = <int, ScheduledNotification>{};
    for (final notification in notifications) {
      seen.putIfAbsent(notification.id, () => notification);
    }
    return seen.values.toList();
  }
}
