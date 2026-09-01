import '../entities/budget.dart';
import '../entities/financial_health.dart';
import '../entities/loan.dart';
import '../entities/period_summary.dart';
import '../rules/debt_rules.dart';
import '../rules/savings_rules.dart';
import 'budget_calculator.dart';
import 'debt_calculator.dart';

/// Turns the raw figures into a single 0-100 health score.
///
/// The score is a weighted blend of four factors so it can always be explained
/// back to the user rather than appearing as an arbitrary number.
abstract final class HealthCalculator {
  static const _savingsWeight = 0.35;
  static const _budgetWeight = 0.30;
  static const _debtWeight = 0.20;
  static const _trendWeight = 0.15;

  static FinancialHealth evaluate({
    required PeriodSummary summary,
    required List<Budget> budgets,
    required List<Loan> loans,
  }) {
    final savings = _savingsFactor(summary);
    final budget = _budgetFactor(budgets);
    final debt = _debtFactor(loans, summary.income);
    final trend = _trendFactor(summary);

    final score = (savings.score * _savingsWeight +
            budget.score * _budgetWeight +
            debt.score * _debtWeight +
            trend.score * _trendWeight)
        .round()
        .clamp(0, 100);

    return FinancialHealth(
      score: score,
      band: bandFor(score),
      factors: [savings, budget, debt, trend],
    );
  }

  static HealthBand bandFor(int score) {
    if (score >= 85) return HealthBand.excellent;
    if (score >= 70) return HealthBand.good;
    if (score >= 55) return HealthBand.fair;
    return HealthBand.needsWork;
  }

  static HealthFactor _savingsFactor(PeriodSummary summary) {
    final rate = summary.savingsRate;
    final score =
        ((rate / SavingsRules.strongSavingsRate) * 100).clamp(0.0, 100.0);
    return HealthFactor(
      label: 'Savings rate',
      detail: '${(rate * 100).round()}% kept',
      score: score.round(),
    );
  }

  static HealthFactor _budgetFactor(List<Budget> budgets) {
    final used = BudgetCalculator.overallProgress(budgets);
    // Spending up to 70% of the total budget is a clean 100; past that the
    // score falls away linearly, hitting zero at 100% used.
    final score = (used <= 0.70 ? 1.0 : (1 - (used - 0.70) / 0.30))
        .clamp(0.0, 1.0);
    return HealthFactor(
      label: 'Budget control',
      detail: '${(used * 100).round()}% used',
      score: (score * 100).round(),
    );
  }

  static HealthFactor _debtFactor(List<Loan> loans, double income) {
    final dti = DebtCalculator.debtToIncome(loans, income);
    final score =
        (1 - dti / DebtRules.concerningDebtToIncome).clamp(0.0, 1.0);
    return HealthFactor(
      label: 'Debt load',
      detail: '${(dti * 100).round()}% of income',
      score: (score * 100).round(),
    );
  }

  static HealthFactor _trendFactor(PeriodSummary summary) {
    final change = summary.expenseChange;
    // Flat spending sits at 50; every 1% swing moves the score by 5 points.
    final score = (50 - change * 500).clamp(0.0, 100.0);
    final direction = change <= 0 ? 'Down' : 'Up';
    return HealthFactor(
      label: 'Spending trend',
      detail: '$direction ${(change.abs() * 100).toStringAsFixed(1)}%',
      score: score.round(),
    );
  }
}
