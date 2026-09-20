import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rainypenny/core/settings/settings_providers.dart';
import 'package:rainypenny/features/financial/presentation/providers/finance_providers.dart';

class DashboardPeriodSelector extends ConsumerWidget {
  const DashboardPeriodSelector({super.key});

  Future<void> _openDateRangePicker(BuildContext context, WidgetRef ref) async {
    final theme = Theme.of(context);
    final currentRange = ref.read(dashboardRangeProvider);

    final picked = await showDateRangePicker(
      context: context,
      initialDateRange: DateTimeRange(start: currentRange.start, end: currentRange.end),
      firstDate: DateTime(2020),
      lastDate: DateTime(2060),
      initialEntryMode: DatePickerEntryMode.input,
      switchToCalendarEntryModeIcon: const Icon(Icons.edit_calendar),
      locale: ref.read(localeProvider),
      builder: (context, child) {
        return Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              primary: theme.colorScheme.primary,
              onPrimary: theme.colorScheme.onPrimary,
              surface: theme.colorScheme.surface,
              onSurface: theme.colorScheme.onSurface,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: theme.colorScheme.primary),
            ),
            datePickerTheme: DatePickerThemeData(
              rangeSelectionBackgroundColor: theme.colorScheme.primary.withValues(alpha: 0.16),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      ref.read(dashboardCustomRangeProvider.notifier).select(picked.start, picked.end);
      ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.custom);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final selectedTab = ref.watch(dashboardTabProvider);
    final currentRange = ref.watch(dashboardRangeProvider);
    final isCustom = selectedTab == DashboardPeriodTab.custom;

    // Formatting dates
    final startStr = DateFormat('dd MMM yyyy').format(currentRange.start);
    final endStr = DateFormat('dd MMM yyyy').format(currentRange.end);
    final labelDate = '$startStr  –  $endStr';

    // Theme adaptive colors
    final trackBackground = isDark
        ? colorScheme.surfaceContainerHighest.withValues(alpha: 0.5)
        : const Color(0xFFF8FAFC);
    final borderColor = colorScheme.outlineVariant.withValues(alpha: 0.5);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Container Card for Tab Selector Track
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: trackBackground,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: borderColor),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: isDark ? 0.25 : 0.04),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              _buildTabItem(
                context: context,
                title: 'Cycle',
                isSelected: selectedTab == DashboardPeriodTab.cycle,
                onTap: () =>
                    ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.cycle),
              ),
              _buildTabItem(
                context: context,
                title: 'Today',
                isSelected: selectedTab == DashboardPeriodTab.today,
                onTap: () =>
                    ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.today),
              ),
              _buildTabItem(
                context: context,
                title: '7D',
                isSelected: selectedTab == DashboardPeriodTab.sevenDays,
                onTap: () =>
                    ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.sevenDays),
              ),
              _buildTabItem(
                context: context,
                title: '30D',
                isSelected: selectedTab == DashboardPeriodTab.thirtyDays,
                onTap: () =>
                    ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.thirtyDays),
              ),
              _buildTabItem(
                context: context,
                title: 'Custom',
                isSelected: isCustom,
                onTap: () async {
                  ref.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.custom);
                  await _openDateRangePicker(context, ref);
                },
              ),
            ],
          ),
        ),

        // Custom Date Bar with smooth entrance animation
        isCustom
            ? Padding(
                key: const ValueKey('custom_date_bar'),
                padding: const EdgeInsets.only(top: 10),
                child: Material(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(14),
                  child: InkWell(
                    onTap: () => _openDateRangePicker(context, ref),
                    borderRadius: BorderRadius.circular(14),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: borderColor),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.04),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_rounded, size: 18, color: colorScheme.primary),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              labelDate,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: colorScheme.onSurface,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                          Icon(Icons.edit_outlined, size: 16, color: colorScheme.onSurfaceVariant),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget _buildTabItem({
    required BuildContext context,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final selectedBg = isDark ? colorScheme.surfaceContainerHigh : colorScheme.surface;
    final selectedTextColor = colorScheme.primary;
    final unselectedTextColor = colorScheme.onSurfaceVariant;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 9),
          decoration: BoxDecoration(
            color: isSelected ? selectedBg : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.06),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : [],
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected ? selectedTextColor : unselectedTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
