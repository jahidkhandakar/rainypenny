import '../entities/budget.dart';

/// Thresholds that decide when a budget stops being comfortable.
///
/// Keeping them here (rather than inline in widgets) means the same numbers
/// drive the progress-bar colour, the warning banner and the notification.
abstract final class BudgetRules {
  /// At or above this ratio a budget is "approaching" its limit.
  static const double approachingThreshold = 0.70;

  /// At or above this ratio a budget is treated as critical.
  static const double criticalThreshold = 0.90;

  static BudgetStatus statusFor(double ratio) {
    if (ratio >= criticalThreshold) return BudgetStatus.exceeded;
    if (ratio >= approachingThreshold) return BudgetStatus.approaching;
    return BudgetStatus.onTrack;
  }

  static BudgetStatus statusOf(Budget budget) => statusFor(budget.ratio);

  /// Budgets worth surfacing as a warning on the dashboard.
  static bool shouldWarn(Budget budget) =>
      statusOf(budget) != BudgetStatus.onTrack;
}
