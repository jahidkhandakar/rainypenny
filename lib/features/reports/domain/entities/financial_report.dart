import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../../financial/domain/entities/period_summary.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../../financial/domain/entities/transaction.dart';

/// Everything that goes into an exported financial report.
///
/// Assembled once from the same providers the Reports screen reads, then handed
/// to the PDF builder. Keeping it as plain data means the document can be built
/// and tested without a widget tree, and the figures in the export are by
/// construction the same ones on screen.
class FinancialReport {
  const FinancialReport({
    required this.summary,
    required this.budgets,
    required this.goals,
    required this.loans,
    required this.transactions,
    required this.rangeLabel,
    required this.generatedAt,
    required this.currencyCode,
    required this.languageCode,
    required this.ownerName,
  });

  final PeriodSummary summary;
  final List<Budget> budgets;
  final List<SavingsGoal> goals;
  final List<Loan> loans;

  /// The transactions inside the period, newest first.
  final List<Transaction> transactions;

  /// Human-readable description of the period, already localised.
  final String rangeLabel;

  final DateTime generatedAt;

  /// Stamped on the cover so a reader knows which currency and language the
  /// figures were produced in — a report shared onward has to stand alone.
  final String currencyCode;
  final String languageCode;

  final String ownerName;

  double get totalSaved => goals.fold(0.0, (sum, g) => sum + g.saved);
  double get totalSavingsTarget => goals.fold(0.0, (sum, g) => sum + g.target);
  double get totalOwed => loans.fold(0.0, (sum, l) => sum + l.remaining);
  double get totalBudgeted => budgets.fold(0.0, (sum, b) => sum + b.limit);
  double get totalBudgetSpent => budgets.fold(0.0, (sum, b) => sum + b.spent);
}
