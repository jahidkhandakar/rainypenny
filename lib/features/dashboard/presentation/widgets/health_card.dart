import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../financial/domain/entities/financial_health.dart';
import '../../../financial/presentation/widgets/health_presenter.dart';

/// The 0-100 score, shown alongside the factors that produced it.
class HealthCard extends ConsumerWidget {
  const HealthCard({super.key, required this.health, this.onTap});

  final FinancialHealth health;

  /// Opens the breakdown. The card was previously the one element on the home
  /// screen that looked interactive and did nothing.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final locale = ref.watch(localeProvider).toLanguageTag();
    final color = healthBandColor(context, health.band);

    return AppCard(
      onTap: onTap,
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
                      healthBandLabel(health.band, l10n),
                      style: AppTypography.title.copyWith(color: color),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      healthBandSummary(health.band, l10n),
                      style: AppTypography.body.copyWith(
                        fontSize: 13,
                        color: context.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              if (onTap != null)
                Icon(CupertinoIcons.chevron_forward, size: 20, color: context.textDisabled),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Divider(color: context.borderColor, height: 1),
          const SizedBox(height: AppSpacing.md),
          for (final factor in health.factors)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: HealthFactorRow(factor: factor, localeName: locale),
            ),
        ],
      ),
    );
  }
}

Color healthBandColor(BuildContext context, HealthBand band) => switch (band) {
  HealthBand.excellent => context.brandSecondary,
  HealthBand.good => AppColors.success,
  HealthBand.fair => AppColors.warning,
  HealthBand.needsWork => AppColors.error,
};

/// Colour for a single factor's own sub-score, on the same scale the bands use.
Color healthFactorColor(int score) => score >= 70
    ? AppColors.success
    : score >= 45
    ? AppColors.warning
    : AppColors.error;

class HealthFactorRow extends StatelessWidget {
  const HealthFactorRow({super.key, required this.factor, required this.localeName});

  final HealthFactor factor;
  final String localeName;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            healthFactorLabel(factor.kind, l10n),
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
            color: healthFactorColor(factor.score),
            height: 6,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          flex: 4,
          child: Text(
            healthFactorDetail(factor, l10n, localeName),
            textAlign: TextAlign.end,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(fontSize: 11, color: context.textSecondary),
          ),
        ),
      ],
    );
  }
}
