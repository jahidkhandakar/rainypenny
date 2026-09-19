import 'package:flutter/cupertino.dart';
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
import '../controllers/report_export_controller.dart';
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
        leading: const DrawerLogoButton(),
        title: Text(l10n.reports),
        actions: [
          _ExportButton(enabled: report.hasValue),
          const SizedBox(width: AppSpacing.sm),
        ],
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
            onSelect: (range) => ref.read(reportRangeProvider.notifier).select(range),
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
    final slices = buildSpendingSlices(context, data.summary.spendingByCategory);

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
                  child: SpendingDonut(slices: slices, centerLabel: l10n.expenses),
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
                  padding: const EdgeInsetsDirectional.only(start: AppSpacing.lg),
                  child: _Total(
                    label: l10n.expenses,
                    value: money.format(summary.expenses, decimals: false),
                    color: context.expenseColor,
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
                      style: AppTypography.caption.copyWith(color: context.textSecondary),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      money.formatSigned(summary.net, decimals: false),
                      style: AppTypography.amountLarge.copyWith(
                        color: summary.net >= 0 ? context.accentLight : AppColors.error,
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
                    style: AppTypography.caption.copyWith(color: context.textSecondary),
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
        Text(label, style: AppTypography.caption.copyWith(color: context.textSecondary)),
        const SizedBox(height: 4),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(value, style: AppTypography.amountLarge.copyWith(color: color)),
        ),
        const SizedBox(height: AppSpacing.sm),
        TrendChip(change: change, goodWhenRising: goodWhenRising),
      ],
    );
  }
}

/// The period control: four presets plus an exact date range.
///
/// A custom range wins over whichever preset is highlighted, so choosing dates
/// deselects the presets and clearing them hands control back.
class _RangeSelector extends ConsumerWidget {
  const _RangeSelector({required this.selected, required this.onSelect});

  final ReportRange selected;
  final ValueChanged<ReportRange> onSelect;

  Future<void> _pickRange(BuildContext context, WidgetRef ref) async {
    final existing = ref.read(customReportRangeProvider);
    final now = DateTime.now();

    final picked = await showDateRangePicker(
      context: context,
      // Ten years back covers any ledger this app will hold; allowing future
      // dates would let someone pick a window that cannot contain anything.
      firstDate: DateTime(now.year - 10),
      lastDate: DateTime(now.year, now.month, now.day),
      initialDateRange: existing == null
          ? null
          : DateTimeRange(start: existing.start, end: existing.end),
      // The picker inherits the app's locale and direction from the ambient
      // localisations, so Arabic and Urdu get a right-to-left calendar without
      // anything extra here.
    );

    if (picked == null) return;
    ref.read(customReportRangeProvider.notifier).select(picked.start, picked.end);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final custom = ref.watch(customReportRangeProvider);

    final labels = {
      ReportRange.week: l10n.week,
      ReportRange.month: l10n.month,
      ReportRange.cycle: l10n.cycleRangeLabel,
      ReportRange.quarter: l10n.quarter,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
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
                    onTap: () {
                      // Picking a preset is how you get out of a custom range.
                      ref.read(customReportRangeProvider.notifier).clear();
                      onSelect(entry.key);
                    },
                    child: _Segment(
                      label: entry.value,
                      isSelected: custom == null && selected == entry.key,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        if (custom == null)
          OutlinedButton.icon(
            onPressed: () => _pickRange(context, ref),
            icon: const Icon(Icons.date_range_rounded, size: 18),
            label: Text(l10n.selectDateRange),
          )
        else
          // Once a range is chosen the control becomes a statement of what is
          // on screen, with the way out attached to it.
          AppCard(
            onTap: () => _pickRange(context, ref),
            color: context.tintFill,
            borderColor: context.accent.withValues(alpha: 0.28),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.md),
            child: Row(
              children: [
                Icon(CupertinoIcons.calendar, size: 18, color: context.accentOnSurface),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    l10n.rangeApplied(dates.short(custom.start), dates.short(custom.end)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.label.copyWith(color: context.accentOnSurface),
                  ),
                ),
                IconButton(
                  tooltip: l10n.clearFilters,
                  visualDensity: VisualDensity.compact,
                  icon: const Icon(Icons.close_rounded, size: 18),
                  onPressed: () => ref.read(customReportRangeProvider.notifier).clear(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({required this.label, required this.isSelected});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppDuration.fast,
      curve: Curves.easeOut,
      padding: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        color: isSelected ? context.cardColor : Colors.transparent,
        borderRadius: BorderRadius.circular(AppRadius.sm),
        boxShadow: isSelected
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
        label,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTypography.label.copyWith(
          color: isSelected ? context.accent : context.textSecondary,
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
        ),
      ),
    );
  }
}

/// Produces the branded PDF and hands it to the share sheet.
///
/// Disabled until the report data has actually loaded — offering an export of
/// figures that are still resolving would produce an empty document.
class _ExportButton extends ConsumerStatefulWidget {
  const _ExportButton({required this.enabled});

  final bool enabled;

  @override
  ConsumerState<_ExportButton> createState() => _ExportButtonState();
}

class _ExportButtonState extends ConsumerState<_ExportButton> {
  bool _busy = false;

  Future<void> _run(Future<void> Function(AppL10n) action) async {
    if (_busy) return;
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);

    setState(() => _busy = true);
    messenger.showSnackBar(
      SnackBar(content: Text(l10n.preparingReport), duration: const Duration(seconds: 1)),
    );

    try {
      await action(l10n);
    } catch (_) {
      messenger.showSnackBar(SnackBar(content: Text(l10n.reportFailed)));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final controller = ref.read(reportExportControllerProvider);

    if (_busy) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
        child: Center(
          child: SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
        ),
      );
    }

    return PopupMenuButton<_ExportAction>(
      enabled: widget.enabled,
      tooltip: l10n.exportPdf,
      icon: const Icon(Icons.ios_share_rounded),
      onSelected: (action) => switch (action) {
        _ExportAction.share => _run(controller.share),
        _ExportAction.save => _run(controller.printOrSave),
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: _ExportAction.share,
          child: Row(
            children: [
              const Icon(Icons.share_outlined, size: 18),
              const SizedBox(width: AppSpacing.md),
              Text(l10n.sharePdf),
            ],
          ),
        ),
        PopupMenuItem(
          value: _ExportAction.save,
          child: Row(
            children: [
              const Icon(Icons.picture_as_pdf_outlined, size: 18),
              const SizedBox(width: AppSpacing.md),
              Text(l10n.exportPdf),
            ],
          ),
        ),
      ],
    );
  }
}

enum _ExportAction { share, save }
