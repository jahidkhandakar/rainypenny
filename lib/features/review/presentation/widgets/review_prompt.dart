import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../data/services/review_service.dart';
import '../controllers/review_prompt_controller.dart';

/// What the user chose when asked to rate.
enum _RateChoice { rate, later, never }

/// Counts the session and, once the prompt is due, asks.
///
/// Wraps the dashboard rather than living inside it so the dashboard's own
/// build method stays about money. The counting happens once per mount of this
/// widget, which is once per session: the dashboard is a branch of an
/// IndexedStack shell, so switching tabs and coming back does not remount it.
class ReviewPromptScope extends ConsumerStatefulWidget {
  const ReviewPromptScope({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ReviewPromptScope> createState() => _ReviewPromptScopeState();
}

class _ReviewPromptScopeState extends ConsumerState<ReviewPromptScope> {
  @override
  void initState() {
    super.initState();
    // After the first frame: recording a use writes to the settings store, and
    // the dialog needs a mounted Navigator to open into.
    WidgetsBinding.instance.addPostFrameCallback((_) => _maybeAsk());
  }

  Future<void> _maybeAsk() async {
    if (!mounted) return;
    final controller = ref.read(reviewPromptProvider.notifier);
    controller.recordUse();
    if (!ref.read(reviewPromptProvider).isDue) return;

    // Let the dashboard settle before interrupting it. Landing on a screen and
    // being asked for a favour in the same breath reads as a shakedown.
    await Future<void>.delayed(const Duration(milliseconds: 1200));
    if (!mounted) return;

    final choice = await showDialog<_RateChoice>(
      context: context,
      builder: (context) => const _ReviewDialog(),
    );
    if (!mounted) return;

    switch (choice) {
      case _RateChoice.rate:
        controller.markRated();
        await _handOffToStore();
      case _RateChoice.never:
        controller.markDismissed();
      case _RateChoice.later:
      case null:
        // Dismissing by tapping outside is a "not now", not a refusal.
        controller.snooze();
    }
  }

  /// Prefers the in-place review sheet and falls back to the store page.
  ///
  /// Marked as rated before this runs, on purpose: the OS review sheet reports
  /// nothing back about whether a review was actually left, and Play silently
  /// drops the request when the user is over quota. Asking again because we
  /// could not confirm would mean nagging the people who did rate.
  Future<void> _handOffToStore() async {
    final service = ref.read(reviewServiceProvider);
    if (await service.isAvailable()) {
      await service.requestReview();
    } else {
      await service.openStoreListing();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _ReviewDialog extends StatelessWidget {
  const _ReviewDialog();

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return AlertDialog(
      title: Text(l10n.rateTitle),
      content: Text(l10n.rateBody),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(_RateChoice.never),
          child: Text(l10n.rateNever),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(_RateChoice.later),
          child: Text(l10n.rateLater),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(_RateChoice.rate),
          child: Text(l10n.rateAction),
        ),
      ],
    );
  }
}
