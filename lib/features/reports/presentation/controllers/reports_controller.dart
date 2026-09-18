import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../financial/domain/entities/period_summary.dart';
import '../../../financial/domain/services/balance_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Everything the Reports screen renders, for the currently selected range.
class ReportData {
  const ReportData({
    required this.summary,
    required this.buckets,
    required this.range,
  });

  final PeriodSummary summary;
  final List<PeriodTotal> buckets;
  final DateRange range;
}

final reportDataProvider = FutureProvider<ReportData>((ref) async {
  final range = ref.watch(reportDateRangeProvider);
  final summary = await ref.watch(periodSummaryProvider(range).future);
  final transactions = await ref.watch(transactionsProvider.future);

  final inRange = BalanceCalculator.inRange(
    transactions,
    range.start,
    range.end,
  );
  final daily = BalanceCalculator.dailyTotals(inRange, range.start, range.end);

  // A bar per day for a week or less, otherwise six columns however long the
  // window is. A custom range can be any length at all, so this has to cope
  // with two days as readily as with a year.
  final bucketCount = range.days <= 7 ? range.days : 6;

  return ReportData(
    summary: summary,
    buckets: BalanceCalculator.bucketed(daily, bucketCount),
    range: range,
  );
});
