import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/data/demo_dataset.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/budget_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/debt_calculator.dart';

/// Guards the promise that every headline figure in the UI is derived from the
/// same ledger. If the seed data drifts, these fail before the demo does.
void main() {
  final inPeriod = BalanceCalculator.inRange(
    DemoDataset.transactions,
    DemoDataset.periodStart,
    DemoDataset.periodEnd,
  );

  group('demo ledger', () {
    test('income over the reporting window is exactly 5,240', () {
      expect(BalanceCalculator.totalIncome(inPeriod), closeTo(5240.00, 0.001));
    });

    test('expenses over the reporting window are exactly 3,180', () {
      expect(BalanceCalculator.totalExpenses(inPeriod), closeTo(3180.00, 0.001));
    });

    test('net movement matches income minus expenses', () {
      expect(BalanceCalculator.net(inPeriod), closeTo(2060.00, 0.001));
    });

    test('trend deltas land on the figures the dashboard advertises', () {
      final incomeChange =
          (5240.00 - DemoDataset.previousIncome) / DemoDataset.previousIncome;
      final expenseChange = (3180.00 - DemoDataset.previousExpenses) /
          DemoDataset.previousExpenses;
      final balanceChange =
          (DemoDataset.totalBalance - DemoDataset.previousBalance) /
              DemoDataset.previousBalance;

      expect(incomeChange, closeTo(0.125, 0.0005));
      expect(expenseChange, closeTo(-0.042, 0.0005));
      expect(balanceChange, closeTo(0.084, 0.0005));
    });

    test('every transaction carries a positive magnitude', () {
      for (final transaction in DemoDataset.transactions) {
        expect(transaction.amount, greaterThan(0), reason: transaction.title);
      }
    });

    test('rows are ordered newest first', () {
      final dates = DemoDataset.transactions.map((t) => t.date).toList();
      for (var i = 1; i < dates.length; i++) {
        expect(dates[i].isAfter(dates[i - 1]), isFalse);
      }
    });
  });

  group('derived figures', () {
    test('category spend sums back to the expense total', () {
      final byCategory = BalanceCalculator.spendingByCategory(inPeriod);
      final total = byCategory.values.fold(0.0, (sum, value) => sum + value);
      expect(total, closeTo(3180.00, 0.001));
    });

    test('budget limits total 4,000 and spend comes from the ledger', () {
      final budgets = DemoDataset.budgets;
      expect(BudgetCalculator.totalLimit(budgets), closeTo(4000, 0.001));

      final byCategory = BalanceCalculator.spendingByCategory(inPeriod);
      for (final budget in budgets) {
        final expected = byCategory.entries
            .firstWhere((e) => e.key.id == budget.category.id)
            .value;
        expect(budget.spent, closeTo(expected, 0.001));
      }
    });

    test('the budget set contains one healthy, one warning and one exceeded',
        () {
      final budgets = DemoDataset.budgets;
      expect(budgets.any((b) => b.ratio < 0.70), isTrue);
      expect(budgets.any((b) => b.ratio >= 0.70 && b.ratio < 0.90), isTrue);
      expect(budgets.any((b) => b.isExceeded), isTrue);
    });

    test('total outstanding debt is 8,450', () {
      expect(
        DebtCalculator.totalOutstanding(DemoDataset.loans),
        closeTo(8450, 0.001),
      );
    });
  });
}
