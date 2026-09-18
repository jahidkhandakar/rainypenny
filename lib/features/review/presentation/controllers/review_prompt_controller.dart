import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/settings/settings_store.dart';

/// Where the user stands on being asked to rate the app.
enum ReviewDecision {
  /// Not asked yet, or asked and postponed.
  undecided,

  /// They opened the store sheet. Never ask again — the store owns the
  /// relationship from here.
  rated,

  /// They said no. Never ask again; a second ask after a no is nagging.
  dismissed,
}

/// The counted state behind the rating prompt.
class ReviewPromptState {
  const ReviewPromptState({
    required this.uses,
    required this.decision,
    required this.askAfter,
  });

  /// Sessions in which the user actually reached the dashboard.
  final int uses;

  final ReviewDecision decision;

  /// The use count this prompt is waiting for. Starts at [firstPromptAt] and
  /// moves out by [snoozeInterval] each time the user picks "maybe later".
  final int askAfter;

  /// Five sessions in: long enough that they have formed an opinion, early
  /// enough that they are still paying attention.
  static const firstPromptAt = 5;

  /// How far out "maybe later" pushes the next ask.
  static const snoozeInterval = 5;

  bool get isDue => decision == ReviewDecision.undecided && uses >= askAfter;

  ReviewPromptState copyWith({
    int? uses,
    ReviewDecision? decision,
    int? askAfter,
  }) {
    return ReviewPromptState(
      uses: uses ?? this.uses,
      decision: decision ?? this.decision,
      askAfter: askAfter ?? this.askAfter,
    );
  }
}

/// Counts sessions and decides when the rating prompt is due.
///
/// Deliberately knows nothing about dialogs or stores: it answers "should we
/// ask?" and records what came back. That keeps the timing rules testable
/// without pumping a single widget.
class ReviewPromptNotifier extends Notifier<ReviewPromptState> {
  @override
  ReviewPromptState build() {
    final store = ref.read(settingsStoreProvider);
    return ReviewPromptState(
      uses: int.tryParse(store.read(SettingsKeys.reviewUses) ?? '') ?? 0,
      decision: ReviewDecision.values.firstWhere(
        (value) => value.name == store.read(SettingsKeys.reviewDecision),
        orElse: () => ReviewDecision.undecided,
      ),
      askAfter:
          int.tryParse(store.read(SettingsKeys.reviewAskAfter) ?? '') ??
          ReviewPromptState.firstPromptAt,
    );
  }

  /// Call once per session, when the user reaches the dashboard.
  ///
  /// Counting arrivals at the dashboard rather than cold starts means a launch
  /// that never gets past the splash or the sign-in screen is not a "use" — the
  /// count tracks people who actually used the app.
  void recordUse() {
    if (state.decision != ReviewDecision.undecided) return;
    _write(state.copyWith(uses: state.uses + 1));
  }

  /// They asked to be reminded later: push the next ask out and leave the
  /// decision open.
  void snooze() {
    _write(
      state.copyWith(askAfter: state.uses + ReviewPromptState.snoozeInterval),
    );
  }

  void markRated() => _write(state.copyWith(decision: ReviewDecision.rated));

  void markDismissed() =>
      _write(state.copyWith(decision: ReviewDecision.dismissed));

  void _write(ReviewPromptState next) {
    state = next;
    final store = ref.read(settingsStoreProvider);
    store.write(SettingsKeys.reviewUses, '${next.uses}');
    store.write(SettingsKeys.reviewDecision, next.decision.name);
    store.write(SettingsKeys.reviewAskAfter, '${next.askAfter}');
  }
}

final reviewPromptProvider =
    NotifierProvider<ReviewPromptNotifier, ReviewPromptState>(
      ReviewPromptNotifier.new,
    );
