import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:rainypenny/features/financial/data/models/finance_mappers.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/financial/domain/entities/loan_payment.dart';

/// Repayment history, and the note that travels with a debt.
///
/// Section 11 asks for both. The payments table had been written to since the
/// first migration and never read, so a recorded payment vanished the moment
/// the snackbar went; notes had nowhere to live at all.
void main() {
  LoanPayment payment(String id, double amount, DateTime paidAt) =>
      LoanPayment(id: id, loanId: 'loan-1', amount: amount, paidAt: paidAt);

  group('LoanPayments', () {
    final rows = [
      payment('a', 100, DateTime(2026, 7, 5)),
      payment('c', 150, DateTime(2026, 9, 5)),
      payment('b', 120, DateTime(2026, 8, 5)),
    ];

    test('orders newest first, without disturbing the caller', () {
      final original = [...rows];
      expect(
        LoanPayments.newestFirst(rows).map((p) => p.id),
        ['c', 'b', 'a'],
      );
      expect(rows.map((p) => p.id), original.map((p) => p.id));
    });

    test('totals what has been repaid', () {
      expect(LoanPayments.total(rows), closeTo(370, 0.001));
    });

    test('the last payment is the most recent, not the last in the list', () {
      expect(LoanPayments.lastPaidAt(rows), DateTime(2026, 9, 5));
    });

    test('a debt never paid has no last payment', () {
      expect(LoanPayments.lastPaidAt(const []), isNull);
      expect(LoanPayments.total(const []), 0);
    });
  });

  group('recording a payment', () {
    test('writes a row that the history then reads back', () async {
      final source = MockFinanceDataSource(latency: Duration.zero);
      final loans = await source.fetchLoans();
      final loan = loans.first;

      expect(await source.fetchLoanPayments(loan.id), isEmpty);

      await source.recordLoanPayment(loan.id, 250);
      final history = await source.fetchLoanPayments(loan.id);

      expect(history, hasLength(1));
      expect(history.single.amount, closeTo(250, 0.001));
      expect(history.single.loanId, loan.id);
    });

    test('the history agrees with the balance it moved', () async {
      final source = MockFinanceDataSource(latency: Duration.zero);
      final loan = (await source.fetchLoans()).first;
      final before = loan.remaining;

      await source.recordLoanPayment(loan.id, 100);
      await source.recordLoanPayment(loan.id, 50);

      final after = (await source.fetchLoans())
          .firstWhere((l) => l.id == loan.id)
          .remaining;
      final paid = LoanPayments.total(
        await source.fetchLoanPayments(loan.id),
      );

      expect(paid, closeTo(150, 0.001));
      expect(before - after, closeTo(paid, 0.001));
    });

    test('one debt does not show another debt payments', () async {
      final source = MockFinanceDataSource(latency: Duration.zero);
      final loans = await source.fetchLoans();

      await source.recordLoanPayment(loans.first.id, 100);

      expect(await source.fetchLoanPayments(loans.last.id), isEmpty);
    });
  });

  group('notes', () {
    final loan = Loan(
      id: 'loan-1',
      name: 'Car Loan',
      lender: 'Meridian',
      kind: LoanKind.loan,
      principal: 12000,
      remaining: 6200,
      installmentAmount: 420,
      nextPaymentDate: DateTime(2026, 10, 5),
      interestRate: 5.9,
      icon: CategoryIcon.transport,
      note: 'Paid from the joint account',
    );

    test('survive a round trip through the row mapper', () {
      final row = LoanMapper.toRow(loan, 'user-1', includeId: false);
      expect(row['note'], 'Paid from the joint account');

      final back = LoanMapper.fromRow({
        ...row,
        'id': 'loan-1',
        'next_payment_date': '2026-10-05',
      });
      expect(back.note, 'Paid from the joint account');
    });

    test('a debt without one reads back as null, not an empty string', () {
      final row = LoanMapper.toRow(
        loan.copyWith(note: null),
        'user-1',
        includeId: false,
      );
      // copyWith cannot clear a null-able field, so this asserts the mapper
      // handles an absent column rather than the entity clearing itself.
      final back = LoanMapper.fromRow({
        ...row,
        'id': 'loan-1',
        'note': null,
        'next_payment_date': '2026-10-05',
      });
      expect(back.note, isNull);
    });
  });
}
