/// Qualitative band for the financial health score.
enum HealthBand { needsWork, fair, good, excellent }

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
}

class HealthFactor {
  const HealthFactor({
    required this.label,
    required this.detail,
    required this.score,
  });

  final String label;
  final String detail;

  /// This factor's own 0–100 sub-score.
  final int score;
}
