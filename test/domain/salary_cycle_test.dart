import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/domain/entities/salary_cycle.dart';

/// The salary cycle is the period every other figure in the app is scoped to,
/// so its edges have to be exact: an off-by-one here moves real money between
/// two months on someone's home screen.
void main() {
  group('cycle boundaries', () {
    test('a payday of 25 runs from the 25th to the 24th', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 30), 25);

      expect(cycle.start, DateTime(2026, 9, 25));
      expect(cycle.end, DateTime(2026, 10, 24, 23, 59, 59));
    });

    test('a date before payday belongs to the previous cycle', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 10), 25);

      expect(cycle.start, DateTime(2026, 8, 25));
      expect(cycle.end, DateTime(2026, 9, 24, 23, 59, 59));
    });

    test('payday itself opens the new cycle', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 25), 25);

      expect(cycle.start, DateTime(2026, 9, 25));
    });

    test('the first of the month is a whole calendar month', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 15), 1);

      expect(cycle.start, DateTime(2026, 9));
      expect(cycle.end, DateTime(2026, 9, 30, 23, 59, 59));
      expect(cycle.lengthInDays, 30);
    });
  });

  group('short months', () {
    test('a payday of 31 lands on the last day of February', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 2, 15), 31);

      expect(cycle.start, DateTime(2026, 1, 31));
      expect(cycle.end, DateTime(2026, 2, 27, 23, 59, 59));
      // 2026 is not a leap year, so the next payday is 28 February.
      expect(cycle.next.start, DateTime(2026, 2, 28));
    });

    test('a leap year gives February a 29th', () {
      final cycle = SalaryCycle.forDate(DateTime(2028, 2, 29), 31);

      expect(cycle.start, DateTime(2028, 2, 29));
    });

    test('a payday of 31 is honoured again in a long month', () {
      final february = SalaryCycle.forDate(DateTime(2026, 2, 10), 31);

      expect(february.start, DateTime(2026, 1, 31));
      expect(february.next.next.start, DateTime(2026, 3, 31));
    });
  });

  group('navigation', () {
    test('next and previous are exact inverses', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 30), 25);

      expect(cycle.next.previous, cycle);
      expect(cycle.previous.next, cycle);
    });

    test('cycles tile with no gap and no overlap', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 30), 25);
      final next = cycle.next;

      expect(next.start.difference(cycle.end), const Duration(seconds: 1));
    });

    test('stepping across a year boundary keeps the payday', () {
      final december = SalaryCycle.forDate(DateTime(2026, 12, 28), 25);

      expect(december.start, DateTime(2026, 12, 25));
      expect(december.next.start, DateTime(2027, 1, 25));
      expect(december.previous.start, DateTime(2026, 11, 25));
    });

    test('shifted walks several cycles at once', () {
      final cycle = SalaryCycle.forDate(DateTime(2026, 9, 30), 25);

      expect(cycle.shifted(3).start, DateTime(2026, 12, 25));
      expect(cycle.shifted(-2).start, DateTime(2026, 7, 25));
      expect(cycle.shifted(0), cycle);
    });
  });

  group('membership and progress', () {
    final cycle = SalaryCycle.forDate(DateTime(2026, 9, 25), 25);

    test('contains covers both edges inclusively', () {
      expect(cycle.contains(DateTime(2026, 9, 25)), isTrue);
      expect(cycle.contains(DateTime(2026, 10, 24, 23, 59, 59)), isTrue);
      expect(cycle.contains(DateTime(2026, 9, 24, 23, 59, 59)), isFalse);
      expect(cycle.contains(DateTime(2026, 10, 25)), isFalse);
    });

    test('progress runs from zero at payday to one at the close', () {
      expect(cycle.progressAt(DateTime(2026, 9, 25)), 0);
      expect(cycle.progressAt(DateTime(2026, 10, 24, 23, 59, 59)), 1);
      expect(cycle.progressAt(DateTime(2026, 10, 9, 12)), closeTo(0.5, 0.03));
    });

    test('progress clamps outside the cycle', () {
      expect(cycle.progressAt(DateTime(2026, 1)), 0);
      expect(cycle.progressAt(DateTime(2027, 1)), 1);
    });

    test('days remaining counts down to zero on the final day', () {
      expect(cycle.daysRemainingAt(DateTime(2026, 9, 25)), 29);
      expect(cycle.daysRemainingAt(DateTime(2026, 10, 23)), 1);
      expect(cycle.daysRemainingAt(DateTime(2026, 10, 24)), 0);
    });
  });

  group('labelling', () {
    test('a cycle is named for the month its money arrived in', () {
      // 25 Sep – 24 Oct is September's salary, not October's.
      final cycle = SalaryCycle.forDate(DateTime(2026, 10, 3), 25);

      expect(cycle.labelMonth, DateTime(2026, 9));
    });
  });

  group('stored values that have gone wrong', () {
    test('a payday outside 1-31 is clamped rather than honoured', () {
      expect(SalaryCycle.normalisePayday(0), 1);
      expect(SalaryCycle.normalisePayday(-5), 1);
      expect(SalaryCycle.normalisePayday(99), 31);
      expect(SalaryCycle.forDate(DateTime(2026, 9, 15), 0).payday, 1);
    });
  });
}
