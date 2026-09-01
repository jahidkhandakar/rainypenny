/// Thresholds for "is this change worth telling the user about?".
abstract final class SpendingRules {
  /// Category spending must move by at least this much before it is reported.
  static const double notableCategoryChange = 0.15;

  /// Overall period spending change worth mentioning.
  static const double notableTotalChange = 0.03;

  /// Spending more than this share of income is flagged.
  static const double highSpendRatio = 0.90;

  static bool isNotableCategoryChange(double change) =>
      change.abs() >= notableCategoryChange;

  static bool isNotableTotalChange(double change) =>
      change.abs() >= notableTotalChange;
}
