import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../theme/app_typography.dart';

/// The RainyPenny mark: a raindrop holding a coin, filled with the brand
/// gradient.
///
/// Drawn rather than shipped as an asset so it stays crisp at any size and
/// picks up the palette from [AppColors]. Swap the painter for the supplied
/// artwork when the final logo lands.
class BrandMark extends StatelessWidget {
  const BrandMark({super.key, this.size = 36, this.monochrome});

  final double size;

  /// When set, the mark is drawn flat in this colour instead of the gradient.
  final Color? monochrome;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: _BrandMarkPainter(monochrome: monochrome)),
    );
  }
}

class _BrandMarkPainter extends CustomPainter {
  const _BrandMarkPainter({this.monochrome});

  final Color? monochrome;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final cx = w / 2;
    final r = w * 0.40;
    final cy = h - r - h * 0.02;

    final drop = Path()
      ..moveTo(cx, h * 0.02)
      ..cubicTo(cx + r * 0.72, h * 0.30, cx + r, h * 0.48, cx + r, cy)
      ..arcToPoint(
        Offset(cx - r, cy),
        radius: Radius.circular(r),
        clockwise: true,
      )
      ..cubicTo(cx - r, h * 0.48, cx - r * 0.72, h * 0.30, cx, h * 0.02)
      ..close();

    final fill = Paint()..isAntiAlias = true;
    if (monochrome != null) {
      fill.color = monochrome!;
    } else {
      fill.shader = AppColors.brandGradient.createShader(
        Rect.fromLTWH(0, 0, w, h),
      );
    }
    canvas.drawPath(drop, fill);

    // The coin: a ring punched out of the drop.
    final coin = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..strokeWidth = w * 0.075
      ..color = monochrome != null
          ? Colors.white.withValues(alpha: 0.85)
          : Colors.white;
    canvas.drawCircle(Offset(cx, cy), r * 0.46, coin);
    canvas.drawLine(
      Offset(cx, cy - r * 0.24),
      Offset(cx, cy + r * 0.24),
      coin..strokeWidth = w * 0.055,
    );
  }

  @override
  bool shouldRepaint(_BrandMarkPainter oldDelegate) =>
      oldDelegate.monochrome != monochrome;
}

/// Mark plus wordmark, used in the drawer header and on the splash.
class BrandLockup extends StatelessWidget {
  const BrandLockup({
    super.key,
    this.markSize = 34,
    this.onDark = false,
    this.tagline,
  });

  final double markSize;
  final bool onDark;
  final String? tagline;

  @override
  Widget build(BuildContext context) {
    final primaryColor = onDark ? Colors.white : context.textPrimary;
    final secondaryColor =
        onDark ? Colors.white70 : context.textSecondary;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BrandMark(size: markSize, monochrome: onDark ? Colors.white24 : null),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                style: AppTypography.sectionTitle.copyWith(
                  fontSize: markSize * 0.55,
                  color: primaryColor,
                ),
                children: [
                  const TextSpan(text: 'Rainy'),
                  TextSpan(
                    text: 'Penny',
                    style: TextStyle(
                      color: onDark ? Colors.white : AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            if (tagline != null)
              Text(
                tagline!,
                style: AppTypography.caption.copyWith(color: secondaryColor),
              ),
          ],
        ),
      ],
    );
  }
}
