import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rainypenny/core/settings/settings_providers.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/trend_chip.dart';

class IncomeExpenseCards extends StatelessWidget {
  const IncomeExpenseCards({
    super.key,
    required this.income,
    required this.expenses,
    required this.incomeChange,
    required this.expenseChange,
    this.remaining,
    this.onIncomeTap,
    this.onExpenseTap,
    this.onRemainingTap,
  });

  final double income;
  final double expenses;
  final double incomeChange;
  final double expenseChange;

  final double? remaining;

  final VoidCallback? onIncomeTap;
  final VoidCallback? onExpenseTap;
  final VoidCallback? onRemainingTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    final remainingAmount = remaining ?? income - expenses;

    return Column(
      children: [
        _RemainingCard(amount: remainingAmount, onTap: onRemainingTap),

        const SizedBox(height: AppSpacing.md),

        Row(
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
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// INCOME / EXPENSE CARD
// ═══════════════════════════════════════════════════════════════════════════

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
          // Header
          Row(
            children: [
              _SummaryIcon(icon: icon, color: color),

              const SizedBox(width: AppSpacing.sm),

              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.label.copyWith(
                    color: context.textSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.md),

          // Amount
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              money.format(amount, decimals: false),
              style: AppTypography.amountLarge.copyWith(
                color: color,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          // Change
          TrendChip(change: change, goodWhenRising: goodWhenRising),
        ],
      ),
    );
  }
}

class _SummaryIcon extends StatelessWidget {
  const _SummaryIcon({required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.08)),
      ),
      child: Icon(icon, size: 18, color: color),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// REMAINING CARD
// ═══════════════════════════════════════════════════════════════════════════

class _RemainingCard extends ConsumerWidget {
  const _RemainingCard({required this.amount, this.onTap});

  final double amount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);

    final money = ref.watch(moneyFormatterProvider);
    final currency = ref.watch(currencyProvider);

    final card = Container(
      height: 118,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),

        // Theme-aware background.
        color: context.colors.surface,

        border: Border.all(color: context.colors.primary.withValues(alpha: 0.10)),

        boxShadow: [
          BoxShadow(
            color: context.colors.primary.withValues(alpha: 0.07),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Soft theme-colored glow.
          Positioned(
            right: -40,
            top: -60,
            child: IgnorePointer(
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.primary.withValues(alpha: 0.07),
                ),
              ),
            ),
          ),

          // ────────────────────────────────────────────────────────────────
          // Text content
          // ────────────────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  l10n.remaining,
                  style: AppTypography.label.copyWith(
                    color: context.textPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 4),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.chevron_right, size: 22, color: context.colors.primary),

                    const SizedBox(width: 2),

                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: AlignmentDirectional.centerStart,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              money.format(amount, decimals: false),
                              style: AppTypography.amountLarge.copyWith(
                                color: context.textPrimary,
                                fontWeight: FontWeight.w900,
                                fontSize: 30,
                                letterSpacing: -1,
                              ),
                            ),

                            const SizedBox(width: 7),

                            Text(
                              currency.name,
                              style: AppTypography.label.copyWith(
                                color: context.textSecondary,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ────────────────────────────────────────────────────────────────
          // Actual illustration asset
          // ────────────────────────────────────────────────────────────────
          Positioned(
            right: -2,
            bottom: -3,
            child: IgnorePointer(
              child: Image.asset(
                'assets/illustrations/money_stash.png',
                width: 135,
                height: 110,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );

    if (onTap == null) {
      return card;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(onTap: onTap, borderRadius: BorderRadius.circular(22), child: card),
    );
  }
}
