/// Severity of a rule-generated insight. Drives both the colour and the icon
/// used when the insight is rendered or turned into a notification.
enum InsightLevel { positive, informative, warning, critical }

/// The feature an insight points at, so tapping it can deep-link.
enum InsightTopic { spending, budget, savings, debt, income }

/// A rule-based observation about the user's finances.
///
/// Insights are produced by `InsightEngine` from the domain rules and are the
/// same objects the notification service will later localise and deliver.
class Insight {
  const Insight({
    required this.id,
    required this.title,
    required this.message,
    required this.level,
    required this.topic,
  });

  final String id;
  final String title;
  final String message;
  final InsightLevel level;
  final InsightTopic topic;
}
