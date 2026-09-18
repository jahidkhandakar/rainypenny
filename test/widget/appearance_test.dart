import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/settings/settings_store.dart';
import 'package:rainypenny/core/theme/app_accents.dart';

import '../support/boot.dart';

/// Choosing a look has to do three things: change the app there and then,
/// survive a restart, and leave the financial colours alone.
void main() {
  /// The theme the app is actually rendering with.
  ThemeData currentTheme(WidgetTester tester) =>
      Theme.of(tester.element(find.byType(Scaffold).first));

  /// Profile → Settings, where the accent swatches are repeated inline.
  Future<void> openSettings(WidgetTester tester) async {
    // The bar renders the outlined variant for the tab you are not on.
    await tester.tap(find.byIcon(Icons.person_outline));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.settings_outlined));
    await tester.pumpAndSettle();
  }

  /// Settings → Appearance, the screen that also carries light/dark/system.
  Future<void> openAppearanceScreen(WidgetTester tester) async {
    await openSettings(tester);
    await tester.tap(find.text('Theme'));
    await tester.pumpAndSettle();
  }

  Future<void> pickAccent(WidgetTester tester, String name) async {
    final swatch = find.byTooltip(name);
    await tester.ensureVisible(swatch.first);
    await tester.pumpAndSettle();
    await tester.tap(swatch.first);
    await tester.pumpAndSettle();
  }

  testWidgets('the app starts on the brand teal', (tester) async {
    await boot(tester);
    expect(currentTheme(tester).colorScheme.primary, AppAccents.teal.base);
  });

  testWidgets('picking an accent in Settings repaints the app immediately', (
    tester,
  ) async {
    await boot(tester);
    await openSettings(tester);

    // Crimson is the furthest from the default, so a stale theme is obvious.
    await pickAccent(tester, 'Crimson');

    expect(currentTheme(tester).colorScheme.primary, AppAccents.crimson.base);
  });

  testWidgets('the choice survives a restart', (tester) async {
    final store = InMemorySettingsStore();

    await boot(tester, store: store);
    await openSettings(tester);
    await pickAccent(tester, 'Violet');
    expect(store.read(SettingsKeys.accent), 'violet');

    // Tear the first tree down before booting again. Replacing the root
    // ProviderScope in place leaves the old one disposing while the new one
    // builds, and Riverpod rightly complains; a real cold start never does
    // that, so pump an empty tree in between.
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();

    // Boot a second time against the same storage, as a cold start would.
    await boot(tester, store: store);
    expect(currentTheme(tester).colorScheme.primary, AppAccents.violet.base);
  });

  testWidgets('dark mode can be chosen independently of the accent', (
    tester,
  ) async {
    final store = InMemorySettingsStore();
    await boot(tester, store: store);
    await openAppearanceScreen(tester);

    await pickAccent(tester, 'Orange');
    await tester.tap(find.text('Dark'));
    await tester.pumpAndSettle();

    final theme = currentTheme(tester);
    expect(theme.brightness, Brightness.dark);
    expect(
      theme.colorScheme.primary,
      AppAccents.orange.base,
      reason: 'the accent should not be reset by switching to dark',
    );
    expect(store.read(SettingsKeys.themeMode), 'dark');
    expect(store.read(SettingsKeys.accent), 'orange');
  });

  testWidgets('an unknown stored accent falls back instead of crashing', (
    tester,
  ) async {
    // A build that drops an accent must not brick the app for anyone who
    // happened to have it selected.
    final store = InMemorySettingsStore()
      ..write(SettingsKeys.accent, 'chartreuse');

    await boot(tester, store: store);

    expect(currentTheme(tester).colorScheme.primary, AppAccents.fallback.base);
  });
}
