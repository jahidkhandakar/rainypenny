import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/utils/formatters.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../domain/entities/financial_report.dart';

/// The brand palette, restated in PDF colours.
///
/// A separate declaration from `AppColors` on purpose: `PdfColor` is not a
/// Flutter `Color`, and pinning the hex values here keeps the document
/// renderable from a pure-Dart context with no widget binding.
abstract final class _Brand {
  static const primary = PdfColor.fromInt(0xFF02B3AA);
  static const primaryDark = PdfColor.fromInt(0xFF018B84);
  static const secondary = PdfColor.fromInt(0xFF243570);
  static const ink = PdfColor.fromInt(0xFF1A2036);
  static const muted = PdfColor.fromInt(0xFF6B7488);
  static const border = PdfColor.fromInt(0xFFE2E7EF);
  static const tint = PdfColor.fromInt(0xFFF5F7FA);
  static const white = PdfColor.fromInt(0xFFFFFFFF);
  static const error = PdfColor.fromInt(0xFFD95C5C);
}

/// The fonts and artwork the document needs, loaded once.
///
/// Loading a TrueType face is measured in tens of milliseconds and the bytes
/// are a couple of megabytes, so a user exporting three reports in a row should
/// pay for it once, not three times.
class ReportAssets {
  ReportAssets._({
    required this.base,
    required this.bold,
    required this.arabic,
    required this.arabicBold,
    required this.devanagari,
    required this.devanagariBold,
    required this.logoSvg,
  });

  final pw.Font base;
  final pw.Font bold;
  final pw.Font arabic;
  final pw.Font arabicBold;
  final pw.Font devanagari;
  final pw.Font devanagariBold;
  final String logoSvg;

  static ReportAssets? _cached;

  static Future<ReportAssets> load() async {
    if (_cached != null) return _cached!;

    Future<pw.Font> font(String name) async =>
        pw.Font.ttf(await rootBundle.load('assets/fonts/$name'));

    _cached = ReportAssets._(
      base: await font('NotoSans-Regular.ttf'),
      bold: await font('NotoSans-Bold.ttf'),
      arabic: await font('NotoSansArabic-Regular.ttf'),
      arabicBold: await font('NotoSansArabic-Bold.ttf'),
      devanagari: await font('NotoSansDevanagari-Regular.ttf'),
      devanagariBold: await font('NotoSansDevanagari-Bold.ttf'),
      logoSvg: await rootBundle.loadString('assets/logo/logo_mark.svg'),
    );
    return _cached!;
  }

  /// The face that can actually draw this language, with the others behind it
  /// as fallbacks so a mixed-script report never renders a row of tofu.
  ({pw.Font base, pw.Font bold, List<pw.Font> fallback}) forLanguage(
    String languageCode,
  ) {
    return switch (languageCode) {
      'ar' || 'ur' => (
        base: arabic,
        bold: arabicBold,
        fallback: [base, bold, devanagari],
      ),
      'hi' => (
        base: devanagari,
        bold: devanagariBold,
        fallback: [base, bold, arabic],
      ),
      _ => (base: base, bold: bold, fallback: [arabic, devanagari]),
    };
  }
}

/// Builds the shareable financial report.
///
/// The layout is deliberately conservative — cover block, summary table, then
/// one section per area of the user's finances. It is meant to survive being
/// forwarded to an accountant or a lender, so it carries the branding, the
/// period, the currency and the language it was produced in, and it reads the
/// same in Arabic as it does in English.
class PdfReportBuilder {
  const PdfReportBuilder({
    required this.report,
    required this.l10n,
    required this.money,
    required this.dates,
    required this.assets,
  });

  final FinancialReport report;
  final AppL10n l10n;
  final MoneyFormatter money;
  final DateFormatter dates;
  final ReportAssets assets;

  /// Arabic and Urdu lay the whole document out right to left, headers,
  /// tables and all.
  static const _rtlLanguages = {'ar', 'ur', 'fa', 'he'};

  bool get _isRtl => _rtlLanguages.contains(report.languageCode);

  pw.TextDirection get _direction =>
      _isRtl ? pw.TextDirection.rtl : pw.TextDirection.ltr;

  /// The transactions table would run to hundreds of rows on a quarterly
  /// report; the most recent are the ones anyone actually reads.
  static const _maxTransactionRows = 40;

  Future<Uint8List> build() async {
    final faces = assets.forLanguage(report.languageCode);

    final document = pw.Document(
      title: '${l10n.appName} — ${l10n.financialReport}',
      author: l10n.appName,
      creator: l10n.appName,
      subject: report.rangeLabel,
      theme: pw.ThemeData.withFont(
        base: faces.base,
        bold: faces.bold,
        fontFallback: faces.fallback,
      ),
    );

    document.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        textDirection: _direction,
        margin: const pw.EdgeInsets.fromLTRB(36, 36, 36, 48),
        header: (context) =>
            context.pageNumber == 1 ? pw.SizedBox() : _runningHeader(),
        footer: _footer,
        // Flat rather than nested: a `MultiPage` can only break between the
        // widgets in this list and inside a `Table`, so wrapping a long table
        // in a Column with its heading makes the whole section unsplittable
        // and throws `TooManyPagesException` on a busy month.
        build: (context) => [
          _cover(),
          pw.SizedBox(height: 22),
          ..._summarySection(),
          if (report.summary.spendingByCategory.isNotEmpty)
            ..._categorySection(),
          if (report.budgets.isNotEmpty) ..._budgetSection(),
          if (report.goals.isNotEmpty) ..._savingsSection(),
          if (report.loans.isNotEmpty) ..._loansSection(),
          if (report.transactions.isNotEmpty) ..._transactionsSection(),
        ],
      ),
    );

    return document.save();
  }

  // ---------------------------------------------------------------------------
  // Cover and chrome
  // ---------------------------------------------------------------------------

  pw.Widget _cover() {
    return pw.Container(
      width: double.infinity,
      padding: const pw.EdgeInsets.all(24),
      decoration: const pw.BoxDecoration(
        color: _Brand.primaryDark,
        borderRadius: pw.BorderRadius.all(pw.Radius.circular(14)),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Container(
                width: 42,
                height: 42,
                padding: const pw.EdgeInsets.all(6),
                decoration: const pw.BoxDecoration(
                  color: _Brand.white,
                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(11)),
                ),
                child: pw.SvgImage(svg: assets.logoSvg),
              ),
              pw.SizedBox(width: 12),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    l10n.appName,
                    style: pw.TextStyle(
                      fontSize: 20,
                      fontWeight: pw.FontWeight.bold,
                      color: _Brand.white,
                    ),
                  ),
                  pw.Text(
                    l10n.appTagline,
                    style: const pw.TextStyle(
                      fontSize: 9,
                      color: PdfColor.fromInt(0xFFB9E8E5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          pw.SizedBox(height: 24),
          pw.Text(
            l10n.financialReport,
            style: pw.TextStyle(
              fontSize: 26,
              fontWeight: pw.FontWeight.bold,
              color: _Brand.white,
            ),
          ),
          pw.SizedBox(height: 4),
          pw.Text(
            report.rangeLabel,
            style: const pw.TextStyle(
              fontSize: 12,
              color: PdfColor.fromInt(0xFFD5F0EE),
            ),
          ),
          pw.SizedBox(height: 18),
          pw.Divider(color: PdfColor.fromInt(0x33FFFFFF), height: 1),
          pw.SizedBox(height: 12),
          pw.Row(
            children: [
              _coverMeta(l10n.preparedFor, report.ownerName),
              _coverMeta(l10n.currency, report.currencyCode),
              _coverMeta(l10n.language, report.languageCode.toUpperCase()),
              _coverMeta(l10n.generatedOn, dates.long(report.generatedAt)),
            ],
          ),
        ],
      ),
    );
  }

  pw.Widget _coverMeta(String label, String value) {
    return pw.Expanded(
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            label.toUpperCase(),
            style: const pw.TextStyle(
              fontSize: 6.5,
              color: PdfColor.fromInt(0xFF9FDCD8),
            ),
          ),
          pw.SizedBox(height: 3),
          pw.Text(
            value,
            style: pw.TextStyle(
              fontSize: 9,
              fontWeight: pw.FontWeight.bold,
              color: _Brand.white,
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _runningHeader() {
    return pw.Container(
      margin: const pw.EdgeInsets.only(bottom: 14),
      padding: const pw.EdgeInsets.only(bottom: 8),
      decoration: const pw.BoxDecoration(
        border: pw.Border(bottom: pw.BorderSide(color: _Brand.border)),
      ),
      child: pw.Row(
        children: [
          pw.Container(
            width: 16,
            height: 16,
            child: pw.SvgImage(svg: assets.logoSvg),
          ),
          pw.SizedBox(width: 7),
          pw.Text(
            l10n.appName,
            style: pw.TextStyle(
              fontSize: 10,
              fontWeight: pw.FontWeight.bold,
              color: _Brand.primaryDark,
            ),
          ),
          pw.Spacer(),
          pw.Text(
            report.rangeLabel,
            style: const pw.TextStyle(fontSize: 8.5, color: _Brand.muted),
          ),
        ],
      ),
    );
  }

  pw.Widget _footer(pw.Context context) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 12),
      padding: const pw.EdgeInsets.only(top: 7),
      decoration: const pw.BoxDecoration(
        border: pw.Border(top: pw.BorderSide(color: _Brand.border)),
      ),
      child: pw.Row(
        children: [
          pw.Text(
            l10n.reportDisclaimer,
            style: const pw.TextStyle(fontSize: 7, color: _Brand.muted),
          ),
          pw.Spacer(),
          pw.Text(
            l10n.pageOf(context.pageNumber, context.pagesCount),
            style: const pw.TextStyle(fontSize: 7.5, color: _Brand.muted),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Sections
  // ---------------------------------------------------------------------------

  pw.Widget _sectionTitle(String title) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(top: 20, bottom: 8),
      child: pw.Row(
        children: [
          pw.Container(width: 3, height: 13, color: _Brand.primary),
          pw.SizedBox(width: 7),
          pw.Text(
            title,
            style: pw.TextStyle(
              fontSize: 13,
              fontWeight: pw.FontWeight.bold,
              color: _Brand.ink,
            ),
          ),
        ],
      ),
    );
  }

  List<pw.Widget> _summarySection() {
    final summary = report.summary;

    return [
      _sectionTitle(l10n.overview),
      pw.Row(
        children: [
          _statTile(l10n.income, money.format(summary.income), _Brand.primary),
          pw.SizedBox(width: 8),
          _statTile(
            l10n.expenses,
            money.format(summary.expenses),
            _Brand.secondary,
          ),
          pw.SizedBox(width: 8),
          _statTile(
            l10n.netBalance,
            money.formatSigned(summary.net),
            summary.net >= 0 ? _Brand.primaryDark : _Brand.error,
          ),
          pw.SizedBox(width: 8),
          _statTile(
            l10n.savingsRate,
            '${(summary.savingsRate * 100).round()}%',
            _Brand.ink,
          ),
        ],
      ),
      pw.SizedBox(height: 10),
      _table(
        headers: [l10n.description, l10n.amount],
        rows: [
          [l10n.totalIncome, money.format(summary.income)],
          [l10n.totalExpenses, money.format(summary.expenses)],
          [l10n.netBalance, money.formatSigned(summary.net)],
          [l10n.totalBalance, money.format(summary.balance)],
          if (report.budgets.isNotEmpty)
            [l10n.totalBudget, money.format(report.totalBudgeted)],
          if (report.goals.isNotEmpty)
            [l10n.totalSaved, money.format(report.totalSaved)],
          if (report.loans.isNotEmpty)
            [l10n.totalOutstanding, money.format(report.totalOwed)],
        ],
        alignRightLast: true,
      ),
    ];
  }

  pw.Widget _statTile(String label, String value, PdfColor color) {
    return pw.Expanded(
      child: pw.Container(
        padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        decoration: pw.BoxDecoration(
          color: _Brand.tint,
          borderRadius: const pw.BorderRadius.all(pw.Radius.circular(7)),
          border: pw.Border.all(color: _Brand.border),
        ),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              label.toUpperCase(),
              style: const pw.TextStyle(fontSize: 6.5, color: _Brand.muted),
            ),
            pw.SizedBox(height: 3),
            pw.Text(
              value,
              style: pw.TextStyle(
                fontSize: 11,
                fontWeight: pw.FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<pw.Widget> _categorySection() {
    final entries = report.summary.spendingByCategory.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final total = entries.fold(0.0, (sum, e) => sum + e.value);

    return [
      _sectionTitle(l10n.spendingByCategory),
      _table(
        headers: [l10n.category, l10n.amount, l10n.shareOfTotal],
        rows: [
          for (final entry in entries)
            [
              entry.key.name,
              money.format(entry.value),
              total <= 0 ? '0%' : '${(entry.value / total * 100).round()}%',
            ],
        ],
        alignRightLast: true,
      ),
    ];
  }

  List<pw.Widget> _budgetSection() {
    return [
      _sectionTitle(l10n.budgets),
      _table(
        headers: [
          l10n.category,
          l10n.budgetLimit,
          l10n.spent,
          l10n.remaining,
          l10n.used,
        ],
        rows: [
          for (final Budget budget in report.budgets)
            [
              budget.category.name,
              money.format(budget.limit),
              money.format(budget.spent),
              money.format(budget.remaining),
              '${budget.percentUsed}%',
            ],
        ],
        // An overspent budget is the one line a reader must not miss.
        highlightRow: (index) => report.budgets[index].isExceeded,
        alignRightLast: true,
      ),
    ];
  }

  List<pw.Widget> _savingsSection() {
    return [
      _sectionTitle(l10n.savingsGoals),
      _table(
        headers: [
          l10n.goal,
          l10n.saved,
          l10n.target,
          l10n.targetDate,
          l10n.progress,
        ],
        rows: [
          for (final SavingsGoal goal in report.goals)
            [
              goal.name,
              money.format(goal.saved),
              money.format(goal.target),
              dates.long(goal.targetDate),
              '${goal.percentComplete}%',
            ],
        ],
        alignRightLast: true,
      ),
    ];
  }

  List<pw.Widget> _loansSection() {
    return [
      _sectionTitle(l10n.loansAndDebts),
      _table(
        headers: [
          l10n.debtName,
          l10n.remainingBalance,
          l10n.installmentAmount,
          l10n.remainingInstallments,
          l10n.nextPayment,
          l10n.paidOffShort,
        ],
        rows: [
          for (final Loan loan in report.loans)
            [
              loan.name,
              money.format(loan.remaining),
              money.format(loan.installmentAmount),
              loan.hasSchedule
                  ? '${loan.remainingInstallments}/${loan.totalInstallments}'
                  : '—',
              dates.short(loan.nextPaymentDate),
              '${loan.percentPaid}%',
            ],
        ],
        alignRightLast: true,
      ),
    ];
  }

  List<pw.Widget> _transactionsSection() {
    final rows = report.transactions.take(_maxTransactionRows).toList();
    final omitted = report.transactions.length - rows.length;

    return [
      _sectionTitle(l10n.transactions),
      _table(
        headers: [l10n.date, l10n.description, l10n.category, l10n.amount],
        rows: [
          for (final tx in rows)
            [
              dates.short(tx.date),
              tx.title,
              tx.category.name,
              money.formatSigned(tx.signedAmount),
            ],
        ],
        alignRightLast: true,
      ),
      if (omitted > 0)
        pw.Padding(
          padding: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            l10n.andMoreTransactions(omitted),
            style: const pw.TextStyle(fontSize: 7.5, color: _Brand.muted),
          ),
        ),
    ];
  }

  // ---------------------------------------------------------------------------
  // Table primitive
  // ---------------------------------------------------------------------------

  /// One table style for the whole document.
  ///
  /// [alignRightLast] pulls the trailing figure to the outer edge of the row.
  /// The pdf package has no directional alignment, so the sides are resolved
  /// here against the document's own direction: text starts on the right and
  /// the figure column sits on the left in Arabic, and the other way round in
  /// English.
  pw.Widget _table({
    required List<String> headers,
    required List<List<String>> rows,
    bool Function(int index)? highlightRow,
    bool alignRightLast = false,
  }) {
    final startAlign = _isRtl
        ? pw.Alignment.centerRight
        : pw.Alignment.centerLeft;
    final endAlign = _isRtl
        ? pw.Alignment.centerLeft
        : pw.Alignment.centerRight;
    final startText = _isRtl ? pw.TextAlign.right : pw.TextAlign.left;
    final endText = _isRtl ? pw.TextAlign.left : pw.TextAlign.right;

    pw.Widget cell(
      String text, {
      required bool header,
      required bool last,
      bool highlight = false,
    }) {
      final trailing = alignRightLast && last;

      return pw.Container(
        padding: const pw.EdgeInsets.symmetric(horizontal: 7, vertical: 5.5),
        alignment: trailing ? endAlign : startAlign,
        child: pw.Text(
          text,
          textAlign: trailing ? endText : startText,
          style: pw.TextStyle(
            fontSize: header ? 7.5 : 8.5,
            fontWeight: header || highlight
                ? pw.FontWeight.bold
                : pw.FontWeight.normal,
            color: header
                ? _Brand.muted
                : highlight
                ? _Brand.error
                : _Brand.ink,
          ),
        ),
      );
    }

    return pw.Table(
      border: pw.TableBorder.symmetric(
        inside: const pw.BorderSide(color: _Brand.border, width: 0.5),
      ),
      columnWidths: {
        0: const pw.FlexColumnWidth(2.2),
        for (var i = 1; i < headers.length; i++)
          i: const pw.FlexColumnWidth(1.4),
      },
      children: [
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: _Brand.tint),
          children: [
            for (var i = 0; i < headers.length; i++)
              cell(headers[i], header: true, last: i == headers.length - 1),
          ],
        ),
        for (var r = 0; r < rows.length; r++)
          pw.TableRow(
            children: [
              for (var c = 0; c < rows[r].length; c++)
                cell(
                  rows[r][c],
                  header: false,
                  last: c == rows[r].length - 1,
                  highlight: highlightRow?.call(r) ?? false,
                ),
            ],
          ),
      ],
    );
  }
}
