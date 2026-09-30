import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_config.dart';
import 'ad_service.dart';

/// A banner that occupies no space until it has something to show.
///
/// Section 16 asks for advertising "without making the application difficult
/// to use", which mostly comes down to two things: never reserve space for an
/// ad that has not loaded, and never put one where it can be tapped by
/// accident. This handles the first — an empty `SizedBox.shrink` until the
/// banner is ready means a failed load leaves the screen exactly as it was.
/// The second is a matter of where these are placed: the end of a scrolling
/// list, never beside a button or under a form.
///
/// It also has to survive having no ads SDK at all. Widget tests and the web
/// build both fall into that case, so every step is guarded and failure is
/// silent rather than an exception in the middle of a screen.
class BannerAdSlot extends StatefulWidget {
  const BannerAdSlot({super.key, this.padding});

  final EdgeInsetsGeometry? padding;

  @override
  State<BannerAdSlot> createState() => _BannerAdSlotState();
}

class _BannerAdSlotState extends State<BannerAdSlot> {
  BannerAd? _ad;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    if (!AdConfig.isSupported) return;

    await AdService.initialize();
    if (!mounted || !AdService.isReady) return;

    try {
      final ad = BannerAd(
        adUnitId: AdConfig.bannerUnitId,
        size: AdSize.banner,
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {
            if (mounted) setState(() => _loaded = true);
          },
          onAdFailedToLoad: (ad, error) {
            // No inventory is an ordinary outcome, not an error worth showing
            // anyone. Dispose and leave the space empty.
            ad.dispose();
            if (mounted) setState(() => _ad = null);
          },
        ),
      );
      _ad = ad;
      await ad.load();
    } catch (_) {
      // No ads SDK on this platform — tests, web, desktop.
      _ad = null;
    }
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _ad;
    if (!_loaded || ad == null) return const SizedBox.shrink();

    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: SizedBox(
        width: ad.size.width.toDouble(),
        height: ad.size.height.toDouble(),
        child: AdWidget(ad: ad),
      ),
    );
  }
}
