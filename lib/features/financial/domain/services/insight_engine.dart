import '../entities/budget.dart';
import '../entities/insight.dart';
import '../entities/loan.dart';
import '../entities/period_summary.dart';
import '../entities/savings_goal.dart';
import '../rules/debt_rules.dart';
import '../rules/savings_rules.dart';
import '../rules/spending_rules.dart';
import 'budget_calculator.dart';
import 'savings_calculator.dart';

/// Applies the domain rules to the current figures and emits observations.
///
/// The engine returns structured [Insight] objects — a code plus the numbers
/// behind it — never formatted prose. The dashboard, the reports list, the
/// notification centre and push notifications all render the same objects
/// through their own localisation, so wording stays consistent in every
/// language.
abstract final class InsightEngine {
  static List<Insight> generate({
    required PeriodSummary summary,
    required List<Budget> budgets,
    required List<SavingsGoal> goals,
    required List<Loan> loans,
    required DateTime now,
  }) {
    final insights = <Insight>[
      ..._budgetInsights(budgets),
      ..._spendingInsights(summary),
      ..._savingsInsights(summary, goals),
      ..._debtInsights(loans, now),
    ];

    insights.sort((a, b) => b.level.index.compareTo(a.level.index));
    return insights;
  }

  /// The single insight to feature on the dashboard: the most urgent one.
  static Insight? headline(List<Insight> insights) =>
      insights.isEmpty ? null : insights.first;

  static List<Insight> _budgetInsights(List<Budget> budgets) {
    return BudgetCalculator.needingAttention(budgets).take(2).map((budget) {
      if (budget.isExceeded) {
        return Insight(
          id: 'budget-exceeded-${budget.id}',
          code: InsightCode.budgetExceeded,
          level: InsightLevel.critical,
          topic: InsightTopic.budget,
          subject: budget.category.name,
          amount: budget.spent - budget.limit,
          percent: budget.percentUsed,
        );
      }
      return Insight(
        id: 'budget-approaching-${budget.id}',
        code: InsightCode.budgetApproaching,
        level: InsightLevel.warning,
        topic: InsightTopic.budget,
        subject: budget.category.name,
        amount: budget.remaining,
        percent: budget.percentUsed,
      );
    }).toList();
  }

  static List<Insight> _spendingInsights(PeriodSummary summary) {
    final insights = <Insight>[];

    if (summary.expenses > summary.income) {
      insights.add(
        const Insight(
          id: 'spending-over-income',
          code: InsightCode.spendingOverIncome,
          level: InsightLevel.critical,
          topic: InsightTopic.spending,
        ),
      );
    }

    // Biggest mover among categories, compared with the previous period.
    ({String name, double change})? biggestRise;
    summary.spendingByCategory.forEach((category, amount) {
      final previous = summary.previousSpendingByCategory[category] ?? 0;
      if (previous <= 0) return;
      final change = (amount - previous) / previous;
      if (!SpendingRules.isNotableCategoryChange(change) || change <= 0) return;
      if (biggestRise == null || change > biggestRise!.change) {
        biggestRise = (name: category.name, change: change);
      }
    });

    final rise = biggestRise;
    if (rise != null) {
      insights.add(
        Insight(
          id: 'spending-category-rise',
          code: InsightCode.categorySpendingUp,
          level: InsightLevel.informative,
          topic: InsightTopic.spending,
          subject: rise.name,
          percent: (rise.change * 100).round(),
        ),
      );
    }

    final totalChange = summary.expenseChange;
    if (SpendingRules.isNotableTotalChange(totalChange)) {
      final down = totalChange < 0;
      insights.add(
        Insight(
          id: 'spending-total-change',
          code: down
              ? InsightCode.spendingTrendDown
              : InsightCode.spendingTrendUp,
          level: down ? InsightLevel.positive : InsightLevel.informative,
          topic: InsightTopic.spending,
          percent: (totalChange.abs() * 100).round(),
        ),
      );
    }

    return insights;
  }

  static List<Insight> _savingsInsights(
    PeriodSummary summary,
    List<SavingsGoal> goals,
  ) {
    final insights = <Insight>[];
    final rate = summary.savingsRate;
    final target = (SavingsRules.targetSavingsRate * 100).round();

    if (SavingsRules.isStrong(rate)) {
      insights.add(
        Insight(
          id: 'savings-rate-strong',
          code: InsightCode.savingsRateStrong,
          level: InsightLevel.positive,
          topic: InsightTopic.savings,
          percent: (rate * 100).round(),
          targetPercent: target,
        ),
      );
    } else if (!SavingsRules.isOnTrack(rate)) {
      insights.add(
        Insight(
          id: 'savings-rate-low',
          code: InsightCode.savingsRateLow,
          level: InsightLevel.warning,
          topic: InsightTopic.savings,
          percent: (rate * 100).round(),
          targetPercent: target,
        ),
      );
    }

    final featured = SavingsCalculator.featured(goals);
    if (featured == null) return insights;

    if (featured.progress >= SavingsRules.nearlyThereProgress) {
      insights.add(
        Insight(
          id: 'savings-goal-close-${featured.id}',
          code: InsightCode.goalNearlyFunded,
          level: InsightLevel.positive,
          topic: InsightTopic.savings,
          subject: featured.name,
          amount: featured.remaining,
        ),
      );
    } else if (featured.monthsRemaining != null) {
      insights.add(
        Insight(
          id: 'savings-goal-eta-${featured.id}',
          code: InsightCode.goalOnTrack,
          level: InsightLevel.informative,
          topic: InsightTopic.savings,
          subject: featured.name,
          amount: featured.monthlyContribution,
          months: featured.monthsRemaining,
        ),
      );
    }

    return insights;
  }

  static List<Insight> _debtInsights(List<Loan> loans, DateTime now) {
    final insights = <Insight>[];

    for (final loan in loans) {
      final days = loan.daysUntilPayment(now);
      if (DebtRules.isOverdue(days)) {
        insights.add(
          Insight(
            id: 'debt-overdue-${loan.id}',
            code: InsightCode.debtOverdue,
            level: InsightLevel.critical,
            topic: InsightTopic.debt,
            subject: loan.name,
            amount: loan.monthlyPayment,
            days: days.abs(),
          ),
        );
      } else if (DebtRules.isDueSoon(days)) {
        insights.add(
          Insight(
            id: 'debt-due-${loan.id}',
            code: InsightCode.debtDueSoon,
            level: DebtRules.isUrgent(days)
                ? InsightLevel.warning
                : InsightLevel.informative,
            topic: InsightTopic.debt,
            subject: loan.name,
            amount: loan.monthlyPayment,
            days: days,
          ),
        );
      }
    }

    return insights;
  }
}
