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
        _RemainingCard(
          amount: remainingAmount,
          income: income,
          expenses: expenses,
          onTap: onRemainingTap,
        ),

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
  const _RemainingCard({
    required this.amount,
    required this.income,
    required this.expenses,
    this.onTap,
  });

  final double amount;
  final double income;
  final double expenses;
  final VoidCallback? onTap;

  /// Darkens [color] by [amount] (0-1) in HSL space, for a gradient stop.
  static Color _shade(Color color, double amount) {
    final hsl = HSLColor.fromColor(color);
    final darker = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return darker.toColor();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);

    final money = ref.watch(moneyFormatterProvider);
    final currency = ref.watch(currencyProvider);

    final isRtl = Directionality.of(context) == TextDirection.rtl;

    final primary = context.colors.primary;
    final gradientEnd = _shade(primary, 0.16);

    // How much of the income has been spent so far.
    final rawRatio = income > 0 ? expenses / income : 0.0;
    final ratio = rawRatio.clamp(0.0, 1.0);
    final isOverBudget = income > 0 && expenses > income;
    final percentLabel = '${(rawRatio * 100).round()}%';

    final card = Container(
      height: 152,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),

        // Gradient makes this card the visual anchor of the group, distinct
        // from the flat surface used by the income/expense cards below it.
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [primary, gradientEnd],
        ),

        boxShadow: [
          BoxShadow(
            color: primary.withValues(alpha: 0.28),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Soft glow, anchored to the trailing edge so it stays on the
          // same side as the illustration in RTL.
          PositionedDirectional(
            end: -40,
            top: -60,
            child: IgnorePointer(
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.08),
                ),
              ),
            ),
          ),

          // Soft backdrop behind the illustration so it reads clearly
          // against the colored background.
          PositionedDirectional(
            end: -10,
            bottom: -20,
            child: IgnorePointer(
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.06),
                ),
              ),
            ),
          ),

          // ────────────────────────────────────────────────────────────────
          // Text content
          // ────────────────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: AppSpacing.lg,
              end: AppSpacing.lg + 84, // keep clear of the illustration
              top: AppSpacing.md,
              bottom: AppSpacing.md,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        l10n.remaining,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.label.copyWith(
                          color: Colors.white.withValues(alpha: 0.85),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    // Spend ring: how much of this period's income is used up.
                    _SpendRing(ratio: ratio, isOverBudget: isOverBudget, label: percentLabel),
                  ],
                ),

                const SizedBox(height: 6),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      // Chevron should still "point forward" in RTL.
                      isRtl ? CupertinoIcons.chevron_left : CupertinoIcons.chevron_right,
                      size: 22,
                      color: Colors.white,
                    ),

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
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 30,
                                letterSpacing: -1,
                              ),
                            ),

                            const SizedBox(width: 7),

                            Text(
                              currency.name,
                              style: AppTypography.label.copyWith(
                                color: Colors.white.withValues(alpha: 0.75),
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
          PositionedDirectional(
            end: -2,
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

/// Small ring showing what fraction of income has been spent, with the
/// percentage centered inside and a status icon to make over-budget
/// states legible without extra copy.
class _SpendRing extends StatelessWidget {
  const _SpendRing({required this.ratio, required this.isOverBudget, required this.label});

  final double ratio;
  final bool isOverBudget;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46,
      height: 46,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 46,
            height: 46,
            child: CircularProgressIndicator(
              value: ratio,
              strokeWidth: 4,
              backgroundColor: Colors.white.withValues(alpha: 0.18),
              valueColor: AlwaysStoppedAnimation(
                isOverBudget ? Colors.white : Colors.white.withValues(alpha: 0.95),
              ),
            ),
          ),

          if (isOverBudget)
            const Icon(CupertinoIcons.exclamationmark, size: 14, color: Colors.white)
          else
            Text(
              label,
              style: AppTypography.label.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 10,
              ),
            ),
        ],
      ),
    );
  }
}
