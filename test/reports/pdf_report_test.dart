import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rainypenny/core/localization/generated/app_localizations.dart';
import 'package:rainypenny/core/utils/formatters.dart';
import 'package:rainypenny/features/financial/domain/entities/budget.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';
import 'package:rainypenny/features/financial/domain/entities/loan.dart';
import 'package:rainypenny/features/financial/domain/entities/period_summary.dart';
import 'package:rainypenny/features/financial/domain/entities/savings_goal.dart';
import 'package:rainypenny/features/financial/domain/entities/transaction.dart';
import 'package:rainypenny/features/reports/data/services/pdf_report_builder.dart';
import 'package:rainypenny/features/reports/domain/entities/financial_report.dart';

const _food = Category(
  id: 'food',
  name: 'Food & Dining',
  icon: CategoryIcon.food,
);
const _rent = Category(
  id: 'housing',
  name: 'Housing',
  icon: CategoryIcon.housing,
);

FinancialReport _report({String language = 'en', String currency = 'USD'}) {
  final start = DateTime(2026, 8, 5);
  final end = DateTime(2026, 9, 4);

  return FinancialReport(
    summary: PeriodSummary(
      start: start,
      end: end,
      income: 5200,
      expenses: 3140.55,
      balance: 12480.5,
      previousIncome: 4900,
      previousExpenses: 3320,
      previousBalance: 11200,
      spendingByCategory: {_food: 820.25, _rent: 1500},
      previousSpendingByCategory: {_food: 910, _rent: 1500},
    ),
    budgets: const [
      Budget(id: 'b1', category: _food, limit: 700, spent: 820.25),
      Budget(id: 'b2', category: _rent, limit: 1600, spent: 1500),
    ],
    goals: [
      SavingsGoal(
        id: 'g1',
        name: 'Emergency fund',
        saved: 3200,
        target: 6000,
        icon: CategoryIcon.other,
        targetDate: DateTime(2027, 3, 1),
        monthlyContribution: 250,
      ),
    ],
    loans: [
      Loan(
        id: 'l1',
        name: 'Car Loan',
        lender: 'Meridian Bank',
        kind: LoanKind.loan,
        principal: 12000,
        remaining: 6200,
        installmentAmount: 420,
        nextPaymentDate: DateTime(2026, 9, 18),
        interestRate: 5.9,
        icon: CategoryIcon.transport,
        totalInstallments: 36,
        paidInstallments: 14,
      ),
    ],
    transactions: [
      Transaction(
        id: 't1',
        title: 'Groceries',
        amount: 84.5,
        date: DateTime(2026, 9, 3),
        type: TransactionType.expense,
        category: _food,
      ),
      Transaction(
        id: 't2',
        title: 'Salary',
        amount: 5200,
        date: DateTime(2026, 9, 1),
        type: TransactionType.income,
        category: _food,
      ),
    ],
    rangeLabel: 'Aug 5 – Sep 4',
    generatedAt: DateTime(2026, 9, 4, 14, 30),
    currencyCode: currency,
    languageCode: language,
    ownerName: 'Alex Morgan',
  );
}

/// Asserts the bytes really are a rendered PDF rather than a stub.
///
/// Checking the header alone would pass on an empty document, so this also
/// looks for the trailer, an embedded font — proof the bundled Noto face made
/// it in, which is what makes Arabic and Hindi legible — and at least one page
/// object.
void expectRenderedPdf(List<int> bytes, {int minPages = 1}) {
  final text = String.fromCharCodes(bytes);

  expect(text.substring(0, 5), '%PDF-', reason: 'missing PDF header');
  expect(text.trimRight().endsWith('%%EOF'), isTrue, reason: 'missing trailer');
  expect(text, contains('/FontFile2'), reason: 'no embedded TrueType font');
  // `/Type/Pages` is the page *tree*, so the negative lookahead keeps it from
  // being counted as a page of its own.
  expect(
    RegExp(r'/Type/Page(?!s)').allMatches(text).length,
    greaterThanOrEqualTo(minPages),
    reason: 'fewer than \$minPages pages rendered',
  );
}

Future<AppL10n> _l10n(String languageCode) =>
    AppL10n.delegate.load(Locale(languageCode));

void main() {
  // rootBundle needs a binding to resolve the bundled fonts and logo.
  TestWidgetsFlutterBinding.ensureInitialized();

  // In the app the Flutter localisation delegates initialise these symbols as
  // part of loading a locale; a unit test has to ask for them itself.
  setUpAll(() => initializeDateFormatting());

  group('PdfReportBuilder', () {
    test('produces a valid, non-trivial PDF', () async {
      final bytes = await PdfReportBuilder(
        report: _report(),
        l10n: await _l10n('en'),
        money: const MoneyFormatter(symbol: r'$', locale: 'en'),
        dates: const DateFormatter('en'),
        assets: await ReportAssets.load(),
      ).build();

      // A cover plus five tables always spills onto a second page.
      expectRenderedPdf(bytes, minPages: 2);
    });

    test('renders right-to-left for Arabic', () async {
      final bytes = await PdfReportBuilder(
        report: _report(language: 'ar', currency: 'AED'),
        l10n: await _l10n('ar'),
        money: const MoneyFormatter(symbol: 'د.إ', locale: 'ar'),
        dates: const DateFormatter('ar'),
        assets: await ReportAssets.load(),
      ).build();

      expectRenderedPdf(bytes, minPages: 2);
    });

    test('renders Devanagari for Hindi', () async {
      final bytes = await PdfReportBuilder(
        report: _report(language: 'hi', currency: 'INR'),
        l10n: await _l10n('hi'),
        money: const MoneyFormatter(symbol: '₹', locale: 'hi'),
        dates: const DateFormatter('hi'),
        assets: await ReportAssets.load(),
      ).build();

      expectRenderedPdf(bytes, minPages: 2);
    });

    test(
      'a report with nothing in it still produces a cover and summary',
      () async {
        final empty = FinancialReport(
          summary: PeriodSummary(
            start: DateTime(2026, 9, 1),
            end: DateTime(2026, 9, 4),
            income: 0,
            expenses: 0,
            balance: 0,
            previousIncome: 0,
            previousExpenses: 0,
            previousBalance: 0,
            spendingByCategory: const {},
            previousSpendingByCategory: const {},
          ),
          budgets: const [],
          goals: const [],
          loans: const [],
          transactions: const [],
          rangeLabel: 'Sep 1 – Sep 4',
          generatedAt: DateTime(2026, 9, 4),
          currencyCode: 'USD',
          languageCode: 'en',
          ownerName: 'Alex Morgan',
        );

        final bytes = await PdfReportBuilder(
          report: empty,
          l10n: await _l10n('en'),
          money: const MoneyFormatter(symbol: r'$', locale: 'en'),
          dates: const DateFormatter('en'),
          assets: await ReportAssets.load(),
        ).build();

        expectRenderedPdf(bytes);
      },
    );

    test('the currency and language on the cover follow the report', () async {
      // The figures are formatted by the caller's MoneyFormatter, so a yen
      // report must come out with no decimal places.
      final bytes = await PdfReportBuilder(
        report: _report(language: 'en', currency: 'JPY'),
        l10n: await _l10n('en'),
        money: const MoneyFormatter(
          symbol: '¥',
          locale: 'en',
          decimalDigits: 0,
        ),
        dates: const DateFormatter('en'),
        assets: await ReportAssets.load(),
      ).build();

      expectRenderedPdf(bytes, minPages: 2);
    });
  });
}
