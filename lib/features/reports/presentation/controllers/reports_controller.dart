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

  // Roughly a bar per day for a week, per five days for a month, per fortnight
  // for a quarter — always six or seven readable columns.
  final bucketCount = range.days <= 7 ? range.days : (range.days <= 31 ? 6 : 6);

  return ReportData(
    summary: summary,
    buckets: BalanceCalculator.bucketed(daily, bucketCount),
    range: range,
  );
});
