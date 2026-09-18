import '../../../financial/domain/entities/insight.dart';
import 'notification_preferences.dart';

/// How often a scheduled notification recurs.
enum NotificationRepeat {
  /// Fires once, then it is gone.
  once,

  /// Same time every day — the expense reminders.
  daily,

  /// Same weekday and time every week — the summary and the weekend greeting.
  weekly,
}

/// A notification the app intends to deliver at a point in time.
///
/// It carries an [Insight] rather than a title and body: the copy is produced
/// at delivery time, in whatever language the user has chosen by then. The same
/// object therefore works for a local schedule and for a remote push payload.
class ScheduledNotification {
  const ScheduledNotification({
    required this.id,
    required this.insight,
    required this.channel,
    required this.scheduledFor,
    this.repeat = NotificationRepeat.once,
  });

  /// Stable 32-bit id, derived from the insight so rescheduling replaces the
  /// pending notification instead of stacking duplicates.
  final int id;

  final Insight insight;
  final NotificationChannel channel;
  final DateTime scheduledFor;

  final NotificationRepeat repeat;

  bool get repeatsWeekly => repeat == NotificationRepeat.weekly;

  bool get repeatsDaily => repeat == NotificationRepeat.daily;

  bool get recurs => repeat != NotificationRepeat.once;

  /// Deep-link target, so tapping a notification opens the right screen.
  ///
  /// The engagement nudges are the interesting case: a reminder to record an
  /// expense should land on the form that records one, not on a summary the
  /// user then has to navigate away from.
  String get route => switch (insight.code) {
    InsightCode.expenseReminderMorning ||
    InsightCode.expenseReminderNoon ||
    InsightCode.expenseReminderAfternoon ||
    InsightCode.expenseReminderEvening => '/add',
    InsightCode.happyWeekend => '/home',
    _ => switch (insight.topic) {
      InsightTopic.budget => '/budget',
      InsightTopic.savings => '/savings',
      InsightTopic.debt => '/loans',
      InsightTopic.spending ||
      InsightTopic.income ||
      InsightTopic.engagement => '/reports',
    },
  };
}
