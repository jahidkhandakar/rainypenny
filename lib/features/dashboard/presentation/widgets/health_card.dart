import 'package:flutter/material.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../financial/domain/entities/financial_health.dart';

/// The 0-100 score, shown alongside the factors that produced it.
class HealthCard extends StatelessWidget {
  const HealthCard({super.key, required this.health});

  final FinancialHealth health;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final color = _colorFor(health.band);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppProgressRing(
                value: health.score / 100,
                color: color,
                size: 92,
                strokeWidth: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${health.score}',
                      style: AppTypography.amountLarge.copyWith(
                        fontSize: 26,
                        color: context.textPrimary,
                      ),
                    ),
                    Text(
                      l10n.ofTotal('100'),
                      style: AppTypography.caption.copyWith(
                        fontSize: 10.5,
                        color: context.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.lg),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _labelFor(health.band),
                      style: AppTypography.title.copyWith(color: color),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _summaryFor(health.band),
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
          const SizedBox(height: AppSpacing.lg),
          Divider(color: context.borderColor, height: 1),
          const SizedBox(height: AppSpacing.md),
          for (final factor in health.factors)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: _FactorRow(factor: factor),
            ),
        ],
      ),
    );
  }

  static Color _colorFor(HealthBand band) => switch (band) {
        HealthBand.excellent => AppColors.accent,
        HealthBand.good => AppColors.success,
        HealthBand.fair => AppColors.warning,
        HealthBand.needsWork => AppColors.error,
      };

  static String _labelFor(HealthBand band) => switch (band) {
        HealthBand.excellent => 'Excellent',
        HealthBand.good => 'Good',
        HealthBand.fair => 'Fair',
        HealthBand.needsWork => 'Needs work',
      };

  static String _summaryFor(HealthBand band) => switch (band) {
        HealthBand.excellent =>
          'You are saving well and staying inside your budgets.',
        HealthBand.good =>
          'You are on track with your spending this period.',
        HealthBand.fair =>
          'A few budgets are running hot. Small changes will help.',
        HealthBand.needsWork =>
          'Spending is outpacing your plan. Start with your largest category.',
      };
}

class _FactorRow extends StatelessWidget {
  const _FactorRow({required this.factor});

  final HealthFactor factor;

  @override
  Widget build(BuildContext context) {
    final color = factor.score >= 70
        ? AppColors.success
        : factor.score >= 45
            ? AppColors.warning
            : AppColors.error;

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            factor.label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(
              color: context.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: AppProgressBar(
            value: factor.score / 100,
            color: color,
            height: 6,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          flex: 4,
          child: Text(
            factor.detail,
            textAlign: TextAlign.end,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(
              fontSize: 11,
              color: context.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
