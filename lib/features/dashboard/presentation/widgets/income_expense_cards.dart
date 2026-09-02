import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../financial/domain/entities/period_summary.dart';

/// The two compact summary cards under the balance hero.
///
/// Colour carries the meaning: teal for money in, deep blue for money out.
class IncomeExpenseCards extends StatelessWidget {
  const IncomeExpenseCards({
    super.key,
    required this.summary,
    this.onIncomeTap,
    this.onExpenseTap,
  });

  final PeriodSummary summary;
  final VoidCallback? onIncomeTap;
  final VoidCallback? onExpenseTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    // IntrinsicHeight keeps the two cards the same height without asking for
    // an unbounded height from the surrounding scroll view.
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _SummaryCard(
              label: l10n.income,
              amount: summary.income,
              change: summary.incomeChange,
              color: AppColors.income,
              icon: Icons.arrow_downward_rounded,
              goodWhenRising: true,
              onTap: onIncomeTap,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: _SummaryCard(
              label: l10n.expenses,
              amount: summary.expenses,
              change: summary.expenseChange,
              color: context.expenseColor,
              icon: Icons.arrow_upward_rounded,
              goodWhenRising: false,
              onTap: onExpenseTap,
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryCard extends ConsumerWidget {
  const _SummaryCard({
    required this.label,
    required this.amount,
    required this.change,
    required this.color,
    required this.icon,
    required this.goodWhenRising,
    this.onTap,
  });

  final String label;
  final double amount;
  final double change;
  final Color color;
  final IconData icon;
  final bool goodWhenRising;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final money = ref.watch(moneyFormatterProvider);

    return AppCard(
      onTap: onTap,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Icon(icon, size: 15, color: color),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.label.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              money.format(amount, decimals: false),
              style: AppTypography.amountLarge.copyWith(color: color),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TrendChip(change: change, goodWhenRising: goodWhenRising),
          ),
        ],
      ),
    );
  }
}
