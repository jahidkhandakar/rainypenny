import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../domain/entities/insight.dart';
import 'insight_presenter.dart';

/// One rule-generated observation.
///
/// The same widget renders the dashboard headline insight, the Reports list
/// and the notification centre — the level decides the colour and icon, and
/// the presenter supplies copy in the active language.
class InsightCard extends ConsumerWidget {
  const InsightCard({
    super.key,
    required this.insight,
    this.onTap,
    this.dense = false,
  });

  final Insight insight;
  final VoidCallback? onTap;
  final bool dense;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = colorForInsight(insight.level);
    final text = presentInsight(
      insight,
      AppL10n.of(context),
      ref.watch(moneyFormatterProvider),
    );

    return AppCard(
      onTap: onTap,
      color: dense ? null : color.withValues(alpha: 0.06),
      borderColor: color.withValues(alpha: 0.22),
      padding: EdgeInsets.all(dense ? AppSpacing.md : AppSpacing.lg),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconBadge(
            icon: iconForInsight(insight.level),
            size: dense ? 36 : 40,
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
                const SizedBox(height: 3),
                Text(
                  text.message,
                  style: AppTypography.body.copyWith(
                    fontSize: 13,
                    color: context.textSecondary,
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
