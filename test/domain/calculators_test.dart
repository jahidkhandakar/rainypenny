import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/domain/entities/budget.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/financial/domain/entities/savings_goal.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/financial/domain/rules/budget_rules.dart';
import 'package:rainypenny/features/financial/domain/rules/debt_rules.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/budget_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/debt_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/savings_calculator.dart';

const _food = Category(id: 'food', name: 'Food', icon: CategoryIcon.food);
const _rent = Category(id: 'housing', name: 'Housing', icon: CategoryIcon.housing);
const _pay = Category(
  id: 'salary',
  name: 'Salary',
  icon: CategoryIcon.salary,
  isIncome: true,
);

Transaction _tx(
  String id,
  double amount,
  DateTime date,
  TransactionType type,
  Category category,
) {
  return Transaction(
    id: id,
    title: id,
    amount: amount,
    date: date,
    type: type,
    category: category,
  );
}

void main() {
  final day1 = DateTime(2026, 9, 1, 10);
  final day2 = DateTime(2026, 9, 2, 10);
  final outside = DateTime(2026, 8, 1, 10);

  final ledger = [
    _tx('salary', 3000, day1, TransactionType.income, _pay),
    _tx('groceries', 120, day1, TransactionType.expense, _food),
    _tx('rent', 900, day2, TransactionType.expense, _rent),
    _tx('old', 500, outside, TransactionType.expense, _food),
  ];

  group('BalanceCalculator', () {
    final window = BalanceCalculator.inRange(
      ledger,
      DateTime(2026, 9, 1),
      DateTime(2026, 9, 30, 23, 59, 59),
    );

    test('filters transactions outside the window', () {
      expect(window.length, 3);
    });

    test('totals income and expenses separately', () {
      expect(BalanceCalculator.totalIncome(window), 3000);
      expect(BalanceCalculator.totalExpenses(window), 1020);
    });

    test('net uses the signed amount', () {
      expect(BalanceCalculator.net(window), 1980);
    });

    test('spending by category is sorted largest first', () {
      final byCategory = BalanceCalculator.spendingByCategory(window);
      expect(byCategory.keys.first.id, 'housing');
      expect(byCategory[_rent], 900);
      expect(byCategory[_food], 120);
    });

    test('daily totals fill gaps with zeros', () {
      final daily = BalanceCalculator.dailyTotals(
        window,
        DateTime(2026, 9, 1),
        DateTime(2026, 9, 4),
      );
      expect(daily.length, 4);
      expect(daily[0].income, 3000);
      expect(daily[1].expenses, 900);
      expect(daily[2].net, 0);
    });

    test('bucketing collapses days into the requested column count', () {
      final daily = BalanceCalculator.dailyTotals(
        window,
        DateTime(2026, 9, 1),
        DateTime(2026, 9, 12),
      );
      final buckets = BalanceCalculator.bucketed(daily, 6);
      expect(buckets.length, 6);
      expect(
        buckets.fold(0.0, (sum, b) => sum + b.expenses),
        BalanceCalculator.totalExpenses(window),
      );
    });
  });

  group('BudgetRules', () {
    test('classifies by threshold', () {
      expect(BudgetRules.statusFor(0.50), BudgetStatus.onTrack);
      expect(BudgetRules.statusFor(0.70), BudgetStatus.approaching);
      expect(BudgetRules.statusFor(0.89), BudgetStatus.approaching);
      expect(BudgetRules.statusFor(0.90), BudgetStatus.exceeded);
      expect(BudgetRules.statusFor(1.20), BudgetStatus.exceeded);
    });
  });

  group('BudgetCalculator', () {
    final budgets = [
      const Budget(id: 'a', category: _food, limit: 600, spent: 420),
      const Budget(id: 'b', category: _rent, limit: 1000, spent: 1100),
    ];

    test('rolls up limits, spend and remainder', () {
      expect(BudgetCalculator.totalLimit(budgets), 1600);
      expect(BudgetCalculator.totalSpent(budgets), 1520);
      expect(BudgetCalculator.totalRemaining(budgets), 80);
    });

    test('surfaces the worst budget first', () {
      final flagged = BudgetCalculator.needingAttention(budgets);
      expect(flagged.first.id, 'b');
    });

    test('an exceeded budget reports a negative remainder', () {
      expect(budgets[1].remaining, -100);
      expect(budgets[1].isExceeded, isTrue);
      expect(budgets[1].progress, 1.0);
    });
  });

  group('SavingsCalculator', () {
    final goals = [
      SavingsGoal(
        id: 'a',
        name: 'Laptop',
        saved: 1700,
        target: 2500,
        icon: CategoryIcon.shopping,
        targetDate: day1,
        monthlyContribution: 200,
      ),
      SavingsGoal(
        id: 'b',
        name: 'Trip',
        saved: 500,
        target: 4000,
        icon: CategoryIcon.travel,
        targetDate: day1,
        monthlyContribution: 250,
      ),
    ];

    test('totals and progress', () {
      expect(SavingsCalculator.totalSaved(goals), 2200);
      expect(SavingsCalculator.totalTarget(goals), 6500);
      expect(SavingsCalculator.monthlyCommitment(goals), 450);
    });

    test('features the goal closest to completion', () {
      expect(SavingsCalculator.featured(goals)?.id, 'a');
    });

    test('months remaining rounds up', () {
      expect(goals[0].monthsRemaining, 4);
    });
  });

  group('DebtCalculator', () {
    final now = DateTime(2026, 9, 1);
    final loans = [
      Loan(
        id: 'car',
        name: 'Car Loan',
        lender: 'Bank',
        kind: LoanKind.loan,
        principal: 12000,
        remaining: 6200,
        monthlyPayment: 420,
        nextPaymentDate: now.add(const Duration(days: 14)),
        interestRate: 5.9,
        icon: CategoryIcon.transport,
      ),
      Loan(
        id: 'card',
        name: 'Credit Card',
        lender: 'Bank',
        kind: LoanKind.creditCard,
        principal: 5000,
        remaining: 2250,
        monthlyPayment: 85,
        nextPaymentDate: now.add(const Duration(days: 2)),
        interestRate: 19.99,
        icon: CategoryIcon.other,
      ),
    ];

    test('sums outstanding balances and payments', () {
      expect(DebtCalculator.totalOutstanding(loans), 8450);
      expect(DebtCalculator.totalMonthlyPayments(loans), 505);
    });

    test('debt-to-income compares payments against income', () {
      expect(DebtCalculator.debtToIncome(loans, 5050), closeTo(0.1, 0.0001));
      expect(DebtCalculator.debtToIncome(loans, 0), 0);
    });

    test('only payments inside the reminder window are upcoming', () {
      final upcoming = DebtCalculator.upcomingPayments(loans, now);
      expect(upcoming.map((l) => l.id), ['card']);
    });

    test('urgency escalates as the due date approaches', () {
      expect(DebtRules.isUrgent(loans[1].daysUntilPayment(now)), isTrue);
      expect(DebtRules.isDueSoon(loans[0].daysUntilPayment(now)), isFalse);
      expect(DebtRules.isOverdue(-1), isTrue);
    });
  });
}
