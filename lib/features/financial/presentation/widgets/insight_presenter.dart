import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/utils/formatters.dart';
import '../../domain/entities/insight.dart';

/// A rendered insight: localised title and body.
class InsightText {
  const InsightText(this.title, this.message);

  final String title;
  final String message;
}

/// Turns a structured [Insight] into copy in the active language and currency.
///
/// This is the only place insight wording lives. The notification service will
/// call the same function to build push messages, so an insight reads the same
/// on the dashboard and on the lock screen.
InsightText presentInsight(
  Insight insight,
  AppL10n l10n,
  MoneyFormatter money,
) {
  String amount({bool decimals = false}) =>
      money.format(insight.amount ?? 0, decimals: decimals);
  final subject = insight.subject ?? '';
  final percent = insight.percent ?? 0;

  return switch (insight.code) {
    InsightCode.budgetExceeded => InsightText(
        l10n.insightBudgetExceededTitle(subject),
        l10n.insightBudgetExceededBody(amount(), subject),
      ),
    InsightCode.budgetApproaching => InsightText(
        l10n.insightBudgetApproachingTitle(subject),
        l10n.insightBudgetApproachingBody(subject, percent, amount()),
      ),
    InsightCode.spendingOverIncome => InsightText(
        l10n.insightOverIncomeTitle,
        l10n.insightOverIncomeBody,
      ),
    InsightCode.categorySpendingUp => InsightText(
        l10n.insightCategoryUpTitle(subject),
        l10n.insightCategoryUpBody(subject, percent),
      ),
    InsightCode.spendingTrendDown => InsightText(
        l10n.insightTrendDownTitle,
        l10n.insightTrendDownBody(percent),
      ),
    InsightCode.spendingTrendUp => InsightText(
        l10n.insightTrendUpTitle,
        l10n.insightTrendUpBody(percent),
      ),
    InsightCode.savingsRateStrong => InsightText(
        l10n.insightSavingsStrongTitle,
        l10n.insightSavingsStrongBody(percent, insight.targetPercent ?? 0),
      ),
    InsightCode.savingsRateLow => InsightText(
        l10n.insightSavingsLowTitle,
        l10n.insightSavingsLowBody(percent, insight.targetPercent ?? 0),
      ),
    InsightCode.goalNearlyFunded => InsightText(
        l10n.insightGoalNearlyTitle(subject),
        l10n.insightGoalNearlyBody(amount(), subject),
      ),
    InsightCode.goalOnTrack => InsightText(
        l10n.insightGoalOnTrackTitle(subject),
        l10n.insightGoalOnTrackBody(amount(), insight.months ?? 0),
      ),
    InsightCode.debtOverdue => InsightText(
        l10n.insightDebtOverdueTitle(subject),
        l10n.insightDebtOverdueBody(subject, amount(), insight.days ?? 0),
      ),
    InsightCode.debtDueSoon => InsightText(
        l10n.insightDebtDueTitle(subject),
        l10n.insightDebtDueBody(amount(), insight.days ?? 0),
      ),
    InsightCode.weeklySummary => InsightText(
        l10n.insightWeeklySummaryTitle,
        l10n.insightWeeklySummaryBody,
      ),
  };
}
