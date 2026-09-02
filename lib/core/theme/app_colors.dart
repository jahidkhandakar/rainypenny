import 'package:flutter/material.dart';

/// Central colour tokens for the RainyPenny brand.
///
/// Nothing in the widget tree should ever hardcode a hex value — every colour
/// used by the UI is named here so the whole visual identity can be re-tuned
/// from a single file.
abstract final class AppColors {
  // ---------------------------------------------------------------------------
  // Brand
  //
  // The two brand colours are taken straight from the logo: the teal it
  // finishes on and the navy it starts from. Everything else on this axis is
  // a shade of one of them.
  // ---------------------------------------------------------------------------

  /// Brand teal. The dominant colour: buttons, selection, focus, nav.
  static const primary = Color(0xFF02B3AA);
  static const primaryDark = Color(0xFF018B84);
  static const primaryLight = Color(0xFF4FD1C9);

  /// Brand navy. The counterweight: savings, health, the gradient's deep end.
  static const secondary = Color(0xFF243570);
  static const secondaryLight = Color(0xFF3D51A0);

  static const charcoal = Color(0xFF171C2B);

  /// The navy end of the brand, lifted for dark surfaces. #243570 is darker
  /// than the dark theme's own cards, so anything drawn in it there is
  /// invisible; these keep the navy's identity while staying readable.
  /// Reach for them through `context.brandSecondary` rather than directly.
  static const secondaryOnDark = Color(0xFF8CA0E6);
  static const secondaryLightOnDark = Color(0xFF6E86D8);

  /// The logo gradient — navy into teal, exactly as the mark is drawn.
  /// Reserved for a handful of signature surfaces: the balance hero, the
  /// splash and the savings highlight.
  static const brandGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, primary],
    stops: [0.0, 1.0],
  );

  // ---------------------------------------------------------------------------
  // Light neutrals
  // ---------------------------------------------------------------------------
  static const background = Color(0xFFF5F7FA);
  static const surface = Color(0xFFFFFFFF);
  static const surfaceSecondary = Color(0xFFEDF1F6);

  static const textPrimary = Color(0xFF1A2036);
  static const textSecondary = Color(0xFF6B7488);
  static const textDisabled = Color(0xFFA7AEBE);

  static const border = Color(0xFFE2E7EF);

  // ---------------------------------------------------------------------------
  // Dark neutrals
  // ---------------------------------------------------------------------------
  static const darkBackground = Color(0xFF141824);
  static const darkSurface = Color(0xFF1B2130);
  static const darkSurfaceElevated = Color(0xFF232A3B);
  static const darkTextPrimary = Color(0xFFF2F5FA);
  static const darkTextSecondary = Color(0xFFA8B1C4);
  static const darkTextDisabled = Color(0xFF6C7688);
  static const darkBorder = Color(0xFF2E3648);

  // ---------------------------------------------------------------------------
  // Financial semantics
  // ---------------------------------------------------------------------------
  static const income = primary;
  static const expense = secondary;

  static const success = primary;
  static const warning = Color(0xFFE3A83B);
  static const error = Color(0xFFD95C5C);

  // ---------------------------------------------------------------------------
  // Components
  // ---------------------------------------------------------------------------
  static const selectedBackground = Color(0xFFE0F5F4);
  static const iconBackground = Color(0xFFE0F5F4);
  static const darkSelectedBackground = Color(0xFF16333B);

  static const navUnselected = Color(0xFF8A93A6);
  static const chartNeutral = Color(0xFFA8B1C4);

  /// A muted slate that sits between the brand navy and the neutral grey.
  /// It gives the charts a sixth distinguishable step without introducing a
  /// colour from outside the palette.
  static const chartSlate = Color(0xFF46527A);
  static const chartSlateOnDark = Color(0xFF6D7799);

  /// Restrained chart ramp, walking up the logo gradient from navy to teal and
  /// finishing on two neutrals. Charts should never reach for a colour outside
  /// this list.
  static const chartSeries = <Color>[
    secondary,
    secondaryLight,
    primaryDark,
    primary,
    primaryLight,
    chartNeutral,
  ];

  /// The same ramp with its navy steps lifted, for charts on dark surfaces.
  /// Read it through `context.chartSeries`.
  static const darkChartSeries = <Color>[
    secondaryOnDark,
    secondaryLightOnDark,
    primaryDark,
    primary,
    primaryLight,
    chartNeutral,
  ];
}
