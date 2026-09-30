import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Which ad units the app asks AdMob for.
///
/// Real unit ids come from `.env`, the same place the Supabase credentials
/// live, so handing the project over is a matter of filling in a file rather
/// than editing Dart. With nothing configured the app falls back to Google's
/// **official test units**, which serve real ad responses without earning or
/// spending anything and without risking the account.
///
/// That fallback is deliberate rather than a placeholder: tapping your own
/// live ads is what gets an AdMob account suspended, so a build that has not
/// been told otherwise should never show a live one.
///
/// The *app* id is a different matter — it has to sit in AndroidManifest.xml
/// and Info.plist, which are read at build time and cannot see `.env`. Those
/// two files carry the test app id and a comment saying what to replace it
/// with.
abstract final class AdConfig {
  // Google's documented test unit ids. Stable, public, and safe to ship.
  // https://developers.google.com/admob/android/test-ads
  static const _testBannerAndroid = 'ca-app-pub-3940256099942544/6300978111';
  static const _testBannerIos = 'ca-app-pub-3940256099942544/2934735716';

  static String _fromEnv(String key) =>
      dotenv.isInitialized ? dotenv.get(key, fallback: '').trim() : '';

  /// Which platform's ids to read.
  ///
  /// A seam, because the interesting behaviour here is platform-specific and
  /// the tests run on neither phone. Without it the only case reachable from a
  /// test host is "unsupported", which would leave the fallback — the part
  /// that protects the AdMob account — unguarded.
  @visibleForTesting
  static String? debugPlatformOverride;

  static String get _platform {
    final override = debugPlatformOverride;
    if (override != null) return override;
    if (kIsWeb) return 'web';
    return Platform.operatingSystem;
  }

  /// True when no real unit has been configured for this platform.
  ///
  /// Surfaced in Settings beside the data source, so a tester can tell at a
  /// glance whether the ads they are looking at are real.
  static bool get isUsingTestAds => _configuredBanner.isEmpty;

  static String get _configuredBanner => switch (_platform) {
    'android' => _fromEnv('ADMOB_BANNER_ANDROID'),
    'ios' => _fromEnv('ADMOB_BANNER_IOS'),
    _ => '',
  };

  /// The banner unit to request, real or test.
  ///
  /// Empty on any platform AdMob does not serve — web and desktop — so the
  /// caller can skip asking rather than handling a failure.
  static String get bannerUnitId {
    final configured = _configuredBanner;
    if (configured.isNotEmpty) return configured;

    return switch (_platform) {
      'android' => _testBannerAndroid,
      'ios' => _testBannerIos,
      _ => '',
    };
  }

  /// Whether this build can show ads at all.
  static bool get isSupported => bannerUnitId.isNotEmpty;
}
