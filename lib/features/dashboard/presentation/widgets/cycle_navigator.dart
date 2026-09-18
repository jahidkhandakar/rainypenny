import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Moves between salary cycles.
///
/// The arrows are directional rather than mirrored for right-to-left: "back a
/// month" is the leading edge in both directions, so an Arabic reader moves
/// backwards with the arrow that points the way their text runs.
class CycleNavigator extends ConsumerWidget {
  const CycleNavigator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final cycle = ref.watch(selectedCycleProvider);
    final offset = ref.watch(cycleOffsetProvider);
    final notifier = ref.read(cycleOffsetProvider.notifier);

    return Column(
      children: [
        Row(
          children: [
            _ArrowButton(
              icon: Icons.chevron_left_rounded,
              onTap: notifier.previous,
              semanticLabel: MaterialLocalizations.of(
                context,
              ).previousMonthTooltip,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    dates.monthYear(cycle.labelMonth),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    l10n.cycleOf(
                      dates.short(cycle.start),
                      dates.short(cycle.end),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            _ArrowButton(
              icon: Icons.chevron_right_rounded,
              onTap: notifier.next,
              semanticLabel: MaterialLocalizations.of(
                context,
              ).nextMonthTooltip,
            ),
          ],
        ),
        // Only offered once the user has actually wandered off, so the control
        // does not sit there permanently inviting a tap that does nothing.
        AnimatedSize(
          duration: AppDuration.fast,
          curve: Curves.easeOut,
          child: offset == 0
              ? const SizedBox(width: double.infinity)
              : Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.xs),
                  child: TextButton.icon(
                    onPressed: notifier.reset,
                    icon: const Icon(Icons.today_rounded, size: 15),
                    label: Text(l10n.backToThisMonth),
                  ),
                ),
        ),
      ],
    );
  }
}

class _ArrowButton extends StatelessWidget {
  const _ArrowButton({
    required this.icon,
    required this.onTap,
    required this.semanticLabel,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: semanticLabel,
      onPressed: onTap,
      icon: Icon(icon, size: 26),
      style: IconButton.styleFrom(
        foregroundColor: context.accentOnSurface,
        backgroundColor: context.subtleFill,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
      ),
    );
  }
}
