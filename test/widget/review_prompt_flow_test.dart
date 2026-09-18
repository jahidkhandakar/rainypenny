import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/settings/settings_store.dart';
import 'package:rainypenny/features/review/data/services/review_service.dart';
import 'package:rainypenny/features/review/presentation/controllers/review_prompt_controller.dart';

import '../support/boot.dart';

/// The rating prompt as the user meets it: on the dashboard, on the fifth
/// session, and never twice after a no.
void main() {
  /// A store already carrying [uses] recorded sessions, standing in for a
  /// user who has been here before.
  InMemorySettingsStore storeWith({required int uses}) {
    final store = InMemorySettingsStore();
    store.write(SettingsKeys.reviewUses, '$uses');
    return store;
  }

  /// Boots, then waits out the settling delay the prompt leaves before it
  /// interrupts the dashboard.
  Future<void> bootAndWait(
    WidgetTester tester, {
    required InMemorySettingsStore store,
    required RecordingReviewService review,
  }) async {
    await boot(tester, store: store, review: review);
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();
  }

  testWidgets('a first-time user is not asked', (tester) async {
    final review = RecordingReviewService();
    await bootAndWait(tester, store: storeWith(uses: 0), review: review);

    expect(find.text('Enjoying RainyPenny?'), findsNothing);
    expect(dashboardMarker, findsOneWidget);
    expect(review.reviewRequests, 0);
  });

  testWidgets('a user four sessions in is still not asked', (tester) async {
    final review = RecordingReviewService();
    await bootAndWait(tester, store: storeWith(uses: 3), review: review);

    expect(find.text('Enjoying RainyPenny?'), findsNothing);
  });

  testWidgets('the fifth session brings up the prompt', (tester) async {
    final store = storeWith(uses: 4);
    await bootAndWait(tester, store: store, review: RecordingReviewService());

    expect(find.text('Enjoying RainyPenny?'), findsOneWidget);
    expect(find.text('Rate the app'), findsOneWidget);
    expect(find.text('Maybe later'), findsOneWidget);
    expect(find.text('No thanks'), findsOneWidget);
  });

  testWidgets('the prompt does not cover a dashboard the user cannot reach: '
      'it waits until they are actually on it', (tester) async {
    // Signed out, so the dashboard never mounts and nothing is counted.
    final store = storeWith(uses: 4);
    await boot(tester, auth: SignedOutAuthRepository(), store: store);
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    expect(find.text('Enjoying RainyPenny?'), findsNothing);
    expect(store.read(SettingsKeys.reviewUses), '4');
  });

  testWidgets('tapping Rate hands off to the store review sheet', (
    tester,
  ) async {
    final review = RecordingReviewService();
    final store = storeWith(uses: 4);
    await bootAndWait(tester, store: store, review: review);

    await tester.tap(find.text('Rate the app'));
    await tester.pumpAndSettle();

    expect(review.reviewRequests, 1);
    expect(review.storeOpens, 0);
    expect(find.text('Enjoying RainyPenny?'), findsNothing);
    expect(store.read(SettingsKeys.reviewDecision), ReviewDecision.rated.name);
  });

  testWidgets('without the in-app sheet it falls back to the store page', (
    tester,
  ) async {
    final review = RecordingReviewService(available: false);
    await bootAndWait(tester, store: storeWith(uses: 4), review: review);

    await tester.tap(find.text('Rate the app'));
    await tester.pumpAndSettle();

    expect(review.reviewRequests, 0);
    expect(review.storeOpens, 1);
  });

  testWidgets('No thanks is final — a later session does not ask again', (
    tester,
  ) async {
    final store = storeWith(uses: 4);
    await bootAndWait(tester, store: store, review: RecordingReviewService());

    await tester.tap(find.text('No thanks'));
    await tester.pumpAndSettle();
    expect(find.text('Enjoying RainyPenny?'), findsNothing);

    // Relaunch, many sessions later.
    await tester.pumpWidget(const SizedBox.shrink());
    await bootAndWait(tester, store: store, review: RecordingReviewService());
    expect(find.text('Enjoying RainyPenny?'), findsNothing);
  });

  testWidgets('Maybe later asks again five sessions on, not on the next one', (
    tester,
  ) async {
    final store = storeWith(uses: 4);
    await bootAndWait(tester, store: store, review: RecordingReviewService());

    await tester.tap(find.text('Maybe later'));
    await tester.pumpAndSettle();

    // The very next session must stay quiet.
    await tester.pumpWidget(const SizedBox.shrink());
    await bootAndWait(tester, store: store, review: RecordingReviewService());
    expect(find.text('Enjoying RainyPenny?'), findsNothing);

    // Four more sessions and it is due again.
    store.write(SettingsKeys.reviewUses, '9');
    await tester.pumpWidget(const SizedBox.shrink());
    await bootAndWait(tester, store: store, review: RecordingReviewService());
    expect(find.text('Enjoying RainyPenny?'), findsOneWidget);
  });

  testWidgets('the prompt is translated rather than falling back to English', (
    tester,
  ) async {
    await bootAndWait(
      tester,
      store: storeWith(uses: 4),
      review: RecordingReviewService(),
    );
    expect(find.text('Enjoying RainyPenny?'), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
    final spanish = storeWith(uses: 4);
    spanish.write(SettingsKeys.locale, 'es');
    await boot(tester, store: spanish, review: RecordingReviewService());
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pumpAndSettle();

    expect(find.text('¿Te gusta RainyPenny?'), findsOneWidget);
    expect(find.text('Enjoying RainyPenny?'), findsNothing);
  });

  testWidgets('rating from Settings works without waiting to be asked, and '
      'stops the automatic prompt from asking afterwards', (tester) async {
    final review = RecordingReviewService();
    final store = storeWith(uses: 0);
    await bootAndWait(tester, store: store, review: review);

    await tester.tap(find.byIcon(Icons.person_outline).first);
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text('Rate the app'),
      120,
      scrollable: find.byType(Scrollable).first,
    );
    // scrollUntilVisible stops as soon as the tile is in the viewport, which
    // can leave it under the app bar where a tap does not land on it.
    await tester.ensureVisible(find.text('Rate the app'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Rate the app'));
    await tester.pumpAndSettle();

    expect(review.reviewRequests, 1);
    expect(store.read(SettingsKeys.reviewDecision), ReviewDecision.rated.name);

    // Five sessions later the app still does not ask, because they already did.
    store.write(SettingsKeys.reviewUses, '9');
    await tester.pumpWidget(const SizedBox.shrink());
    await bootAndWait(tester, store: store, review: RecordingReviewService());
    expect(find.text('Enjoying RainyPenny?'), findsNothing);
  });
}
