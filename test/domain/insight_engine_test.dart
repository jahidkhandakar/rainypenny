import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/financial/data/demo_dataset.dart';
import 'package:rainypenny/features/financial/domain/entities/financial_health.dart';
import 'package:rainypenny/features/financial/domain/entities/insight.dart';
import 'package:rainypenny/features/financial/domain/entities/period_summary.dart';
import 'package:rainypenny/features/financial/domain/entities/salary_cycle.dart';
import 'package:rainypenny/features/financial/domain/services/balance_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/health_calculator.dart';
import 'package:rainypenny/features/financial/domain/services/insight_engine.dart';

PeriodSummary _summary() {
  // Scoped to the salary cycle, which is the period the app reports on. A
  // trailing thirty-day window now straddles two cycles and would pull in part
  // of the previous month's spending alongside this one's.
  final cycle = SalaryCycle.current(1);
  final inPeriod = BalanceCalculator.inRange(
    DemoDataset.transactionsFor(),
    cycle.start,
    cycle.end,
  );

  return PeriodSummary(
    start: cycle.start,
    end: cycle.end,
    income: BalanceCalculator.totalIncome(inPeriod),
    expenses: BalanceCalculator.totalExpenses(inPeriod),
    balance: DemoDataset.totalBalance,
    previousIncome: DemoDataset.previousIncome,
    previousExpenses: DemoDataset.previousExpenses,
    previousBalance: DemoDataset.previousBalance,
    spendingByCategory: BalanceCalculator.spendingByCategory(inPeriod),
    previousSpendingByCategory: DemoDataset.previousSpendingByCategory,
  );
}

void main() {
  final summary = _summary();
  final budgets = DemoDataset.budgets;
  final loans = DemoDataset.loans;
  final goals = DemoDataset.savingsGoals;
  final now = DateTime.now();

  group('InsightEngine', () {
    final insights = InsightEngine.generate(
      summary: summary,
      budgets: budgets,
      goals: goals,
      loans: loans,
      now: now,
    );

    test('produces insights across several topics', () {
      expect(insights, isNotEmpty);
      expect(insights.map((i) => i.topic).toSet().length, greaterThan(1));
    });

    test('the most severe insight comes first', () {
      for (var i = 1; i < insights.length; i++) {
        expect(insights[i].level.index <= insights[i - 1].level.index, isTrue);
      }
      expect(InsightEngine.headline(insights), insights.first);
    });

    test('flags the exceeded budget as critical, with the overspend', () {
      final exceeded = budgets.firstWhere((b) => b.isExceeded);
      final match = insights.firstWhere(
        (i) => i.id == 'budget-exceeded-${exceeded.id}',
      );
      expect(match.code, InsightCode.budgetExceeded);
      expect(match.level, InsightLevel.critical);
      expect(match.topic, InsightTopic.budget);
      expect(match.subject, exceeded.category.name);
      expect(match.amount, closeTo(exceeded.spent - exceeded.limit, 0.001));
    });

    test('reports the category that rose most against the previous period', () {
      final rise = insights.firstWhere((i) => i.id == 'spending-category-rise');
      // Food is seeded at 742.00 against 628.80 — an 18% increase.
      expect(rise.code, InsightCode.categorySpendingUp);
      expect(rise.subject, 'Food & Dining');
      expect(rise.percent, 18);
    });

    test('carries raw numbers, never formatted prose', () {
      for (final insight in insights) {
        expect(insight.subject, isNot(contains(r'$')));
      }
    });

    test('celebrates a strong savings rate', () {
      expect(insights.any((i) => i.id == 'savings-rate-strong'), isTrue);
    });

    test('raises the credit card payment that is nine days out', () {
      expect(insights.any((i) => i.id == 'debt-due-loan-card'), isTrue);
      expect(insights.any((i) => i.id == 'debt-due-loan-car'), isFalse);
    });

    test('every emitted code is one the presenter can render', () {
      for (final insight in insights) {
        expect(InsightCode.values, contains(insight.code));
      }
    });
  });

  group('HealthCalculator', () {
    final health = HealthCalculator.evaluate(
      summary: summary,
      budgets: budgets,
      loans: loans,
    );

    test('scores inside 0-100 with all four factors explained', () {
      expect(health.score, inInclusiveRange(0, 100));
      expect(health.factors.length, 4);
      // Each factor names which of the four it is and carries the raw figure
      // behind it, so the presentation layer can word it in any language. The
      // calculator used to emit English prose here, which is why the health
      // card stayed in English in all forty locales.
      expect(
        health.factors.map((f) => f.kind).toSet(),
        HealthFactorKind.values.toSet(),
      );
      for (final factor in health.factors) {
        expect(factor.score, inInclusiveRange(0, 100));
        expect(factor.value, isA<double>());
        expect(factor.weight, greaterThan(0));
      }
      // The weights are what the score is actually blended from, so they have
      // to add up to exactly one.
      expect(
        health.factors.fold(0.0, (sum, f) => sum + f.weight),
        closeTo(1.0, 0.0001),
      );
    });

    test('the seeded picture lands in a healthy band', () {
      expect(health.band, anyOf(HealthBand.good, HealthBand.excellent));
    });

    test('band boundaries', () {
      expect(HealthCalculator.bandFor(90), HealthBand.excellent);
      expect(HealthCalculator.bandFor(70), HealthBand.good);
      expect(HealthCalculator.bandFor(60), HealthBand.fair);
      expect(HealthCalculator.bandFor(20), HealthBand.needsWork);
    });
  });
}
