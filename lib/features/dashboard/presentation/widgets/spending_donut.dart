import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/domain/entities/category.dart';

/// One slice of the spending breakdown.
class SpendingSlice {
  const SpendingSlice({
    required this.label,
    required this.amount,
    required this.color,
  });

  final String label;
  final double amount;
  final Color color;
}

/// Collapses a category breakdown into the top [maxSlices] plus an "Other"
/// remainder, so the donut never grows past a readable number of colours.
List<SpendingSlice> buildSpendingSlices(
  Map<Category, double> spending, {
  int maxSlices = 5,
  String otherLabel = 'Other',
}) {
  if (spending.isEmpty) return const [];

  final entries = spending.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  final slices = <SpendingSlice>[];
  for (var i = 0; i < entries.length && i < maxSlices; i++) {
    slices.add(
      SpendingSlice(
        label: entries[i].key.name,
        amount: entries[i].value,
        color: chartColorForCategory(entries[i].key.id, i),
      ),
    );
  }

  if (entries.length > maxSlices) {
    final rest = entries
        .skip(maxSlices)
        .fold(0.0, (sum, entry) => sum + entry.value);
    if (rest > 0) {
      slices.add(
        SpendingSlice(
          label: otherLabel,
          amount: rest,
          color: AppColors.chartNeutral,
        ),
      );
    }
  }

  return slices;
}

/// Donut plus legend. The centre carries the total so the chart answers
/// "how much" and "on what" at the same time.
class SpendingDonut extends ConsumerStatefulWidget {
  const SpendingDonut({
    super.key,
    required this.slices,
    required this.centerLabel,
  });

  final List<SpendingSlice> slices;
  final String centerLabel;

  @override
  ConsumerState<SpendingDonut> createState() => _SpendingDonutState();
}

class _SpendingDonutState extends ConsumerState<SpendingDonut> {
  int? _touchedIndex;

  @override
  Widget build(BuildContext context) {
    final money = ref.watch(moneyFormatterProvider);
    final total = widget.slices.fold(0.0, (sum, s) => sum + s.amount);
    if (total <= 0) return const SizedBox.shrink();

    final highlighted =
        _touchedIndex == null ? null : widget.slices[_touchedIndex!];

    return Row(
      children: [
        SizedBox(
          width: 128,
          height: 128,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 3,
                  centerSpaceRadius: 40,
                  startDegreeOffset: -90,
                  pieTouchData: PieTouchData(
                    touchCallback: (event, response) {
                      setState(() {
                        _touchedIndex = event.isInterestedForInteractions
                            ? response?.touchedSection?.touchedSectionIndex
                            : null;
                      });
                    },
                  ),
                  sections: [
                    for (var i = 0; i < widget.slices.length; i++)
                      PieChartSectionData(
                        value: widget.slices[i].amount,
                        color: widget.slices[i].color,
                        radius: _touchedIndex == i ? 24 : 19,
                        showTitle: false,
                      ),
                  ],
                ),
                duration: AppDuration.normal,
                curve: Curves.easeOutCubic,
              ),
              // The centre carries the period total, and swaps to the slice
              // amount while one is touched — that is where the per-category
              // figure lives, so the legend only needs the share.
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    money.compact(highlighted?.amount ?? total),
                    style: AppTypography.amountMedium.copyWith(
                      fontSize: 16,
                      color: highlighted?.color ?? context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  SizedBox(
                    width: 66,
                    child: Text(
                      highlighted?.label ?? widget.centerLabel,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.caption.copyWith(
                        fontSize: 10.5,
                        color: context.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < widget.slices.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: _LegendRow(
                    slice: widget.slices[i],
                    percent: widget.slices[i].amount / total,
                    dimmed: _touchedIndex != null && _touchedIndex != i,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _LegendRow extends StatelessWidget {
  const _LegendRow({
    required this.slice,
    required this.percent,
    required this.dimmed,
  });

  final SpendingSlice slice;
  final double percent;
  final bool dimmed;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: AppDuration.fast,
      opacity: dimmed ? 0.4 : 1,
      child: Row(
        children: [
          Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: slice.color,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              slice.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.caption.copyWith(
                color: context.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Text(
            '${(percent * 100).round()}%',
            style: AppTypography.caption.copyWith(
              color: context.textSecondary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
