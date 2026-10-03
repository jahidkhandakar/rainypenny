import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lavio/core/di/providers.dart';
import 'package:lavio/core/settings/settings_store.dart';
import 'package:lavio/features/financial/data/datasources/mock_finance_data_source.dart';
import 'package:lavio/features/financial/presentation/providers/finance_providers.dart';

/// Everything on the dashboard reports on one period.
///
/// It did not, for a while: the spending donut followed the period selector
/// while the budget bars stayed on the salary cycle, so the same category
/// showed two figures on one screen — housing at 1,850 above and 950 below.
/// These tests are what stops that returning, whichever period the app
/// eventually settles on.
void main() {
  ProviderContainer container() {
    final c = ProviderContainer(
      overrides: [
        settingsStoreProvider.overrideWithValue(InMemorySettingsStore()),
        financeDataSourceProvider.overrideWithValue(MockFinanceDataSource(latency: Duration.zero)),
      ],
    );
    addTearDown(c.dispose);
    return c;
  }

  /// What the budget bars measure against, per category.
  Future<Map<String, double>> budgetSpend(ProviderContainer c) async {
    final budgets = await c.read(budgetsProvider.future);
    return {for (final b in budgets) b.category.id: b.spent};
  }

  /// What the spending donut draws, per category.
  Future<Map<String, double>> donutSpend(ProviderContainer c) async {
    final summary = await c.read(periodSummaryProvider(c.read(dashboardRangeProvider)).future);
    return {for (final e in summary.spendingByCategory.entries) e.key.id: e.value};
  }

  for (final tab in DashboardPeriodTab.values) {
    // `custom` has no range until the user picks one, so it resolves to the
    // default and is covered by the others.
    if (tab == DashboardPeriodTab.custom) continue;

    test('budgets and the spending chart agree on ${tab.name}', () async {
      final c = container();
      c.read(dashboardTabProvider.notifier).select(tab);

      final budgets = await budgetSpend(c);
      final donut = await donutSpend(c);

      for (final entry in budgets.entries) {
        expect(
          entry.value,
          closeTo(donut[entry.key] ?? 0, 0.001),
          reason:
              '${entry.key}: budget bar says ${entry.value}, '
              'the chart says ${donut[entry.key] ?? 0}',
        );
      }
    });
  }

  test('changing the period moves the budget figures with it', () async {
    final c = container();

    c.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.today);
    final today = await budgetSpend(c);

    c.read(dashboardTabProvider.notifier).select(DashboardPeriodTab.thirtyDays);
    final month = await budgetSpend(c);

    // A month contains a day, so no category can have spent less over the
    // longer window — and with the seeded ledger at least one has spent more.
    for (final id in month.keys) {
      expect(month[id]! + 0.001, greaterThanOrEqualTo(today[id] ?? 0));
    }
    expect(
      month.values.fold<double>(0, (a, b) => a + b),
      greaterThan(today.values.fold<double>(0, (a, b) => a + b)),
    );
  });
}
