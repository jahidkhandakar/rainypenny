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
    ];

    if (preferences.weeklySummary) {
      scheduled.add(_weeklySummary(preferences, now));
    }

    // Never schedule into the past, and keep the soonest first.
    final future = scheduled
        .where((n) => n.repeatsWeekly || n.scheduledFor.isAfter(now))
        .toList()
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

  /// A reminder a few days before each payment falls due.
  ///
  /// These are separate from the debt insights: an insight fires once the
  /// payment is already inside the warning window, whereas this is booked as
  /// soon as the due date is known.
  static List<ScheduledNotification> _paymentReminders(
    List<Loan> loans,
    NotificationPreferences preferences,
    DateTime now,
  ) {
    if (!preferences.paymentReminders) return const [];

    return loans.map((loan) {
      final due = loan.nextPaymentDate;
      final fireDate = due.subtract(
        const Duration(days: NotificationRules.paymentReminderLeadDays),
      );

      final insight = Insight(
        id: 'reminder-${loan.id}',
        code: InsightCode.debtDueSoon,
        level: InsightLevel.warning,
        topic: InsightTopic.debt,
        subject: loan.name,
        amount: loan.monthlyPayment,
        days: NotificationRules.paymentReminderLeadDays,
      );

      return ScheduledNotification(
        id: NotificationRules.idFor(insight.id),
        insight: insight,
        channel: NotificationChannel.paymentReminders,
        scheduledFor: _atHour(fireDate, preferences.reminderHour, preferences),
      );
    }).toList();
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
      repeatsWeekly: true,
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

  /// The next occurrence of [weekday] at [hour], always strictly in the future.
  static DateTime nextWeekday(DateTime now, int weekday, int hour) {
    var daysAhead = (weekday - now.weekday) % 7;
    if (daysAhead < 0) daysAhead += 7;

    var candidate = DateTime(
      now.year,
      now.month,
      now.day + daysAhead,
      hour,
    );
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

  /// Moves a time that lands inside the quiet window to the moment it ends.
  static DateTime applyQuietHours(
    DateTime time,
    NotificationPreferences preferences,
  ) {
    final start = preferences.quietHourStart;
    final end = preferences.quietHourEnd;
    if (start == end) return time;

    final hour = time.hour;
    // The window normally wraps midnight (22:00 → 08:00).
    final inQuiet =
        start > end ? (hour >= start || hour < end) : (hour >= start && hour < end);
    if (!inQuiet) return time;

    // Late evening rolls into the following morning; early morning stays put.
    final rollsToTomorrow = start > end && hour >= start;
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
