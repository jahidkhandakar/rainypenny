import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/app.dart';
import 'package:rainypenny/core/di/providers.dart';
import 'package:rainypenny/core/localization/app_locales.dart';
import 'package:rainypenny/core/settings/settings_store.dart';
import 'package:rainypenny/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';

/// Boots the real app in every shipped language, at the size of an actual
/// phone, and fails on any layout overflow.
///
/// The viewport matters more than it looks. `flutter_test` defaults to
/// 800×600 logical pixels — wider than any handset — and at that width the
/// dashboard laid out cleanly in all ten languages while overflowing on a real
/// 384 dp screen in *every* one of them, German worst at 152 px. A locale test
/// that does not also pin a realistic width tests almost nothing.
void main() {
  // A Samsung SM-E236B: 1080×2408 at density 450, so 384×856 logical. Narrow
  // enough to be representative without being a fringe device.
  const physicalSize = Size(1080, 2408);
  const devicePixelRatio = 2.8125;

  Widget bootApp(String languageCode) {
    // Past the first-run gate on purpose. Without these flags the app opens on
    // onboarding, and this whole file would be measuring the setup wizard in
    // thirty-two languages rather than the screens it names.
    final store = InMemorySettingsStore()
      ..write(SettingsKeys.locale, languageCode)
      ..writeFlag(SettingsKeys.onboardingComplete, value: true)
      ..writeFlag(SettingsKeys.tutorialComplete, value: true);

    return ProviderScope(
      overrides: [
        settingsStoreProvider.overrideWithValue(store),
        financeDataSourceProvider.overrideWithValue(
          MockFinanceDataSource(latency: Duration.zero),
        ),
        // Signed in, so the walk measures the app rather than the sign-in form.
        authRepositoryProvider.overrideWithValue(
          MockAuthRepository(latency: Duration.zero, startSignedIn: true),
        ),
      ],
      child: const RainyPennyApp(),
    );
  }

  /// Collects layout errors rather than letting the first one abort the walk,
  /// so one run reports every screen that breaks instead of only the earliest.
  Future<List<String>> walkApp(WidgetTester tester, String languageCode) async {
    final failures = <String>[];
    final previous = FlutterError.onError;
    FlutterError.onError = (details) => failures.add('${details.exception}');
    addTearDown(() => FlutterError.onError = previous);

    tester.view.physicalSize = physicalSize;
    tester.view.devicePixelRatio = devicePixelRatio;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(bootApp(languageCode));
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    // Navigating by icon rather than label keeps this working in a language
    // whose labels the test does not hard-code.
    //
    // These are the *unselected* icons, which is what the bar actually renders
    // for a destination you are not on. Using the selected variants meant the
    // finder came up empty and the walk skipped Reports and Profile entirely
    // for every language — so the loop asserts it found each one rather than
    // quietly moving on.
    for (final icon in [
      Icons.receipt_long_outlined,
      Icons.insert_chart_outlined_rounded,
      Icons.person_outline,
      Icons.home_outlined,
    ]) {
      final target = find.byIcon(icon);
      if (target.evaluate().isEmpty) {
        // Recorded rather than asserted: expect() inside this zone, while
        // FlutterError.onError is overridden, corrupts the framework error
        // handling and reports as an assertion instead of the real problem.
        failures.add('no $icon in the navigation bar');
        continue;
      }
      await tester.tap(target.first);
      await tester.pumpAndSettle();
    }

    return failures;
  }

  group('every language lays out on a phone-sized screen', () {
    for (final locale in AppLocales.values) {
      final code = locale.locale.languageCode;

      testWidgets('${locale.englishName} ($code)', (tester) async {
        final failures = await walkApp(tester, code);

        expect(
          failures,
          isEmpty,
          reason:
              '${locale.englishName} overflows at '
              '${physicalSize.width / devicePixelRatio}dp wide: '
              '${failures.join(' | ')}',
        );
      });
    }
  });

  group('text direction follows the language', () {
    for (final locale in AppLocales.values) {
      final code = locale.locale.languageCode;
      final expected = locale.isRtl ? TextDirection.rtl : TextDirection.ltr;

      testWidgets('${locale.englishName} is ${expected.name}', (tester) async {
        await walkApp(tester, code);

        expect(
          Directionality.of(tester.element(find.byType(Scaffold).first)),
          expected,
        );
      });
    }
  });
}
