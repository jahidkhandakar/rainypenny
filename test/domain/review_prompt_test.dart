import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/settings/settings_store.dart';
import 'package:rainypenny/features/review/presentation/controllers/review_prompt_controller.dart';

/// When the rating prompt is due, and when asking again would be nagging.
void main() {
  late InMemorySettingsStore store;

  ProviderContainer open() {
    final container = ProviderContainer(
      overrides: [settingsStoreProvider.overrideWithValue(store)],
    );
    addTearDown(container.dispose);
    return container;
  }

  setUp(() => store = InMemorySettingsStore());

  ReviewPromptState useTimes(ProviderContainer container, int times) {
    final controller = container.read(reviewPromptProvider.notifier);
    for (var i = 0; i < times; i++) {
      controller.recordUse();
    }
    return container.read(reviewPromptProvider);
  }

  group('when it comes due', () {
    test('stays quiet for the first four sessions', () {
      final container = open();
      for (var session = 1; session <= 4; session++) {
        final state = useTimes(open(), 0);
        expect(state.isDue, isFalse, reason: 'session $session');
      }
      expect(useTimes(container, 4).isDue, isFalse);
    });

    test('comes due on the fifth', () {
      expect(useTimes(open(), 5).isDue, isTrue);
    });

    test('stays due once passed, so a missed ask is not lost', () {
      expect(useTimes(open(), 9).isDue, isTrue);
    });
  });

  group('after the user answers', () {
    test('"maybe later" pushes the next ask five sessions out', () {
      final container = open();
      expect(useTimes(container, 5).isDue, isTrue);

      container.read(reviewPromptProvider.notifier).snooze();
      expect(container.read(reviewPromptProvider).isDue, isFalse);

      // Four more sessions is still too soon.
      expect(useTimes(container, 4).isDue, isFalse);
      expect(useTimes(container, 1).isDue, isTrue);
    });

    test('"no thanks" ends it for good', () {
      final container = open();
      useTimes(container, 5);
      container.read(reviewPromptProvider.notifier).markDismissed();

      expect(useTimes(container, 100).isDue, isFalse);
    });

    test('rating ends it for good', () {
      final container = open();
      useTimes(container, 5);
      container.read(reviewPromptProvider.notifier).markRated();

      expect(useTimes(container, 100).isDue, isFalse);
    });

    test('counting stops once decided, so the number cannot drift up', () {
      final container = open();
      useTimes(container, 5);
      container.read(reviewPromptProvider.notifier).markRated();

      expect(useTimes(container, 20).uses, 5);
    });
  });

  group('across restarts', () {
    test('the count survives, so five sessions means five sessions', () {
      useTimes(open(), 3);
      // A second container on the same store stands in for a relaunch.
      expect(useTimes(open(), 2).isDue, isTrue);
    });

    test('a refusal survives, so a reinstalled-feeling relaunch does not '
        'start the nagging again', () {
      final first = open();
      useTimes(first, 5);
      first.read(reviewPromptProvider.notifier).markDismissed();

      final second = open();
      expect(
        second.read(reviewPromptProvider).decision,
        ReviewDecision.dismissed,
      );
      expect(useTimes(second, 10).isDue, isFalse);
    });

    test('a snooze survives rather than resetting to due on next launch', () {
      final first = open();
      useTimes(first, 5);
      first.read(reviewPromptProvider.notifier).snooze();

      expect(open().read(reviewPromptProvider).isDue, isFalse);
    });
  });
}
