import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/app.dart';
import 'package:rainypenny/core/di/providers.dart';
import 'package:rainypenny/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:rainypenny/features/auth/domain/repositories/auth_repository.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';

/// A repository that starts signed out, so the redirect can be exercised.
class _SignedOutAuthRepository extends MockAuthRepository {
  _SignedOutAuthRepository() {
    signOut();
  }
}

void main() {
  Widget bootApp({AuthRepository? auth}) {
    return ProviderScope(
      overrides: [
        financeDataSourceProvider.overrideWithValue(
          MockFinanceDataSource(latency: Duration.zero),
        ),
        if (auth != null) authRepositoryProvider.overrideWithValue(auth),
      ],
      child: const RainyPennyApp(),
    );
  }

  Future<void> boot(WidgetTester tester, {AuthRepository? auth}) async {
    await tester.pumpWidget(bootApp(auth: auth));
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();
  }

  testWidgets('a signed-out user lands on the sign-in screen', (tester) async {
    await boot(tester, auth: _SignedOutAuthRepository());

    expect(find.text('Sign in'), findsWidgets);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    // The dashboard must not be reachable while signed out.
    expect(find.text('TOTAL BALANCE'), findsNothing);
  });

  testWidgets('the form rejects a bad email and a short password',
      (tester) async {
    await boot(tester, auth: _SignedOutAuthRepository());

    await tester.enterText(find.byType(TextField).first, 'not-an-email');
    await tester.enterText(find.byType(TextField).last, 'short');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Sign in'));
    await tester.pumpAndSettle();

    expect(find.text('Enter a valid email address'), findsOneWidget);
    expect(find.text('Use at least 8 characters'), findsOneWidget);
  });

  testWidgets('signing in redirects to the dashboard', (tester) async {
    await boot(tester, auth: _SignedOutAuthRepository());

    await tester.enterText(find.byType(TextField).first, 'alex@email.com');
    await tester.enterText(find.byType(TextField).last, 'supersecret');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Sign in'));
    await tester.pumpAndSettle();

    expect(find.text('Total balance'.toUpperCase()), findsOneWidget);
    expect(find.text('Email'), findsNothing);
  });

  testWidgets('the sign-up form asks for a name', (tester) async {
    await boot(tester, auth: _SignedOutAuthRepository());

    await tester.tap(find.widgetWithText(TextButton, 'Create account'));
    await tester.pumpAndSettle();

    expect(find.text('Full name'), findsOneWidget);
    expect(
      find.widgetWithText(ElevatedButton, 'Create account'),
      findsOneWidget,
    );
  });

  testWidgets('an already-signed-in user goes straight to the dashboard',
      (tester) async {
    await boot(tester);

    expect(find.text('Total balance'.toUpperCase()), findsOneWidget);
  });
}
