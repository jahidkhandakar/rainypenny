import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../financial/domain/services/balance_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../data/services/pdf_report_builder.dart';
import '../../domain/entities/financial_report.dart';

/// Assembles the export from the same providers the Reports screen reads.
///
/// Deliberately not a snapshot of the widget tree: the PDF is built from the
/// domain data, so the exported figures are the calculated ones rather than
/// whatever happened to be painted at the time.
final financialReportProvider = FutureProvider<FinancialReport>((ref) async {
  final range = ref.watch(reportDateRangeProvider);

  final summary = await ref.watch(periodSummaryProvider(range).future);
  final transactions = await ref.watch(transactionsProvider.future);
  final budgets = await ref.watch(budgetsProvider.future);
  final goals = await ref.watch(savingsGoalsProvider.future);
  final loans = await ref.watch(loansProvider.future);
  final profile = await ref.watch(profileProvider.future);

  final dates = ref.watch(dateFormatterProvider);
  // Newest first: a reader scanning the appendix wants the recent entries,
  // and the table is capped before it runs to hundreds of rows.
  final inRange = BalanceCalculator.inRange(
    transactions,
    range.start,
    range.end,
  ).toList()..sort((a, b) => b.date.compareTo(a.date));

  return FinancialReport(
    summary: summary,
    budgets: budgets,
    goals: goals,
    loans: loans,
    transactions: inRange,
    rangeLabel: dates.range(range.start, range.end),
    generatedAt: DateTime.now(),
    currencyCode: ref.watch(currencyProvider).code,
    languageCode: ref.watch(localeProvider).languageCode,
    ownerName: profile.name,
  );
});

/// Produces and shares the PDF.
///
/// Building runs off the UI thread's critical path but not off the isolate:
/// the document needs the loaded fonts and the localisations, both of which are
/// bound to the root isolate. A quarterly report takes well under a second, so
/// a busy flag is enough to keep the button honest.
class ReportExportController {
  ReportExportController(this._ref);

  final Ref _ref;

  Future<Uint8List> buildPdf(AppL10n l10n) async {
    final report = await _ref.read(financialReportProvider.future);
    final assets = await ReportAssets.load();

    return PdfReportBuilder(
      report: report,
      l10n: l10n,
      money: _ref.read(moneyFormatterProvider),
      dates: _ref.read(dateFormatterProvider),
      assets: assets,
    ).build();
  }

  /// Hands the finished document to the platform share sheet.
  Future<void> share(AppL10n l10n) async {
    final bytes = await buildPdf(l10n);
    await Printing.sharePdf(bytes: bytes, filename: fileName(l10n));
  }

  /// Opens the system print/save dialog, which is also how a user saves the
  /// file to their device on both platforms.
  Future<void> printOrSave(AppL10n l10n) async {
    final bytes = await buildPdf(l10n);
    await Printing.layoutPdf(
      onLayout: (_) async => bytes,
      name: fileName(l10n),
    );
  }

  /// `RainyPenny-Report-2026-09-04.pdf` — sorts chronologically in a file
  /// listing and says what it is without being opened.
  @visibleForTesting
  String fileName(AppL10n l10n) {
    final now = DateTime.now();
    String two(int value) => value.toString().padLeft(2, '0');
    return 'RainyPenny-Report-${now.year}-${two(now.month)}-${two(now.day)}.pdf';
  }
}

final reportExportControllerProvider = Provider<ReportExportController>((ref) {
  return ReportExportController(ref);
});
