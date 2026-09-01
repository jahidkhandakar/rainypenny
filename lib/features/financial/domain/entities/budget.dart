import 'category.dart';

/// Status buckets a budget can be in. Thresholds live in `budget_rules.dart`.
enum BudgetStatus { onTrack, approaching, exceeded }

/// A spending limit for one category over the active period.
class Budget {
  const Budget({
    required this.id,
    required this.category,
    required this.limit,
    required this.spent,
  });

  final String id;
  final Category category;
  final double limit;
  final double spent;

  double get remaining => limit - spent;

  /// Uncapped ratio — can exceed 1 when the budget is blown.
  double get ratio => limit <= 0 ? 0 : spent / limit;

  /// Ratio clamped to [0, 1] for drawing progress bars.
  double get progress => ratio.clamp(0.0, 1.0);

  int get percentUsed => (ratio * 100).round();

  bool get isExceeded => spent > limit;
}
