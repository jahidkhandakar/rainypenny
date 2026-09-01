import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/rules/budget_rules.dart';
import '../../../financial/presentation/widgets/budget_status_visuals.dart';

/// A category budget with its progress bar.
///
/// Shared between the dashboard preview ([dense] = true) and the full Budget
/// screen, so the two can never drift apart visually.
class BudgetRow extends ConsumerWidget {
  const BudgetRow({
    super.key,
    required this.budget,
    this.dense = false,
    this.onTap,
  });

  final Budget budget;
  final bool dense;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final money = ref.watch(moneyFormatterProvider);
    final l10n = AppL10n.of(context);
    final status = BudgetRules.statusOf(budget);
    final color = colorForBudgetStatus(status);

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (!dense) ...[
              IconBadge(
                icon: iconForCategory(budget.category.icon),
                size: 38,
                background: color.withValues(alpha: 0.12),
                foreground: color,
              ),
              const SizedBox(width: AppSpacing.md),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    budget.category.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    money.formatRatio(budget.spent, budget.limit),
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Text(
              '${budget.percentUsed}%',
              style: AppTypography.amountMedium.copyWith(color: color),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        AppProgressBar(value: budget.progress, color: color, height: 7),
        if (!dense) ...[
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              StatusChip(
                label: labelForBudgetStatus(status, l10n),
                color: color,
                icon: iconForBudgetStatus(status),
              ),
              const Spacer(),
              Text(
                budget.isExceeded
                    ? '${money.format(budget.remaining.abs(), decimals: false)} ${l10n.overBudget.toLowerCase()}'
                    : '${money.format(budget.remaining, decimals: false)} ${l10n.remaining.toLowerCase()}',
                style: AppTypography.caption.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ],
    );

    if (dense) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        child: content,
      );
    }

    return AppCard(onTap: onTap, child: content);
  }
}
