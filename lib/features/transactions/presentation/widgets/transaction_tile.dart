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
import '../../../financial/domain/entities/transaction.dart';

/// One ledger row, shared by the dashboard preview and the full list.
///
/// Expenses are deliberately *not* red: an expense is not a problem. Red is
/// reserved for exceeded budgets and overdue payments.
class TransactionTile extends ConsumerWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    this.onTap,
    this.showDate = true,
  });

  final Transaction transaction;
  final VoidCallback? onTap;
  final bool showDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final l10n = AppL10n.of(context);
    final isIncome = transaction.isIncome;

    final subtitle = showDate
        ? '${dates.dayHeading(
            transaction.date,
            now: DateTime.now(),
            todayLabel: l10n.today,
            yesterdayLabel: l10n.yesterday,
          )} · ${transaction.category.name}'
        : transaction.category.name;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            IconBadge(
              icon: iconForCategory(transaction.category.icon),
              background: isIncome
                  ? AppColors.income.withValues(alpha: 0.12)
                  : context.tintFill,
              foreground: isIncome ? AppColors.income : AppColors.primary,
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Text(
              money.formatSigned(transaction.signedAmount),
              style: AppTypography.amountMedium.copyWith(
                color: isIncome ? AppColors.income : context.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
