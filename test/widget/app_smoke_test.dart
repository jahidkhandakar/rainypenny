import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/app.dart';
import 'package:rainypenny/core/di/providers.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';

/// Boots the real app with the mock backend answering instantly, and walks the
/// bottom navigation to check every destination builds.
void main() {
  Widget bootApp() {
    return ProviderScope(
      overrides: [
        financeDataSourceProvider.overrideWithValue(
          MockFinanceDataSource(latency: Duration.zero),
        ),
      ],
      child: const RainyPennyApp(),
    );
  }

  testWidgets('splash hands off to the dashboard', (tester) async {
    await tester.pumpWidget(bootApp());

    expect(find.text('Save for a rainy day'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    expect(find.text('Total balance'.toUpperCase()), findsOneWidget);
    expect(find.textContaining('Alex'), findsOneWidget);
  });

  testWidgets('every bottom-navigation destination builds', (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    for (final label in ['Transactions', 'Reports', 'Profile', 'Home']) {
      await tester.tap(find.text(label).last);
      await tester.pumpAndSettle();
    }

    expect(tester.takeException(), isNull);
  });

  testWidgets('the centre button opens the quick-action menu', (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.add_rounded).first);
    await tester.pumpAndSettle();

    expect(find.text('What would you like to do?'), findsOneWidget);

    // Scoped to the sheet: "Reports" also labels a bottom-nav tab.
    Finder inSheet(String label) => find.descendant(
          of: find.byType(BottomSheet),
          matching: find.text(label),
        );

    for (final label in [
      'Add expense',
      'Add income',
      'Add loan',
      'Add budget',
      'Add goal',
      'Reports',
      'Budgets',
      'Savings',
    ]) {
      expect(inSheet(label), findsOneWidget, reason: 'missing "$label"');
    }
  });

  testWidgets('choosing Add expense reaches the transaction form',
      (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.add_rounded).first);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Add expense'));
    await tester.pumpAndSettle();

    expect(find.text('Add transaction'), findsOneWidget);
    expect(find.text('Save expense'), findsOneWidget);
    // The menu must be gone, not stacked underneath.
    expect(find.text('What would you like to do?'), findsNothing);
  });

  testWidgets('choosing an editor closes the menu before opening it',
      (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.add_rounded).first);
    await tester.pumpAndSettle();

    // Add budget chains a category picker after the menu closes; the two must
    // never be on screen together.
    await tester.tap(find.text('Add budget'));
    await tester.pumpAndSettle();

    expect(find.text('Select category'), findsOneWidget);
    expect(find.text('What would you like to do?'), findsNothing);
  });

  testWidgets('long-pressing the centre button skips the menu',
      (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    await tester.longPress(find.byIcon(Icons.add_rounded).first);
    await tester.pumpAndSettle();

    expect(find.text('Add transaction'), findsOneWidget);
    expect(find.text('What would you like to do?'), findsNothing);
  });
}
