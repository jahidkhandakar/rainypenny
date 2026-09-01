import 'package:flutter/material.dart';

import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';

/// Rounded progress track that animates to its value on first build.
///
/// Used by budgets, savings goals and loan payoff so all three read as the
/// same visual language.
class AppProgressBar extends StatelessWidget {
  const AppProgressBar({
    super.key,
    required this.value,
    required this.color,
    this.height = 8,
    this.trackColor,
    this.animate = true,
  });

  /// 0..1. Values above 1 should be clamped by the caller.
  final double value;
  final Color color;
  final double height;
  final Color? trackColor;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    final track = trackColor ?? context.subtleFill;
    final clamped = value.clamp(0.0, 1.0);

    return ClipRRect(
      borderRadius: BorderRadius.circular(height),
      child: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(color: track),
            if (animate)
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: clamped),
                duration: AppDuration.slow,
                curve: Curves.easeOutCubic,
                builder: (context, animated, _) => FractionallySizedBox(
                  widthFactor: animated,
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(height),
                    ),
                  ),
                ),
              )
            else
              FractionallySizedBox(
                widthFactor: clamped,
                child: Container(color: color),
              ),
          ],
        ),
      ),
    );
  }
}

/// Circular gauge used by the financial-health score.
class AppProgressRing extends StatelessWidget {
  const AppProgressRing({
    super.key,
    required this.value,
    required this.color,
    required this.child,
    this.size = 108,
    this.strokeWidth = 9,
  });

  final double value;
  final Color color;
  final Widget child;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: value.clamp(0.0, 1.0)),
        duration: AppDuration.slow,
        curve: Curves.easeOutCubic,
        builder: (context, animated, _) {
          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox.expand(
                child: CircularProgressIndicator(
                  value: 1,
                  strokeWidth: strokeWidth,
                  color: context.subtleFill,
                ),
              ),
              SizedBox.expand(
                child: CircularProgressIndicator(
                  value: animated,
                  strokeWidth: strokeWidth,
                  strokeCap: StrokeCap.round,
                  color: color,
                  backgroundColor: Colors.transparent,
                ),
              ),
              child,
            ],
          );
        },
      ),
    );
  }
}
