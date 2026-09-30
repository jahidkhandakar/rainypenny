import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_config.dart';

/// Starts the ads SDK and settles consent before any ad is requested.
///
/// Consent is not optional paperwork. Serving a personalised ad to someone in
/// the EU or UK without asking breaches GDPR, and Google requires a certified
/// consent platform for it — their own (UMP) ships inside the ads SDK, which
/// is what this uses. Outside those regions the form never appears, so this
/// costs nothing where it is not needed.
///
/// Every failure here is swallowed on purpose. Ads are the least important
/// thing the app does: a consent form that cannot load, a device with no
/// network, or a build with no ads configured should all leave a working
/// finance app rather than a crash on launch.
abstract final class AdService {
  static bool _started = false;

  /// True once the SDK is up and it is safe to request an ad.
  static bool get isReady => _started;

  static Future<void> initialize() async {
    if (_started || !AdConfig.isSupported) return;

    try {
      await _requestConsent();
      await MobileAds.instance.initialize();
      _started = true;
    } catch (error) {
      // Left off rather than retried: if the SDK will not start, every later
      // ad request would fail the same way.
      debugPrint('Ads unavailable: $error');
    }
  }

  /// Asks for consent where the law requires it, and waits for the answer.
  ///
  /// `requestConsentInfoUpdate` decides whether a form is needed at all based
  /// on where the device is; `loadAndShowConsentFormIfRequired` then does
  /// nothing outside the regions that need one.
  static Future<void> _requestConsent() async {
    final completer = Completer<void>();

    ConsentInformation.instance.requestConsentInfoUpdate(
      ConsentRequestParameters(),
      () async {
        try {
          await ConsentForm.loadAndShowConsentFormIfRequired((error) {
            if (error != null) {
              debugPrint('Consent form: ${error.message}');
            }
          });
        } finally {
          if (!completer.isCompleted) completer.complete();
        }
      },
      (error) {
        // No consent information means no personalised ads, which the SDK
        // handles on its own. Starting up is still the right move.
        debugPrint('Consent unavailable: ${error.message}');
        if (!completer.isCompleted) completer.complete();
      },
    );

    return completer.future;
  }
}
