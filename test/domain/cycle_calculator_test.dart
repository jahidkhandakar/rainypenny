import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/salary_cycle.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/cycle_calculator.dart';

const _salary = Category(
  id: 'salary',
  name: 'Salary',
  icon: CategoryIcon.salary,
  isIncome: true,
);
const _food = Category(id: 'food', name: 'Food', icon: CategoryIcon.food);
const _rent = Category(id: 'housing', name: 'Rent', icon: CategoryIcon.housing);

Transaction _income(String id, double amount, DateTime date) => Transaction(
  id: id,
  title: id,
  amount: amount,
  date: date,
  type: TransactionType.income,
  category: _salary,
);

Transaction _expense(
  String id,
  double amount,
  DateTime date, {
  Category category = _food,
}) => Transaction(
  id: id,
  title: id,
  amount: amount,
  date: date,
  type: TransactionType.expense,
  category: category,
);

void main() {
  // Paid on the 25th: the cycle under test runs 25 Sep - 24 Oct 2026.
  final cycle = SalaryCycle.forDate(DateTime(2026, 9, 25), 25);

  group('the cycle picture', () {
    final ledger = [
      // Previous cycle: 3,000 in, 2,400 out, so 600 rolls forward.
      _income('prev-salary', 3000, DateTime(2026, 8, 25, 9)),
      _expense('prev-rent', 2000, DateTime(2026, 8, 26, 9), category: _rent),
      _expense('prev-food', 400, DateTime(2026, 9, 2, 12)),
      // This cycle: 3,200 in, 1,150 out.
      _income('salary', 3200, DateTime(2026, 9, 25, 9)),
      _expense('rent', 900, DateTime(2026, 9, 26, 9), category: _rent),
      _expense('lunch', 250, DateTime(2026, 10, 3, 13)),
    ];

    final summary = CycleCalculator.evaluate(
      transactions: ledger,
      cycle: cycle,
    );

    test('income and expenses cover only this cycle', () {
      expect(summary.income, closeTo(3200, 0.001));
      expect(summary.expenses, closeTo(1150, 0.001));
    });

    test('the previous cycle underspend is carried forward', () {
      expect(summary.carriedForward, closeTo(600, 0.001));
    });

    test('remaining is the carry-forward plus this cycle net', () {
      // 600 carried + 3,200 in - 1,150 out.
      expect(summary.remaining, closeTo(2650, 0.001));
    });

    test('the comparison figures come from the previous cycle', () {
      expect(summary.previousIncome, closeTo(3000, 0.001));
      expect(summary.previousExpenses, closeTo(2400, 0.001));
    });

    test('category spend is scoped to the cycle', () {
      final byId = CycleCalculator.spendByCategoryId(
        summary.spendingByCategory,
      );
      expect(byId['housing'], closeTo(900, 0.001));
      expect(byId['food'], closeTo(250, 0.001));
    });
  });

  group('adding a transaction moves the figures', () {
    // The client-facing promise: log an expense, the remaining amount drops by
    // exactly that much, immediately. This is what the hardcoded demo balance
    // used to prevent.
    final before = [
      _income('salary', 3000, DateTime(2026, 9, 25, 9)),
      _expense('rent', 900, DateTime(2026, 9, 26, 9), category: _rent),
    ];

    test('an expense reduces remaining by its own amount', () {
      final start = CycleCalculator.evaluate(
        transactions: before,
        cycle: cycle,
      ).remaining;

      final after = CycleCalculator.evaluate(
        transactions: [
          ...before,
          _expense('coffee', 12.50, DateTime(2026, 10, 1, 8)),
        ],
        cycle: cycle,
      ).remaining;

      expect(start - after, closeTo(12.50, 0.001));
    });

    test('income increases remaining by its own amount', () {
      final start = CycleCalculator.evaluate(
        transactions: before,
        cycle: cycle,
      ).remaining;

      final after = CycleCalculator.evaluate(
        transactions: [
          ...before,
          _income('bonus', 400, DateTime(2026, 10, 1, 8)),
        ],
        cycle: cycle,
      ).remaining;

      expect(after - start, closeTo(400, 0.001));
    });
  });

  group('salary detection', () {
    test('the largest credit in the cycle is the salary', () {
      final salary = CycleCalculator.salaryIn([
        _income('salary', 3200, DateTime(2026, 9, 25, 9)),
        _income('refund', 40, DateTime(2026, 9, 28, 9)),
        _income('freelance', 650, DateTime(2026, 10, 2, 9)),
      ], cycle);

      expect(salary, closeTo(3200, 0.001));
    });

    test('a cycle with no income reports zero rather than throwing', () {
      expect(CycleCalculator.salaryIn(const [], cycle), 0);
    });

    test('income outside the cycle is ignored', () {
      final salary = CycleCalculator.salaryIn([
        _income('old-and-larger', 9000, DateTime(2026, 8, 25, 9)),
        _income('salary', 3200, DateTime(2026, 9, 25, 9)),
      ], cycle);

      expect(salary, closeTo(3200, 0.001));
    });
  });

  group('quiet days', () {
    test('days with no expense are listed up to today', () {
      final days = CycleCalculator.daysWithoutExpenses(
        [
          _expense('a', 10, DateTime(2026, 9, 25, 12)),
          _expense('b', 10, DateTime(2026, 9, 28, 12)),
        ],
        cycle,
        DateTime(2026, 9, 29),
      );

      expect(days, [
        DateTime(2026, 9, 26),
        DateTime(2026, 9, 27),
        DateTime(2026, 9, 29),
      ]);
    });

    test('future days in the cycle are not counted as quiet', () {
      final days = CycleCalculator.daysWithoutExpenses(
        const [],
        cycle,
        DateTime(2026, 9, 26),
      );

      expect(days, [DateTime(2026, 9, 25), DateTime(2026, 9, 26)]);
    });

    test('income alone does not make a day active', () {
      final days = CycleCalculator.daysWithoutExpenses(
        [_income('salary', 3000, DateTime(2026, 9, 25, 9))],
        cycle,
        DateTime(2026, 9, 25),
      );

      expect(days, [DateTime(2026, 9, 25)]);
    });
  });

  group('category totals for the filter', () {
    test('sums one category within the cycle only', () {
      final total = CycleCalculator.spentOnCategory(
        [
          _expense('in-1', 30, DateTime(2026, 9, 26, 9)),
          _expense('in-2', 20, DateTime(2026, 10, 2, 9)),
          _expense('out', 99, DateTime(2026, 9, 1, 9)),
          _expense('other-cat', 50, DateTime(2026, 9, 27, 9), category: _rent),
        ],
        cycle,
        'food',
      );

      expect(total, closeTo(50, 0.001));
    });
  });

  group('cycles covering a ledger', () {
    test('a ledger spanning three cycles yields three, newest first', () {
      final cycles = CycleCalculator.cyclesCovering(
        [
          _expense('old', 10, DateTime(2026, 7, 26, 9)),
          _expense('new', 10, DateTime(2026, 9, 26, 9)),
        ],
        25,
        now: DateTime(2026, 9, 30),
      );

      expect(cycles.length, 3);
      expect(cycles.first.start, DateTime(2026, 9, 25));
      expect(cycles.last.start, DateTime(2026, 7, 25));
    });

    test('an empty ledger still offers the current cycle', () {
      final cycles = CycleCalculator.cyclesCovering(
        const [],
        25,
        now: DateTime(2026, 9, 30),
      );

      expect(cycles.length, 1);
      expect(cycles.single.start, DateTime(2026, 9, 25));
    });
  });

  group('derived balance', () {
    test('balanceAt replays the ledger to a moment', () {
      final ledger = [
        _income('a', 1000, DateTime(2026, 9, 1, 9)),
        _expense('b', 300, DateTime(2026, 9, 10, 9)),
        _expense('c', 200, DateTime(2026, 9, 20, 9)),
      ];

      expect(
        BalanceCalculator.balanceAt(ledger, DateTime(2026, 9, 15)),
        closeTo(700, 0.001),
      );
      expect(
        BalanceCalculator.balanceAt(ledger, DateTime(2026, 9, 30)),
        closeTo(500, 0.001),
      );
    });

    test('a balance before any activity is zero', () {
      expect(
        BalanceCalculator.balanceAt(
          [_income('a', 1000, DateTime(2026, 9, 1, 9))],
          DateTime(2026, 8, 1),
        ),
        0,
      );
    });
  });
}
