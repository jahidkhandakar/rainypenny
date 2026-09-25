import '../domain/entities/budget.dart';
import '../domain/entities/category.dart';
import '../domain/entities/loan.dart';
import '../domain/entities/salary_cycle.dart';
import '../domain/entities/savings_goal.dart';
import '../domain/entities/transaction.dart';
import '../domain/entities/user_profile.dart';
import '../domain/services/balance_calculator.dart';

/// The single source of truth behind every mock data source.
///
/// Dates are generated as offsets from "today" so the demo always looks live:
/// the Transactions screen keeps showing Today / Yesterday, and the reporting
/// window is the trailing 30 days.
///
/// The figures are tuned so the trailing-30-day totals land exactly on
/// income 5,240.00 and expenses 3,180.00 — every headline number in the app is
/// then computed from these rows rather than hardcoded anywhere in the UI.
abstract final class EmptyDemoDataset {
  // ---------------------------------------------------------------------------
  // Reporting window
  // ---------------------------------------------------------------------------

  /// Length of the headline reporting period, in days.
  static const int periodDays = 30;

  static DateTime get today {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static DateTime get periodStart => today.subtract(const Duration(days: periodDays - 1));

  static DateTime get periodEnd => today.add(const Duration(hours: 23, minutes: 59, seconds: 59));

  // ---------------------------------------------------------------------------
  // Closing figures
  // ---------------------------------------------------------------------------

  /// Total balance across all accounts today.
  static const double totalBalance = 12480.50;

  /// The same three figures for the preceding 30-day window, which is what the
  /// trend arrows compare against.
  static const double previousBalance = 11513.38;
  static const double previousIncome = 4657.78;
  static const double previousExpenses = 3319.42;

  // ---------------------------------------------------------------------------
  // Categories
  // ---------------------------------------------------------------------------

  static const housing = Category(id: 'housing', name: 'Housing', icon: CategoryIcon.housing);
  static const food = Category(id: 'food', name: 'Food & Dining', icon: CategoryIcon.food);
  static const transport = Category(
    id: 'transport',
    name: 'Transportation',
    icon: CategoryIcon.transport,
  );
  static const shopping = Category(id: 'shopping', name: 'Shopping', icon: CategoryIcon.shopping);
  static const bills = Category(id: 'bills', name: 'Bills & Utilities', icon: CategoryIcon.bills);
  static const entertainment = Category(
    id: 'entertainment',
    name: 'Entertainment',
    icon: CategoryIcon.entertainment,
  );
  static const health = Category(id: 'health', name: 'Health & Fitness', icon: CategoryIcon.health);
  static const education = Category(
    id: 'education',
    name: 'Education',
    icon: CategoryIcon.education,
  );
  static const travel = Category(id: 'travel', name: 'Travel', icon: CategoryIcon.travel);
  static const other = Category(id: 'other', name: 'Other', icon: CategoryIcon.other);

  static const salary = Category(
    id: 'salary',
    name: 'Salary',
    icon: CategoryIcon.salary,
    isIncome: true,
  );
  static const freelance = Category(
    id: 'freelance',
    name: 'Freelance',
    icon: CategoryIcon.freelance,
    isIncome: true,
  );
  static const investments = Category(
    id: 'investments',
    name: 'Investments',
    icon: CategoryIcon.investment,
    isIncome: true,
  );
  static const refunds = Category(
    id: 'refunds',
    name: 'Refunds & Gifts',
    icon: CategoryIcon.gift,
    isIncome: true,
  );

  static const List<Category> expenseCategories = [
    food,
    housing,
    transport,
    shopping,
    bills,
    entertainment,
    health,
    education,
    travel,
    other,
  ];

  static const List<Category> incomeCategories = [salary, freelance, investments, refunds];

  // ---------------------------------------------------------------------------
  // Profile
  // ---------------------------------------------------------------------------

  static UserProfile get profile => UserProfile(
    id: 'user-001',
    name: 'Alex Morgan',
    email: 'alex.morgan@email.com',
    initials: 'AM',
    memberSince: DateTime(today.year - 2, 3, 14),
    currencyCode: 'USD',
    currencySymbol: '\$',
  );

  // ---------------------------------------------------------------------------
  // Transactions
  // ---------------------------------------------------------------------------

  static DateTime _at(int daysAgo, int hour, [int minute = 0]) {
    return today.subtract(Duration(days: daysAgo)).add(Duration(hours: hour, minutes: minute));
  }

  /// Where the salary lands, for a user paid on [payday].
  ///
  /// The salary has to arrive *on the payday*, or the home screen reports
  /// whichever smaller credit happens to fall inside the cycle as the monthly
  /// salary. With the seeded data tuned for a rolling thirty days, a
  /// 1st-of-the-month cycle put the 3,500 salary in the previous period and
  /// left the card claiming a monthly salary of 450.
  static DateTime _salaryDay(int payday, {int cyclesBack = 0}) {
    final cycle = SalaryCycle.current(payday).shifted(-cyclesBack);
    return cycle.start.add(const Duration(hours: 9));
  }

  /// Maps a row written as "N days ago" onto a day inside [cycle].
  ///
  /// The seeded ledger was authored against a rolling thirty-day window, where
  /// "27 days ago" was always inside the reporting period. A salary cycle is
  /// not a trailing window: on the 3rd of the month only three days of it have
  /// happened, so the same offsets would scatter most of the demo into the
  /// previous cycle and leave the current one looking empty — no category over
  /// budget, no warnings, nothing to look at.
  ///
  /// So the 0–29 spread is compressed onto the part of the cycle that has
  /// actually elapsed. Order and amounts are preserved, the newest row still
  /// lands on today, and the demo shows a complete month whenever it is opened.
  static DateTime _inCycle(SalaryCycle cycle, int daysAgo, int hour, {int spread = 29}) {
    final now = DateTime.now();
    final last = cycle.contains(now)
        ? DateTime(now.year, now.month, now.day)
        : DateTime(cycle.end.year, cycle.end.month, cycle.end.day);

    final elapsed = last.difference(cycle.start).inDays.clamp(0, 400);
    // daysAgo counts backwards, so invert it into a position along the cycle.
    final position = spread <= 0 ? elapsed : (((spread - daysAgo) / spread) * elapsed).round();

    return cycle.start.add(Duration(days: position.clamp(0, elapsed))).add(Duration(hours: hour));
  }

  /// The seeded ledger, newest first.
  ///
  /// Rows at offsets 0-29 make up the reporting period; the handful beyond that
  /// give the Transactions screen real scroll-back history.
  ///
  /// [payday] positions the two salary rows on the cycle boundaries they belong
  /// to. Everything else stays relative to today, so the Transactions screen
  /// keeps showing Today and Yesterday whatever the payday is.
  static List<Transaction> transactionsFor({int payday = 1}) {
    final rows = <Transaction>[];

    return _anchorToCycles(rows, payday);
  }

  /// Moves the whole ledger onto the user's salary cycles.
  ///
  /// The rows above are authored as "N days ago", which is how the demo stays
  /// live. A cycle is not a trailing window, so those offsets are remapped:
  /// the 0–29 group onto the elapsed part of the current cycle, the 31–57 group
  /// across the whole of the previous one. Done here as one pass rather than by
  /// threading a cycle through fifty-five call sites.
  ///
  /// Order and amounts are untouched, so everything the figures were tuned to
  /// still holds — the rows simply land in the period the app reports on.
  static List<Transaction> _anchorToCycles(List<Transaction> rows, int payday) {
    final current = SalaryCycle.current(payday);
    final previous = current.previous;
    final anchor = today;

    final mapped = rows.map((row) {
      // The salary rows are already pinned to their paydays.
      if (row.title == 'Monthly Salary') return row;

      final day = DateTime(row.date.year, row.date.month, row.date.day);
      final daysAgo = anchor.difference(day).inDays;

      return row.copyWith(
        date: daysAgo <= 29
            ? _inCycle(current, daysAgo, row.date.hour)
            : _inCycle(previous, daysAgo - 30, row.date.hour, spread: 27),
      );
    }).toList();

    mapped.sort((a, b) => b.date.compareTo(a.date));
    return mapped;
  }

  /// The seeded ledger for the default payday, for callers that have no
  /// payday of their own — the consistency tests, and the budget preview below.
  static List<Transaction> get transactions => transactionsFor();

  static Transaction _income(
    String id,
    String title,
    double amount,
    int daysAgo,
    int hour,
    Category category, {
    String? note,
  }) {
    return Transaction(
      id: id,
      title: title,
      amount: amount,
      date: _at(daysAgo, hour),
      type: TransactionType.income,
      category: category,
      note: note,
    );
  }

  static Transaction _expense(
    String id,
    String title,
    double amount,
    int daysAgo,
    int hour,
    Category category, {
    String? note,
  }) {
    return Transaction(
      id: id,
      title: title,
      amount: amount,
      date: _at(daysAgo, hour),
      type: TransactionType.expense,
      category: category,
      note: note,
    );
  }

  // ---------------------------------------------------------------------------
  // Budgets
  // ---------------------------------------------------------------------------

  /// Monthly limits, totalling 4,000. Spend is never stored — it is read back
  /// out of the ledger so the budget bars and the transaction list agree.
  static const Map<String, double> budgetLimits = {};

  /// Budgets joined against the seeded ledger for one salary cycle.
  ///
  /// Scoped to the cycle rather than a trailing window so it agrees with what
  /// the app itself reports — the two used to be the same thing and are not
  /// any more.
  static List<Budget> budgetsFor({int payday = 1}) {
    final cycle = SalaryCycle.current(payday);
    final spending = BalanceCalculator.spendingByCategory(
      BalanceCalculator.inRange(transactionsFor(payday: payday), cycle.start, cycle.end),
    );
    final byId = {for (final e in spending.entries) e.key.id: e.value};

    return budgetLimits.entries.map((entry) {
      final category = expenseCategories.firstWhere((c) => c.id == entry.key);
      return Budget(
        id: 'budget-${entry.key}',
        category: category,
        limit: entry.value,
        spent: byId[entry.key] ?? 0,
      );
    }).toList()..sort((a, b) => b.ratio.compareTo(a.ratio));
  }

  /// The seeded budgets for the default payday.
  static List<Budget> get budgets => budgetsFor();

  /// Category spend for the preceding window, used for trend comparisons.
  ///
  /// Tuned so Food & Dining is the only category whose rise clears the
  /// "notable change" threshold — that keeps the headline spending insight
  /// distinct from the over-budget Shopping warning instead of both firing on
  /// the same category. Totals to [previousExpenses].
  static Map<Category, double> get previousSpendingByCategory => {};

  // ---------------------------------------------------------------------------
  // Savings
  // ---------------------------------------------------------------------------

  static List<SavingsGoal> get savingsGoals => [];

  // ---------------------------------------------------------------------------
  // Loans & debts
  // ---------------------------------------------------------------------------

  static List<Loan> get loans => [];
}
