import 'package:flutter/material.dart';

import 'app_colors.dart';

/// One selectable accent colour, with every shade the UI needs derived up
/// front rather than computed from a single hue at runtime.
///
/// Deriving shades algorithmically (`HSLColor.withLightness`) looks tidy but
/// produces muddy tints at the extremes of the wheel — a lightened crimson
/// goes pink, a darkened orange goes brown. Each ramp below is hand-picked so
/// every accent holds up in both themes.
@immutable
class AccentPalette {
  const AccentPalette({
    required this.id,
    required this.name,
    required this.base,
    required this.dark,
    required this.light,
    required this.tintLight,
    required this.tintDark,
    required this.gradientStart,
  });

  /// Stable key written to preferences. Never change one of these: an unknown
  /// id falls back to the brand default, silently resetting a user's choice.
  final String id;

  /// English name. The picker shows the localised string and falls back to
  /// this when a language has no translation for the accent yet.
  final String name;

  /// The accent itself: buttons, selection, focus, active nav.
  final Color base;

  /// A deeper step, for pressed states and the darker half of a ramp.
  final Color dark;

  /// A lighter step, readable against the dark theme's surfaces.
  final Color light;

  /// Very light wash behind selected rows and icon badges, light theme.
  final Color tintLight;

  /// The same role on dark surfaces — a deep, desaturated version of the
  /// accent rather than a lightened one, so it recedes behind its content.
  final Color tintDark;

  /// The deep end of the signature gradient. The gradient always runs
  /// [gradientStart] → [base], mirroring how the logo runs navy → teal.
  final Color gradientStart;

  LinearGradient get gradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [gradientStart, base],
    stops: const [0.0, 1.0],
  );

  /// The chart ramp for this accent: the brand navy, then the accent's own
  /// three steps, finishing on a neutral. Six distinguishable steps without
  /// ever reaching for a colour from outside the theme.
  List<Color> chartSeries({required bool isDark}) => [
    isDark ? AppColors.secondaryOnDark : AppColors.secondary,
    isDark ? AppColors.secondaryLightOnDark : AppColors.secondaryLight,
    dark,
    base,
    light,
    AppColors.chartNeutral,
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is AccentPalette && other.id == id);

  @override
  int get hashCode => id.hashCode;
}

/// The accent colours the app ships with.
///
/// Ten hues spread around the wheel so any two are told apart at swatch size,
/// plus a neutral slate for people who would rather the app had no colour
/// opinion at all. Amber and yellow are deliberately absent: they collide
/// with [AppColors.warning], and a warning the user cannot distinguish from
/// their own theme is worse than one fewer choice.
abstract final class AppAccents {
  /// The brand teal, taken from the logo. Anyone who never opens the theme
  /// picker sees exactly the app that shipped before accents existed.
  static const teal = AccentPalette(
    id: 'teal',
    name: 'Teal',
    base: AppColors.primary,
    dark: AppColors.primaryDark,
    light: AppColors.primaryLight,
    tintLight: Color(0xFFE0F5F4),
    tintDark: Color(0xFF16333B),
    gradientStart: AppColors.secondary,
  );

  static const green = AccentPalette(
    id: 'green',
    name: 'Green',
    base: Color(0xFF16A34A),
    dark: Color(0xFF11813B),
    light: Color(0xFF5FCB85),
    tintLight: Color(0xFFE3F6EA),
    tintDark: Color(0xFF12341F),
    gradientStart: Color(0xFF12503A),
  );

  static const sky = AccentPalette(
    id: 'sky',
    name: 'Sky',
    base: Color(0xFF0284C7),
    dark: Color(0xFF01669B),
    light: Color(0xFF56B6E8),
    tintLight: Color(0xFFE0F1FB),
    tintDark: Color(0xFF102C3F),
    gradientStart: Color(0xFF14456E),
  );

  static const blue = AccentPalette(
    id: 'blue',
    name: 'Blue',
    base: Color(0xFF1F6FEB),
    dark: Color(0xFF1657BC),
    light: Color(0xFF6FA6F5),
    tintLight: Color(0xFFE4EEFD),
    tintDark: Color(0xFF14294A),
    gradientStart: Color(0xFF1B2F73),
  );

  static const indigo = AccentPalette(
    id: 'indigo',
    name: 'Indigo',
    base: Color(0xFF4F46E5),
    dark: Color(0xFF3E36C7),
    light: Color(0xFF8B85F0),
    tintLight: Color(0xFFEAE8FD),
    tintDark: Color(0xFF21204F),
    gradientStart: Color(0xFF2B2178),
  );

  static const violet = AccentPalette(
    id: 'violet',
    name: 'Violet',
    base: Color(0xFF8B3FD6),
    dark: Color(0xFF6F2FB0),
    light: Color(0xFFB681E8),
    tintLight: Color(0xFFF1E7FB),
    tintDark: Color(0xFF2C1B47),
    gradientStart: Color(0xFF45206E),
  );

  static const pink = AccentPalette(
    id: 'pink',
    name: 'Pink',
    base: Color(0xFFD6337F),
    dark: Color(0xFFB01F65),
    light: Color(0xFFF07BAE),
    tintLight: Color(0xFFFCE6F0),
    tintDark: Color(0xFF43172E),
    gradientStart: Color(0xFF6B1140),
  );

  static const crimson = AccentPalette(
    id: 'crimson',
    name: 'Crimson',
    base: Color(0xFFC8102E),
    dark: Color(0xFFA00A24),
    light: Color(0xFFE8697C),
    tintLight: Color(0xFFFBE5E8),
    tintDark: Color(0xFF3F1219),
    gradientStart: Color(0xFF6E0A1C),
  );

  static const orange = AccentPalette(
    id: 'orange',
    name: 'Orange',
    base: Color(0xFFE1620F),
    dark: Color(0xFFB84D0A),
    light: Color(0xFFF0904A),
    tintLight: Color(0xFFFDEDE2),
    tintDark: Color(0xFF45250F),
    gradientStart: Color(0xFF6B2A08),
  );

  static const slate = AccentPalette(
    id: 'slate',
    name: 'Slate',
    base: Color(0xFF4A5568),
    dark: Color(0xFF36404F),
    light: Color(0xFF8B95A8),
    tintLight: Color(0xFFEBEEF3),
    tintDark: Color(0xFF262D3A),
    gradientStart: Color(0xFF232A3B),
  );

  static const values = <AccentPalette>[
    teal,
    green,
    sky,
    blue,
    indigo,
    violet,
    pink,
    crimson,
    orange,
    slate,
  ];

  static const fallback = teal;

  static final _byId = {for (final a in values) a.id: a};

  static AccentPalette byId(String? id) => _byId[id] ?? fallback;
}

/// Carries the chosen accent down the widget tree.
///
/// A [ThemeExtension] rather than a provider so that anything reading a colour
/// needs only a [BuildContext] — widget tests, golden previews and the PDF
/// preview all build a bare `MaterialApp` with no `ProviderScope` above it.
@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({required this.accent});

  final AccentPalette accent;

  @override
  AppPalette copyWith({AccentPalette? accent}) =>
      AppPalette(accent: accent ?? this.accent);

  /// Accents are picked from a fixed list, never interpolated, so crossfading
  /// between two themes snaps at the midpoint instead of travelling through
  /// the colours in between — which would look like a bug, not a transition.
  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) return this;
    return t < 0.5 ? this : other;
  }
}
