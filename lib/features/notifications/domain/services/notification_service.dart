import '../entities/scheduled_notification.dart';

/// Renders a scheduled notification into the text that reaches the device.
///
/// Supplied by the presentation layer so the copy is produced in the language
/// and currency the user has chosen, without the service knowing about either.
typedef NotificationCopy = ({String title, String body});
typedef NotificationRenderer = NotificationCopy Function(ScheduledNotification);

/// Delivers notifications to the device.
///
/// The scheduler decides *what* and *when*; this only executes. Splitting them
/// keeps every policy decision unit-testable and lets web and tests drop in a
/// no-op without changing a line of calling code.
abstract interface class NotificationService {
  /// Sets up channels and timezone data. Safe to call more than once.
  Future<void> initialize();

  /// Whether the user has granted permission to post notifications.
  Future<bool> hasPermission();

  /// Prompts for permission, returning the user's answer.
  Future<bool> requestPermission();

  /// Replaces the entire pending schedule with [notifications].
  ///
  /// Wholesale replacement rather than incremental updates: the schedule is
  /// derived from the ledger, so recomputing it is cheap and always correct,
  /// where diffing would risk stale reminders surviving a deleted loan.
  Future<void> sync(
    List<ScheduledNotification> notifications,
    NotificationRenderer render,
  );

  /// Cancels everything pending — used when the user silences every channel
  /// or signs out.
  Future<void> cancelAll();

  /// Pending notifications, for the debug list in Settings.
  Future<List<PendingNotification>> pending();
}

/// A notification the platform is currently holding.
class PendingNotification {
  const PendingNotification({
    required this.id,
    required this.title,
    required this.body,
  });

  final int id;
  final String title;
  final String body;
}

/// Used on web and in tests, where there is no notification platform.
class NoopNotificationService implements NotificationService {
  const NoopNotificationService();

  @override
  Future<void> initialize() async {}

  @override
  Future<bool> hasPermission() async => false;

  @override
  Future<bool> requestPermission() async => false;

  @override
  Future<void> sync(
    List<ScheduledNotification> notifications,
    NotificationRenderer render,
  ) async {}

  @override
  Future<void> cancelAll() async {}

  @override
  Future<List<PendingNotification>> pending() async => const [];
}
