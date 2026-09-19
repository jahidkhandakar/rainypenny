import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/trend_chip.dart';

/// The two compact summary cards under the balance hero.
///
/// Colour carries the meaning: teal for money in, deep blue for money out.
///
/// Takes the four figures rather than a summary object so it can be fed by
/// either a salary cycle or an arbitrary reporting window without the widget
/// needing to know which.
class IncomeExpenseCards extends StatelessWidget {
  const IncomeExpenseCards({
    super.key,
    required this.income,
    required this.expenses,
    required this.incomeChange,
    required this.expenseChange,
    this.onIncomeTap,
    this.onExpenseTap,
  });

  final double income;
  final double expenses;
  final double incomeChange;
  final double expenseChange;
  final VoidCallback? onIncomeTap;
  final VoidCallback? onExpenseTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    // Both cards hold the same three rows, so they come out the same height on
    // their own. IntrinsicHeight used to force that, but it under-measures the
    // FittedBox holding the amount, and in a script with taller glyphs than
    // Latin — Arabic, Urdu, Devanagari — the content then overflowed the height
    // it had reported. Letting each card size itself is both simpler and right
    // in every language.
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _SummaryCard(
            label: l10n.income,
            amount: income,
            change: incomeChange,
            color: AppColors.income,
            icon: CupertinoIcons.arrow_down,
            goodWhenRising: true,
            onTap: onIncomeTap,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: _SummaryCard(
            label: l10n.expenses,
            amount: expenses,
            change: expenseChange,
            color: context.expenseColor,
            icon: CupertinoIcons.arrow_up,
            goodWhenRising: false,
            onTap: onExpenseTap,
          ),
        ),
      ],
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
                  style: AppTypography.label.copyWith(color: context.textSecondary),
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
