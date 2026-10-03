import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lavio/app.dart';
import 'package:lavio/core/di/providers.dart';
import 'package:lavio/core/settings/settings_store.dart';
import 'package:lavio/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:lavio/features/auth/domain/repositories/auth_repository.dart';
import 'package:lavio/features/auth/presentation/controllers/auth_controller.dart';
import 'package:lavio/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:lavio/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:lavio/features/review/data/services/review_service.dart';

/// Booting the real app, with the parts a test needs to control.
///
/// Two gates now stand between a fresh install and the dashboard — a session,
/// and completed setup — so every test that wants to look at the app proper
/// has to pass both. Doing that by hand in each file is how one of them ends
/// up asserting against the onboarding screen without anyone noticing.

/// A repository that starts signed out, for exercising the auth screens.
///
/// This is the mock's own default now, but the name keeps the intent legible
/// at the call sites.
class SignedOutAuthRepository extends MockAuthRepository {
  SignedOutAuthRepository() : super(latency: Duration.zero);
}

/// Builds the app.
///
/// [onboarded] defaults to true because most tests are about the app behind
/// setup, not setup itself. Pass false to land on onboarding.
Widget bootApp({
  AuthRepository? auth,
  String? locale,
  bool onboarded = true,
  SettingsStore? store,
  bool skipAuth = false,
  ReviewService? review,
}) {
  final settings = store ?? InMemorySettingsStore();
  if (locale != null) settings.write(SettingsKeys.locale, locale);
  settings.writeFlag(SettingsKeys.onboardingComplete, value: onboarded);
  settings.writeFlag(SettingsKeys.tutorialComplete, value: onboarded);

  return ProviderScope(
    overrides: [
      settingsStoreProvider.overrideWithValue(settings),
      financeDataSourceProvider.overrideWithValue(MockFinanceDataSource(latency: Duration.zero)),
      // Signed in unless a test says otherwise: most of them are about the
      // app behind the gate, not the gate itself.
      // Off by default: the temporary "just let me in" shortcut must not
      // quietly turn the auth suite into a no-op.
      skipAuthProvider.overrideWithValue(skipAuth),
      authRepositoryProvider.overrideWithValue(
        auth ?? MockAuthRepository(latency: Duration.zero, startSignedIn: true),
      ),
      // Never the real plugin: it would reach for Play Services.
      reviewServiceProvider.overrideWithValue(review ?? RecordingReviewService()),
    ],
    child: const LavioApp(),
  );
}

/// The marker navigation tests use to say "we have landed on the dashboard".
///
/// One finder rather than a text literal repeated across four files. It was
/// previously the hero card's label, which meant that renaming that one string
/// broke eleven tests, none of which were about the label. It then pointed at
/// the hero card itself, which broke again when that card was replaced.
///
/// The header is the steadier anchor: it sits outside the screen's loading
/// state, so it is there whether the figures have arrived or not, and it is
/// not a candidate for redesign the way the cards below it are.
final dashboardMarker = find.byType(DashboardHeader);

/// The centre "add" button in the bottom bar.
///
/// `find.byIcon(CupertinoIcons.add).first` used to be enough. The dashboard
/// now carries its own small add controls (add a budget, add a goal), and the
/// first match became one of those — a widget below the fold that a tap cannot
/// reach, which failed as an off-screen hit test rather than as a missing
/// button. The bar's glyph is the larger one, so matching on its size keeps
/// this pointed at the button these tests actually mean.
final addButtonFinder = find.byWidgetPredicate(
  (widget) => widget is Icon && widget.icon == CupertinoIcons.add && widget.size == 28,
  description: 'the centre add button in the bottom bar',
);

/// Pumps past the splash delay and lets everything settle.
Future<void> boot(
  WidgetTester tester, {
  AuthRepository? auth,
  String? locale,
  bool onboarded = true,
  SettingsStore? store,
  bool skipAuth = false,
  ReviewService? review,
}) async {
  await tester.pumpWidget(
    bootApp(
      auth: auth,
      locale: locale,
      onboarded: onboarded,
      store: store,
      skipAuth: skipAuth,
      review: review,
    ),
  );
  await tester.pump(const Duration(milliseconds: 1500));
  await tester.pumpAndSettle();
}
