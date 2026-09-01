import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/presentation/widgets/insight_presenter.dart';
import '../../../profile/presentation/widgets/settings_tile.dart';
import '../../domain/entities/notification_preferences.dart';
import '../../domain/entities/scheduled_notification.dart';
import '../controllers/notification_controller.dart';

/// Which alerts the user wants, when they arrive, and what is currently queued.
class NotificationSettingsScreen extends ConsumerWidget {
  const NotificationSettingsScreen({super.key});

  Future<void> _requestPermission(BuildContext context, WidgetRef ref) async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);

    final granted = await ref
        .read(notificationServiceProvider)
        .requestPermission();
    ref.invalidate(notificationPermissionProvider);

    if (granted) return;
    messenger.showSnackBar(SnackBar(content: Text(l10n.permissionDenied)));
  }

  Future<void> _pickReminderHour(BuildContext context, WidgetRef ref) async {
    final preferences = ref.read(notificationPreferencesProvider);
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: preferences.reminderHour, minute: 0),
    );
    if (picked == null) return;
    await ref
        .read(notificationPreferencesProvider.notifier)
        .setReminderHour(picked.hour);
  }

  Future<void> _pickQuietHours(BuildContext context, WidgetRef ref) async {
    final preferences = ref.read(notificationPreferencesProvider);

    final start = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: preferences.quietHourStart, minute: 0),
      helpText: AppL10n.of(context).quietHours,
    );
    if (start == null || !context.mounted) return;

    final end = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: preferences.quietHourEnd, minute: 0),
      helpText: AppL10n.of(context).quietHours,
    );
    if (end == null) return;

    await ref
        .read(notificationPreferencesProvider.notifier)
        .setQuietHours(start.hour, end.hour);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final preferences = ref.watch(notificationPreferencesProvider);
    final permission = ref.watch(notificationPermissionProvider);
    final schedule = ref.watch(notificationScheduleProvider);

    void toggle(NotificationChannel channel, bool value) {
      ref
          .read(notificationPreferencesProvider.notifier)
          .setChannel(channel, value);
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.notificationSettings)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.sm,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          // Only nag about permission when it is actually missing, and never on
          // web, where there is no notification scheduler to grant access to.
          if (!kIsWeb && permission.asData?.value == false)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: FadeSlideIn(
                child: _PermissionCard(
                  onAllow: () => _requestPermission(context, ref),
                ),
              ),
            ),

          FadeSlideIn(
            index: 1,
            child: SettingsGroup(
              title: l10n.alertsSection,
              children: [
                _ChannelTile(
                  icon: Icons.donut_small_rounded,
                  label: l10n.budgetAlerts,
                  description: l10n.budgetAlertsBody,
                  value: preferences.budgetAlerts,
                  onChanged: (v) => toggle(NotificationChannel.budgetAlerts, v),
                ),
                _ChannelTile(
                  icon: Icons.account_balance_rounded,
                  label: l10n.paymentReminders,
                  description: l10n.paymentRemindersBody,
                  value: preferences.paymentReminders,
                  onChanged: (v) =>
                      toggle(NotificationChannel.paymentReminders, v),
                ),
                _ChannelTile(
                  icon: Icons.savings_rounded,
                  label: l10n.savingsUpdates,
                  description: l10n.savingsUpdatesBody,
                  value: preferences.savingsUpdates,
                  onChanged: (v) =>
                      toggle(NotificationChannel.savingsUpdates, v),
                ),
                _ChannelTile(
                  icon: Icons.insert_chart_rounded,
                  label: l10n.weeklySummaryLabel,
                  description: l10n.weeklySummaryBody,
                  value: preferences.weeklySummary,
                  onChanged: (v) =>
                      toggle(NotificationChannel.weeklySummary, v),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 2,
            child: SettingsGroup(
              title: l10n.scheduleSection,
              children: [
                SettingsTile(
                  icon: Icons.schedule_rounded,
                  label: l10n.reminderTime,
                  value: _formatHour(context, preferences.reminderHour),
                  onTap: () => _pickReminderHour(context, ref),
                ),
                SettingsTile(
                  icon: Icons.bedtime_outlined,
                  label: l10n.quietHours,
                  value: l10n.quietHoursValue(
                    _formatHour(context, preferences.quietHourStart),
                    _formatHour(context, preferences.quietHourEnd),
                  ),
                  onTap: () => _pickQuietHours(context, ref),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.xs,
              bottom: AppSpacing.sm,
            ),
            child: Text(
              l10n.upcomingAlerts.toUpperCase(),
              style: AppTypography.overline.copyWith(
                color: context.textSecondary,
              ),
            ),
          ),
          schedule.when(
            data: (list) {
              if (preferences.allSilenced) {
                return AppCard(
                  child: EmptyState(
                    icon: Icons.notifications_off_rounded,
                    title: l10n.allNotificationsOff,
                    message: l10n.noScheduledAlertsBody,
                    compact: true,
                  ),
                );
              }
              if (list.isEmpty) {
                return AppCard(
                  child: EmptyState(
                    icon: Icons.notifications_none_rounded,
                    title: l10n.noScheduledAlerts,
                    message: l10n.noScheduledAlertsBody,
                    compact: true,
                  ),
                );
              }
              return Column(
                children: [
                  for (var i = 0; i < list.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.md),
                      child: FadeSlideIn(
                        index: (i + 3).clamp(0, 8),
                        child: _ScheduledCard(notification: list[i]),
                      ),
                    ),
                ],
              );
            },
            loading: () => const SkeletonCard(height: 80, lines: 2),
            error: (_, _) => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  static String _formatHour(BuildContext context, int hour) {
    return TimeOfDay(hour: hour, minute: 0).format(context);
  }
}

class _PermissionCard extends StatelessWidget {
  const _PermissionCard({required this.onAllow});

  final VoidCallback onAllow;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return AppCard(
      color: AppColors.warning.withValues(alpha: 0.07),
      borderColor: AppColors.warning.withValues(alpha: 0.24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconBadge(
                icon: Icons.notifications_off_rounded,
                background: AppColors.warning.withValues(alpha: 0.14),
                foreground: AppColors.warning,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Text(
                  l10n.permissionRequired,
                  style: AppTypography.title.copyWith(
                    color: context.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            l10n.permissionRequiredBody,
            style: AppTypography.body.copyWith(
              fontSize: 13,
              color: context.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          ElevatedButton(
            onPressed: onAllow,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
              minimumSize: const Size.fromHeight(48),
            ),
            child: Text(l10n.allowNotifications),
          ),
        ],
      ),
    );
  }
}

class _ChannelTile extends StatelessWidget {
  const _ChannelTile({
    required this.icon,
    required this.label,
    required this.description,
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final String label;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            IconBadge(icon: icon, size: 34, radius: 11),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Switch(value: value, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}

/// A queued notification, shown exactly as it will arrive.
class _ScheduledCard extends ConsumerWidget {
  const _ScheduledCard({required this.notification});

  final ScheduledNotification notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final text = presentInsight(
      notification.insight,
      l10n,
      ref.watch(moneyFormatterProvider),
    );
    final color = colorForInsight(notification.insight.level);

    return AppCard(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconBadge(
            icon: iconForInsight(notification.insight.level),
            size: 36,
            background: color.withValues(alpha: 0.14),
            foreground: color,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text.title,
                  style: AppTypography.title.copyWith(
                    color: context.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  text.message,
                  style: AppTypography.body.copyWith(
                    fontSize: 13,
                    color: context.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  notification.repeatsWeekly
                      ? l10n.everyWeek
                      : l10n.scheduledFor(
                          '${dates.short(notification.scheduledFor)}, '
                          '${TimeOfDay.fromDateTime(notification.scheduledFor).format(context)}',
                        ),
                  style: AppTypography.caption.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
