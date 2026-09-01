import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

import '../../domain/entities/notification_preferences.dart';
import '../../domain/entities/scheduled_notification.dart';
import '../../domain/services/notification_service.dart';

/// Delivers notifications through the OS scheduler.
///
/// Everything is scheduled on-device: the rules run locally against a ledger
/// that is already on the phone, so alerts keep working with no network and no
/// financial data leaves the device.
class LocalNotificationService implements NotificationService {
  LocalNotificationService({FlutterLocalNotificationsPlugin? plugin})
      : _plugin = plugin ?? FlutterLocalNotificationsPlugin();

  final FlutterLocalNotificationsPlugin _plugin;
  bool _initialised = false;

  /// Set by the app so a tapped notification can deep-link.
  static void Function(String route)? onNotificationTapped;

  static const _channels = {
    NotificationChannel.budgetAlerts: (
      id: 'budget_alerts',
      name: 'Budget alerts',
      description: 'When a budget is close to, or over, its limit.',
    ),
    NotificationChannel.paymentReminders: (
      id: 'payment_reminders',
      name: 'Payment reminders',
      description: 'Ahead of a loan or credit card payment falling due.',
    ),
    NotificationChannel.savingsUpdates: (
      id: 'savings_updates',
      name: 'Savings updates',
      description: 'Progress towards your savings goals.',
    ),
    NotificationChannel.weeklySummary: (
      id: 'weekly_summary',
      name: 'Weekly summary',
      description: 'A digest of the week just gone.',
    ),
  };

  @override
  Future<void> initialize() async {
    if (_initialised) return;

    tz_data.initializeTimeZones();
    // Scheduling in the device's own zone keeps "9am" meaning 9am after the
    // user travels or the clocks change.
    try {
      final zone = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(zone.identifier));
    } catch (_) {
      // A missing or unrecognised zone must not stop the app from starting.
    }

    await _plugin.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(
          // Permission is requested explicitly, after the user has seen why.
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
      onDidReceiveNotificationResponse: (response) {
        final route = response.payload;
        if (route != null && route.isNotEmpty) {
          onNotificationTapped?.call(route);
        }
      },
    );

    await _createAndroidChannels();
    _initialised = true;
  }

  Future<void> _createAndroidChannels() async {
    final android = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (android == null) return;

    for (final channel in _channels.values) {
      await android.createNotificationChannel(
        AndroidNotificationChannel(
          channel.id,
          channel.name,
          description: channel.description,
          importance: Importance.defaultImportance,
        ),
      );
    }
  }

  @override
  Future<bool> hasPermission() async {
    if (kIsWeb) return false;

    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.areNotificationsEnabled() ?? false;
    }
    // iOS has no synchronous query; requesting again is a no-op once granted.
    return requestPermission();
  }

  @override
  Future<bool> requestPermission() async {
    if (kIsWeb) return false;
    await initialize();

    if (Platform.isAndroid) {
      final android = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      return await android?.requestNotificationsPermission() ?? false;
    }
    if (Platform.isIOS || Platform.isMacOS) {
      final ios = _plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();
      return await ios?.requestPermissions(alert: true, badge: true, sound: true) ??
          false;
    }
    return false;
  }

  @override
  Future<void> sync(
    List<ScheduledNotification> notifications,
    NotificationRenderer render,
  ) async {
    if (kIsWeb) return;
    await initialize();

    // Wholesale replacement: the schedule is derived from the ledger, so this
    // is the only way to guarantee a reminder for a deleted loan disappears.
    await _plugin.cancelAll();

    for (final notification in notifications) {
      final copy = render(notification);
      final channel = _channels[notification.channel]!;

      await _plugin.zonedSchedule(
        id: notification.id,
        title: copy.title,
        body: copy.body,
        payload: notification.route,
        scheduledDate: tz.TZDateTime.from(notification.scheduledFor, tz.local),
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        matchDateTimeComponents:
            notification.repeatsWeekly ? DateTimeComponents.dayOfWeekAndTime : null,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            importance: Importance.defaultImportance,
            priority: Priority.defaultPriority,
            styleInformation: BigTextStyleInformation(copy.body),
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
      );
    }
  }

  @override
  Future<void> cancelAll() async {
    if (kIsWeb) return;
    await _plugin.cancelAll();
  }

  @override
  Future<List<PendingNotification>> pending() async {
    if (kIsWeb) return const [];
    final requests = await _plugin.pendingNotificationRequests();
    return requests
        .map(
          (request) => PendingNotification(
            id: request.id,
            title: request.title ?? '',
            body: request.body ?? '',
          ),
        )
        .toList();
  }
}
