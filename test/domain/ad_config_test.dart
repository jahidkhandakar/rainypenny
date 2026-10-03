import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lavio/core/ads/ad_config.dart';

/// Which ad unit a build asks for.
///
/// The thing worth guarding is the fallback. Shipping a build that serves live
/// ads because someone forgot to fill in `.env` is how an AdMob account gets
/// suspended — every tap by the developer counts as invalid traffic. So an
/// unconfigured build must serve Google's test units, and must say so.
void main() {
  const testPrefix = 'ca-app-pub-3940256099942544/';

  tearDown(() {
    dotenv.clean();
    AdConfig.debugPlatformOverride = null;
  });

  group('with nothing configured', () {
    setUp(() {
      // An empty string is rejected outright by dotenv, so this stands in for
      // a .env that carries other settings but no ad units — which is exactly
      // what the committed example file looks like.
      dotenv.loadFromString(envString: 'SUPABASE_URL=');
      AdConfig.debugPlatformOverride = 'android';
    });

    test('falls back to a test unit rather than to nothing', () {
      expect(AdConfig.bannerUnitId, startsWith(testPrefix));
    });

    test('says it is using test ads', () {
      expect(AdConfig.isUsingTestAds, isTrue);
    });

    test('is still able to show ads', () {
      expect(AdConfig.isSupported, isTrue);
    });
  });

  group('with real units configured', () {
    setUp(() {
      dotenv.loadFromString(
        envString:
            'ADMOB_BANNER_ANDROID=ca-app-pub-1111111111111111/1111111111\n'
            'ADMOB_BANNER_IOS=ca-app-pub-1111111111111111/2222222222',
      );
    });

    test('Android gets the Android unit', () {
      AdConfig.debugPlatformOverride = 'android';
      expect(AdConfig.bannerUnitId, endsWith('/1111111111'));
      expect(AdConfig.isUsingTestAds, isFalse);
    });

    test('iOS gets the iOS unit', () {
      AdConfig.debugPlatformOverride = 'ios';
      expect(AdConfig.bannerUnitId, endsWith('/2222222222'));
      expect(AdConfig.isUsingTestAds, isFalse);
    });
  });

  group('blank values', () {
    setUp(() {
      dotenv.loadFromString(envString: 'ADMOB_BANNER_ANDROID=   \nADMOB_BANNER_IOS=');
      AdConfig.debugPlatformOverride = 'android';
    });

    test('count as unconfigured, not as a unit id', () {
      // Whitespace is what a half-filled .env looks like, and it must not be
      // mistaken for a real unit and sent to AdMob.
      expect(AdConfig.isUsingTestAds, isTrue);
      expect(AdConfig.bannerUnitId, startsWith(testPrefix));
    });
  });

  group('when .env has not been loaded at all', () {
    setUp(() => AdConfig.debugPlatformOverride = 'android');

    test('answers with a test unit instead of throwing', () {
      // Tests and any early-startup read land here. A missing file is a
      // configuration state, not a crash — the same rule AppConfig follows.
      expect(() => AdConfig.bannerUnitId, returnsNormally);
      expect(AdConfig.isUsingTestAds, isTrue);
      expect(AdConfig.bannerUnitId, startsWith(testPrefix));
    });
  });

  group('platforms AdMob does not serve', () {
    setUp(() {
      dotenv.loadFromString(
        envString: 'ADMOB_BANNER_ANDROID=ca-app-pub-1111111111111111/1111111111',
      );
    });

    test('ask for no ad at all', () {
      for (final platform in ['windows', 'macos', 'linux', 'web']) {
        AdConfig.debugPlatformOverride = platform;
        expect(AdConfig.bannerUnitId, isEmpty, reason: platform);
        expect(AdConfig.isSupported, isFalse, reason: platform);
      }
    });
  });
}
