import 'package:flutter/material.dart';

/// Central colour tokens for the RainyPenny brand.
///
/// Nothing in the widget tree should ever hardcode a hex value — every colour
/// used by the UI is named here so the whole visual identity can be re-tuned
/// from a single file.
abstract final class AppColors {
  // ---------------------------------------------------------------------------
  // Brand
  // ---------------------------------------------------------------------------
  static const primary = Color(0xFF1D6787);
  static const primaryDark = Color(0xFF1D517C);
  static const primaryLight = Color(0xFF127C91);
  static const accent = Color(0xFF1C989E);
  static const charcoal = Color(0xFF1E2326);

  /// The logo gradient. Reserved for a handful of signature surfaces:
  /// the balance hero, the splash and the savings highlight.
  static const brandGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1D517C), Color(0xFF1D6787), Color(0xFF127C91)],
    stops: [0.0, 0.55, 1.0],
  );

  // ---------------------------------------------------------------------------
  // Light neutrals
  // ---------------------------------------------------------------------------
  static const background = Color(0xFFF6F8F9);
  static const surface = Color(0xFFFFFFFF);
  static const surfaceSecondary = Color(0xFFEFF3F4);

  static const textPrimary = Color(0xFF1E2326);
  static const textSecondary = Color(0xFF6B7378);
  static const textDisabled = Color(0xFFAAB2B6);

  static const border = Color(0xFFE4E9EB);

  // ---------------------------------------------------------------------------
  // Dark neutrals
  // ---------------------------------------------------------------------------
  static const darkBackground = Color(0xFF1E2326);
  static const darkSurface = Color(0xFF252B2E);
  static const darkSurfaceElevated = Color(0xFF2C3336);
  static const darkTextPrimary = Color(0xFFF5F7F8);
  static const darkTextSecondary = Color(0xFFAAB4B8);
  static const darkTextDisabled = Color(0xFF6E787C);
  static const darkBorder = Color(0xFF343C40);

  // ---------------------------------------------------------------------------
  // Financial semantics
  // ---------------------------------------------------------------------------
  static const income = Color(0xFF1C989E);
  static const expense = Color(0xFF1D517C);

  static const success = Color(0xFF1C989E);
  static const warning = Color(0xFFE3A83B);
  static const error = Color(0xFFD95C5C);

  // ---------------------------------------------------------------------------
  // Components
  // ---------------------------------------------------------------------------
  static const selectedBackground = Color(0xFFE7F3F5);
  static const iconBackground = Color(0xFFE7F3F5);
  static const darkSelectedBackground = Color(0xFF203238);

  static const navUnselected = Color(0xFF8A9499);
  static const chartNeutral = Color(0xFFAAB4B8);

  /// A muted slate that sits between the brand blues and the neutral grey.
  /// It gives the charts a sixth distinguishable step without introducing a
  /// colour from outside the palette.
  static const chartSlate = Color(0xFF45535A);

  /// Restrained chart ramp, walking down the logo gradient and finishing on
  /// two neutrals. Charts should never reach for a colour outside this list.
  static const chartSeries = <Color>[
    primaryDark,
    primary,
    primaryLight,
    accent,
    chartSlate,
    chartNeutral,
  ];
}
