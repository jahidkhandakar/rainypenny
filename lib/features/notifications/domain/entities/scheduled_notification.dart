import '../../../financial/domain/entities/insight.dart';
import 'notification_preferences.dart';

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
    this.repeatsWeekly = false,
  });

  /// Stable 32-bit id, derived from the insight so rescheduling replaces the
  /// pending notification instead of stacking duplicates.
  final int id;

  final Insight insight;
  final NotificationChannel channel;
  final DateTime scheduledFor;

  /// Set for the weekly summary, which recurs rather than firing once.
  final bool repeatsWeekly;

  /// Deep-link target, so tapping a notification opens the right screen.
  String get route => switch (insight.topic) {
        InsightTopic.budget => '/budget',
        InsightTopic.savings => '/savings',
        InsightTopic.debt => '/loans',
        InsightTopic.spending || InsightTopic.income => '/reports',
      };
}
