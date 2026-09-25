import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rainypenny/core/localization/generated/app_localizations.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/domain/entities/category.dart';

/// One slice of the spending breakdown.
class SpendingSlice {
  const SpendingSlice({required this.label, required this.amount, required this.color});

  final String label;
  final double amount;
  final Color color;
}

/// Collapses a category breakdown into the top [maxSlices] plus an "Other"
/// remainder, so the donut never grows past a readable number of colours.
List<SpendingSlice> buildSpendingSlices(
  BuildContext context,
  Map<Category, double> spending, {
  int maxSlices = 5,
  String? otherLabel,
}) {
  if (spending.isEmpty) return const [];

  final l10n = AppL10n.of(context);
  final resolvedOtherLabel = otherLabel ?? l10n.categoryOther;

  final entries = spending.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

  final slices = <SpendingSlice>[];
  for (var i = 0; i < entries.length && i < maxSlices; i++) {
    slices.add(
      SpendingSlice(
        label: entries[i].key.localizedName(l10n),
        amount: entries[i].value,
        color: chartColorForCategory(context, entries[i].key.id, i),
      ),
    );
  }

  if (entries.length > maxSlices) {
    final rest = entries.skip(maxSlices).fold(0.0, (sum, entry) => sum + entry.value);
    if (rest > 0) {
      slices.add(
        SpendingSlice(label: resolvedOtherLabel, amount: rest, color: AppColors.chartNeutral),
      );
    }
  }

  return slices;
}

/// Dynamic, interactive Donut chart with larger dimensions.
/// Shows overall total by default and highlights individual slices on user interaction.
class SpendingDonut extends ConsumerStatefulWidget {
  const SpendingDonut({super.key, required this.slices, required this.centerLabel});

  final List<SpendingSlice> slices;
  final String centerLabel;

  @override
  ConsumerState<SpendingDonut> createState() => _SpendingDonutState();
}

class _SpendingDonutState extends ConsumerState<SpendingDonut> {
  int? _touchedIndex;

  void _onSliceSelected(int? index) {
    if (_touchedIndex != index) {
      if (index != null) {
        HapticFeedback.selectionClick();
      }
      setState(() {
        _touchedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final money = ref.watch(moneyFormatterProvider);
    final total = widget.slices.fold(0.0, (sum, s) => sum + s.amount);
    if (total <= 0) return const SizedBox.shrink();

    final highlighted = _touchedIndex == null ? null : widget.slices[_touchedIndex!];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Scaled up donut container (170px)
        SizedBox(
          width: 170,
          height: 170,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 4,
                  centerSpaceRadius: 50,
                  startDegreeOffset: -90,
                  pieTouchData: PieTouchData(
                    touchCallback: (event, response) {
                      final index = response?.touchedSection?.touchedSectionIndex;
                      if (!event.isInterestedForInteractions || index == null || index < 0) {
                        _onSliceSelected(null);
                      } else {
                        _onSliceSelected(index);
                      }
                    },
                  ),
                  sections: [
                    for (var i = 0; i < widget.slices.length; i++) ...[
                      () {
                        final isSelected = _touchedIndex == i;
                        return PieChartSectionData(
                          value: widget.slices[i].amount,
                          color: widget.slices[i].color,
                          radius: isSelected ? 34 : 26,
                          showTitle: false,
                          borderSide: isSelected
                              ? BorderSide(color: Theme.of(context).cardColor, width: 2.5)
                              : BorderSide.none,
                        );
                      }(),
                    ],
                  ],
                ),
                duration: AppDuration.normal,
                curve: Curves.easeOutBack,
              ),
              // Center Label showing total by default, or touched slice amount
              GestureDetector(
                onTap: () => _onSliceSelected(null),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedSwitcher(
                      duration: AppDuration.fast,
                      transitionBuilder: (child, animation) {
                        return ScaleTransition(
                          scale: animation,
                          child: FadeTransition(opacity: animation, child: child),
                        );
                      },
                      child: Text(
                        money.compact(highlighted?.amount ?? total),
                        key: ValueKey(highlighted?.amount ?? total),
                        style: AppTypography.amountMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: highlighted?.color ?? context.textPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      width: 80,
                      child: AnimatedSwitcher(
                        duration: AppDuration.fast,
                        child: Text(
                          highlighted?.label ?? widget.centerLabel,
                          key: ValueKey(highlighted?.label ?? widget.centerLabel),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.caption.copyWith(
                            fontSize: 11.5,
                            fontWeight: highlighted != null ? FontWeight.w600 : FontWeight.normal,
                            color: highlighted != null
                                ? context.textPrimary
                                : context.textSecondary,
                          ),
                        ),
                      ),
                    ),
                  ],
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
              for (var i = 0; i < widget.slices.length; i++)
                _LegendRow(
                  slice: widget.slices[i],
                  percent: widget.slices[i].amount / total,
                  isSelected: _touchedIndex == i,
                  dimmed: _touchedIndex != null && _touchedIndex != i,
                  onTap: () {
                    if (_touchedIndex == i) {
                      _onSliceSelected(null);
                    } else {
                      _onSliceSelected(i);
                    }
                  },
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
    required this.isSelected,
    required this.dimmed,
    required this.onTap,
  });

  final SpendingSlice slice;
  final double percent;
  final bool isSelected;
  final bool dimmed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          splashColor: slice.color.withValues(alpha: 0.12),
          highlightColor: slice.color.withValues(alpha: 0.06),
          child: AnimatedContainer(
            duration: AppDuration.fast,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              color: isSelected ? slice.color.withValues(alpha: 0.1) : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: AnimatedOpacity(
              duration: AppDuration.fast,
              opacity: dimmed ? 0.45 : 1.0,
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: AppDuration.fast,
                    width: isSelected ? 11 : 8,
                    height: isSelected ? 11 : 8,
                    decoration: BoxDecoration(
                      color: slice.color,
                      shape: BoxShape.circle,
                      boxShadow: isSelected
                          ? [
                              BoxShadow(
                                color: slice.color.withValues(alpha: 0.4),
                                blurRadius: 4,
                                spreadRadius: 1,
                              ),
                            ]
                          : null,
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
                        fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    '${(percent * 100).round()}%',
                    style: AppTypography.caption.copyWith(
                      color: isSelected ? slice.color : context.textSecondary,
                      fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
