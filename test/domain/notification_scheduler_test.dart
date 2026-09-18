import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/insight.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/notifications/domain/entities/notification_preferences.dart';
import 'package:rainypenny/features/notifications/domain/entities/scheduled_notification.dart';
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
    installmentAmount: 420,
    nextPaymentDate: due,
    interestRate: 5.9,
    icon: CategoryIcon.transport,
  );
}

void main() {
  // A Tuesday at 10:00, so "next reminder slot" has to roll to tomorrow.
  final now = DateTime(2026, 9, 8, 10);
  // The engagement nudges — daily reminders and the weekend greeting — fire on
  // a clock rather than off the ledger, so the tests that count ledger-driven
  // alerts switch them off. They get a group of their own further down.
  const preferences = NotificationPreferences(
    dailyReminders: false,
    weekendGreeting: false,
  );

  group('NotificationRules', () {
    test('critical and warning insights are worth an interruption', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight(
            'a',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
        ),
        isTrue,
      );
      expect(
        NotificationRules.isWorthDelivering(
          _insight(
            'b',
            InsightCode.budgetApproaching,
            InsightLevel.warning,
            InsightTopic.budget,
          ),
        ),
        isTrue,
      );
    });

    test('informative insights stay in the app', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight(
            'c',
            InsightCode.spendingTrendUp,
            InsightLevel.informative,
            InsightTopic.spending,
          ),
        ),
        isFalse,
      );
    });

    test('only a nearly-funded goal is worth a positive interruption', () {
      expect(
        NotificationRules.isWorthDelivering(
          _insight(
            'd',
            InsightCode.goalNearlyFunded,
            InsightLevel.positive,
            InsightTopic.savings,
          ),
        ),
        isTrue,
      );
      expect(
        NotificationRules.isWorthDelivering(
          _insight(
            'e',
            InsightCode.savingsRateStrong,
            InsightLevel.positive,
            InsightTopic.savings,
          ),
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
      expect(NotificationRules.idFor('a'), isNot(NotificationRules.idFor('b')));
    });
  });

  group('NotificationScheduler', () {
    test('silencing every channel schedules nothing', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight(
            'a',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
        ],
        loans: [_loan('car', now.add(const Duration(days: 10)))],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          paymentReminders: false,
          savingsUpdates: false,
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('a disabled channel drops only its own alerts', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight(
            'a',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
        ],
        loans: const [],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          weeklySummary: true,
        ),
        now: now,
      );

      expect(schedule.any((n) => n.insight.id == 'a'), isFalse);
      expect(
        schedule.any((n) => n.insight.code == InsightCode.weeklySummary),
        isTrue,
      );
    });

    test('informative insights never reach the schedule', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight(
            'info',
            InsightCode.spendingTrendUp,
            InsightLevel.informative,
            InsightTopic.spending,
          ),
        ],
        loans: const [],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('each debt gets a reminder ahead of the date and one on the day', () {
      final due = DateTime(2026, 9, 20);
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: [_loan('car', due)],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, hasLength(2));

      final lead = schedule.firstWhere(
        (n) => n.insight.code == InsightCode.debtDueSoon,
      );
      expect(lead.insight.subject, 'Car Loan');
      expect(lead.scheduledFor.day, 17);
      expect(lead.scheduledFor.hour, preferences.reminderHour);
      expect(lead.route, '/loans');

      final onTheDay = schedule.firstWhere(
        (n) => n.insight.code == InsightCode.debtDueToday,
      );
      expect(onTheDay.scheduledFor.day, 20);
      expect(onTheDay.scheduledFor.hour, preferences.reminderHour);
      expect(onTheDay.route, '/loans');
    });

    test('a settled debt is never reminded about', () {
      final settled = _loan(
        'car',
        DateTime(2026, 9, 20),
      ).copyWith(remaining: 0);
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: [settled],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('a reminder whose date has already passed is dropped', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        // Due tomorrow, so the three-day lead reminder was two days ago and
        // only the reminder on the day itself survives.
        loans: [_loan('car', now.add(const Duration(days: 1)))],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, hasLength(1));
      expect(schedule.single.insight.code, InsightCode.debtDueToday);
    });

    test('nothing is ever scheduled in the past', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight(
            'a',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
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
          _insight(
            'a',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
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
      final duplicate = _insight(
        'dupe',
        InsightCode.budgetExceeded,
        InsightLevel.critical,
        InsightTopic.budget,
      );
      final schedule = NotificationScheduler.build(
        insights: [duplicate, duplicate],
        loans: const [],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule, hasLength(1));
    });

    test('insights deep-link to the screen they are about', () {
      final schedule = NotificationScheduler.build(
        insights: [
          _insight(
            'b',
            InsightCode.budgetExceeded,
            InsightLevel.critical,
            InsightTopic.budget,
          ),
          _insight(
            's',
            InsightCode.goalNearlyFunded,
            InsightLevel.positive,
            InsightTopic.savings,
          ),
        ],
        loans: const [],
        preferences: const NotificationPreferences(
          weeklySummary: false,
          dailyReminders: false,
          weekendGreeting: false,
        ),
        now: now,
      );

      expect(schedule.firstWhere((n) => n.insight.id == 'b').route, '/budget');
      expect(schedule.firstWhere((n) => n.insight.id == 's').route, '/savings');
    });
  });

  group('quiet hours', () {
    test('a late-evening alert rolls into the next morning', () {
      const prefs = NotificationPreferences(
        quietHourStart: 22,
        quietHourEnd: 8,
      );
      final moved = NotificationScheduler.applyQuietHours(
        DateTime(2026, 9, 8, 23),
        prefs,
      );

      expect(moved.day, 9);
      expect(moved.hour, 8);
    });

    test('an early-morning alert waits for the window to end the same day', () {
      const prefs = NotificationPreferences(
        quietHourStart: 22,
        quietHourEnd: 8,
      );
      final moved = NotificationScheduler.applyQuietHours(
        DateTime(2026, 9, 8, 3),
        prefs,
      );

      expect(moved.day, 8);
      expect(moved.hour, 8);
    });

    test('a daytime alert is left alone', () {
      const prefs = NotificationPreferences(
        quietHourStart: 22,
        quietHourEnd: 8,
      );
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

      final summary = schedule.firstWhere(
        (n) => n.insight.code == InsightCode.weeklySummary,
      );
      expect(summary.repeat, NotificationRepeat.weekly);
      expect(summary.route, '/reports');
    });
  });

  group('daily expense reminders', () {
    const onlyNudges = NotificationPreferences(
      budgetAlerts: false,
      paymentReminders: false,
      savingsUpdates: false,
      weeklySummary: false,
      weekendGreeting: false,
    );

    test('one repeating reminder per enabled slot', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: onlyNudges.copyWith(
          enabledSlots: DailyReminderSlot.values.toSet(),
        ),
        now: now,
      );

      expect(schedule, hasLength(DailyReminderSlot.values.length));
      expect(
        schedule.every((n) => n.repeat == NotificationRepeat.daily),
        isTrue,
      );
      // A reminder to record an expense opens the form that records one.
      expect(schedule.every((n) => n.route == '/add'), isTrue);
    });

    test('each slot carries copy of its own', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: onlyNudges.copyWith(
          enabledSlots: DailyReminderSlot.values.toSet(),
        ),
        now: now,
      );

      final codes = schedule.map((n) => n.insight.code).toSet();
      expect(codes, hasLength(DailyReminderSlot.values.length));
      expect(codes, contains(InsightCode.expenseReminderMorning));
      expect(codes, contains(InsightCode.expenseReminderEvening));
    });

    test('a disabled slot is not scheduled', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: onlyNudges.copyWith(
          enabledSlots: const {DailyReminderSlot.morning},
        ),
        now: now,
      );

      expect(schedule, hasLength(1));
      expect(schedule.single.insight.code, InsightCode.expenseReminderMorning);
      expect(
        schedule.single.scheduledFor.hour,
        NotificationPreferences.hourFor(DailyReminderSlot.morning),
      );
    });

    test('the master switch overrides the individual slots', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: onlyNudges.copyWith(
          dailyReminders: false,
          enabledSlots: DailyReminderSlot.values.toSet(),
        ),
        now: now,
      );

      expect(schedule, isEmpty);
    });

    test('a slot inside the quiet window is skipped, not shifted', () {
      // Quiet from 19:00 to 08:00 swallows the 20:00 evening slot. Shifting it
      // to 08:00 would collide with the morning nudge, so it is dropped.
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: onlyNudges.copyWith(
          quietHourStart: 19,
          quietHourEnd: 8,
          enabledSlots: const {
            DailyReminderSlot.morning,
            DailyReminderSlot.evening,
          },
        ),
        now: now,
      );

      expect(schedule, hasLength(1));
      expect(schedule.single.insight.code, InsightCode.expenseReminderMorning);
    });

    test('the first occurrence is always in the future', () {
      // 10:00 on the day: the 09:00 morning slot has gone, so it books
      // tomorrow, while the 13:00 noon slot still lands today.
      final morning = NotificationScheduler.nextOccurrenceOfHour(now, 9);
      final noon = NotificationScheduler.nextOccurrenceOfHour(now, 13);

      expect(morning.isAfter(now), isTrue);
      expect(morning.day, now.day + 1);
      expect(noon.day, now.day);
      expect(noon.hour, 13);
    });
  });

  group('happy weekend', () {
    test('lands on the configured weekend day and repeats', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          paymentReminders: false,
          savingsUpdates: false,
          weeklySummary: false,
          dailyReminders: false,
        ),
        now: now,
      );

      expect(schedule, hasLength(1));
      final greeting = schedule.single;
      expect(greeting.insight.code, InsightCode.happyWeekend);
      expect(greeting.repeat, NotificationRepeat.weekly);
      expect(greeting.scheduledFor.weekday, DateTime.saturday);
      expect(greeting.route, '/home');
    });

    test('the weekend day is configurable for regions that differ', () {
      // Much of the Gulf takes Friday and Saturday.
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: const NotificationPreferences(
          budgetAlerts: false,
          paymentReminders: false,
          savingsUpdates: false,
          weeklySummary: false,
          dailyReminders: false,
          weekendWeekday: DateTime.friday,
        ),
        now: now,
      );

      expect(schedule.single.scheduledFor.weekday, DateTime.friday);
    });

    test('switching it off schedules nothing', () {
      final schedule = NotificationScheduler.build(
        insights: const [],
        loans: const [],
        preferences: preferences.copyWith(weeklySummary: false),
        now: now,
      );

      expect(schedule, isEmpty);
    });
  });
}
