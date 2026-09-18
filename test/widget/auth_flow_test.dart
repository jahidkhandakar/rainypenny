import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:rainypenny/features/auth/presentation/widgets/auth_scaffold.dart';

import '../support/boot.dart';

/// The four auth screens and the gate in front of them.
void main() {
  // Targets the input inside the AuthField carrying this label. Indexing into
  // find.byType(TextField) instead would silently follow field order.
  Finder field(String label) => find.descendant(
    of: find.widgetWithText(AuthField, label),
    matching: find.byType(TextField),
  );

  // The auth screens scroll, and a ListView does not build what is off screen.
  // On the default 800x600 test viewport the sign-up form's own submit button
  // starts below the fold, so anything down there has to be scrolled to before
  // it exists to be found at all.
  Future<void> reveal(WidgetTester tester, Finder finder) async {
    if (finder.evaluate().isNotEmpty) {
      await tester.ensureVisible(finder);
    } else {
      await tester.scrollUntilVisible(
        finder,
        120,
        scrollable: find.byType(Scrollable).first,
      );
    }
    await tester.pumpAndSettle();
  }

  Future<void> tapAction(WidgetTester tester, Finder finder) async {
    await reveal(tester, finder);
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  group('the gate', () {
    testWidgets('a signed-out user lands on the welcome screen', (
      tester,
    ) async {
      // Nothing set up yet, so the carousel rather than the sign-in form.
      await tester.pumpWidget(
        bootApp(auth: SignedOutAuthRepository(), onboarded: false),
      );
      await tester.pump(const Duration(milliseconds: 1500));
      await tester.pumpAndSettle();

      expect(find.text('See where your money goes'), findsOneWidget);
      expect(find.text('I already have an account'), findsOneWidget);
      // The dashboard must not be reachable while signed out.
      expect(dashboardMarker, findsNothing);
    });

    testWidgets('a returning signed-out user gets the sign-in form, not the '
        'carousel they have already read', (tester) async {
      await boot(tester, auth: SignedOutAuthRepository());

      expect(find.text('Sign in'), findsWidgets);
      expect(find.text('See where your money goes'), findsNothing);
    });

    testWidgets('an already-signed-in user goes straight to the dashboard', (
      tester,
    ) async {
      await boot(tester);

      expect(dashboardMarker, findsOneWidget);
    });

    testWidgets('a signed-in user who has not finished setup gets onboarding', (
      tester,
    ) async {
      await boot(tester, onboarded: false);

      expect(find.text('Step 1 of 5'), findsOneWidget);
      expect(find.text('What should we call you?'), findsOneWidget);
      expect(dashboardMarker, findsNothing);
    });
  });

  group('signing in', () {
    testWidgets('rejects a malformed email and an empty password', (
      tester,
    ) async {
      await boot(tester, auth: SignedOutAuthRepository());

      await tester.enterText(find.byType(TextField).first, 'not-an-email');
      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

      expect(find.text('Enter a valid email address'), findsOneWidget);
      expect(find.text('Enter your password'), findsOneWidget);
    });

    testWidgets('reports credentials that do not match an account', (
      tester,
    ) async {
      await boot(tester, auth: SignedOutAuthRepository());

      await tester.enterText(find.byType(TextField).first, 'nobody@email.com');
      await tester.enterText(find.byType(TextField).last, 'wrongpassword');
      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

      expect(
        find.text('That email and password do not match an account'),
        findsOneWidget,
      );
      expect(dashboardMarker, findsNothing);
    });

    testWidgets('the right credentials reach the dashboard', (tester) async {
      await boot(tester, auth: SignedOutAuthRepository());

      await tester.enterText(
        find.byType(TextField).first,
        MockAuthRepository.demoEmail,
      );
      await tester.enterText(
        find.byType(TextField).last,
        MockAuthRepository.demoPassword,
      );
      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

      expect(dashboardMarker, findsOneWidget);
      expect(find.text('Email'), findsNothing);
    });
  });

  group('creating an account', () {
    Future<void> openSignUp(WidgetTester tester) async {
      await boot(tester, auth: SignedOutAuthRepository());
      await tapAction(
        tester,
        find.widgetWithText(TextButton, 'Create account'),
      );
    }

    testWidgets('asks for a name and consent', (tester) async {
      await openSignUp(tester);

      expect(find.text('Full name'), findsOneWidget);
      expect(
        find.text('I agree to the Terms of Service and the Privacy Policy'),
        findsOneWidget,
      );
      await reveal(
        tester,
        find.widgetWithText(ElevatedButton, 'Create account'),
      );
      expect(
        find.widgetWithText(ElevatedButton, 'Create account'),
        findsOneWidget,
      );
    });

    testWidgets('will not submit without the terms accepted', (tester) async {
      await openSignUp(tester);

      await tester.enterText(field('Full name'), 'Sam Rivera');
      await tester.enterText(field('Email'), 'sam@email.com');
      await tester.enterText(field('Password'), 'a-long-passphrase');
      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Create account'),
      );

      expect(find.text('Please accept to continue'), findsOneWidget);
      expect(find.text('Step 1 of 5'), findsNothing);
    });

    testWidgets('a new account lands in onboarding, not on the dashboard', (
      tester,
    ) async {
      await openSignUp(tester);

      await tester.enterText(field('Full name'), 'Sam Rivera');
      await tester.enterText(field('Email'), 'sam@email.com');
      await tester.enterText(field('Password'), 'a-long-passphrase');
      await tapAction(tester, find.byType(Checkbox));
      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Create account'),
      );

      expect(find.text('Step 1 of 5'), findsOneWidget);
    });

    testWidgets('refuses an address that already has an account', (
      tester,
    ) async {
      await openSignUp(tester);

      await tester.enterText(field('Full name'), 'Someone Else');
      await tester.enterText(field('Email'), MockAuthRepository.demoEmail);
      await tester.enterText(field('Password'), 'a-long-passphrase');
      await tapAction(tester, find.byType(Checkbox));
      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Create account'),
      );

      expect(
        find.text('An account with this email already exists'),
        findsOneWidget,
      );
    });

    testWidgets('the strength meter grades what is typed', (tester) async {
      await openSignUp(tester);

      await tester.enterText(field('Password'), 'abc');
      await tester.pump();
      expect(find.text('Too short'), findsOneWidget);

      await tester.enterText(field('Password'), 'password123');
      await tester.pump();
      expect(find.text('Weak'), findsOneWidget);

      await tester.enterText(field('Password'), 'Tr0ubador&Horse-Battery');
      await tester.pump();
      expect(find.text('Strong'), findsOneWidget);
    });
  });

  group('the temporary sign-in shortcut', () {
    // AppConfig.skipAuthWithoutBackend lets the buttons through while the
    // backend is not wired up. These pin what it does, so turning it off again
    // is a one-line change with a test proving the real flow still works.
    testWidgets(
      'the sign-in button lands on the dashboard without credentials',
      (tester) async {
        await boot(tester, auth: SignedOutAuthRepository(), skipAuth: true);

        await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

        expect(dashboardMarker, findsOneWidget);
      },
    );

    testWidgets('it skips first-run setup too', (tester) async {
      await boot(
        tester,
        auth: SignedOutAuthRepository(),
        onboarded: false,
        skipAuth: true,
      );

      // A fresh install opens on the carousel, so reach sign-in the way a
      // real first-time user would.
      await tapAction(
        tester,
        find.widgetWithText(TextButton, 'I already have an account'),
      );
      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

      expect(dashboardMarker, findsOneWidget);
      expect(find.text('Step 1 of 5'), findsNothing);
    });

    testWidgets('with it off, bad credentials are still rejected', (
      tester,
    ) async {
      await boot(tester, auth: SignedOutAuthRepository());

      await tester.enterText(find.byType(TextField).first, 'nobody@email.com');
      await tester.enterText(find.byType(TextField).last, 'wrongpassword');
      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Sign in'));

      expect(dashboardMarker, findsNothing);
    });
  });

  group('forgotten password', () {
    testWidgets('carries the typed email across and confirms without saying '
        'whether the account exists', (tester) async {
      await boot(tester, auth: SignedOutAuthRepository());

      await tester.enterText(find.byType(TextField).first, 'sam@email.com');
      await tapAction(
        tester,
        find.widgetWithText(TextButton, 'Forgot password?'),
      );

      expect(find.text('Reset your password'), findsOneWidget);
      // Prefilled from the sign-in form.
      expect(
        tester.widget<TextField>(find.byType(TextField)).controller?.text,
        'sam@email.com',
      );

      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Send reset link'),
      );

      expect(find.text('Reset link sent'), findsOneWidget);
      expect(
        find.text(
          'If sam@email.com has an account, a reset link is on its way.',
        ),
        findsOneWidget,
      );
    });
  });

  group('a recovery link', () {
    testWidgets('holds a signed-in user on the reset screen until they choose '
        'a new password', (tester) async {
      final auth = MockAuthRepository(
        latency: Duration.zero,
        startSignedIn: true,
      );
      await boot(tester, auth: auth);
      expect(dashboardMarker, findsOneWidget);

      // Stands in for the deep link a real reset email would arrive on.
      auth.simulatePasswordRecovery();
      await tester.pumpAndSettle();

      expect(find.text('Choose a new password'), findsOneWidget);
      expect(dashboardMarker, findsNothing);

      await tester.enterText(field('New password'), 'a-brand-new-passphrase');
      await tester.enterText(
        field('Confirm password'),
        'a-brand-new-passphrase',
      );
      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Save password'),
      );

      expect(find.text('Password updated'), findsOneWidget);

      await tapAction(tester, find.widgetWithText(ElevatedButton, 'Continue'));
      expect(dashboardMarker, findsOneWidget);
    });

    testWidgets('refuses two passwords that do not match', (tester) async {
      final auth = MockAuthRepository(
        latency: Duration.zero,
        startSignedIn: true,
      );
      await boot(tester, auth: auth);
      auth.simulatePasswordRecovery();
      await tester.pumpAndSettle();

      await tester.enterText(field('New password'), 'a-brand-new-passphrase');
      await tester.enterText(field('Confirm password'), 'something-else');
      await tapAction(
        tester,
        find.widgetWithText(ElevatedButton, 'Save password'),
      );

      expect(find.text('Both passwords must match'), findsOneWidget);
      expect(find.text('Password updated'), findsNothing);
    });
  });
}
