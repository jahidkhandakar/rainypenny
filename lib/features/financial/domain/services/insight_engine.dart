import '../entities/budget.dart';
import '../entities/insight.dart';
import '../entities/loan.dart';
import '../entities/period_summary.dart';
import '../entities/savings_goal.dart';
import '../rules/budget_rules.dart';
import '../rules/debt_rules.dart';
import '../rules/savings_rules.dart';
import '../rules/spending_rules.dart';
import 'budget_calculator.dart';
import 'savings_calculator.dart';

/// Applies the domain rules to the current figures and emits observations.
///
/// The engine deliberately returns plain [Insight] objects rather than strings
/// baked into widgets: the same output feeds the dashboard card, the reports
/// screen, the notification centre and — later — push notifications.
abstract final class InsightEngine {
  static List<Insight> generate({
    required PeriodSummary summary,
    required List<Budget> budgets,
    required List<SavingsGoal> goals,
    required List<Loan> loans,
    required DateTime now,
    String currencySymbol = '\$',
  }) {
    final insights = <Insight>[
      ..._budgetInsights(budgets, currencySymbol),
      ..._spendingInsights(summary),
      ..._savingsInsights(summary, goals, currencySymbol),
      ..._debtInsights(loans, now, currencySymbol),
    ];

    insights.sort((a, b) => b.level.index.compareTo(a.level.index));
    return insights;
  }

  /// The single insight to feature on the dashboard: the most urgent one.
  static Insight? headline(List<Insight> insights) =>
      insights.isEmpty ? null : insights.first;

  static List<Insight> _budgetInsights(
    List<Budget> budgets,
    String symbol,
  ) {
    final flagged = BudgetCalculator.needingAttention(budgets);
    return flagged.take(2).map((budget) {
      final name = budget.category.name;
      if (budget.isExceeded) {
        final over = (budget.spent - budget.limit).toStringAsFixed(0);
        return Insight(
          id: 'budget-exceeded-${budget.id}',
          title: '$name budget exceeded',
          message:
              'You are $symbol$over over your $name budget for this period.',
          level: InsightLevel.critical,
          topic: InsightTopic.budget,
        );
      }
      return Insight(
        id: 'budget-approaching-${budget.id}',
        title: '$name is close to its limit',
        message:
            'Your $name budget is ${budget.percentUsed}% used with '
            '$symbol${budget.remaining.toStringAsFixed(0)} left.',
        level: BudgetRules.statusOf(budget) == BudgetStatus.exceeded
            ? InsightLevel.critical
            : InsightLevel.warning,
        topic: InsightTopic.budget,
      );
    }).toList();
  }

  static List<Insight> _spendingInsights(PeriodSummary summary) {
    final insights = <Insight>[];

    if (summary.expenses > summary.income) {
      insights.add(
        const Insight(
          id: 'spending-over-income',
          title: 'Spending is above income',
          message:
              'You spent more than you earned this period. Review your largest '
              'categories to bring things back in line.',
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
          title: '${rise.name} spending is up',
          message:
              'Your ${rise.name} spending is ${(rise.change * 100).round()}% '
              'higher than the previous period.',
          level: InsightLevel.informative,
          topic: InsightTopic.spending,
        ),
      );
    }

    final totalChange = summary.expenseChange;
    if (SpendingRules.isNotableTotalChange(totalChange)) {
      final down = totalChange < 0;
      insights.add(
        Insight(
          id: 'spending-total-change',
          title: down ? 'Spending is trending down' : 'Spending is trending up',
          message:
              'Overall spending is ${(totalChange.abs() * 100).toStringAsFixed(1)}% '
              '${down ? 'lower' : 'higher'} than the previous period.',
          level: down ? InsightLevel.positive : InsightLevel.informative,
          topic: InsightTopic.spending,
        ),
      );
    }

    return insights;
  }

  static List<Insight> _savingsInsights(
    PeriodSummary summary,
    List<SavingsGoal> goals,
    String symbol,
  ) {
    final insights = <Insight>[];
    final rate = summary.savingsRate;

    if (SavingsRules.isStrong(rate)) {
      insights.add(
        Insight(
          id: 'savings-rate-strong',
          title: 'Strong savings this period',
          message:
              'You kept ${(rate * 100).round()}% of your income — well above '
              'the ${(SavingsRules.targetSavingsRate * 100).round()}% target.',
          level: InsightLevel.positive,
          topic: InsightTopic.savings,
        ),
      );
    } else if (!SavingsRules.isOnTrack(rate)) {
      insights.add(
        Insight(
          id: 'savings-rate-low',
          title: 'Savings rate is below target',
          message:
              'You kept ${(rate * 100).round()}% of your income this period. '
              'Aim for ${(SavingsRules.targetSavingsRate * 100).round()}%.',
          level: InsightLevel.warning,
          topic: InsightTopic.savings,
        ),
      );
    }

    final featured = SavingsCalculator.featured(goals);
    if (featured != null &&
        featured.progress >= SavingsRules.nearlyThereProgress) {
      insights.add(
        Insight(
          id: 'savings-goal-close-${featured.id}',
          title: '${featured.name} is nearly funded',
          message:
              'Only $symbol${featured.remaining.toStringAsFixed(0)} left to '
              'reach ${featured.name}.',
          level: InsightLevel.positive,
          topic: InsightTopic.savings,
        ),
      );
    } else if (featured != null && featured.monthsRemaining != null) {
      insights.add(
        Insight(
          id: 'savings-goal-eta-${featured.id}',
          title: 'On track for ${featured.name}',
          message:
              'At $symbol${featured.monthlyContribution.toStringAsFixed(0)} a '
              'month you will reach this goal in '
              '${featured.monthsRemaining} months.',
          level: InsightLevel.informative,
          topic: InsightTopic.savings,
        ),
      );
    }

    return insights;
  }

  static List<Insight> _debtInsights(
    List<Loan> loans,
    DateTime now,
    String symbol,
  ) {
    final insights = <Insight>[];

    for (final loan in loans) {
      final days = loan.daysUntilPayment(now);
      if (DebtRules.isOverdue(days)) {
        insights.add(
          Insight(
            id: 'debt-overdue-${loan.id}',
            title: '${loan.name} payment overdue',
            message:
                'The ${loan.name} payment of '
                '$symbol${loan.monthlyPayment.toStringAsFixed(0)} is '
                '${days.abs()} days overdue.',
            level: InsightLevel.critical,
            topic: InsightTopic.debt,
          ),
        );
      } else if (DebtRules.isDueSoon(days)) {
        insights.add(
          Insight(
            id: 'debt-due-${loan.id}',
            title: '${loan.name} payment coming up',
            message:
                '$symbol${loan.monthlyPayment.toStringAsFixed(0)} is due in '
                '$days days.',
            level: DebtRules.isUrgent(days)
                ? InsightLevel.warning
                : InsightLevel.informative,
            topic: InsightTopic.debt,
          ),
        );
      }
    }

    return insights;
  }
}
