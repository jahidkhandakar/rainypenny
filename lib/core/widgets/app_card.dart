import 'package:flutter/material.dart';

import '../theme/app_dimens.dart';

/// A modern, minimal card surface with soft ambient elevation,
/// subtle hairline definition, and smooth interaction states.
class AppCard extends StatefulWidget {
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
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final borderRadius = BorderRadius.circular(widget.radius);

    final baseColor =
        widget.color ??
        (isDark
            ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.35)
            : theme.colorScheme.surface);

    final effectiveBorder =
        widget.borderColor ??
        (isDark
            ? theme.colorScheme.outlineVariant.withValues(alpha: 0.2)
            : theme.colorScheme.outlineVariant.withValues(alpha: 0.45));

    // Multi-layered subtle shadow (sharp contact + soft ambient)
    final shadows = (widget.hasShadow && !_isPressed)
        ? [
            BoxShadow(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.25)
                  : const Color(0xFF0F172A).withValues(alpha: 0.02),
              blurRadius: 16,
              spreadRadius: 0,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.15)
                  : const Color(0xFF0F172A).withValues(alpha: 0.01),
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ]
        : <BoxShadow>[];

    final cardContent = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: borderRadius,
        border: Border.all(color: effectiveBorder, width: 1.0),
        boxShadow: shadows,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: widget.onTap,
          splashColor: theme.colorScheme.primary.withValues(alpha: 0.08),
          highlightColor: theme.colorScheme.primary.withValues(alpha: 0.04),
          child: Padding(padding: widget.padding, child: widget.child),
        ),
      ),
    );

    // If tapable, wrap with a subtle micro-scale tactile response
    if (widget.onTap != null) {
      return Listener(
        onPointerDown: (_) => setState(() => _isPressed = true),
        onPointerUp: (_) => setState(() => _isPressed = false),
        onPointerCancel: (_) => setState(() => _isPressed = false),
        child: AnimatedScale(
          scale: _isPressed ? 0.985 : 1.0,
          duration: const Duration(milliseconds: 120),
          curve: Curves.easeOutQuad,
          child: cardContent,
        ),
      );
    }

    return cardContent;
  }
}

/// A clean, modern tinted icon badge with smooth squircle curvature.
class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    required this.icon,
    this.size = 44,
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

    final effectiveForeground = foreground ?? theme.colorScheme.primary;

    final effectiveBackground =
        background ??
        (isDark
            ? theme.colorScheme.primary.withValues(alpha: 0.16)
            : theme.colorScheme.primary.withValues(alpha: 0.08));

    final badgeRadius = radius ?? (size * 0.32);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: effectiveBackground,
        borderRadius: BorderRadius.circular(badgeRadius),
        border: Border.all(
          color: effectiveForeground.withValues(alpha: isDark ? 0.12 : 0.06),
          width: 1,
        ),
      ),
      alignment: Alignment.center,
      child: Icon(icon, size: size * 0.48, color: effectiveForeground),
    );
  }
}
