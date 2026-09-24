// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppL10nEn extends AppL10n {
  AppL10nEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Save for a rainy day';

  @override
  String get navHome => 'Home';

  @override
  String get navTransactions => 'Transactions';

  @override
  String get navAdd => 'Add';

  @override
  String get navReports => 'Reports';

  @override
  String get navProfile => 'Profile';

  @override
  String greetingMorning(String name) {
    return 'Good morning, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Good afternoon, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Good evening, $name';
  }

  @override
  String get greetingSubtitle => 'Here is your financial overview';

  @override
  String get totalBalance => 'Total balance';

  @override
  String get vsLastPeriod => 'vs. last period';

  @override
  String get income => 'Income';

  @override
  String get expenses => 'Expenses';

  @override
  String get netBalance => 'Net balance';

  @override
  String get lastThirtyDays => 'Last 30 days';

  @override
  String get quickActions => 'Quick actions';

  @override
  String get addIncome => 'Add income';

  @override
  String get addExpense => 'Add expense';

  @override
  String get spendingOverview => 'Spending overview';

  @override
  String get recentTransactions => 'Recent transactions';

  @override
  String get seeAll => 'See all';

  @override
  String get viewAll => 'View all';

  @override
  String get budgetProgress => 'Budget progress';

  @override
  String get savingsGoals => 'Savings goals';

  @override
  String get financialInsight => 'Financial insight';

  @override
  String get financialHealth => 'Financial health';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'Search transactions';

  @override
  String get filterAll => 'All';

  @override
  String get filterIncome => 'Income';

  @override
  String get filterExpenses => 'Expenses';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get noTransactionsTitle => 'No transactions found';

  @override
  String get noTransactionsBody =>
      'Try a different search or filter to see more of your activity.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Add transaction';

  @override
  String get amount => 'Amount';

  @override
  String get category => 'Category';

  @override
  String get date => 'Date';

  @override
  String get note => 'Note';

  @override
  String get noteHint => 'Optional note';

  @override
  String get saveIncome => 'Save income';

  @override
  String get saveExpense => 'Save expense';

  @override
  String get selectCategory => 'Select category';

  @override
  String get transactionSaved => 'Transaction saved';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionHint => 'e.g. Groceries';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgets';

  @override
  String get totalBudget => 'Total budget';

  @override
  String get spent => 'Spent';

  @override
  String get remaining => 'Remaining';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'On track';

  @override
  String get approachingLimit => 'Approaching limit';

  @override
  String get overBudget => 'Over budget';

  @override
  String get savings => 'Savings';

  @override
  String get yourGoals => 'Your goals';

  @override
  String get saved => 'Saved';

  @override
  String get target => 'Target';

  @override
  String get monthlyContribution => 'Monthly';

  @override
  String get addFunds => 'Add funds';

  @override
  String get goalComplete => 'Goal reached';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months to go',
      one: '1 month to go',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Loans & debts';

  @override
  String get totalOutstanding => 'Total outstanding';

  @override
  String get monthlyPayment => 'Monthly';

  @override
  String get nextPayment => 'Next payment';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'Interest';

  @override
  String get upcomingPayments => 'Upcoming payments';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Overdue';

  @override
  String get reports => 'Reports';

  @override
  String get week => 'Week';

  @override
  String get month => 'Month';

  @override
  String get quarter => 'Quarter';

  @override
  String get incomeVsExpenses => 'Income vs. expenses';

  @override
  String get spendingByCategory => 'Spending by category';

  @override
  String get budgetPerformance => 'Budget performance';

  @override
  String get insights => 'Insights';

  @override
  String get savingsRate => 'Savings rate';

  @override
  String get profile => 'Profile';

  @override
  String get account => 'Account';

  @override
  String get personalInformation => 'Personal information';

  @override
  String get changePassword => 'Change password';

  @override
  String get notifications => 'Notifications';

  @override
  String get preferences => 'Preferences';

  @override
  String get language => 'Language';

  @override
  String get currency => 'Currency';

  @override
  String get theme => 'Theme';

  @override
  String get security => 'Security';

  @override
  String get privacyAndSecurity => 'Privacy & security';

  @override
  String get help => 'Help';

  @override
  String get helpAndSupport => 'Help & support';

  @override
  String get termsAndConditions => 'Terms & conditions';

  @override
  String get logOut => 'Log out';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settings => 'Settings';

  @override
  String get noNotificationsTitle => 'You are all caught up';

  @override
  String get noNotificationsBody =>
      'New insights and reminders will show up here.';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get done => 'Done';

  @override
  String get retry => 'Retry';

  @override
  String get close => 'Close';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get comingSoon => 'Coming soon in the full release';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get undo => 'Undo';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get nameRequired => 'Enter your name';

  @override
  String get amountAboveZero => 'Enter an amount greater than zero';

  @override
  String get editTransaction => 'Edit transaction';

  @override
  String get deleteTransaction => 'Delete transaction?';

  @override
  String deleteTransactionBody(String title) {
    return '$title will be removed from your ledger.';
  }

  @override
  String get transactionDeleted => 'Transaction deleted';

  @override
  String get transactionUpdated => 'Transaction updated';

  @override
  String get newBudget => 'New budget';

  @override
  String get editBudget => 'Edit budget';

  @override
  String get budgetLimit => 'Monthly limit';

  @override
  String get deleteBudget => 'Delete budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'The $category budget will be removed. Your transactions are not affected.';
  }

  @override
  String get budgetSaved => 'Budget saved';

  @override
  String get budgetDeleted => 'Budget deleted';

  @override
  String get allCategoriesBudgeted => 'Every category already has a budget';

  @override
  String get noBudgetsTitle => 'No budgets yet';

  @override
  String get noBudgetsBody =>
      'Set a monthly limit on a category to start tracking it.';

  @override
  String get newGoal => 'New goal';

  @override
  String get editGoal => 'Edit goal';

  @override
  String get goalName => 'Goal name';

  @override
  String get goalNameHint => 'e.g. Emergency fund';

  @override
  String get targetAmount => 'Target amount';

  @override
  String get alreadySaved => 'Already saved';

  @override
  String get deleteGoal => 'Delete goal?';

  @override
  String deleteGoalBody(String name) {
    return '$name and its progress will be removed.';
  }

  @override
  String get goalSaved => 'Goal saved';

  @override
  String get goalDeleted => 'Goal deleted';

  @override
  String get noGoalsTitle => 'No savings goals yet';

  @override
  String get noGoalsBody =>
      'Set a target and RainyPenny will track your progress.';

  @override
  String get fundsAdded => 'Funds added';

  @override
  String get newDebt => 'New loan or card';

  @override
  String get editDebt => 'Edit loan';

  @override
  String get debtName => 'Name';

  @override
  String get debtNameHint => 'e.g. Car loan';

  @override
  String get lender => 'Lender';

  @override
  String get lenderHint => 'e.g. Meridian Bank';

  @override
  String get originalAmount => 'Original amount';

  @override
  String get creditLimit => 'Credit limit';

  @override
  String get remainingBalance => 'Remaining balance';

  @override
  String get interestRatePercent => 'Interest rate (%)';

  @override
  String get kindLoan => 'Loan';

  @override
  String get kindCreditCard => 'Credit card';

  @override
  String get recordPayment => 'Record payment';

  @override
  String get paymentRecorded => 'Payment recorded';

  @override
  String get deleteDebt => 'Delete this debt?';

  @override
  String deleteDebtBody(String name) {
    return '$name will be removed from your debts.';
  }

  @override
  String get debtSaved => 'Saved';

  @override
  String get debtDeleted => 'Deleted';

  @override
  String get noDebtsTitle => 'No debts tracked';

  @override
  String get noDebtsBody =>
      'Add a loan or credit card to keep an eye on repayments.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject budget exceeded';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'You are $amount over your $subject budget for this period.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject is close to its limit';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Your $subject budget is $percent% used, with $amount left.';
  }

  @override
  String get insightOverIncomeTitle => 'Spending is above income';

  @override
  String get insightOverIncomeBody =>
      'You spent more than you earned this period. Review your largest categories to bring things back in line.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject spending is up';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Your $subject spending is $percent% higher than the previous period.';
  }

  @override
  String get insightTrendDownTitle => 'Spending is trending down';

  @override
  String insightTrendDownBody(int percent) {
    return 'Overall spending is $percent% lower than the previous period.';
  }

  @override
  String get insightTrendUpTitle => 'Spending is trending up';

  @override
  String insightTrendUpBody(int percent) {
    return 'Overall spending is $percent% higher than the previous period.';
  }

  @override
  String get insightSavingsStrongTitle => 'Strong savings this period';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'You kept $percent% of your income — well above the $target% target.';
  }

  @override
  String get insightSavingsLowTitle => 'Savings rate is below target';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'You kept $percent% of your income this period. Aim for $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject is nearly funded';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Only $amount left to reach $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'On track for $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months months',
      one: '1 month',
    );
    return 'At $amount a month you will reach this goal in $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject payment overdue';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days',
      one: '1 day',
    );
    return 'The $subject payment of $amount is $_temp0 overdue.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject payment coming up';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days days',
      one: 'tomorrow',
      zero: 'today',
    );
    return '$amount is due $_temp0.';
  }

  @override
  String get signIn => 'Sign in';

  @override
  String get signUp => 'Create account';

  @override
  String get signInSubtitle => 'Welcome back. Your money is waiting.';

  @override
  String get signUpSubtitle => 'A few details and you are set up.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'At least 8 characters';

  @override
  String get fullNameLabel => 'Full name';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get resetSent => 'Check your inbox for a reset link';

  @override
  String get noAccountYet => 'New here?';

  @override
  String get haveAccount => 'Already have an account?';

  @override
  String get emailInvalid => 'Enter a valid email address';

  @override
  String get passwordTooShort => 'Use at least 8 characters';

  @override
  String get signOutConfirm => 'Sign out?';

  @override
  String get signOutBody =>
      'You will need to sign in again to see your finances.';

  @override
  String get dataSource => 'Data source';

  @override
  String get insightWeeklySummaryTitle => 'Your week in review';

  @override
  String get insightWeeklySummaryBody =>
      'See where your money went this week and how your budgets are holding up.';

  @override
  String get notificationSettings => 'Notifications';

  @override
  String get alertsSection => 'Alerts';

  @override
  String get budgetAlerts => 'Budget alerts';

  @override
  String get budgetAlertsBody => 'When a budget nears or passes its limit';

  @override
  String get paymentReminders => 'Payment reminders';

  @override
  String get paymentRemindersBody => 'A few days before a payment falls due';

  @override
  String get savingsUpdates => 'Savings updates';

  @override
  String get savingsUpdatesBody => 'Progress towards your goals';

  @override
  String get weeklySummaryLabel => 'Weekly summary';

  @override
  String get weeklySummaryBody => 'A digest of the week just gone';

  @override
  String get scheduleSection => 'Timing';

  @override
  String get reminderTime => 'Reminder time';

  @override
  String get quietHours => 'Quiet hours';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Summary day';

  @override
  String get permissionRequired => 'Notifications are turned off';

  @override
  String get permissionRequiredBody =>
      'Allow notifications so RainyPenny can warn you before a budget or a payment gets away from you.';

  @override
  String get allowNotifications => 'Allow notifications';

  @override
  String get permissionDenied =>
      'Notifications are blocked. You can turn them on in your device settings.';

  @override
  String get upcomingAlerts => 'Scheduled';

  @override
  String get noScheduledAlerts => 'Nothing scheduled right now';

  @override
  String get noScheduledAlertsBody =>
      'Alerts appear here as your budgets and payments approach their limits.';

  @override
  String scheduledFor(String date) {
    return 'Scheduled for $date';
  }

  @override
  String get everyWeek => 'Every week';

  @override
  String get allNotificationsOff => 'All notifications are off';

  @override
  String get needsAttention => 'Needs attention';

  @override
  String get quickActionsTitle => 'What would you like to do?';

  @override
  String get createSection => 'Record';

  @override
  String get jumpToSection => 'Jump to';

  @override
  String get addLoanAction => 'Add loan';

  @override
  String get addBudgetAction => 'Add budget';

  @override
  String get addGoalAction => 'Add goal';

  @override
  String get longPressHint => 'Tip: hold + to log an expense straight away';

  @override
  String get searchCurrencies => 'Search currencies';

  @override
  String get noCurrenciesFound => 'No currencies found';

  @override
  String get noCurrenciesFoundMessage =>
      'Try a different code, symbol or name.';

  @override
  String get popularCurrencies => 'Popular';

  @override
  String get allCurrencies => 'All currencies';

  @override
  String get totalLoanAmount => 'Total loan amount';

  @override
  String get installmentAmount => 'Installment amount';

  @override
  String get numberOfInstallments => 'Number of installments';

  @override
  String get paidInstallments => 'Paid installments';

  @override
  String get remainingInstallments => 'Remaining installments';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid of $total paid';
  }

  @override
  String get finalPayment => 'Final payment';

  @override
  String get paymentDueDate => 'Payment due date';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Day $day of each month';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'On track';

  @override
  String get statusDueSoon => 'Due soon';

  @override
  String get statusOverdue => 'Overdue';

  @override
  String get statusCompleted => 'Paid off';

  @override
  String get repaymentProgress => 'Repayment progress';

  @override
  String get byAmount => 'By amount';

  @override
  String get byInstallments => 'By installments';

  @override
  String get startDate => 'Start date';

  @override
  String get openEnded => 'Open-ended';

  @override
  String get loanDetails => 'Loan details';

  @override
  String get notSet => 'Not set';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject is due today';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Your $amount payment is due today. A quick tap keeps it on time.';
  }

  @override
  String get remindMorningTitle => 'Good morning ☀️';

  @override
  String get remindMorningBody =>
      'Start the day on top of your money. Anything to add from yesterday?';

  @override
  String get remindNoonTitle => 'Midday check-in';

  @override
  String get remindNoonBody =>
      'Lunch, coffee, a fare? Add it in a few seconds.';

  @override
  String get remindAfternoonTitle => 'Quick catch-up';

  @override
  String get remindAfternoonBody =>
      'Log what you have spent so far and keep today accurate.';

  @override
  String get remindEveningTitle => 'Wrapping up the day';

  @override
  String get remindEveningBody =>
      'Two minutes now and today\'s numbers are complete.';

  @override
  String get happyWeekendTitle => 'Happy weekend! 🎉';

  @override
  String get happyWeekendBody =>
      'Enjoy it — and keep an eye on the weekend spending.';

  @override
  String get dailyReminders => 'Daily expense reminders';

  @override
  String get dailyRemindersBody =>
      'Friendly nudges to keep your expenses up to date';

  @override
  String get weekendGreeting => 'Happy Weekend';

  @override
  String get weekendGreetingBody =>
      'A friendly hello at the start of your weekend';

  @override
  String get reminderTimesSection => 'Reminder times';

  @override
  String get slotMorning => 'Morning';

  @override
  String get slotNoon => 'Noon';

  @override
  String get slotAfternoon => 'Afternoon';

  @override
  String get slotEvening => 'Evening';

  @override
  String get everyDay => 'Every day';

  @override
  String get financialReport => 'Financial Report';

  @override
  String get preparedFor => 'Prepared for';

  @override
  String get generatedOn => 'Generated on';

  @override
  String get reportDisclaimer =>
      'Generated by RainyPenny from your own records.';

  @override
  String pageOf(int page, int total) {
    return 'Page $page of $total';
  }

  @override
  String get overview => 'Overview';

  @override
  String get description => 'Description';

  @override
  String get totalIncome => 'Total income';

  @override
  String get totalExpenses => 'Total expenses';

  @override
  String get totalSaved => 'Total saved';

  @override
  String get shareOfTotal => 'Share';

  @override
  String get used => 'Used';

  @override
  String get goal => 'Goal';

  @override
  String get targetDate => 'Target date';

  @override
  String get progress => 'Progress';

  @override
  String get paidOffShort => 'Paid';

  @override
  String get transactions => 'Transactions';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'and $count more transactions',
      one: 'and 1 more transaction',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Export PDF';

  @override
  String get sharePdf => 'Share report';

  @override
  String get preparingReport => 'Preparing your report…';

  @override
  String get reportReady => 'Report ready';

  @override
  String get reportFailed => 'Could not create the report';

  @override
  String get categories => 'Categories';

  @override
  String get categoriesIntro =>
      'Add your own categories to file income and expenses exactly the way you think about them.';

  @override
  String get expenseCategories => 'Expense categories';

  @override
  String get incomeCategories => 'Income categories';

  @override
  String get newCategory => 'New category';

  @override
  String get editCategory => 'Edit category';

  @override
  String get categoryName => 'Name';

  @override
  String get categoryNameHint => 'e.g. Pet care';

  @override
  String get icon => 'Icon';

  @override
  String get categorySaved => 'Category saved';

  @override
  String get categoryDeleted => 'Category deleted';

  @override
  String get deleteCategory => 'Delete this category?';

  @override
  String deleteCategoryBody(String name) {
    return '$name will be removed from your categories.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count records still use this category',
      one: '1 record still uses this category',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Nothing here yet.';

  @override
  String get builtIn => 'Built-in';

  @override
  String get manageCategories => 'Manage categories';

  @override
  String get expense => 'Expense';

  @override
  String get languageNote =>
      'Arabic, Urdu, Persian and Hebrew switch the whole interface to right-to-left, including charts and PDF reports.';

  @override
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get skip => 'Skip';

  @override
  String get continueLabel => 'Continue';

  @override
  String get selected => 'Selected';

  @override
  String get passwordRequired => 'Enter your password';

  @override
  String get newPasswordLabel => 'New password';

  @override
  String get confirmPasswordLabel => 'Confirm password';

  @override
  String get passwordsDoNotMatch => 'Both passwords must match';

  @override
  String get showPassword => 'Show password';

  @override
  String get hidePassword => 'Hide password';

  @override
  String get savePassword => 'Save password';

  @override
  String get backToSignIn => 'Back to sign in';

  @override
  String get alreadyHaveAccount => 'I already have an account';

  @override
  String get getStarted => 'Get started';

  @override
  String get acceptTerms =>
      'I agree to the Terms of Service and the Privacy Policy';

  @override
  String get acceptTermsRequired => 'Please accept to continue';

  @override
  String get passwordStrengthTooShort => 'Too short';

  @override
  String get passwordStrengthWeak => 'Weak';

  @override
  String get passwordStrengthFair => 'Fair';

  @override
  String get passwordStrengthGood => 'Good';

  @override
  String get passwordStrengthStrong => 'Strong';

  @override
  String get passwordAdvice =>
      'A long phrase you will remember beats a short one full of symbols. Avoid anything you already use somewhere else.';

  @override
  String get authInvalidCredentials =>
      'That email and password do not match an account';

  @override
  String get authEmailNotConfirmed =>
      'Confirm your email address before signing in';

  @override
  String get authEmailAlreadyRegistered =>
      'An account with this email already exists';

  @override
  String get authWeakPassword => 'Choose a longer password';

  @override
  String get authRateLimited => 'Too many attempts. Try again in a few minutes';

  @override
  String get authNetworkError =>
      'No connection. Check your network and try again';

  @override
  String get authGenericError => 'Something went wrong. Please try again';

  @override
  String get confirmEmailTitle => 'Check your email';

  @override
  String confirmEmailBody(String email) {
    return 'We sent a confirmation link to $email. Open it to finish setting up your account.';
  }

  @override
  String get resendConfirmation => 'Resend confirmation email';

  @override
  String get confirmationResent => 'Confirmation email sent';

  @override
  String get forgotPasswordTitle => 'Reset your password';

  @override
  String get forgotPasswordSubtitle =>
      'Enter the email you signed up with and we will send you a link to choose a new password.';

  @override
  String get sendResetLink => 'Send reset link';

  @override
  String get resetLinkSentTitle => 'Reset link sent';

  @override
  String resetLinkSentBody(String email) {
    return 'If $email has an account, a reset link is on its way.';
  }

  @override
  String get resetLinkSentHint =>
      'The link expires in an hour. If it does not arrive, check your spam folder before asking for another.';

  @override
  String get tryAnotherEmail => 'Use a different email';

  @override
  String get resetPasswordTitle => 'Choose a new password';

  @override
  String get resetPasswordSubtitle =>
      'Pick something you have not used on this account before.';

  @override
  String get passwordChangedTitle => 'Password updated';

  @override
  String get passwordChangedBody =>
      'Your new password is saved. You are signed in and ready to go.';

  @override
  String get demoModeHint => 'Demo build — no account needed';

  @override
  String get demoModeFill => 'Fill in';

  @override
  String get welcomeTrackTitle => 'See where your money goes';

  @override
  String get welcomeTrackBody =>
      'Record what comes in and what goes out. RainyPenny turns it into a picture you can actually read.';

  @override
  String get welcomeBudgetTitle => 'Set limits that hold';

  @override
  String get welcomeBudgetBody =>
      'Give each part of your spending a monthly ceiling, and get told before you go through it rather than after.';

  @override
  String get welcomeGoalsTitle => 'Save for what matters';

  @override
  String get welcomeGoalsBody =>
      'Name a goal, set a target, and watch it fill up. A rainy day fund is easier to build when you can see it.';

  @override
  String get welcomePrivacyTitle => 'Your money stays yours';

  @override
  String get welcomePrivacyBody =>
      'Your figures are yours alone. Nothing is sold, and nothing is shared with anyone.';

  @override
  String stepOf(int step, int total) {
    return 'Step $step of $total';
  }

  @override
  String get onboardingNameTitle => 'What should we call you?';

  @override
  String get onboardingNameBody =>
      'We will use it to greet you, and nowhere else.';

  @override
  String get onboardingNameHint =>
      'A first name is plenty. You can change it later.';

  @override
  String get onboardingCurrencyTitle => 'Which currency do you use?';

  @override
  String get onboardingCurrencyBody =>
      'Every amount in the app is shown in this currency. Choosing it does not convert anything.';

  @override
  String get onboardingCurrencySearch => 'Search all currencies';

  @override
  String get onboardingAppearanceTitle => 'Make it yours';

  @override
  String get onboardingAppearanceBody =>
      'Pick a look. Everything changes as you tap, and you can come back to it any time.';

  @override
  String get onboardingNotificationsTitle => 'Stay on top of it';

  @override
  String get onboardingNotificationsBody =>
      'A quiet nudge at the right moment is what turns this into a habit.';

  @override
  String get onboardingNotifyReminders =>
      'A gentle reminder to record what you spent';

  @override
  String get onboardingNotifyBudget => 'A heads-up before a budget runs out';

  @override
  String get onboardingNotifySummary =>
      'A weekly summary of where your money went';

  @override
  String get onboardingNotifyEnable => 'Turn on notifications';

  @override
  String get onboardingNotifyDone => 'Notification settings saved';

  @override
  String get onboardingNotifyLater =>
      'You can change all of this in Settings, whenever you like.';

  @override
  String get onboardingReadyTitle => 'You are all set';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'You are all set, $name';
  }

  @override
  String get onboardingReadyBody =>
      'That is setup done. Would you like a quick tour of how everything works?';

  @override
  String get onboardingTakeTour => 'Show me around';

  @override
  String get onboardingGoToApp => 'Take me to the app';

  @override
  String get onboardingTourLater =>
      'Not now? The guide stays in Settings for whenever you want it.';

  @override
  String get beginnersGuide => 'Beginner’s guide';

  @override
  String get guideFinish => 'Finish';

  @override
  String chapterOf(int number, int total) {
    return 'Chapter $number of $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Open $screen';
  }

  @override
  String get guideDashboardTitle => 'Your dashboard';

  @override
  String get guideDashboardBody =>
      'Everything opens here. The card at the top is what you have left; under it sits what came in and what went out this period, then your spending, budgets and goals.';

  @override
  String get guideDashboardTip1 =>
      'Pull the screen down to refresh everything at once.';

  @override
  String get guideDashboardTip2 =>
      'Tap the income or expenses card to jump to that list.';

  @override
  String get guideDashboardTip3 =>
      'The rings and insights update the moment you record something.';

  @override
  String get guideAddTitle => 'Recording money';

  @override
  String get guideAddBody =>
      'The button in the middle of the bar is where everything starts. It opens a short menu: money out, money in, a debt, a budget or a savings goal.';

  @override
  String get guideAddTip1 => 'Tap the centre button to record money in or out.';

  @override
  String get guideAddTip2 =>
      'Hold it down to go straight to a new expense and skip the menu.';

  @override
  String get guideAddTip3 =>
      'Always pick a category — that is what makes the charts and budgets work.';

  @override
  String get guideCategoriesTitle => 'Categories';

  @override
  String get guideCategoriesBody =>
      'Categories are how spending gets grouped. The ones that ship with the app cover most people, and you can rename them or add your own.';

  @override
  String get guideCategoriesTip1 =>
      'Settings, then Manage categories, to change or add one.';

  @override
  String get guideCategoriesTip2 =>
      'Anything left uncategorised lands in Other, so the charts stay honest.';

  @override
  String get guideBudgetTitle => 'Budgets';

  @override
  String get guideBudgetBody =>
      'A budget is a monthly ceiling for one category. The bar fills as you spend and turns as it gets close, so you find out before you have gone through it.';

  @override
  String get guideBudgetTip1 =>
      'Start with two or three categories, not all of them at once.';

  @override
  String get guideBudgetTip2 =>
      'Set the limit slightly above what you usually spend, then tighten it.';

  @override
  String get guideBudgetTip3 =>
      'Leave budget alerts on and the app warns you as one runs low.';

  @override
  String get guideSavingsTitle => 'Savings goals';

  @override
  String get guideSavingsBody =>
      'Name what you are saving for, set a target and a date, and the app works out what you need to put aside each month to get there.';

  @override
  String get guideSavingsTip1 =>
      'A named goal is easier to keep than a vague intention to save.';

  @override
  String get guideSavingsTip2 =>
      'Several small goals get finished more often than one large one.';

  @override
  String get guideLoansTitle => 'Debts and loans';

  @override
  String get guideLoansBody =>
      'Record what you owe, what it costs and when the next payment falls due. Everything you are paying off sits in one list with the total left on it.';

  @override
  String get guideLoansTip1 =>
      'Add the due date and payment reminders will chase it for you.';

  @override
  String get guideLoansTip2 =>
      'A debt marked overdue shows in red on the dashboard until it is paid.';

  @override
  String get guideReportsTitle => 'Reports';

  @override
  String get guideReportsBody =>
      'The deeper view: income against expenses, spending by category, how your budgets held up, and what share of your income you kept.';

  @override
  String get guideReportsTip1 =>
      'Switch between week, month and quarter at the top of the screen.';

  @override
  String get guideReportsTip2 =>
      'Export or share a PDF — it comes out in your own language and direction.';

  @override
  String get guideSettingsTitle => 'Settings';

  @override
  String get guideSettingsBody =>
      'Language, currency, colours and alerts all live here, and none of them are locked in by setup — change any of them whenever you like.';

  @override
  String get guideSettingsTip1 =>
      'Forty languages, and the whole layout mirrors for right-to-left ones.';

  @override
  String get guideSettingsTip2 =>
      'Pick which alerts you want and the hours they may arrive.';

  @override
  String get guideSettingsTip3 =>
      'Quiet hours hold everything back until the morning.';

  @override
  String get guideHabitTitle => 'Make it stick';

  @override
  String get guideHabitBody =>
      'The app is only as good as what you put into it. A minute a day beats an hour once a month, and after a fortnight the numbers start telling you something.';

  @override
  String get guideHabitTip1 =>
      'Record what you spend as it happens, not at the end of the week.';

  @override
  String get guideHabitTip2 =>
      'Glance at the dashboard once a day. Ten seconds is enough.';

  @override
  String get guideHabitTip3 =>
      'This guide stays in Settings — come back to it whenever you like.';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeCaption => 'Light, dark, or whatever your phone is doing.';

  @override
  String get accentColor => 'Accent colour';

  @override
  String get accentColorCaption =>
      'Colours the buttons, highlights and charts.';

  @override
  String get accentSemanticsNote =>
      'Money in and money out keep their own colours in every theme, so a figure never changes meaning because you changed the accent.';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Green';

  @override
  String get accentSky => 'Sky';

  @override
  String get accentBlue => 'Blue';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Pink';

  @override
  String get accentCrimson => 'Crimson';

  @override
  String get accentOrange => 'Orange';

  @override
  String get accentSlate => 'Slate';

  @override
  String get searchLanguages => 'Search languages';

  @override
  String get suggestedLanguages => 'Suggested';

  @override
  String get allLanguages => 'All languages';

  @override
  String get noLanguagesFound => 'No languages found';

  @override
  String get noLanguagesFoundMessage =>
      'Try the name in English, or the two-letter code.';

  @override
  String get rightToLeft => 'Right to left';

  @override
  String get replayGuide => 'Replay the guide';

  @override
  String get replaySetup => 'Run setup again';

  @override
  String get replaySetupBody =>
      'Go through the first-run questions again. Nothing you have recorded is deleted.';

  @override
  String get rateTitle => 'Enjoying RainyPenny?';

  @override
  String get rateBody =>
      'You have been keeping at this for a while now. A rating takes a moment and helps other people find the app.';

  @override
  String get rateAction => 'Rate the app';

  @override
  String get rateLater => 'Maybe later';

  @override
  String get rateNever => 'No thanks';

  @override
  String get rateThanks => 'Thank you';

  @override
  String get monthlySalary => 'Monthly salary';

  @override
  String get remainingAmount => 'Remaining';

  @override
  String get carriedForward => 'Carried forward';

  @override
  String get carriedForwardHint => 'Left over from last cycle';

  @override
  String get totalSpending => 'Total spending';

  @override
  String get salaryCycle => 'Salary cycle';

  @override
  String get payday => 'Salary day';

  @override
  String get paydayDescription =>
      'The day your salary arrives. Your financial month runs from this day until the day before the next one.';

  @override
  String get paydayUpdated => 'Salary day updated';

  @override
  String paydayDayOfMonth(int day) {
    return 'Day $day';
  }

  @override
  String get paydayShortMonthNote =>
      'In shorter months the cycle starts on the last day instead.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days to payday',
      one: '1 day to payday',
      zero: 'Last day of the cycle',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Next payday';

  @override
  String get spentSoFar => 'Spent so far';

  @override
  String get dailyAllowance => 'Safe to spend daily';

  @override
  String get overspentNotice => 'You have spent more than came in this cycle.';

  @override
  String get backToThisMonth => 'Back to this month';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'No salary recorded yet';

  @override
  String get addSalaryAction => 'Add your salary';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excellent';

  @override
  String get healthGood => 'Good';

  @override
  String get healthFair => 'Fair';

  @override
  String get healthNeedsWork => 'Needs work';

  @override
  String get healthExcellentBody =>
      'You are saving well and staying inside your budgets.';

  @override
  String get healthGoodBody =>
      'You are on track with your spending this period.';

  @override
  String get healthFairBody =>
      'A few budgets are running hot. Small changes will help.';

  @override
  String get healthNeedsWorkBody =>
      'Spending is outpacing your plan. Start with your largest category.';

  @override
  String get factorSavingsRate => 'Savings rate';

  @override
  String get factorBudgetControl => 'Budget control';

  @override
  String get factorDebtLoad => 'Debt load';

  @override
  String get factorSpendingTrend => 'Spending trend';

  @override
  String factorKept(String percent) {
    return '$percent% kept';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% used';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% of income';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Up $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Down $percent%';
  }

  @override
  String get howScoreWorks => 'How this score works';

  @override
  String get healthScoreExplainer =>
      'Your score blends four things: how much of your income you keep, how well you stay inside your budgets, how much of your income goes to debt, and whether your spending is rising or falling.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% of the score';
  }

  @override
  String get viewHealthDetails => 'See the breakdown';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get changePhoto => 'Change photo';

  @override
  String get removePhoto => 'Remove photo';

  @override
  String get personalInformationIntro =>
      'Your name and photo appear across the app. Your email is the address you sign in with.';

  @override
  String get emailNotEditable =>
      'Contact support to change the address you sign in with.';

  @override
  String get pressBackAgainToExit => 'Press back again to exit';

  @override
  String get categoryHousing => 'Housing';

  @override
  String get categoryFood => 'Food & Dining';

  @override
  String get categoryTransport => 'Transportation';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryBills => 'Bills & Utilities';

  @override
  String get categoryEntertainment => 'Entertainment';

  @override
  String get categoryHealth => 'Health & Fitness';

  @override
  String get categoryEducation => 'Education';

  @override
  String get categoryTravel => 'Travel';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investments';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Other';

  @override
  String get categoryGroceries => 'Groceries';

  @override
  String get categoryDining => 'Dining';

  @override
  String get categoryCoffee => 'Coffee';

  @override
  String get categoryUtilities => 'Utilities';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Phone';

  @override
  String get categoryInsurance => 'Insurance';

  @override
  String get categorySubscriptions => 'Subscriptions';

  @override
  String get categoryPersonalCare => 'Personal care';

  @override
  String get categoryClothing => 'Clothing';

  @override
  String get categoryElectronics => 'Electronics';

  @override
  String get categoryHomeSupplies => 'Home supplies';

  @override
  String get categoryPets => 'Pets';

  @override
  String get categoryChildcare => 'Childcare';

  @override
  String get categoryFamily => 'Family';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryMedicine => 'Medicine';

  @override
  String get categoryMedical => 'Medical';

  @override
  String get categoryCharity => 'Charity';

  @override
  String get categoryTaxes => 'Taxes';

  @override
  String get categoryFees => 'Fees';

  @override
  String get categoryDebt => 'Debt';

  @override
  String get categorySavings => 'Savings';

  @override
  String get categoryRepairs => 'Repairs';

  @override
  String get categoryCarMaintenance => 'Car maintenance';

  @override
  String get categoryFuel => 'Fuel';

  @override
  String get categoryParking => 'Parking';

  @override
  String get categoryPublicTransport => 'Public transport';

  @override
  String get categoryRent => 'Rent';

  @override
  String get categoryMortgage => 'Mortgage';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Commission';

  @override
  String get categoryPension => 'Pension';

  @override
  String get categoryInterest => 'Interest';

  @override
  String get categoryDividends => 'Dividends';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Refund';

  @override
  String get categoryRentalIncome => 'Rental income';

  @override
  String get addCategory => 'New category';

  @override
  String get filterByCategory => 'Filter by category';

  @override
  String get allCategories => 'All categories';

  @override
  String get clearFilters => 'Clear filters';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'All time';

  @override
  String get customRange => 'Custom';

  @override
  String get selectDateRange => 'Choose a period';

  @override
  String rangeApplied(String start, String end) {
    return 'Showing $start – $end';
  }

  @override
  String get loans => 'Loans';

  @override
  String get debts => 'Debts';

  @override
  String get noLoansTitle => 'No loans';

  @override
  String get noLoansBody => 'You have no active loans.';
}
