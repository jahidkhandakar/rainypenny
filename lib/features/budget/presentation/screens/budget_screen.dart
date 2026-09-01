import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/services/budget_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../widgets/budget_row.dart';

/// Category budgets for the active period, with status-driven colour.
class BudgetScreen extends ConsumerWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final budgets = ref.watch(budgetsProvider);
    final range = ref.watch(dashboardRangeProvider);
    final dates = ref.watch(dateFormatterProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.budget)),
      body: budgets.when(
        data: (list) => ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.page,
            AppSpacing.sm,
            AppSpacing.page,
            AppSpacing.section,
          ),
          children: [
            FadeSlideIn(
              index: 0,
              child: _BudgetSummaryCard(
                budgets: list,
                periodLabel:
                    '${l10n.lastThirtyDays} · ${dates.range(range.start, range.end)}',
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            ..._warningBanners(context, list),
            const SizedBox(height: AppSpacing.sm),
            SectionHeader(
              title: l10n.budgets,
              subtitle: l10n.spendingByCategory,
            ),
            for (var i = 0; i < list.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.md),
                child: FadeSlideIn(
                  index: i + 1,
                  child: BudgetRow(budget: list[i]),
                ),
              ),
            if (list.isEmpty)
              EmptyState(
                icon: Icons.donut_small_rounded,
                title: l10n.budget,
                message: l10n.noTransactionsBody,
              ),
          ],
        ),
        loading: () => ListView(
          padding: const EdgeInsets.all(AppSpacing.page),
          children: const [
            SkeletonCard(height: 130),
            SizedBox(height: AppSpacing.lg),
            SkeletonCard(height: 100),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 100),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 100),
          ],
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(transactionsProvider),
        ),
      ),
    );
  }

  List<Widget> _warningBanners(BuildContext context, List<Budget> budgets) {
    final flagged = BudgetCalculator.needingAttention(budgets).take(2);
    if (flagged.isEmpty) return const [];

    return [
      for (final budget in flagged)
        Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.md),
          child: _BudgetWarning(budget: budget),
        ),
    ];
  }
}

class _BudgetSummaryCard extends ConsumerWidget {
  const _BudgetSummaryCard({required this.budgets, required this.periodLabel});

  final List<Budget> budgets;
  final String periodLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);

    final limit = BudgetCalculator.totalLimit(budgets);
    final spent = BudgetCalculator.totalSpent(budgets);
    final remaining = BudgetCalculator.totalRemaining(budgets);
    final progress = BudgetCalculator.overallProgress(budgets);

    final color = progress >= 0.9
        ? AppColors.error
        : progress >= 0.7
            ? AppColors.warning
            : AppColors.success;

    return AppCard(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OverlineLabel(periodLabel),
          const SizedBox(height: AppSpacing.lg),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Figure(
                label: l10n.totalBudget,
                value: money.format(limit, decimals: false),
                color: context.textPrimary,
              ),
              _Figure(
                label: l10n.spent,
                value: money.format(spent, decimals: false),
                color: color,
              ),
              _Figure(
                label: l10n.remaining,
                value: money.format(remaining, decimals: false),
                color: AppColors.accent,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AppProgressBar(value: progress, color: color, height: 9),
          const SizedBox(height: AppSpacing.sm),
          Text(
            l10n.budgetUsed((progress * 100).round()),
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _Figure extends StatelessWidget {
  const _Figure({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
          const SizedBox(height: 4),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              value,
              style: AppTypography.amountLarge.copyWith(
                fontSize: 20,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BudgetWarning extends ConsumerWidget {
  const _BudgetWarning({required this.budget});

  final Budget budget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final color = budget.isExceeded ? AppColors.error : AppColors.warning;

    final message = budget.isExceeded
        ? '${budget.category.name} is ${money.format(budget.remaining.abs(), decimals: false)} over its limit.'
        : '${budget.category.name} ${l10n.budgetUsed(budget.percentUsed).toLowerCase()}, '
            '${money.format(budget.remaining, decimals: false)} ${l10n.remaining.toLowerCase()}.';

    return AppCard(
      color: color.withValues(alpha: 0.07),
      borderColor: color.withValues(alpha: 0.24),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        children: [
          IconBadge(
            icon: budget.isExceeded
                ? Icons.error_rounded
                : Icons.warning_amber_rounded,
            size: 36,
            background: color.withValues(alpha: 0.14),
            foreground: color,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Text(
              message,
              style: AppTypography.body.copyWith(
                fontSize: 13,
                color: context.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
