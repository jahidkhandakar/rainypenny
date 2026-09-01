import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';

/// The standard surface: white, hairline border, generous radius, no shadow.
///
/// Depth comes from the border against the tinted page background rather than
/// from drop shadows, which keeps long scrolling screens calm.
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.lg),
    this.onTap,
    this.color,
    this.borderColor,
    this.radius = AppRadius.lg,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final shape = BorderRadius.circular(radius);

    return Material(
      color: color ?? context.cardColor,
      borderRadius: shape,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        borderRadius: shape,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: shape,
            border: Border.all(color: borderColor ?? context.borderColor),
          ),
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}

/// A round tinted icon badge — used in transaction rows, quick actions,
/// goal cards and list tiles so icons read consistently everywhere.
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
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: background ?? context.tintFill,
        borderRadius: BorderRadius.circular(radius ?? size / 3),
      ),
      child: Icon(
        icon,
        size: size * 0.48,
        color: foreground ?? AppColors.primary,
      ),
    );
  }
}
