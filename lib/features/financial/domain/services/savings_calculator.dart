import '../entities/savings_goal.dart';

abstract final class SavingsCalculator {
  static double totalSaved(List<SavingsGoal> goals) =>
      goals.fold(0.0, (sum, g) => sum + g.saved);

  static double totalTarget(List<SavingsGoal> goals) =>
      goals.fold(0.0, (sum, g) => sum + g.target);

  static double overallProgress(List<SavingsGoal> goals) {
    final target = totalTarget(goals);
    return target <= 0 ? 0 : (totalSaved(goals) / target).clamp(0.0, 1.0);
  }

  static double monthlyCommitment(List<SavingsGoal> goals) =>
      goals.fold(0.0, (sum, g) => sum + g.monthlyContribution);

  /// The goal to feature on the dashboard: the open goal closest to done.
  static SavingsGoal? featured(List<SavingsGoal> goals) {
    if (goals.isEmpty) return null;
    final open = goals.where((g) => !g.isComplete).toList()
      ..sort((a, b) => b.progress.compareTo(a.progress));
    return open.isEmpty ? goals.first : open.first;
  }

  /// Amount kept from income over the period.
  static double savedThisPeriod(double income, double expenses) =>
      income - expenses;
}
