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
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../financial/domain/entities/savings_goal.dart';

/// A savings goal card. Teal throughout — savings should feel encouraging.
class SavingsGoalCard extends ConsumerWidget {
  const SavingsGoalCard({
    super.key,
    required this.goal,
    this.onAddFunds,
    this.onTap,
    this.highlighted = false,
  });

  final SavingsGoal goal;
  final VoidCallback? onAddFunds;
  final VoidCallback? onTap;

  /// The featured goal on the dashboard gets a tinted surface.
  final bool highlighted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final l10n = AppL10n.of(context);

    return AppCard(
      onTap: onTap,
      color: highlighted ? context.tintFill : null,
      borderColor: highlighted
          ? context.brandSecondary.withValues(alpha: 0.28)
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconBadge(
                icon: iconForCategory(goal.icon),
                background: context.brandSecondary.withValues(alpha: 0.14),
                foreground: context.brandSecondary,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      goal.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.title.copyWith(
                        color: context.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${l10n.target} · ${dates.monthYear(goal.targetDate)}',
                      style: AppTypography.caption.copyWith(
                        color: context.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              if (goal.isComplete)
                StatusChip(
                  label: l10n.goalComplete,
                  color: AppColors.success,
                  icon: Icons.check_circle_rounded,
                )
              else
                Text(
                  '${goal.percentComplete}%',
                  style: AppTypography.amountMedium.copyWith(
                    color: context.brandSecondary,
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                money.format(goal.saved, decimals: false),
                style: AppTypography.amountLarge.copyWith(
                  color: context.textPrimary,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '/ ${money.format(goal.target, decimals: false)}',
                style: AppTypography.body.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          AppProgressBar(value: goal.progress, color: context.brandSecondary),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(
                child: Text(
                  goal.isComplete
                      ? l10n.goalComplete
                      : '${money.format(goal.remaining, decimals: false)} ${l10n.remaining.toLowerCase()}'
                          ' · ${l10n.monthlyContribution} '
                          '${money.format(goal.monthlyContribution, decimals: false)}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.caption.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ),
              if (onAddFunds != null)
                TextButton(
                  onPressed: onAddFunds,
                  child: Text(l10n.addFunds),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
