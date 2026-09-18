import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/data/demo_dataset.dart';
import 'package:rainypenny/features/financial/domain/entities/salary_cycle.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/budget_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/cycle_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/debt_calculator.dart';

/// Guards the promise that every headline figure in the UI is derived from the
/// same ledger. If the seed data drifts, these fail before the demo does.
///
/// These used to assert exact magic totals — income of precisely 5,240 over a
/// trailing thirty days. That tuning belonged to a reporting window the app no
/// longer has: it reports on salary cycles now, which are 28 to 31 days long
/// and start on the payday. What matters is not that the numbers hit a
/// memorised figure but that the parts agree with each other and that the demo
/// still shows a realistic month, so that is what is checked.
void main() {
  const payday = 1;
  final cycle = SalaryCycle.current(payday);
  final ledger = DemoDataset.transactionsFor(payday: payday);
  final inCycle = BalanceCalculator.inRange(ledger, cycle.start, cycle.end);

  group('demo ledger', () {
    test('every transaction carries a positive magnitude', () {
      for (final transaction in ledger) {
        expect(transaction.amount, greaterThan(0), reason: transaction.title);
      }
    });

    test('rows are ordered newest first', () {
      final dates = ledger.map((t) => t.date).toList();
      for (var i = 1; i < dates.length; i++) {
        expect(dates[i].isAfter(dates[i - 1]), isFalse);
      }
    });

    test('nothing is dated on a later day than today', () {
      // Today's rows carry realistic clock times — coffee at eight, a taxi at
      // seven — so before the evening some of them are technically ahead of
      // now. That is deliberate, and it keeps the Today group populated
      // whenever the demo is opened. What would be wrong is a row on a future
      // date, which no cycle should ever contain.
      final now = DateTime.now();
      final endOfToday = DateTime(now.year, now.month, now.day, 23, 59, 59);

      for (final transaction in ledger) {
        expect(
          transaction.date.isAfter(endOfToday),
          isFalse,
          reason: '${transaction.title} is dated on a future day',
        );
      }
    });
  });

  group('the salary', () {
    test('lands on the payday, inside the current cycle', () {
      final salaries = ledger.where((t) => t.title == 'Monthly Salary');
      final current = salaries.where((t) => cycle.contains(t.date));

      expect(current, hasLength(1));
      expect(current.single.date.day, cycle.start.day);
    });

    test('is the largest credit, so the home screen reports it as the salary', () {
      // The regression this guards: with the ledger positioned purely relative
      // to today, a cycle starting on the 1st pushed the 3,500 salary into the
      // previous period and the card announced a monthly salary of 450.
      expect(
        CycleCalculator.salaryIn(ledger, cycle),
        closeTo(3500.00, 0.001),
      );
    });

    test('the previous cycle has its own salary, for the carry-forward', () {
      final previous = cycle.previous;
      final inPrevious = ledger.where(
        (t) => t.title == 'Monthly Salary' && previous.contains(t.date),
      );
      expect(inPrevious, hasLength(1));
    });

    test('follows a payday the user has chosen', () {
      final custom = SalaryCycle.current(25);
      final salary = CycleCalculator.salaryIn(
        DemoDataset.transactionsFor(payday: 25),
        custom,
      );
      expect(salary, closeTo(3500.00, 0.001));
    });
  });

  group('derived figures', () {
    test('category spend sums back to the expense total', () {
      final byCategory = BalanceCalculator.spendingByCategory(inCycle);
      final total = byCategory.values.fold(0.0, (sum, value) => sum + value);

      expect(
        total,
        closeTo(BalanceCalculator.totalExpenses(inCycle), 0.001),
      );
    });

    test('budget limits total 4,000 and spend comes from the ledger', () {
      final budgets = DemoDataset.budgetsFor(payday: payday);
      expect(BudgetCalculator.totalLimit(budgets), closeTo(4000, 0.001));

      final byCategory = BalanceCalculator.spendingByCategory(inCycle);
      for (final budget in budgets) {
        final expected = byCategory.entries
            .where((e) => e.key.id == budget.category.id)
            .fold(0.0, (sum, e) => sum + e.value);
        expect(
          budget.spent,
          closeTo(expected, 0.001),
          reason: budget.category.name,
        );
      }
    });

    test('the cycle summary reconciles: carried + in - out = remaining', () {
      final summary = CycleCalculator.evaluate(
        transactions: ledger,
        cycle: cycle,
      );

      expect(
        summary.remaining,
        closeTo(
          summary.carriedForward + summary.income - summary.expenses,
          0.001,
        ),
      );
    });

    test('the demo shows a month with money left in it', () {
      // A demo that opens on an overdrawn account tells the wrong story about
      // what the app is for.
      final summary = CycleCalculator.evaluate(
        transactions: ledger,
        cycle: cycle,
      );
      expect(summary.remaining, greaterThan(0));
      expect(summary.income, greaterThan(0));
      expect(summary.expenses, greaterThan(0));
    });

    test('total outstanding debt is 8,450', () {
      expect(
        DebtCalculator.totalOutstanding(DemoDataset.loans),
        closeTo(8450, 0.001),
      );
    });
  });
}
