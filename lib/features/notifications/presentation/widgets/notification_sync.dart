import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/presentation/widgets/insight_presenter.dart';
import '../../domain/entities/scheduled_notification.dart';
import '../../domain/services/notification_service.dart';
import '../controllers/notification_controller.dart';

/// Keeps the device's pending notifications in step with the app.
///
/// Sits just inside `MaterialApp` so it can read `AppL10n`: the schedule is
/// computed in the domain, but the words are produced here, which means
/// switching language re-renders every pending notification rather than
/// leaving yesterday's language sitting in the OS queue.
class NotificationSync extends ConsumerStatefulWidget {
  const NotificationSync({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<NotificationSync> createState() => _NotificationSyncState();
}

class _NotificationSyncState extends ConsumerState<NotificationSync> {
  @override
  void initState() {
    super.initState();
    // Fire and forget: a device that refuses notifications must not stop the
    // app from starting.
    ref.read(notificationServiceProvider).initialize();
  }

  NotificationCopy _render(ScheduledNotification notification) {
    final text = presentInsight(
      notification.insight,
      AppL10n.of(context),
      ref.read(moneyFormatterProvider),
    );
    return (title: text.title, body: text.message);
  }

  /// Signature of what was last handed to the OS.
  ///
  /// Rebuilds are frequent and rescheduling is not free, so the schedule is
  /// only pushed when something that affects it has actually changed — the
  /// notifications themselves, or the language they are written in.
  String? _lastSynced;

  String _signatureFor(List<ScheduledNotification> schedule, String locale) {
    final entries = schedule
        .map((n) => '${n.id}@${n.scheduledFor.toIso8601String()}')
        .toList()
      ..sort();
    return '$locale|${entries.join(';')}';
  }

  Future<void> _sync(List<ScheduledNotification> schedule, String locale) async {
    final signature = _signatureFor(schedule, locale);
    if (signature == _lastSynced) return;
    _lastSynced = signature;

    final service = ref.read(notificationServiceProvider);
    if (schedule.isEmpty) {
      await service.cancelAll();
      return;
    }
    await service.sync(schedule, _render);
  }

  @override
  Widget build(BuildContext context) {
    // Watched, not read: a change of language or currency re-renders every
    // pending notification rather than leaving stale copy in the OS queue.
    final locale = ref.watch(localeProvider).languageCode;
    final currency = ref.watch(currencyProvider).code;

    // Web has no notification scheduler, so skip the work entirely.
    if (!kIsWeb) {
      ref.watch(notificationScheduleProvider).whenData(
            (schedule) => _sync(schedule, '$locale-$currency'),
          );
    }

    return widget.child;
  }
}
