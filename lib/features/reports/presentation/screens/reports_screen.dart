import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/shell/app_shell.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../budget/presentation/widgets/budget_row.dart';
import '../../../dashboard/presentation/widgets/spending_donut.dart';
import '../../../financial/domain/entities/period_summary.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../../financial/presentation/widgets/insight_card.dart';
import '../controllers/reports_controller.dart';
import '../widgets/income_expense_chart.dart';

/// Analytics across a selectable window: totals, trend, breakdown, budget
/// performance and the rule-based insights.
class ReportsScreen extends ConsumerWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final report = ref.watch(reportDataProvider);
    final selectedRange = ref.watch(reportRangeProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: openAppDrawer,
        ),
        title: Text(l10n.reports),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.sm,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          _RangeSelector(
            selected: selectedRange,
            onSelect: (range) =>
                ref.read(reportRangeProvider.notifier).select(range),
          ),
          const SizedBox(height: AppSpacing.xl),
          report.when(
            data: (data) => _ReportBody(data: data),
            loading: () => const Column(
              children: [
                SkeletonCard(height: 110),
                SizedBox(height: AppSpacing.lg),
                SkeletonCard(height: 200),
                SizedBox(height: AppSpacing.lg),
                SkeletonCard(height: 160),
              ],
            ),
            error: (_, _) => ErrorState(
              message: l10n.somethingWentWrong,
              retryLabel: l10n.retry,
              onRetry: () => ref.invalidate(transactionsProvider),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportBody extends ConsumerWidget {
  const _ReportBody({required this.data});

  final ReportData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final budgets = ref.watch(budgetsProvider);
    final insights = ref.watch(insightsProvider);
    final slices = buildSpendingSlices(data.summary.spendingByCategory);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeSlideIn(index: 0, child: _TotalsCard(summary: data.summary)),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(
                title: l10n.incomeVsExpenses,
                subtitle: dates.range(data.range.start, data.range.end),
              ),
              AppCard(child: IncomeExpenseChart(buckets: data.buckets)),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        if (slices.isNotEmpty) ...[
          FadeSlideIn(
            index: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SectionHeader(title: l10n.spendingByCategory),
                AppCard(
                  child: SpendingDonut(
                    slices: slices,
                    centerLabel: l10n.expenses,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.section),
        ],

        budgets.maybeWhen(
          data: (list) => list.isEmpty
              ? const SizedBox.shrink()
              : FadeSlideIn(
                  index: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SectionHeader(title: l10n.budgetPerformance),
                      AppCard(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                          vertical: AppSpacing.sm,
                        ),
                        child: Column(
                          children: [
                            for (final budget in list.take(5))
                              BudgetRow(budget: budget, dense: true),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSpacing.section),
                    ],
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),

        insights.maybeWhen(
          data: (list) => list.isEmpty
              ? const SizedBox.shrink()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SectionHeader(title: l10n.insights),
                    for (var i = 0; i < list.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.md),
                        child: FadeSlideIn(
                          index: (i + 4).clamp(0, 8),
                          child: InsightCard(insight: list[i]),
                        ),
                      ),
                  ],
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _TotalsCard extends ConsumerWidget {
  const _TotalsCard({required this.summary});

  final PeriodSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);

    return AppCard(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _Total(
                  label: l10n.income,
                  value: money.format(summary.income, decimals: false),
                  color: AppColors.income,
                  change: summary.incomeChange,
                  goodWhenRising: true,
                ),
              ),
              Container(width: 1, height: 52, color: context.borderColor),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: AppSpacing.lg,
                  ),
                  child: _Total(
                    label: l10n.expenses,
                    value: money.format(summary.expenses, decimals: false),
                    color: AppColors.expense,
                    change: summary.expenseChange,
                    goodWhenRising: false,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Divider(color: context.borderColor, height: 1),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.netBalance,
                      style: AppTypography.caption.copyWith(
                        color: context.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      money.formatSigned(summary.net, decimals: false),
                      style: AppTypography.amountLarge.copyWith(
                        color: summary.net >= 0
                            ? AppColors.primaryLight
                            : AppColors.error,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    l10n.savingsRate,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${(summary.savingsRate * 100).round()}%',
                    style: AppTypography.amountLarge.copyWith(
                      fontSize: 20,
                      color: context.textPrimary,
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

class _Total extends StatelessWidget {
  const _Total({
    required this.label,
    required this.value,
    required this.color,
    required this.change,
    required this.goodWhenRising,
  });

  final String label;
  final String value;
  final Color color;
  final double change;
  final bool goodWhenRising;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: 4),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            value,
            style: AppTypography.amountLarge.copyWith(color: color),
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        TrendChip(change: change, goodWhenRising: goodWhenRising),
      ],
    );
  }
}

class _RangeSelector extends StatelessWidget {
  const _RangeSelector({required this.selected, required this.onSelect});

  final ReportRange selected;
  final ValueChanged<ReportRange> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final labels = {
      ReportRange.week: l10n.week,
      ReportRange.month: l10n.month,
      ReportRange.quarter: l10n.quarter,
    };

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.subtleFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          for (final entry in labels.entries)
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onSelect(entry.key),
                child: AnimatedContainer(
                  duration: AppDuration.fast,
                  curve: Curves.easeOut,
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  decoration: BoxDecoration(
                    color: selected == entry.key
                        ? context.cardColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    boxShadow: selected == entry.key
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Text(
                    entry.value,
                    textAlign: TextAlign.center,
                    style: AppTypography.label.copyWith(
                      color: selected == entry.key
                          ? AppColors.primary
                          : context.textSecondary,
                      fontWeight: selected == entry.key
                          ? FontWeight.w700
                          : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
