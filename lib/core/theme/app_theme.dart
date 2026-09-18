import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_accents.dart';
import 'app_colors.dart';
import 'app_dimens.dart';
import 'app_typography.dart';

/// Builds the light and dark [ThemeData] from the brand tokens and the accent
/// the user has chosen.
///
/// The accent themes the app's *chrome* — buttons, selection, focus, the
/// signature gradient, the chart ramp. It deliberately does not touch the
/// financial semantics: money in stays the positive teal and money out stays
/// the brand navy under every accent, because someone who picks the crimson
/// theme has expressed a taste, not a claim that their salary is a warning.
abstract final class AppTheme {
  static ThemeData light([AccentPalette accent = AppAccents.fallback]) =>
      _build(Brightness.light, accent);

  static ThemeData dark([AccentPalette accent = AppAccents.fallback]) =>
      _build(Brightness.dark, accent);

  static ThemeData _build(Brightness brightness, AccentPalette accent) {
    final isDark = brightness == Brightness.dark;

    final background = isDark ? AppColors.darkBackground : AppColors.background;
    final surface = isDark ? AppColors.darkSurface : AppColors.surface;
    final textPrimary = isDark
        ? AppColors.darkTextPrimary
        : AppColors.textPrimary;
    final textSecondary = isDark
        ? AppColors.darkTextSecondary
        : AppColors.textSecondary;
    final border = isDark ? AppColors.darkBorder : AppColors.border;
    final tint = isDark ? accent.tintDark : accent.tintLight;

    final scheme = ColorScheme(
      brightness: brightness,
      primary: accent.base,
      onPrimary: Colors.white,
      primaryContainer: tint,
      onPrimaryContainer: isDark ? accent.light : accent.dark,
      secondary: AppColors.secondary,
      onSecondary: Colors.white,
      surface: surface,
      onSurface: textPrimary,
      surfaceContainerLowest: background,
      surfaceContainerHighest: isDark
          ? AppColors.darkSurfaceElevated
          : AppColors.surfaceSecondary,
      onSurfaceVariant: textSecondary,
      error: AppColors.error,
      onError: Colors.white,
      outline: border,
      outlineVariant: border,
    );

    final textTheme = TextTheme(
      displayLarge: AppTypography.display,
      headlineMedium: AppTypography.heading,
      titleLarge: AppTypography.sectionTitle,
      titleMedium: AppTypography.title,
      bodyMedium: AppTypography.body,
      bodySmall: AppTypography.caption,
      labelLarge: AppTypography.label,
      labelSmall: AppTypography.overline,
    ).apply(bodyColor: textPrimary, displayColor: textPrimary);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      extensions: [AppPalette(accent: accent)],
      scaffoldBackgroundColor: background,
      canvasColor: background,
      splashFactory: InkSparkle.splashFactory,
      textTheme: textTheme,
      dividerTheme: DividerThemeData(color: border, thickness: 1, space: 1),
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        surfaceTintColor: Colors.transparent,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.heading.copyWith(color: textPrimary),
        systemOverlayStyle: isDark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
      ),
      cardTheme: CardThemeData(
        color: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          side: BorderSide(color: border),
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        width: 296,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(AppRadius.xl),
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: border,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.xl),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accent.base,
          foregroundColor: Colors.white,
          disabledBackgroundColor: border,
          disabledForegroundColor: textSecondary,
          elevation: 0,
          minimumSize: const Size.fromHeight(54),
          textStyle: AppTypography.title.copyWith(fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: isDark ? accent.light : accent.base,
          textStyle: AppTypography.label,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          minimumSize: const Size(0, 36),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
      // Onboarding and the auth screens pair a filled primary action with a
      // quieter outlined one; without this they would inherit Material's own
      // shape and sit visibly differently from the filled button beside them.
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: isDark ? accent.light : accent.base,
          side: BorderSide(color: border),
          elevation: 0,
          minimumSize: const Size.fromHeight(54),
          textStyle: AppTypography.title.copyWith(fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDark
            ? AppColors.darkSurfaceElevated
            : AppColors.surfaceSecondary,
        hintStyle: AppTypography.body.copyWith(color: AppColors.textDisabled),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: accent.base, width: 1.6),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.charcoal,
        contentTextStyle: AppTypography.body.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: accent.base,
        linearMinHeight: 8,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: textSecondary,
        titleTextStyle: AppTypography.title.copyWith(color: textPrimary),
        subtitleTextStyle: AppTypography.caption.copyWith(color: textSecondary),
      ),
      splashColor: accent.base.withValues(alpha: 0.06),
      highlightColor: accent.base.withValues(alpha: 0.04),
    );
  }
}

/// Convenience accessors so widgets read as `context.colors.textSecondary`
/// instead of repeating `Theme.of(context).colorScheme...` everywhere.
extension AppThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => Theme.of(this).colorScheme;
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// The chosen accent. Falls back to the brand teal when a widget is built
  /// under a [ThemeData] that carries no [AppPalette] — a bare `MaterialApp`
  /// in a test, or one of Flutter's own defaults.
  AccentPalette get accentPalette =>
      Theme.of(this).extension<AppPalette>()?.accent ?? AppAccents.fallback;

  /// The accent itself. Reach for this rather than `AppColors.primary`
  /// wherever the colour is chrome rather than financial meaning.
  Color get accent => accentPalette.base;

  /// The accent at a weight that stays readable against the current surface:
  /// the base on light, the lighter step on dark, where a mid-tone accent
  /// sits too close to the card behind it.
  Color get accentOnSurface =>
      isDark ? accentPalette.light : accentPalette.base;

  Color get accentDark => accentPalette.dark;
  Color get accentLight => accentPalette.light;

  Color get textPrimary =>
      isDark ? AppColors.darkTextPrimary : AppColors.textPrimary;
  Color get textSecondary =>
      isDark ? AppColors.darkTextSecondary : AppColors.textSecondary;
  Color get textDisabled =>
      isDark ? AppColors.darkTextDisabled : AppColors.textDisabled;
  Color get borderColor => isDark ? AppColors.darkBorder : AppColors.border;
  Color get cardColor => isDark ? AppColors.darkSurface : AppColors.surface;
  Color get subtleFill =>
      isDark ? AppColors.darkSurfaceElevated : AppColors.surfaceSecondary;

  /// The wash behind a selected row or an icon badge, in the current accent.
  Color get tintFill =>
      isDark ? accentPalette.tintDark : accentPalette.tintLight;

  /// The signature gradient, in the current accent. On the default teal this
  /// is exactly the logo gradient.
  LinearGradient get brandGradient => accentPalette.gradient;

  /// The brand navy, resolved for the current theme. Always paint the second
  /// brand colour through this rather than [AppColors.secondary] — the raw
  /// navy is reserved for surfaces that carry white content.
  Color get brandSecondary =>
      isDark ? AppColors.secondaryOnDark : AppColors.secondary;

  /// Expenses and outgoing amounts — the navy side of the brand. Fixed across
  /// accents; see the note on [AppTheme].
  Color get expenseColor => brandSecondary;

  /// Income and incoming amounts. Also fixed across accents.
  Color get incomeColor => isDark ? AppColors.primaryLight : AppColors.income;

  Color get chartSlateColor =>
      isDark ? AppColors.chartSlateOnDark : AppColors.chartSlate;

  /// Backing for a chart tooltip. Always the dark charcoal, in both themes:
  /// a tooltip floats above the surface, so it needs to stay distinct from it
  /// rather than following it lighter and darker.
  Color get tooltipBackground => AppColors.charcoal.withValues(alpha: 0.94);

  List<Color> get chartSeries => accentPalette.chartSeries(isDark: isDark);
}
