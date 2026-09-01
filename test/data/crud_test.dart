import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/budget/data/repositories/budget_repository_impl.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:rainypenny/features/financial/data/demo_dataset.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/financial/domain/entities/savings_goal.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/loans/data/repositories/loan_repository_impl.dart';
import 'package:rainypenny/features/savings/data/repositories/savings_repository_impl.dart';
import 'package:rainypenny/features/transactions/data/repositories/transaction_repository_impl.dart';

void main() {
  late MockFinanceDataSource source;

  setUp(() {
    source = MockFinanceDataSource(latency: Duration.zero);
  });

  group('TransactionRepository', () {
    test('add, update and delete round-trip through the ledger', () async {
      final repository = TransactionRepositoryImpl(source);
      final before = (await repository.getTransactions()).length;

      const id = 'tx-test';
      final transaction = Transaction(
        id: id,
        title: 'Test coffee',
        amount: 4.50,
        date: DateTime.now(),
        type: TransactionType.expense,
        category: DemoDataset.food,
      );

      await repository.addTransaction(transaction);
      var all = await repository.getTransactions();
      expect(all.length, before + 1);
      expect(all.firstWhere((t) => t.id == id).amount, 4.50);

      await repository.updateTransaction(
        transaction.copyWith(amount: 9.00, title: 'Test lunch'),
      );
      all = await repository.getTransactions();
      final updated = all.firstWhere((t) => t.id == id);
      expect(updated.amount, 9.00);
      expect(updated.title, 'Test lunch');
      expect(all.length, before + 1, reason: 'update must not insert a row');

      await repository.deleteTransaction(id);
      all = await repository.getTransactions();
      expect(all.length, before);
      expect(all.any((t) => t.id == id), isFalse);
    });

    test('the ledger stays newest-first after a write', () async {
      final repository = TransactionRepositoryImpl(source);
      await repository.addTransaction(
        Transaction(
          id: 'tx-old',
          title: 'Backdated',
          amount: 10,
          date: DateTime.now().subtract(const Duration(days: 45)),
          type: TransactionType.expense,
          category: DemoDataset.other,
        ),
      );

      final all = await repository.getTransactions();
      for (var i = 1; i < all.length; i++) {
        expect(all[i].date.isAfter(all[i - 1].date), isFalse);
      }
    });

    test('an added expense moves the period total', () async {
      final repository = TransactionRepositoryImpl(source);
      final start = DemoDataset.periodStart;
      final end = DemoDataset.periodEnd;

      final before = BalanceCalculator.totalExpenses(
        BalanceCalculator.inRange(
          await repository.getTransactions(),
          start,
          end,
        ),
      );

      await repository.addTransaction(
        Transaction(
          id: 'tx-new',
          title: 'New expense',
          amount: 25,
          date: DateTime.now(),
          type: TransactionType.expense,
          category: DemoDataset.food,
        ),
      );

      final after = BalanceCalculator.totalExpenses(
        BalanceCalculator.inRange(
          await repository.getTransactions(),
          start,
          end,
        ),
      );
      expect(after - before, closeTo(25, 0.001));
    });
  });

  group('BudgetRepository', () {
    test('setting a limit creates a budget for that category', () async {
      final repository = BudgetRepositoryImpl(source);
      await repository.setLimit('travel', 600);

      final budgets = await repository.getBudgets({'travel': 284.30});
      final travel = budgets.firstWhere((b) => b.category.id == 'travel');
      expect(travel.limit, 600);
      expect(travel.spent, closeTo(284.30, 0.001));
    });

    test('an existing limit is replaced, not duplicated', () async {
      final repository = BudgetRepositoryImpl(source);
      await repository.setLimit('food', 1000);

      final budgets = await repository.getBudgets({'food': 742});
      final food = budgets.where((b) => b.category.id == 'food');
      expect(food.length, 1);
      expect(food.single.limit, 1000);
    });

    test('deleting removes the budget but not the spend', () async {
      final repository = BudgetRepositoryImpl(source);
      await repository.deleteBudget('shopping');

      final budgets = await repository.getBudgets({'shopping': 386});
      expect(budgets.any((b) => b.category.id == 'shopping'), isFalse);
    });
  });

  group('SavingsRepository', () {
    test('add, update, contribute and delete', () async {
      final repository = SavingsRepositoryImpl(source);
      final before = (await repository.getGoals()).length;

      final goal = SavingsGoal(
        id: 'goal-test',
        name: 'New bike',
        saved: 100,
        target: 900,
        icon: CategoryIcon.transport,
        targetDate: DateTime.now().add(const Duration(days: 200)),
        monthlyContribution: 80,
      );

      await repository.addGoal(goal);
      expect((await repository.getGoals()).length, before + 1);

      await repository.contribute('goal-test', 150);
      var stored =
          (await repository.getGoals()).firstWhere((g) => g.id == 'goal-test');
      expect(stored.saved, 250);
      expect(stored.progress, closeTo(250 / 900, 0.0001));

      await repository.updateGoal(stored.copyWith(target: 500));
      stored =
          (await repository.getGoals()).firstWhere((g) => g.id == 'goal-test');
      expect(stored.target, 500);
      expect(stored.saved, 250, reason: 'update must not reset progress');

      await repository.deleteGoal('goal-test');
      expect((await repository.getGoals()).length, before);
    });

    test('contributing past the target completes the goal', () async {
      final repository = SavingsRepositoryImpl(source);
      await repository.contribute('goal-macbook', 1000);

      final goal = (await repository.getGoals())
          .firstWhere((g) => g.id == 'goal-macbook');
      expect(goal.saved, 2700);
      expect(goal.isComplete, isTrue);
      expect(goal.remaining, 0);
      expect(goal.progress, 1.0);
    });
  });

  group('LoanRepository', () {
    test('add, update and delete', () async {
      final repository = LoanRepositoryImpl(source);
      final before = (await repository.getLoans()).length;

      final loan = Loan(
        id: 'loan-test',
        name: 'Phone plan',
        lender: 'Telco',
        kind: LoanKind.loan,
        principal: 900,
        remaining: 600,
        monthlyPayment: 50,
        nextPaymentDate: DateTime.now().add(const Duration(days: 20)),
        interestRate: 0,
        icon: CategoryIcon.other,
      );

      await repository.addLoan(loan);
      expect((await repository.getLoans()).length, before + 1);

      await repository.updateLoan(loan.copyWith(monthlyPayment: 75));
      final stored =
          (await repository.getLoans()).firstWhere((l) => l.id == 'loan-test');
      expect(stored.monthlyPayment, 75);

      await repository.deleteLoan('loan-test');
      expect((await repository.getLoans()).length, before);
    });

    test('recording a payment reduces the balance and rolls the due date',
        () async {
      final repository = LoanRepositoryImpl(source);
      final before =
          (await repository.getLoans()).firstWhere((l) => l.id == 'loan-car');

      await repository.recordPayment('loan-car', 420);

      final after =
          (await repository.getLoans()).firstWhere((l) => l.id == 'loan-car');
      expect(after.remaining, before.remaining - 420);
      expect(after.percentPaid, greaterThan(before.percentPaid));
      expect(after.nextPaymentDate.isAfter(before.nextPaymentDate), isTrue);
    });

    test('a payment never drives the balance below zero', () async {
      final repository = LoanRepositoryImpl(source);
      await repository.recordPayment('loan-card', 99999);

      final loan =
          (await repository.getLoans()).firstWhere((l) => l.id == 'loan-card');
      expect(loan.remaining, 0);
      expect(loan.progress, 1.0);
    });

    test('the due date rolls into a valid day for short months', () async {
      final repository = LoanRepositoryImpl(source);
      final loan = Loan(
        id: 'loan-eom',
        name: 'End of month',
        lender: 'Bank',
        kind: LoanKind.loan,
        principal: 1000,
        remaining: 1000,
        monthlyPayment: 100,
        // 31 January has no counterpart in February.
        nextPaymentDate: DateTime(2027, 1, 31),
        interestRate: 3,
        icon: CategoryIcon.other,
      );

      await repository.addLoan(loan);
      await repository.recordPayment('loan-eom', 100);

      final stored =
          (await repository.getLoans()).firstWhere((l) => l.id == 'loan-eom');
      expect(stored.nextPaymentDate.month, 2);
      expect(stored.nextPaymentDate.day, 28);
    });
  });
}
