import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../financial/domain/entities/period_summary.dart';

/// The signature card: the one place the full brand gradient runs at scale.
class BalanceCard extends ConsumerWidget {
  const BalanceCard({super.key, required this.summary});

  final PeriodSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: BoxDecoration(
        gradient: AppColors.brandGradient,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryDark.withValues(alpha: 0.22),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          // A soft highlight so the flat gradient gains a little depth.
          PositionedDirectional(
            top: -70,
            end: -50,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.06),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      l10n.totalBalance.toUpperCase(),
                      style: AppTypography.overline.copyWith(
                        color: Colors.white.withValues(alpha: 0.72),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    size: 18,
                    color: Colors.white.withValues(alpha: 0.55),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              AnimatedAmount(
                value: summary.balance,
                builder: (context, value) => FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    money.format(value),
                    style: AppTypography.display.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  TrendChip(change: summary.balanceChange, onDark: true),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      l10n.vsLastPeriod,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.caption.copyWith(
                        color: Colors.white.withValues(alpha: 0.75),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              Container(
                height: 1,
                color: Colors.white.withValues(alpha: 0.14),
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 13,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '${l10n.lastThirtyDays} · '
                    '${dates.range(summary.start, summary.end)}',
                    style: AppTypography.caption.copyWith(
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
