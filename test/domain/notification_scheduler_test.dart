import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/insight.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/notifications/domain/entities/notification_preferences.dart';
import 'package:rainypenny/features/notifications/domain/rules/notification_rules.dart';
import 'package:rainypenny/features/notifications/domain/services/notification_scheduler.dart';

Insight _insight(
  String id,
  InsightCode code,
  InsightLevel level,
  InsightTopic topic,
) {
  return Insight(id: id, code: code, level: level, topic: topic);
}

Loan _loan(String id, DateTime due) {
  return Loan(
    id: id,
    name: 'Car Loan',
    lender: 'Bank',
    kind: LoanKind.loan,
    principal: 12000,
    remaining: 6200,
    monthlyPayment: 420,
    nextPaymentDate: due,
    interestRate: 5.9,
    icon: CategoryIcon.transport,
  );
}

void main() {
  // A Tuesday at 10:00, so "next reminder slot" has to roll to tomorrow.
  final now = DateTime(2026, 9, 8, 10);
  const preferences = NotificationPreferences();

  group('NotificationRules', () {
    test('critical and warning insights are worth an interruption', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight('a', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
        ),
        isTrue,
      );
      expect(
        NotificationRules.isWorthDelivering(
          _insight('b', InsightCode.budgetApproaching, InsightLevel.warning,
              InsightTopic.budget),
        ),
        isTrue,
      );
    });

    test('informative insights stay in the app', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight('c', InsightCode.spendingTrendUp, InsightLevel.informative,
              InsightTopic.spending),
        ),
        isFalse,
      );
    });

    test('only a nearly-funded goal is worth a positive interruption', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight('d', InsightCode.goalNearlyFunded, InsightLevel.positive,
              InsightTopic.savings),
        ),
        isTrue,
      );
      expect(
        NotificationRules.isWorthDelivering(
          _insight('e', InsightCode.savingsRateStrong, InsightLevel.positive,
              InsightTopic.savings),
        ),
        isFalse,
      );
    });

    test('ids are stable, positive and 31-bit', () {
      final first = NotificationRules.idFor('budget-exceeded-shopping');
      final second = NotificationRules.idFor('budget-exceeded-shopping');
      expect(first, second);
      expect(first, greaterThanOrEqualTo(0));
      expect(first, lessThanOrEqualTo(0x7FFFFFFF));
      expect(
        NotificationRules.idFor('a'),
        isNot(NotificationRules.idFor('b')),
      );
    });
  });

  group('NotificationScheduler', () {
    test('silencing every channel schedules nothing', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('a', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
        ],
        loans: [_loan('car', now.add(const Duration(days: 10)))],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          paymentReminders: false,
          savingsUpdates: false,
          weeklySummary: false,
        ),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('a disabled channel drops only its own alerts', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('a', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
        ],
        loans: const [],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          weeklySummary: true,
        ),
        now: now,
      );

      expect(schedule.any((n) => n.insight.id == 'a'), isFalse);
      expect(schedule.any((n) => n.repeatsWeekly), isTrue);
    });

    test('informative insights never reach the schedule', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('info', InsightCode.spendingTrendUp,
              InsightLevel.informative, InsightTopic.spending),
        ],
        loans: const [],
        preferences: const NotificationPreferences(weeklySummary: false),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('a payment reminder is booked three days before the due date', () {
      final due = DateTime(2026, 9, 20);
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: [_loan('car', due)],
        preferences: const NotificationPreferences(weeklySummary: false),
        now: now,
      );

      expect(schedule, hasLength(1));
      final reminder = schedule.single;
      expect(reminder.insight.code, InsightCode.debtDueSoon);
      expect(reminder.insight.subject, 'Car Loan');
      expect(reminder.scheduledFor.day, 17);
      expect(reminder.scheduledFor.hour, preferences.reminderHour);
      expect(reminder.route, '/loans');
    });

    test('a reminder whose date has already passed is dropped', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        // Due tomorrow, so the three-day reminder was two days ago.
        loans: [_loan('car', now.add(const Duration(days: 1)))],
        preferences: const NotificationPreferences(weeklySummary: false),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('nothing is ever scheduled in the past', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('a', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
        ],
        loans: [_loan('car', now.add(const Duration(days: 30)))],
        preferences: preferences,
        now: now,
      );

      for (final notification in schedule) {
        if (notification.repeatsWeekly) continue;
        expect(notification.scheduledFor.isAfter(now), isTrue);
      }
    });

    test('the schedule is ordered soonest first', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('a', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
        ],
        loans: [
          _loan('car', now.add(const Duration(days: 30))),
          _loan('card', now.add(const Duration(days: 12))),
        ],
        preferences: preferences,
        now: now,
      );

      final dates = schedule.map((n) => n.scheduledFor).toList();
      final sorted = [...dates]..sort();
      expect(dates, sorted);
    });

    test('the same insight is never scheduled twice', () {
      final duplicate = _insight('dupe', InsightCode.budgetExceeded,
          InsightLevel.critical, InsightTopic.budget);
      final schedule = NotificationScheduler.build(
        insights: [duplicate, duplicate],
        loans: const [],
        preferences: const NotificationPreferences(weeklySummary: false),
        now: now,
      );

      expect(schedule, hasLength(1));
    });

    test('insights deep-link to the screen they are about', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight('b', InsightCode.budgetExceeded, InsightLevel.critical,
              InsightTopic.budget),
          _insight('s', InsightCode.goalNearlyFunded, InsightLevel.positive,
              InsightTopic.savings),
        ],
        loans: const [],
        preferences: const NotificationPreferences(weeklySummary: false),
        now: now,
      );

      expect(
        schedule.firstWhere((n) => n.insight.id == 'b').route,
        '/budget',
      );
      expect(
        schedule.firstWhere((n) => n.insight.id == 's').route,
        '/savings',
      );
    });
  });

  group('quiet hours', () {
    test('a late-evening alert rolls into the next morning', () {
      const prefs = NotificationPreferences(quietHourStart: 22, quietHourEnd: 8);
      final moved = NotificationScheduler.applyQuietHours(
        DateTime(2026, 9, 8, 23),
        prefs,
      );

      expect(moved.day, 9);
      expect(moved.hour, 8);
    });

    test('an early-morning alert waits for the window to end the same day', () {
      const prefs = NotificationPreferences(quietHourStart: 22, quietHourEnd: 8);
      final moved = NotificationScheduler.applyQuietHours(
        DateTime(2026, 9, 8, 3),
        prefs,
      );

      expect(moved.day, 8);
      expect(moved.hour, 8);
    });

    test('a daytime alert is left alone', () {
      const prefs = NotificationPreferences(quietHourStart: 22, quietHourEnd: 8);
      final time = DateTime(2026, 9, 8, 14, 30);
      expect(NotificationScheduler.applyQuietHours(time, prefs), time);
    });

    test('an empty window disables the rule entirely', () {
      const prefs = NotificationPreferences(quietHourStart: 0, quietHourEnd: 0);
      final time = DateTime(2026, 9, 8, 3);
      expect(NotificationScheduler.applyQuietHours(time, prefs), time);
    });
  });

  group('recurring summary', () {
    test('lands on the configured weekday and hour, always in the future', () {
      // now is a Tuesday; the default summary day is Sunday.
      final next = NotificationScheduler.nextWeekday(now, DateTime.sunday, 18);

      expect(next.weekday, DateTime.sunday);
      expect(next.hour, 18);
      expect(next.isAfter(now), isTrue);
    });

    test('today, but already past the hour, rolls a full week', () {
      final sundayEvening = DateTime(2026, 9, 13, 20);
      final next = NotificationScheduler.nextWeekday(
        sundayEvening,
        DateTime.sunday,
        18,
      );

      expect(next.weekday, DateTime.sunday);
      expect(next.difference(sundayEvening).inDays, greaterThanOrEqualTo(6));
    });

    test('the summary repeats rather than firing once', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: preferences,
        now: now,
      );

      final summary = schedule.firstWhere((n) => n.repeatsWeekly);
      expect(summary.insight.code, InsightCode.weeklySummary);
      expect(summary.route, '/reports');
    });
  });
}
