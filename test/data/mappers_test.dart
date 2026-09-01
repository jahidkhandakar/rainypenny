import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/data/models/finance_mappers.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/financial/domain/entities/savings_goal.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';

/// The mappers are the seam between PostgreSQL rows and the domain model, so
/// they are worth pinning down before the backend is live.
void main() {
  const userId = '11111111-1111-1111-1111-111111111111';

  group('CategoryMapper', () {
    test('reads a row and resolves the icon key', () {
      final category = CategoryMapper.fromRow({
        'id': 'food',
        'name': 'Food & Dining',
        'icon': 'food',
        'is_income': false,
      });

      expect(category.id, 'food');
      expect(category.icon, CategoryIcon.food);
      expect(category.isIncome, isFalse);
    });

    test('an unknown icon key falls back rather than throwing', () {
      expect(CategoryMapper.iconFromKey('not-a-real-icon'), CategoryIcon.other);
      expect(CategoryMapper.iconFromKey(null), CategoryIcon.other);
    });
  });

  group('TransactionMapper', () {
    final categories = {
      'food': const Category(
        id: 'food',
        name: 'Food & Dining',
        icon: CategoryIcon.food,
      ),
    };

    test('maps an expense row', () {
      final transaction = TransactionMapper.fromRow({
        'id': 'abc',
        'title': 'Groceries',
        'amount': 84.5,
        'occurred_at': '2026-09-01T18:00:00Z',
        'type': 'expense',
        'category_id': 'food',
        'note': 'Weekly shop',
        'account': 'Main Account',
      }, categories);

      expect(transaction.title, 'Groceries');
      expect(transaction.amount, 84.5);
      expect(transaction.type, TransactionType.expense);
      expect(transaction.signedAmount, -84.5);
      expect(transaction.category.id, 'food');
      expect(transaction.note, 'Weekly shop');
    });

    test('an unknown category does not lose the row', () {
      final transaction = TransactionMapper.fromRow({
        'id': 'abc',
        'title': 'Mystery',
        'amount': 10,
        'occurred_at': '2026-09-01T18:00:00Z',
        'type': 'income',
        'category_id': 'ghost',
      }, categories);

      expect(transaction.category.id, 'ghost');
      expect(transaction.isIncome, isTrue);
    });

    test('writes a row without an id so the database generates one', () {
      final row = TransactionMapper.toRow(
        Transaction(
          id: 'local-id',
          title: 'Coffee',
          amount: 4.5,
          date: DateTime.utc(2026, 9, 1, 8),
          type: TransactionType.expense,
          category: categories['food']!,
        ),
        userId,
      );

      expect(row.containsKey('id'), isFalse);
      expect(row['user_id'], userId);
      expect(row['type'], 'expense');
      expect(row['category_id'], 'food');
      expect(row['occurred_at'], '2026-09-01T08:00:00.000Z');
    });
  });

  group('SavingsGoalMapper', () {
    test('round-trips a goal', () {
      final goal = SavingsGoal(
        id: 'goal-1',
        name: 'Emergency fund',
        saved: 3200,
        target: 5000,
        icon: CategoryIcon.housing,
        targetDate: DateTime(2027, 6, 30),
        monthlyContribution: 400,
      );

      final row = SavingsGoalMapper.toRow(goal, userId);
      expect(row['target_date'], '2027-06-30');
      expect(row['icon'], 'housing');

      final back = SavingsGoalMapper.fromRow({...row, 'id': goal.id});
      expect(back.name, goal.name);
      expect(back.saved, goal.saved);
      expect(back.percentComplete, 64);
    });
  });

  group('LoanMapper', () {
    test('maps the credit-card kind both ways', () {
      final loan = Loan(
        id: 'loan-1',
        name: 'Credit Card',
        lender: 'Vantage',
        kind: LoanKind.creditCard,
        principal: 5000,
        remaining: 2250,
        monthlyPayment: 85,
        nextPaymentDate: DateTime(2026, 9, 10),
        interestRate: 19.99,
        icon: CategoryIcon.other,
      );

      final row = LoanMapper.toRow(loan, userId);
      expect(row['kind'], 'credit_card');
      expect(row['next_payment_date'], '2026-09-10');

      final back = LoanMapper.fromRow({...row, 'id': loan.id});
      expect(back.kind, LoanKind.creditCard);
      expect(back.percentPaid, 55);
    });
  });

  group('ProfileMapper', () {
    test('derives initials from a full name', () {
      expect(ProfileMapper.initialsFor('Alex Morgan'), 'AM');
      expect(ProfileMapper.initialsFor('  Alex   Morgan  '), 'AM');
    });

    test('a single word gives two letters', () {
      expect(ProfileMapper.initialsFor('Alex'), 'AL');
      expect(ProfileMapper.initialsFor('A'), 'A');
    });

    test('empty input never crashes the avatar', () {
      expect(ProfileMapper.initialsFor(''), '?');
      expect(ProfileMapper.initialsFor('   '), '?');
    });

    test('falls back to the email when no name is stored', () {
      final profile = ProfileMapper.fromRow({
        'id': userId,
        'full_name': '',
        'email': 'alex.morgan@email.com',
        'created_at': '2024-03-14T10:00:00Z',
        'currency_code': 'EUR',
      });

      expect(profile.name, 'alex.morgan');
      expect(profile.currencySymbol, '€');
    });

    test('an unknown currency code is shown as-is rather than lost', () {
      expect(ProfileMapper.symbolFor('JPY'), 'JPY');
    });
  });
}
