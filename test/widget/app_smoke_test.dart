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

  testWidgets('the add flow opens from the centre button', (tester) async {
    await tester.pumpWidget(bootApp());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.add_rounded).first);
    await tester.pumpAndSettle();

    expect(find.text('Add transaction'), findsOneWidget);
    expect(find.text('Save expense'), findsOneWidget);
  });
}
