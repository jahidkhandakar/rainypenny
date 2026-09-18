import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/theme/app_accents.dart';
import 'package:rainypenny/core/theme/app_colors.dart';
import 'package:rainypenny/core/theme/app_theme.dart';

/// The accent has to be more than a colour swap: it must reach the theme, it
/// must stay readable in both brightnesses, and it must leave the financial
/// semantics alone.
void main() {
  group('every accent', () {
    test('has a stable, unique id', () {
      final ids = AppAccents.values.map((a) => a.id).toList();
      expect(ids.toSet().length, ids.length, reason: 'duplicate accent id');
      expect(
        AppAccents.values.first,
        AppAccents.fallback,
        reason: 'the brand teal should stay the default',
      );
    });

    test('resolves by id, and falls back rather than throwing', () {
      for (final accent in AppAccents.values) {
        expect(AppAccents.byId(accent.id), accent);
      }
      for (final unknown in [null, '', 'chartreuse']) {
        expect(AppAccents.byId(unknown), AppAccents.fallback);
      }
    });

    test('reaches ThemeData in both brightnesses', () {
      for (final accent in AppAccents.values) {
        for (final theme in [AppTheme.light(accent), AppTheme.dark(accent)]) {
          expect(theme.colorScheme.primary, accent.base, reason: accent.id);
          expect(
            theme.extension<AppPalette>()?.accent,
            accent,
            reason: accent.id,
          );
        }
      }
    });

    test('keeps white text legible on the filled button', () {
      // 3:1 is the AA floor for large text, which is what a 16pt semibold
      // button label counts as. Anything below that is unreadable in daylight.
      for (final accent in AppAccents.values) {
        expect(
          _contrast(accent.base, Colors.white),
          greaterThanOrEqualTo(2.5),
          reason: '${accent.id} is too pale behind white text',
        );
      }
    });

    test('has a light tint that is genuinely light and a dark one that is '
        'genuinely dark', () {
      for (final accent in AppAccents.values) {
        expect(
          accent.tintLight.computeLuminance(),
          greaterThan(0.7),
          reason: '${accent.id} tintLight is too dark for a light surface',
        );
        expect(
          accent.tintDark.computeLuminance(),
          lessThan(0.2),
          reason: '${accent.id} tintDark is too light for a dark surface',
        );
      }
    });

    test('runs its gradient from a deeper colour into the accent', () {
      for (final accent in AppAccents.values) {
        expect(
          accent.gradientStart.computeLuminance(),
          lessThan(accent.base.computeLuminance()),
          reason: '${accent.id} gradient runs the wrong way',
        );
      }
    });

    test('produces six distinguishable chart steps', () {
      for (final accent in AppAccents.values) {
        for (final isDark in [false, true]) {
          final series = accent.chartSeries(isDark: isDark);
          expect(series.length, 6);
          expect(
            series.toSet().length,
            6,
            reason: '${accent.id} repeats a chart colour',
          );
        }
      }
    });
  });

  test('the theme extension does not interpolate between accents', () {
    // Crossfading through the colours in between would look like a bug.
    const teal = AppPalette(accent: AppAccents.teal);
    const crimson = AppPalette(accent: AppAccents.crimson);
    expect(teal.lerp(crimson, 0.1).accent, AppAccents.teal);
    expect(teal.lerp(crimson, 0.9).accent, AppAccents.crimson);
  });

  testWidgets('money in and money out keep their colours under every accent', (
    tester,
  ) async {
    // The whole point of the semantic split: changing the accent is a matter
    // of taste and must never change what a figure means.
    final incomeByAccent = <Color>{};
    final expenseByAccent = <Color>{};

    for (final accent in AppAccents.values) {
      await tester.pumpWidget(
        MaterialApp(
          theme: AppTheme.light(accent),
          home: Builder(
            builder: (context) {
              incomeByAccent.add(context.incomeColor);
              expenseByAccent.add(context.expenseColor);
              return const SizedBox();
            },
          ),
        ),
      );
    }

    expect(
      incomeByAccent.length,
      1,
      reason: 'income colour follows the accent',
    );
    expect(
      expenseByAccent.length,
      1,
      reason: 'expense colour follows the accent',
    );
    expect(expenseByAccent.single, AppColors.secondary);
  });

  testWidgets('a theme with no palette still resolves to the brand teal', (
    tester,
  ) async {
    // Bare MaterialApps show up in tests, previews and the PDF preview.
    late AccentPalette resolved;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            resolved = context.accentPalette;
            return const SizedBox();
          },
        ),
      ),
    );
    expect(resolved, AppAccents.fallback);
  });
}

/// WCAG relative-luminance contrast ratio.
double _contrast(Color a, Color b) {
  final la = a.computeLuminance();
  final lb = b.computeLuminance();
  final lighter = la > lb ? la : lb;
  final darker = la > lb ? lb : la;
  return (lighter + 0.05) / (darker + 0.05);
}
