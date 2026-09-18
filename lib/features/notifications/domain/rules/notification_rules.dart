import '../../../financial/domain/entities/insight.dart';
import '../entities/notification_preferences.dart';

/// When an insight is worth interrupting someone for, and on which channel.
///
/// The insight engine decides what is *true*; these rules decide what is worth
/// a buzz in someone's pocket. Keeping the two separate means the dashboard can
/// show a gentle observation that never becomes a notification.
abstract final class NotificationRules {
  /// Days before a payment falls due that the reminder fires.
  static const int paymentReminderLeadDays = 3;

  /// Informative insights are shown in the app but never pushed; only these
  /// levels are worth an interruption.
  static bool isWorthDelivering(Insight insight) {
    return switch (insight.level) {
      InsightLevel.critical || InsightLevel.warning => true,
      // A goal being nearly funded is genuinely nice to hear about.
      InsightLevel.positive => insight.code == InsightCode.goalNearlyFunded,
      InsightLevel.informative => false,
    };
  }

  static NotificationChannel channelFor(Insight insight) {
    if (insight.code == InsightCode.happyWeekend) {
      return NotificationChannel.weekendGreeting;
    }
    return switch (insight.topic) {
      InsightTopic.budget => NotificationChannel.budgetAlerts,
      InsightTopic.debt => NotificationChannel.paymentReminders,
      InsightTopic.savings => NotificationChannel.savingsUpdates,
      InsightTopic.engagement => NotificationChannel.dailyReminders,
      InsightTopic.spending ||
      InsightTopic.income => NotificationChannel.budgetAlerts,
    };
  }

  /// The insight code that carries the copy for a given time of day.
  static InsightCode codeForSlot(DailyReminderSlot slot) => switch (slot) {
    DailyReminderSlot.morning => InsightCode.expenseReminderMorning,
    DailyReminderSlot.noon => InsightCode.expenseReminderNoon,
    DailyReminderSlot.afternoon => InsightCode.expenseReminderAfternoon,
    DailyReminderSlot.evening => InsightCode.expenseReminderEvening,
  };

  /// A stable 32-bit id per insight, so re-running the scheduler replaces a
  /// pending notification rather than adding a second copy.
  static int idFor(String insightId) {
    // FNV-1a, masked into the positive 31-bit range the platforms accept.
    var hash = 0x811c9dc5;
    for (final unit in insightId.codeUnits) {
      hash ^= unit;
      hash = (hash * 0x01000193) & 0xFFFFFFFF;
    }
    return hash & 0x7FFFFFFF;
  }
}
