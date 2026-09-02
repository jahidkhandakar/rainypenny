import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_dimens.dart';
import 'app_typography.dart';

/// Builds the light and dark [ThemeData] from the brand tokens.
abstract final class AppTheme {
  static ThemeData get light => _build(Brightness.light);
  static ThemeData get dark => _build(Brightness.dark);

  static ThemeData _build(Brightness brightness) {
    final isDark = brightness == Brightness.dark;

    final background = isDark ? AppColors.darkBackground : AppColors.background;
    final surface = isDark ? AppColors.darkSurface : AppColors.surface;
    final textPrimary =
        isDark ? AppColors.darkTextPrimary : AppColors.textPrimary;
    final textSecondary =
        isDark ? AppColors.darkTextSecondary : AppColors.textSecondary;
    final border = isDark ? AppColors.darkBorder : AppColors.border;

    final scheme = ColorScheme(
      brightness: brightness,
      primary: AppColors.primary,
      onPrimary: Colors.white,
      primaryContainer:
          isDark ? AppColors.darkSelectedBackground : AppColors.selectedBackground,
      onPrimaryContainer: isDark ? AppColors.primaryLight : AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: Colors.white,
      surface: surface,
      onSurface: textPrimary,
      surfaceContainerLowest: background,
      surfaceContainerHighest:
          isDark ? AppColors.darkSurfaceElevated : AppColors.surfaceSecondary,
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
      scaffoldBackgroundColor: background,
      canvasColor: background,
      splashFactory: InkSparkle.splashFactory,
      textTheme: textTheme,
      dividerTheme: DividerThemeData(
        color: border,
        thickness: 1,
        space: 1,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        surfaceTintColor: Colors.transparent,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.heading.copyWith(color: textPrimary),
        systemOverlayStyle:
            isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
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
          borderRadius: BorderRadius.vertical(top: Radius.circular(AppRadius.xl)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
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
          foregroundColor: AppColors.primary,
          textStyle: AppTypography.label,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          minimumSize: const Size(0, 36),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor:
            isDark ? AppColors.darkSurfaceElevated : AppColors.surfaceSecondary,
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
          borderSide: const BorderSide(color: AppColors.primary, width: 1.6),
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
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearMinHeight: 8,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: textSecondary,
        titleTextStyle: AppTypography.title.copyWith(color: textPrimary),
        subtitleTextStyle: AppTypography.caption.copyWith(color: textSecondary),
      ),
      splashColor: AppColors.primary.withValues(alpha: 0.06),
      highlightColor: AppColors.primary.withValues(alpha: 0.04),
    );
  }
}

/// Convenience accessors so widgets read as `context.colors.textSecondary`
/// instead of repeating `Theme.of(context).colorScheme...` everywhere.
extension AppThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => Theme.of(this).colorScheme;
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  Color get textPrimary => isDark ? AppColors.darkTextPrimary : AppColors.textPrimary;
  Color get textSecondary =>
      isDark ? AppColors.darkTextSecondary : AppColors.textSecondary;
  Color get textDisabled =>
      isDark ? AppColors.darkTextDisabled : AppColors.textDisabled;
  Color get borderColor => isDark ? AppColors.darkBorder : AppColors.border;
  Color get cardColor => isDark ? AppColors.darkSurface : AppColors.surface;
  Color get subtleFill =>
      isDark ? AppColors.darkSurfaceElevated : AppColors.surfaceSecondary;
  Color get tintFill =>
      isDark ? AppColors.darkSelectedBackground : AppColors.selectedBackground;

  /// The brand navy, resolved for the current theme. Always paint the second
  /// brand colour through this rather than [AppColors.secondary] — the raw
  /// navy is reserved for surfaces that carry white content.
  Color get brandSecondary =>
      isDark ? AppColors.secondaryOnDark : AppColors.secondary;

  /// Expenses and outgoing amounts — the navy side of the brand.
  Color get expenseColor => brandSecondary;

  Color get chartSlateColor =>
      isDark ? AppColors.chartSlateOnDark : AppColors.chartSlate;

  List<Color> get chartSeries =>
      isDark ? AppColors.darkChartSeries : AppColors.chartSeries;
}
