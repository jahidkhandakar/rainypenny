import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/financial_health.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../../financial/presentation/widgets/health_presenter.dart';
import '../widgets/health_card.dart';

/// The breakdown behind the health score.
///
/// The score is a weighted blend, and a number someone cannot interrogate is a
/// number they will not trust. This screen shows each factor's own sub-score,
/// what it is measuring, and how much of the total it accounts for.
class FinancialHealthScreen extends ConsumerWidget {
  const FinancialHealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final health = ref.watch(financialHealthProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.financialHealth)),
      body: health.when(
        data: (data) => data == null ? const _EmptyHealthView() : _Body(health: data),
        loading: () => const Padding(
          padding: EdgeInsets.all(AppSpacing.page),
          child: Column(
            children: [
              SkeletonCard(height: 180, lines: 3),
              SizedBox(height: AppSpacing.lg),
              SkeletonCard(height: 240, lines: 5),
            ],
          ),
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(transactionsProvider),
        ),
      ),
    );
  }
}

class _EmptyHealthView extends StatelessWidget {
  const _EmptyHealthView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final theme = Theme.of(context);

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.page),
        child: FadeSlideIn(
          child: AppCard(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.12),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.speed_rounded, size: 36, color: theme.colorScheme.primary),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  l10n.emptyHealthTitle,
                  style: AppTypography.heading.copyWith(color: context.textPrimary),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  l10n.emptyHealthDescription,
                  style: AppTypography.body.copyWith(color: context.textSecondary, height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.xl),
                _RequirementItem(
                  icon: Icons.receipt_long_outlined,
                  text: l10n.emptyHealthAddTransactions,
                ),
                const SizedBox(height: AppSpacing.sm),
                _RequirementItem(
                  icon: Icons.pie_chart_outline_rounded,
                  text: l10n.emptyHealthSetBudgets,
                ),
                const SizedBox(height: AppSpacing.sm),
                _RequirementItem(
                  icon: Icons.account_balance_outlined,
                  text: l10n.emptyHealthTrackLoans,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RequirementItem extends StatelessWidget {
  const _RequirementItem({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: context.textSecondary),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Text(text, style: AppTypography.caption.copyWith(color: context.textSecondary)),
        ),
      ],
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.health});

  final FinancialHealth health;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final locale = ref.watch(localeProvider).toLanguageTag();
    final color = healthBandColor(context, health.band);

    return ListView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.lg,
        AppSpacing.page,
        AppSpacing.section,
      ),
      children: [
        FadeSlideIn(
          child: AppCard(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              children: [
                AppProgressRing(
                  value: health.score / 100,
                  color: color,
                  size: 132,
                  strokeWidth: 11,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${health.score}',
                        style: AppTypography.display.copyWith(
                          fontSize: 40,
                          color: context.textPrimary,
                        ),
                      ),
                      Text(
                        l10n.ofTotal('100'),
                        style: AppTypography.caption.copyWith(color: context.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  healthBandLabel(health.band, l10n),
                  style: AppTypography.heading.copyWith(color: color),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  healthBandSummary(health.band, l10n),
                  textAlign: TextAlign.center,
                  style: AppTypography.body.copyWith(color: context.textSecondary, height: 1.5),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(title: l10n.howScoreWorks),
              AppCard(
                child: Text(
                  l10n.healthScoreExplainer,
                  style: AppTypography.body.copyWith(color: context.textSecondary, height: 1.6),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        for (var i = 0; i < health.factors.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: FadeSlideIn(
              index: (i + 2).clamp(0, 6),
              child: _FactorDetailCard(factor: health.factors[i], localeName: locale),
            ),
          ),
      ],
    );
  }
}

class _FactorDetailCard extends StatelessWidget {
  const _FactorDetailCard({required this.factor, required this.localeName});

  final HealthFactor factor;
  final String localeName;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final color = healthFactorColor(factor.score);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  healthFactorLabel(factor.kind, l10n),
                  style: AppTypography.title.copyWith(color: context.textPrimary),
                ),
              ),
              Text(
                '${factor.score}',
                style: AppTypography.amountLarge.copyWith(fontSize: 22, color: color),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          AppProgressBar(value: factor.score / 100, color: color, height: 8),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(
                child: Text(
                  healthFactorDetail(factor, l10n, localeName),
                  style: AppTypography.caption.copyWith(color: context.textSecondary),
                ),
              ),
              Text(
                l10n.scoreWeightLabel((factor.weight * 100).round()),
                style: AppTypography.caption.copyWith(color: context.textDisabled),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
