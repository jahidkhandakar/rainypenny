/// Rules describing a healthy savings posture.
abstract final class SavingsRules {
  /// The share of income the user should aim to keep.
  static const double targetSavingsRate = 0.20;

  /// A savings rate at or above this is called out as excellent.
  static const double strongSavingsRate = 0.30;

  /// A goal past this completion point is worth celebrating.
  static const double nearlyThereProgress = 0.80;

  static bool isOnTrack(double savingsRate) => savingsRate >= targetSavingsRate;

  static bool isStrong(double savingsRate) => savingsRate >= strongSavingsRate;
}
