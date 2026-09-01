/// Severity of a rule-generated insight. Drives both the colour and the icon
/// used when the insight is rendered or turned into a notification.
enum InsightLevel { positive, informative, warning, critical }

/// The feature an insight points at, so tapping it can deep-link.
enum InsightTopic { spending, budget, savings, debt, income }

/// Which observation was made.
///
/// The engine emits a code plus the numbers behind it — never a sentence. The
/// presentation layer turns a code into localised copy, and the notification
/// service will do the same for push messages, so the two can never diverge.
enum InsightCode {
  budgetExceeded,
  budgetApproaching,
  spendingOverIncome,
  categorySpendingUp,
  spendingTrendDown,
  spendingTrendUp,
  savingsRateStrong,
  savingsRateLow,
  goalNearlyFunded,
  goalOnTrack,
  debtOverdue,
  debtDueSoon,

  /// The recurring weekly digest. Carries no figures: it fires in the future,
  /// so any number computed now would be stale by delivery time.
  weeklySummary,
}

/// A rule-based observation about the user's finances.
class Insight {
  const Insight({
    required this.id,
    required this.code,
    required this.level,
    required this.topic,
    this.subject,
    this.amount,
    this.percent,
    this.targetPercent,
    this.days,
    this.months,
  });

  final String id;
  final InsightCode code;
  final InsightLevel level;
  final InsightTopic topic;

  /// The category, goal or debt the insight is about.
  final String? subject;

  /// A money value, unformatted — the presentation layer applies the user's
  /// currency.
  final double? amount;

  /// A whole-number percentage, already rounded.
  final int? percent;

  /// The percentage being compared against, where the copy mentions a target.
  final int? targetPercent;

  final int? days;
  final int? months;
}
