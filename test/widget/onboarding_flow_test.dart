import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/settings/settings_store.dart';

import '../support/boot.dart';

/// First-run setup, the guide it hands off to, and the promise that every
/// choice is applied as it is made rather than at the end.
void main() {
  Future<void> tapContinue(WidgetTester tester) async {
    await tester.tap(find.widgetWithText(ElevatedButton, 'Continue'));
    await tester.pumpAndSettle();
  }

  // ElevatedButton.icon and OutlinedButton.icon build private subclasses, and
  // find.byType matches on the exact runtime type, so widgetWithText misses
  // them. Tapping the label reaches the button either way.
  Future<void> tapLabel(WidgetTester tester, String label) async {
    final finder = find.text(label);
    await tester.ensureVisible(finder);
    await tester.pumpAndSettle();
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  /// Walks from step 1 to the final step.
  Future<void> reachReadyStep(WidgetTester tester) async {
    for (var i = 0; i < 4; i++) {
      await tapContinue(tester);
    }
  }

  testWidgets('setup opens on the name step and shows how far along it is', (
    tester,
  ) async {
    await boot(tester, onboarded: false);

    expect(find.text('Step 1 of 5'), findsOneWidget);
    expect(find.text('What should we call you?'), findsOneWidget);
    expect(find.text('Skip'), findsOneWidget);
  });

  testWidgets('Continue walks through every step to the end', (tester) async {
    await boot(tester, onboarded: false);

    await tapContinue(tester);
    expect(find.text('Step 2 of 5'), findsOneWidget);
    expect(find.text('Which currency do you use?'), findsOneWidget);

    await tapContinue(tester);
    expect(find.text('Step 3 of 5'), findsOneWidget);
    expect(find.text('Make it yours'), findsOneWidget);

    await tapContinue(tester);
    expect(find.text('Step 4 of 5'), findsOneWidget);
    expect(find.text('Stay on top of it'), findsOneWidget);

    await tapContinue(tester);
    expect(find.text('Step 5 of 5'), findsOneWidget);
    expect(find.text('Show me around'), findsOneWidget);
    // The last step carries its own two actions instead of the shared footer.
    expect(find.widgetWithText(ElevatedButton, 'Continue'), findsNothing);
  });

  testWidgets('the name typed on step one greets the user on the last', (
    tester,
  ) async {
    await boot(tester, onboarded: false);

    await tester.enterText(find.byType(TextField).first, 'Priya');
    await reachReadyStep(tester);

    expect(find.text('You are all set, Priya'), findsOneWidget);
  });

  testWidgets('Skip leaves setup and lands on the dashboard', (tester) async {
    await boot(tester, onboarded: false);

    await tester.tap(find.widgetWithText(TextButton, 'Skip'));
    await tester.pumpAndSettle();

    expect(dashboardMarker, findsOneWidget);
    expect(find.text('Step 1 of 5'), findsNothing);
  });

  testWidgets('choosing to skip the tour goes straight to the app', (
    tester,
  ) async {
    await boot(tester, onboarded: false);
    await reachReadyStep(tester);

    await tester.tap(find.widgetWithText(OutlinedButton, 'Take me to the app'));
    await tester.pumpAndSettle();

    expect(dashboardMarker, findsOneWidget);
  });

  testWidgets('choosing the tour opens the beginner guide', (tester) async {
    await boot(tester, onboarded: false);
    await reachReadyStep(tester);

    await tapLabel(tester, 'Show me around');

    expect(find.text('Beginner’s guide'), findsOneWidget);
    expect(find.text('Chapter 1 of 9'), findsOneWidget);
    expect(find.text('Your dashboard'), findsOneWidget);
  });

  testWidgets('setup is not asked for twice', (tester) async {
    // Completing it has to stick, or every cold start begins with the wizard.
    final store = InMemorySettingsStore();
    await boot(tester, onboarded: false, store: store);

    await tester.tap(find.widgetWithText(TextButton, 'Skip'));
    await tester.pumpAndSettle();

    expect(store.readFlag(SettingsKeys.onboardingComplete), isTrue);
  });

  group('the beginner guide', () {
    Future<void> openGuide(WidgetTester tester) async {
      await boot(tester, onboarded: false);
      await reachReadyStep(tester);
      await tapLabel(tester, 'Show me around');
    }

    testWidgets('walks chapter by chapter and ends on Finish', (tester) async {
      await openGuide(tester);

      for (var chapter = 1; chapter < 9; chapter++) {
        expect(find.text('Chapter $chapter of 9'), findsOneWidget);
        await tester.tap(find.widgetWithText(ElevatedButton, 'Next'));
        await tester.pumpAndSettle();
      }

      expect(find.text('Chapter 9 of 9'), findsOneWidget);
      expect(find.text('Make it stick'), findsOneWidget);
      expect(find.widgetWithText(ElevatedButton, 'Finish'), findsOneWidget);
    });

    testWidgets('closing it lands on the dashboard and does not come back', (
      tester,
    ) async {
      await openGuide(tester);

      await tester.tap(find.byIcon(Icons.close_rounded));
      await tester.pumpAndSettle();

      expect(dashboardMarker, findsOneWidget);
      expect(find.text('Beginner’s guide'), findsNothing);
    });

    testWidgets('a chapter can send the reader to the screen it describes', (
      tester,
    ) async {
      await openGuide(tester);

      await tapLabel(tester, 'Open Home');

      expect(dashboardMarker, findsOneWidget);
    });
  });
}
