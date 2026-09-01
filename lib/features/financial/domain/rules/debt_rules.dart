/// Rules governing when an upcoming debt payment becomes noteworthy.
abstract final class DebtRules {
  /// Days before the due date at which a reminder is raised.
  static const int reminderWindowDays = 10;

  /// Days before the due date at which the reminder becomes urgent.
  static const int urgentWindowDays = 3;

  static bool isDueSoon(int daysUntil) =>
      daysUntil >= 0 && daysUntil <= reminderWindowDays;

  static bool isUrgent(int daysUntil) =>
      daysUntil >= 0 && daysUntil <= urgentWindowDays;

  static bool isOverdue(int daysUntil) => daysUntil < 0;

  /// Debt-to-income ratio above which the overall picture is a concern.
  static const double concerningDebtToIncome = 0.40;
}
