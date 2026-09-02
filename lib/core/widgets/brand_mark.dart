import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// The RainyPenny mark: the R monogram holding a raindrop above a coin stack,
/// filled with the brand gradient.
///
/// Rendered from the supplied vector artwork so it stays crisp at any size.
/// `assets/logo/logo.svg` is the untouched source file; `logo_mark.svg` is the
/// same artwork with its viewBox trimmed to the drawing, which is what the UI
/// wants — a mark that fills the box it is given instead of floating inside
/// the logo sheet's padding.
class BrandMark extends StatelessWidget {
  const BrandMark({super.key, this.size = 36, this.monochrome});

  /// Asset path of the trimmed mark. Public so callers that need the raw
  /// artwork (an export, a share sheet) can reach for it by name.
  static const asset = 'assets/logo/logo_mark.svg';

  /// The height of the mark. It is taller than it is wide, so the painted
  /// width comes out at roughly 0.86 × [size].
  final double size;

  /// When set, the mark is drawn flat in this colour instead of the gradient.
  /// Used on the splash and anywhere else the mark sits on brand colour.
  final Color? monochrome;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      height: size,
      fit: BoxFit.contain,
      colorFilter: monochrome == null
          ? null
          : ColorFilter.mode(monochrome!, BlendMode.srcIn),
    );
  }
}
