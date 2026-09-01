import 'category.dart';

/// A named savings target the user is putting money aside for.
class SavingsGoal {
  const SavingsGoal({
    required this.id,
    required this.name,
    required this.saved,
    required this.target,
    required this.icon,
    required this.targetDate,
    required this.monthlyContribution,
  });

  final String id;
  final String name;
  final double saved;
  final double target;
  final CategoryIcon icon;
  final DateTime targetDate;
  final double monthlyContribution;

  SavingsGoal copyWith({
    String? id,
    String? name,
    double? saved,
    double? target,
    CategoryIcon? icon,
    DateTime? targetDate,
    double? monthlyContribution,
  }) {
    return SavingsGoal(
      id: id ?? this.id,
      name: name ?? this.name,
      saved: saved ?? this.saved,
      target: target ?? this.target,
      icon: icon ?? this.icon,
      targetDate: targetDate ?? this.targetDate,
      monthlyContribution: monthlyContribution ?? this.monthlyContribution,
    );
  }

  double get remaining => (target - saved).clamp(0, double.infinity);

  double get progress => target <= 0 ? 0 : (saved / target).clamp(0.0, 1.0);

  int get percentComplete => (progress * 100).round();

  bool get isComplete => saved >= target;

  /// Whole months of contributions still required, or `null` when the goal is
  /// already met or nothing is being contributed.
  int? get monthsRemaining {
    if (isComplete || monthlyContribution <= 0) return null;
    return (remaining / monthlyContribution).ceil();
  }
}
