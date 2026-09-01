import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_typography.dart';
import '../utils/formatters.dart';

/// A small up/down delta pill, e.g. `↑ 8.4%`.
///
/// [goodWhenRising] flips the colour logic: income rising is good, spending
/// rising is not — which is why the same widget serves both cards.
class TrendChip extends StatelessWidget {
  const TrendChip({
    super.key,
    required this.change,
    this.goodWhenRising = true,
    this.onDark = false,
    this.label,
  });

  final double change;
  final bool goodWhenRising;
  final bool onDark;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final rising = change >= 0;
    final isGood = rising == goodWhenRising;

    final color = onDark
        ? Colors.white
        : isGood
            ? AppColors.success
            : AppColors.error;

    final background = onDark
        ? Colors.white.withValues(alpha: 0.16)
        : color.withValues(alpha: 0.10);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            rising ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded,
            size: 12,
            color: color,
          ),
          const SizedBox(width: 3),
          Text(
            '${(change.abs() * 100).toStringAsFixed(1)}%',
            style: AppTypography.caption.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (label != null) ...[
            const SizedBox(width: 4),
            Text(
              label!,
              style: AppTypography.caption.copyWith(
                color: onDark ? Colors.white70 : color,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Status pill with an explicit colour, used for budget and payment states.
class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.label,
    required this.color,
    this.icon,
  });

  final String label;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12, color: color),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: AppTypography.caption.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

/// Formats a percentage delta as plain text, for places a pill is too heavy.
String trendLabel(double change) => formatPercentChange(change);
