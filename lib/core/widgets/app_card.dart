import 'package:flutter/material.dart';

import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';

/// The standard surface: crisp hairline border, generous radius, ambient depth,
/// and an ultra-subtle directional surface gradient that adapts to theme accents.
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.lg),
    this.onTap,
    this.color,
    this.borderColor,
    this.radius = AppRadius.lg,
    this.hasShadow = true,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final double radius;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final shape = BorderRadius.circular(radius);

    final baseColor = color ?? context.cardColor;
    final accent = context.accent;

    // Ultra-subtle directional tint: top receives faint light/tint reflection
    final surfaceGradient = color == null
        ? LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDark
                ? [
                    // Dark mode: very faint top specular reflection + slight accent tint
                    Color.alphaBlend(accent.withValues(alpha: 0.04), baseColor),
                    baseColor,
                  ]
                : [
                    // Light mode: clean top wash that softens downward
                    Color.alphaBlend(accent.withValues(alpha: 0.015), baseColor),
                    baseColor,
                  ],
          )
        : null;

    final effectiveBorder =
        borderColor ??
        (isDark
            ? Color.alphaBlend(accent.withValues(alpha: 0.08), context.borderColor)
            : context.borderColor);

    // Multi-tier ambient elevation that softens against colored wallpapers
    final shadows = hasShadow
        ? [
            BoxShadow(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.32)
                  : const Color(0xFF0F172A).withValues(alpha: 0.035),
              blurRadius: 18,
              spreadRadius: 0,
              offset: const Offset(0, 6),
            ),
            BoxShadow(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.18)
                  : const Color(0xFF0F172A).withValues(alpha: 0.015),
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ]
        : <BoxShadow>[];

    return Container(
      decoration: BoxDecoration(
        color: surfaceGradient == null ? baseColor : null,
        gradient: surfaceGradient,
        borderRadius: shape,
        boxShadow: shadows,
        border: Border.all(color: effectiveBorder, width: 1.0),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: shape,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          borderRadius: shape,
          splashColor: accent.withValues(alpha: 0.08),
          highlightColor: accent.withValues(alpha: 0.03),
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}

/// A round tinted icon badge with an ultra-thin outer ring accent —
/// used in transaction rows, quick actions, goal cards and list tiles.
class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    required this.icon,
    this.size = 42,
    this.background,
    this.foreground,
    this.radius,
  });

  final IconData icon;
  final double size;
  final Color? background;
  final Color? foreground;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final effectiveForeground = foreground ?? context.accent;
    final effectiveBackground = background ?? context.tintFill;
    final effectiveRadius = radius ?? (size * 0.32);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: effectiveBackground,
        borderRadius: BorderRadius.circular(effectiveRadius),
        border: Border.all(
          color: effectiveForeground.withValues(alpha: isDark ? 0.16 : 0.08),
          width: 1,
        ),
      ),
      alignment: Alignment.center,
      child: Icon(icon, size: size * 0.52, color: effectiveForeground),
    );
  }
}
