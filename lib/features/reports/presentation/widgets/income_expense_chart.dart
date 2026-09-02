import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/domain/services/balance_calculator.dart';

/// Paired income/expense columns across the selected window.
///
/// Two colours only — teal in, deep blue out — so the comparison reads
/// instantly without a busy legend.
class IncomeExpenseChart extends ConsumerWidget {
  const IncomeExpenseChart({super.key, required this.buckets});

  final List<PeriodTotal> buckets;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);

    if (buckets.isEmpty) return const SizedBox.shrink();

    final maxValue = buckets.fold<double>(
      0,
      (max, b) => [max, b.income, b.expenses].reduce((a, c) => a > c ? a : c),
    );
    // A little headroom above the tallest bar, divided into four bands so the
    // axis labels always land on a gridline rather than the chart's top edge.
    final ceiling = maxValue <= 0 ? 100.0 : maxValue * 1.12;
    final step = ceiling / 4;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _LegendDot(color: AppColors.income, label: l10n.income),
            const SizedBox(width: AppSpacing.lg),
            _LegendDot(color: context.expenseColor, label: l10n.expenses),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        SizedBox(
          height: 190,
          child: BarChart(
            BarChartData(
              maxY: ceiling,
              alignment: BarChartAlignment.spaceAround,
              barTouchData: BarTouchData(enabled: false),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: step,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: context.borderColor,
                  strokeWidth: 1,
                  dashArray: [4, 4],
                ),
              ),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                topTitles: const AxisTitles(),
                rightTitles: const AxisTitles(),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 44,
                    interval: step,
                    getTitlesWidget: (value, meta) {
                      if (value <= 0) return const SizedBox.shrink();
                      return SideTitleWidget(
                        meta: meta,
                        child: Text(
                          money.compact(value),
                          style: AppTypography.caption.copyWith(
                            fontSize: 10,
                            color: context.textSecondary,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 28,
                    getTitlesWidget: (value, meta) {
                      final index = value.toInt();
                      if (index < 0 || index >= buckets.length) {
                        return const SizedBox.shrink();
                      }
                      return SideTitleWidget(
                        meta: meta,
                        child: Text(
                          dates.short(buckets[index].start),
                          style: AppTypography.caption.copyWith(
                            fontSize: 10,
                            color: context.textSecondary,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              barGroups: [
                for (var i = 0; i < buckets.length; i++)
                  BarChartGroupData(
                    x: i,
                    barsSpace: 4,
                    barRods: [
                      BarChartRodData(
                        toY: buckets[i].income,
                        color: AppColors.income,
                        width: 9,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(4),
                        ),
                      ),
                      BarChartRodData(
                        toY: buckets[i].expenses,
                        color: context.expenseColor,
                        width: 9,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(4),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            duration: AppDuration.normal,
            curve: Curves.easeOutCubic,
          ),
        ),
      ],
    );
  }
}

class _LegendDot extends StatelessWidget {
  const _LegendDot({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 9,
          height: 9,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
      ],
    );
  }
}
