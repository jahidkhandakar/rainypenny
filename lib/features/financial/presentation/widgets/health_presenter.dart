import 'package:intl/intl.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../domain/entities/financial_health.dart';

/// Turns a structured [FinancialHealth] into copy in the active language.
///
/// The health card used to hold its own English band names, its own English
/// sentences, and to render factor details from strings the calculator built —
/// which meant the single most prominent explanation in the app stayed in
/// English in all forty locales. This mirrors `presentInsight`: the domain
/// emits a code and a number, and the wording lives here.

String healthBandLabel(HealthBand band, AppL10n l10n) => switch (band) {
  HealthBand.excellent => l10n.healthExcellent,
  HealthBand.good => l10n.healthGood,
  HealthBand.fair => l10n.healthFair,
  HealthBand.needsWork => l10n.healthNeedsWork,
};

String healthBandSummary(HealthBand band, AppL10n l10n) => switch (band) {
  HealthBand.excellent => l10n.healthExcellentBody,
  HealthBand.good => l10n.healthGoodBody,
  HealthBand.fair => l10n.healthFairBody,
  HealthBand.needsWork => l10n.healthNeedsWorkBody,
};

String healthFactorLabel(HealthFactorKind kind, AppL10n l10n) =>
    switch (kind) {
      HealthFactorKind.savingsRate => l10n.factorSavingsRate,
      HealthFactorKind.budgetControl => l10n.factorBudgetControl,
      HealthFactorKind.debtLoad => l10n.factorDebtLoad,
      HealthFactorKind.spendingTrend => l10n.factorSpendingTrend,
    };

/// The figure behind a factor, formatted for the active locale.
///
/// Percentages go through [NumberFormat] rather than string interpolation so
/// they carry the right digits and separators — Arabic and Hindi do not write
/// "42%" the way English does.
String healthFactorDetail(
  HealthFactor factor,
  AppL10n l10n,
  String localeName,
) {
  final percent = NumberFormat.decimalPattern(localeName);

  String whole(double fraction) => percent.format((fraction * 100).round());

  return switch (factor.kind) {
    HealthFactorKind.savingsRate => l10n.factorKept(whole(factor.value)),
    HealthFactorKind.budgetControl => l10n.factorUsed(whole(factor.value)),
    HealthFactorKind.debtLoad => l10n.factorOfIncome(whole(factor.value)),
    HealthFactorKind.spendingTrend => _trendDetail(
      factor,
      l10n,
      localeName,
    ),
  };
}

String _trendDetail(HealthFactor factor, AppL10n l10n, String localeName) {
  // One decimal place: a spending trend of "up 3%" and "up 3.4%" are different
  // enough to be worth distinguishing, unlike the other three factors.
  final formatted = NumberFormat.decimalPatternDigits(
    locale: localeName,
    decimalDigits: 1,
  ).format((factor.value * 100).abs());

  return factor.isImprovement
      ? l10n.factorTrendDown(formatted)
      : l10n.factorTrendUp(formatted);
}
