import '../domain/entities/budget.dart';
import '../domain/entities/category.dart';
import '../domain/entities/loan.dart';
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
abstract final class DemoDataset {
  // ---------------------------------------------------------------------------
  // Reporting window
  // ---------------------------------------------------------------------------

  /// Length of the headline reporting period, in days.
  static const int periodDays = 30;

  static DateTime get today {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static DateTime get periodStart =>
      today.subtract(const Duration(days: periodDays - 1));

  static DateTime get periodEnd =>
      today.add(const Duration(hours: 23, minutes: 59, seconds: 59));

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

  static const housing = Category(
    id: 'housing',
    name: 'Housing',
    icon: CategoryIcon.housing,
  );
  static const food = Category(
    id: 'food',
    name: 'Food & Dining',
    icon: CategoryIcon.food,
  );
  static const transport = Category(
    id: 'transport',
    name: 'Transportation',
    icon: CategoryIcon.transport,
  );
  static const shopping = Category(
    id: 'shopping',
    name: 'Shopping',
    icon: CategoryIcon.shopping,
  );
  static const bills = Category(
    id: 'bills',
    name: 'Bills & Utilities',
    icon: CategoryIcon.bills,
  );
  static const entertainment = Category(
    id: 'entertainment',
    name: 'Entertainment',
    icon: CategoryIcon.entertainment,
  );
  static const health = Category(
    id: 'health',
    name: 'Health & Fitness',
    icon: CategoryIcon.health,
  );
  static const education = Category(
    id: 'education',
    name: 'Education',
    icon: CategoryIcon.education,
  );
  static const travel = Category(
    id: 'travel',
    name: 'Travel',
    icon: CategoryIcon.travel,
  );
  static const other = Category(
    id: 'other',
    name: 'Other',
    icon: CategoryIcon.other,
  );

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

  static const List<Category> incomeCategories = [
    salary,
    freelance,
    investments,
    refunds,
  ];

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
    return today.subtract(Duration(days: daysAgo)).add(
          Duration(hours: hour, minutes: minute),
        );
  }

  /// The seeded ledger, newest first.
  ///
  /// Rows at offsets 0-29 make up the reporting period; the handful beyond that
  /// give the Transactions screen real scroll-back history.
  static List<Transaction> get transactions {
    final rows = <Transaction>[
      // --- Income: 5,240.00 over the period -------------------------------
      _income('i1', 'Monthly Salary', 3500.00, 27, 9, salary,
          note: 'Northwind Design Studio'),
      _income('i2', 'Freelance Project', 650.00, 20, 15, freelance,
          note: 'Brand refresh — Halcyon'),
      _income('i3', 'Dividend Payout', 180.00, 12, 11, investments),
      _income('i4', 'Refund — Flight change', 60.00, 9, 13, refunds),
      _income('i5', 'Freelance Project', 450.00, 6, 17, freelance,
          note: 'Landing page build'),
      _income('i6', 'Client Retainer', 400.00, 3, 10, freelance),

      // --- Housing: 950.00 -------------------------------------------------
      _expense('h1', 'Rent', 900.00, 26, 8, housing, note: 'September rent'),
      _expense('h2', 'Home Supplies', 50.00, 11, 16, housing),

      // --- Food & Dining: 742.00 ------------------------------------------
      _expense('f1', 'Groceries — Aldi', 15.05, 28, 18, food),
      _expense('f2', 'Pizza Night', 24.50, 24, 20, food),
      _expense('f3', 'Coffee — Blue Bottle', 6.50, 22, 8, food),
      _expense('f4', 'Groceries — Trader Joe’s', 88.90, 20, 11, food),
      _expense('f5', 'Brunch — The Nook', 34.60, 17, 11, food),
      _expense('f6', 'Coffee — Blue Bottle', 5.75, 15, 8, food),
      _expense('f7', 'Groceries — Whole Foods', 78.20, 14, 17, food),
      _expense('f8', 'Dinner — Sushi Ken', 58.00, 12, 20, food),
      _expense('f9', 'Lunch — Chipotle', 12.95, 10, 13, food),
      _expense('f10', 'Coffee — Blue Bottle', 6.50, 9, 8, food),
      _expense('f11', 'Groceries — Costco', 132.60, 8, 12, food,
          note: 'Monthly stock-up'),
      _expense('f12', 'Takeout — Thai Basil', 28.40, 6, 19, food),
      _expense('f13', 'Coffee — Blue Bottle', 5.75, 5, 8, food),
      _expense('f14', 'Groceries — Trader Joe’s', 96.30, 4, 18, food),
      _expense('f15', 'Dinner — Trattoria Rosa', 42.80, 2, 20, food),
      _expense('f16', 'Lunch — Sweetgreen', 14.20, 1, 13, food),
      _expense('f17', 'Coffee — Blue Bottle', 6.50, 0, 8, food),
      _expense('f18', 'Groceries — Whole Foods', 84.50, 0, 18, food),

      // --- Transportation: 318.00 -----------------------------------------
      _expense('t1', 'Uber', 20.00, 29, 22, transport),
      _expense('t2', 'Gas — Chevron', 55.60, 25, 9, transport),
      _expense('t3', 'Metro Card Top-up', 25.00, 21, 8, transport),
      _expense('t4', 'Car Wash', 22.00, 19, 15, transport),
      _expense('t5', 'Uber', 16.40, 16, 21, transport),
      _expense('t6', 'Gas — Shell', 48.80, 13, 9, transport),
      _expense('t7', 'Parking', 12.00, 9, 14, transport),
      _expense('t8', 'Uber', 22.60, 7, 23, transport),
      _expense('t9', 'Gas — Shell', 52.40, 3, 9, transport),
      _expense('t10', 'Metro Card Top-up', 25.00, 1, 8, transport),
      _expense('t11', 'Uber', 18.20, 0, 19, transport),

      // --- Shopping: 386.00 ------------------------------------------------
      _expense('s1', 'Amazon — Accessories', 70.00, 23, 14, shopping),
      _expense('s2', 'Bookstore', 32.80, 18, 16, shopping),
      _expense('s3', 'Zara — Jacket', 89.90, 15, 15, shopping),
      _expense('s4', 'Amazon — Household', 64.30, 8, 10, shopping),
      _expense('s5', 'Nike — Running Shoes', 129.00, 5, 12, shopping),

      // --- Bills & Utilities: 289.00 ---------------------------------------
      _expense('b1', 'Gas & Heating', 27.04, 27, 7, bills),
      _expense('b2', 'iCloud Storage', 2.99, 26, 7, bills),
      _expense('b3', 'Water', 34.00, 22, 7, bills),
      _expense('b4', 'Spotify', 11.99, 18, 7, bills),
      _expense('b5', 'Mobile — Verizon', 55.00, 14, 7, bills),
      _expense('b6', 'Netflix', 15.99, 10, 7, bills),
      _expense('b7', 'Internet — Comcast', 79.99, 6, 7, bills),
      _expense('b8', 'Electricity', 62.00, 2, 7, bills),

      // --- Entertainment: 175.00 -------------------------------------------
      _expense('e1', 'Bar Night', 45.01, 21, 22, entertainment),
      _expense('e2', 'Steam — Game', 29.99, 17, 21, entertainment),
      _expense('e3', 'Concert Ticket', 68.00, 11, 19, entertainment),
      _expense('e4', 'Cinema Tickets', 32.00, 4, 20, entertainment),

      // --- Health & Fitness: 145.00 ----------------------------------------
      _expense('hf1', 'Yoga Class Pack', 36.60, 24, 8, health),
      _expense('hf2', 'Dentist Copay', 45.00, 19, 10, health),
      _expense('hf3', 'Pharmacy', 28.40, 13, 17, health),
      _expense('hf4', 'Gym Membership', 35.00, 7, 7, health),

      // --- Other: 175.00 ---------------------------------------------------
      _expense('o1', 'Postage', 20.00, 27, 12, other),
      _expense('o2', 'Haircut', 45.00, 20, 16, other),
      _expense('o3', 'Charity Donation', 50.00, 16, 12, other),
      _expense('o4', 'Gift — Birthday', 60.00, 12, 15, other),

      // --- History beyond the reporting window -----------------------------
      _income('ih1', 'Monthly Salary', 3500.00, 57, 9, salary),
      _expense('oh1', 'Rent', 900.00, 56, 8, housing),
      _expense('oh2', 'Flight — Lisbon', 284.30, 41, 14, travel),
      _expense('oh3', 'Online Course', 149.00, 38, 19, education),
      _expense('oh4', 'Groceries — Costco', 118.40, 36, 12, food),
      _expense('oh5', 'Gas — Shell', 51.20, 34, 9, transport),
      _expense('oh6', 'Electricity', 58.60, 33, 7, bills),
      _income('ih2', 'Freelance Project', 780.00, 32, 16, freelance),
      _expense('oh7', 'Dinner — Trattoria Rosa', 61.40, 31, 20, food),
    ];

    rows.sort((a, b) => b.date.compareTo(a.date));
    return rows;
  }

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
  static const Map<String, double> budgetLimits = {
    'housing': 1400,
    'food': 850,
    'transport': 500,
    'shopping': 350,
    'bills': 400,
    'entertainment': 250,
    'health': 250,
  };

  static List<Budget> get budgets {
    final spending = BalanceCalculator.spendingByCategory(
      BalanceCalculator.inRange(transactions, periodStart, periodEnd),
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
    }).toList()
      ..sort((a, b) => b.ratio.compareTo(a.ratio));
  }

  /// Category spend for the preceding window, used for trend comparisons.
  ///
  /// Tuned so Food & Dining is the only category whose rise clears the
  /// "notable change" threshold — that keeps the headline spending insight
  /// distinct from the over-budget Shopping warning instead of both firing on
  /// the same category. Totals to [previousExpenses].
  static Map<Category, double> get previousSpendingByCategory => {
        housing: 950.00,
        food: 628.80,
        transport: 341.50,
        shopping: 340.00,
        bills: 291.22,
        entertainment: 210.00,
        health: 145.00,
        other: 412.90,
      };

  // ---------------------------------------------------------------------------
  // Savings
  // ---------------------------------------------------------------------------

  static List<SavingsGoal> get savingsGoals => [
        SavingsGoal(
          id: 'goal-macbook',
          name: 'New MacBook Pro',
          saved: 1700,
          target: 2500,
          icon: CategoryIcon.shopping,
          targetDate: today.add(const Duration(days: 120)),
          monthlyContribution: 200,
        ),
        SavingsGoal(
          id: 'goal-emergency',
          name: 'Emergency Fund',
          saved: 3200,
          target: 5000,
          icon: CategoryIcon.housing,
          targetDate: today.add(const Duration(days: 270)),
          monthlyContribution: 400,
        ),
        SavingsGoal(
          id: 'goal-japan',
          name: 'Japan Trip',
          saved: 950,
          target: 4000,
          icon: CategoryIcon.travel,
          targetDate: today.add(const Duration(days: 400)),
          monthlyContribution: 250,
        ),
        SavingsGoal(
          id: 'goal-renovation',
          name: 'Home Renovation',
          saved: 1250,
          target: 6000,
          icon: CategoryIcon.housing,
          targetDate: today.add(const Duration(days: 540)),
          monthlyContribution: 300,
        ),
      ];

  // ---------------------------------------------------------------------------
  // Loans & debts
  // ---------------------------------------------------------------------------

  static List<Loan> get loans => [
        Loan(
          id: 'loan-car',
          name: 'Car Loan',
          lender: 'Meridian Bank',
          kind: LoanKind.loan,
          principal: 12000,
          remaining: 6200,
          monthlyPayment: 420,
          nextPaymentDate: today.add(const Duration(days: 14)),
          interestRate: 5.9,
          icon: CategoryIcon.transport,
        ),
        Loan(
          id: 'loan-card',
          name: 'Credit Card',
          lender: 'Vantage Platinum',
          kind: LoanKind.creditCard,
          principal: 5000,
          remaining: 2250,
          monthlyPayment: 85,
          nextPaymentDate: today.add(const Duration(days: 9)),
          interestRate: 19.99,
          icon: CategoryIcon.other,
        ),
      ];
}
