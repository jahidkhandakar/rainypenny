import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/localization/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/theme/app_dimens.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/entrance.dart';
import '../../../core/widgets/states.dart';
import '../../financial/domain/entities/insight.dart';
import '../../financial/presentation/providers/finance_providers.dart';
import '../../financial/presentation/widgets/insight_card.dart';

/// The notification centre.
///
/// Everything here is produced by the rules engine, which is exactly what the
/// push-notification service will consume later — the same [Insight] objects,
/// localised and delivered to the device instead of drawn on screen.
class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final insights = ref.watch(insightsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.notifications),
        actions: [
          IconButton(
            tooltip: l10n.notificationSettings,
            icon: const Icon(Icons.tune_rounded),
            onPressed: () => context.push(AppRoutes.notificationSettings),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: insights.when(
        data: (list) {
          if (list.isEmpty) {
            return EmptyState(
              icon: Icons.notifications_none_rounded,
              title: l10n.noNotificationsTitle,
              message: l10n.noNotificationsBody,
            );
          }

          final urgent = list
              .where((i) =>
                  i.level == InsightLevel.critical ||
                  i.level == InsightLevel.warning)
              .toList();
          final rest = list.where((i) => !urgent.contains(i)).toList();

          return ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.lg,
              AppSpacing.page,
              AppSpacing.section,
            ),
            children: [
              if (urgent.isNotEmpty) ...[
                _GroupLabel(l10n.needsAttention),
                for (var i = 0; i < urgent.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: FadeSlideIn(
                      index: i,
                      child: InsightCard(insight: urgent[i]),
                    ),
                  ),
                const SizedBox(height: AppSpacing.lg),
              ],
              if (rest.isNotEmpty) ...[
                _GroupLabel(l10n.insights),
                for (var i = 0; i < rest.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: FadeSlideIn(
                      index: urgent.length + i,
                      child: InsightCard(insight: rest[i]),
                    ),
                  ),
              ],
            ],
          );
        },
        loading: () => ListView(
          padding: const EdgeInsets.all(AppSpacing.page),
          children: const [
            SkeletonCard(height: 70, lines: 2),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 70, lines: 2),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 70, lines: 2),
          ],
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(transactionsProvider),
        ),
      ),
    );
  }
}

class _GroupLabel extends StatelessWidget {
  const _GroupLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSpacing.xs,
        bottom: AppSpacing.sm,
      ),
      child: Text(
        text.toUpperCase(),
        style: AppTypography.overline.copyWith(color: context.textSecondary),
      ),
    );
  }
}
