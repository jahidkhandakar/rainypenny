import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_review/in_app_review.dart';

/// The store review hand-off.
///
/// Abstracted for the same reason the settings store is: the plugin behind it
/// talks to Play Services and the App Store, neither of which exists in a
/// test. Widget tests override [reviewServiceProvider] with
/// [RecordingReviewService] and assert on what was asked for.
abstract interface class ReviewService {
  /// Whether the in-app review sheet can be shown at all.
  ///
  /// False on a device without Play Services, on an old OS, and always in a
  /// debug build on iOS. When this is false the only honest option is
  /// [openStoreListing].
  Future<bool> isAvailable();

  /// Shows the OS review sheet in place, without leaving the app.
  Future<void> requestReview();

  /// Opens the store page as a fallback.
  Future<void> openStoreListing();
}

class PlatformReviewService implements ReviewService {
  const PlatformReviewService();

  static final _plugin = InAppReview.instance;

  @override
  Future<bool> isAvailable() => _plugin.isAvailable();

  @override
  Future<void> requestReview() => _plugin.requestReview();

  @override
  Future<void> openStoreListing() =>
      _plugin.openStoreListing(appStoreId: appStoreId);

  /// Filled in when the iOS listing exists. Android reads the package name, so
  /// it needs nothing here.
  static const appStoreId = '';
}

/// Test double: records what was called instead of talking to a store.
class RecordingReviewService implements ReviewService {
  RecordingReviewService({this.available = true});

  final bool available;
  var reviewRequests = 0;
  var storeOpens = 0;

  @override
  Future<bool> isAvailable() async => available;

  @override
  Future<void> requestReview() async => reviewRequests++;

  @override
  Future<void> openStoreListing() async => storeOpens++;
}

final reviewServiceProvider = Provider<ReviewService>((ref) {
  return const PlatformReviewService();
});
