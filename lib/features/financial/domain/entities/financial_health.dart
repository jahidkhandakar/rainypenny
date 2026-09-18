/// Qualitative band for the financial health score.
enum HealthBand { needsWork, fair, good, excellent }

/// Which of the four contributions to the score a factor represents.
///
/// A code rather than a label, for the same reason `Insight` carries a code:
/// the domain has no business deciding what language the user reads. The
/// presentation layer turns this into copy, so the health card reads correctly
/// in all forty locales instead of only in English.
enum HealthFactorKind { savingsRate, budgetControl, debtLoad, spendingTrend }

/// A 0–100 score with the contributing factors kept alongside it, so the UI can
/// explain *why* the score is what it is rather than showing a magic number.
class FinancialHealth {
  const FinancialHealth({
    required this.score,
    required this.band,
    required this.factors,
  });

  final int score;
  final HealthBand band;
  final List<HealthFactor> factors;

  HealthFactor? factorFor(HealthFactorKind kind) {
    for (final factor in factors) {
      if (factor.kind == kind) return factor;
    }
    return null;
  }
}

class HealthFactor {
  const HealthFactor({
    required this.kind,
    required this.score,
    required this.value,
    required this.weight,
  });

  final HealthFactorKind kind;

  /// This factor's own 0–100 sub-score.
  final int score;

  /// The underlying figure, as a fraction: the savings rate, the share of
  /// budget used, debt-to-income, or the change in spending. Kept raw so the
  /// presentation layer can format it as a percentage in the user's own locale
  /// rather than receiving a pre-rendered English string.
  final double value;

  /// How much this factor contributes to the overall score, 0–1.
  final double weight;

  /// The trend factor is the only one whose sign carries meaning: spending
  /// falling is good news, everything else reads the same either way.
  bool get isImprovement =>
      kind == HealthFactorKind.spendingTrend && value <= 0;
}
