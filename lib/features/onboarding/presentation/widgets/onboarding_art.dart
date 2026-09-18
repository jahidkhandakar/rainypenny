import 'package:flutter/material.dart';

import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';

/// The illustration at the top of a welcome slide or a guide chapter.
///
/// Drawn from theme colours rather than shipped as artwork. Bitmaps would mean
/// a light and a dark variant of every scene, redrawn again for each of the
/// ten accents — 200 files that all go stale the moment a token changes. This
/// costs a few widgets and is correct in every combination by construction.
class OnboardingArt extends StatelessWidget {
  const OnboardingArt({
    super.key,
    required this.icon,
    this.chips = const [],
    this.size = 168,
  });

  final IconData icon;

  /// Small floating labels around the mark. Two or three at most: they are
  /// there to hint at the content, not to carry it.
  final List<OnboardingArtChip> chips;

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // A soft halo so the mark does not sit flat on the page.
          Container(
            width: size * 0.86,
            height: size * 0.86,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.tintFill.withValues(alpha: 0.7),
            ),
          ),
          Container(
            width: size * 0.56,
            height: size * 0.56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: context.brandGradient,
              boxShadow: [
                BoxShadow(
                  color: context.accent.withValues(alpha: 0.28),
                  blurRadius: 26,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Icon(icon, size: size * 0.26, color: Colors.white),
          ),
          for (final chip in chips)
            Align(
              // Directional so the chips mirror with the rest of the layout in
              // Arabic and Urdu instead of drifting over the mark.
              alignment: AlignmentDirectional(chip.x, chip.y),
              child: _ArtChip(chip: chip),
            ),
        ],
      ),
    );
  }
}

/// One floating label, positioned in the illustration's own -1..1 space.
class OnboardingArtChip {
  const OnboardingArtChip({
    required this.label,
    required this.icon,
    required this.x,
    required this.y,
  });

  final String label;
  final IconData icon;

  /// -1 is the start edge, 1 the end edge.
  final double x;

  /// -1 is the top, 1 the bottom.
  final double y;
}

class _ArtChip extends StatelessWidget {
  const _ArtChip({required this.chip});

  final OnboardingArtChip chip;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm + 2,
        vertical: AppSpacing.xs + 2,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(AppRadius.pill),
        border: Border.all(color: context.borderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: context.isDark ? 0.3 : 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(chip.icon, size: 13, color: context.accentOnSurface),
          const SizedBox(width: AppSpacing.xs + 1),
          Text(
            chip.label,
            style: AppTypography.caption.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: context.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

/// The dots under a carousel.
class PageDots extends StatelessWidget {
  const PageDots({super.key, required this.count, required this.index});

  final int count;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < count; i++)
          AnimatedContainer(
            duration: AppDuration.fast,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            height: 6,
            width: i == index ? 20 : 6,
            decoration: BoxDecoration(
              color: i == index ? context.accent : context.borderColor,
              borderRadius: BorderRadius.circular(AppRadius.pill),
            ),
          ),
      ],
    );
  }
}
