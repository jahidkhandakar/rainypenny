// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppL10nHi extends AppL10n {
  AppL10nHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'मुश्किल दिनों के लिए बचत करें';

  @override
  String get navHome => 'होम';

  @override
  String get navTransactions => 'लेन-देन';

  @override
  String get navAdd => 'जोड़ें';

  @override
  String get navReports => 'रिपोर्ट';

  @override
  String get navProfile => 'प्रोफ़ाइल';

  @override
  String greetingMorning(String name) {
    return 'सुप्रभात, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'शुभ संध्या, $name';
  }

  @override
  String get greetingSubtitle => 'यह रहा आपका वित्तीय सारांश';

  @override
  String get totalBalance => 'कुल शेष';

  @override
  String get vsLastPeriod => 'पिछली अवधि की तुलना में';

  @override
  String get income => 'आय';

  @override
  String get expenses => 'व्यय';

  @override
  String get netBalance => 'शुद्ध शेष';

  @override
  String get lastThirtyDays => 'पिछले 30 दिन';

  @override
  String get quickActions => 'त्वरित कार्य';

  @override
  String get addIncome => 'आय जोड़ें';

  @override
  String get addExpense => 'व्यय जोड़ें';

  @override
  String get spendingOverview => 'खर्च का अवलोकन';

  @override
  String get recentTransactions => 'हाल के लेन-देन';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get viewAll => 'सभी देखें';

  @override
  String get budgetProgress => 'बजट प्रगति';

  @override
  String get savingsGoals => 'बचत लक्ष्य';

  @override
  String get financialInsight => 'वित्तीय अंतर्दृष्टि';

  @override
  String get financialHealth => 'वित्तीय स्वास्थ्य';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'लेन-देन खोजें';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterIncome => 'आय';

  @override
  String get filterExpenses => 'व्यय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get noTransactionsTitle => 'कोई लेन-देन नहीं मिला';

  @override
  String get noTransactionsBody => 'कोई दूसरी खोज या फ़िल्टर आज़माएँ।';

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
  String get addTransaction => 'लेन-देन जोड़ें';

  @override
  String get amount => 'राशि';

  @override
  String get category => 'श्रेणी';

  @override
  String get date => 'तारीख़';

  @override
  String get note => 'टिप्पणी';

  @override
  String get noteHint => 'वैकल्पिक टिप्पणी';

  @override
  String get saveIncome => 'आय सहेजें';

  @override
  String get saveExpense => 'व्यय सहेजें';

  @override
  String get selectCategory => 'श्रेणी चुनें';

  @override
  String get transactionSaved => 'लेन-देन सहेजा गया';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे किराना';

  @override
  String get budget => 'बजट';

  @override
  String get budgets => 'बजट';

  @override
  String get totalBudget => 'कुल बजट';

  @override
  String get spent => 'खर्च';

  @override
  String get remaining => 'शेष';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'सही राह पर';

  @override
  String get approachingLimit => 'सीमा के करीब';

  @override
  String get overBudget => 'बजट से अधिक';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'आपके लक्ष्य';

  @override
  String get saved => 'बचाया गया';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'मासिक';

  @override
  String get addFunds => 'राशि जोड़ें';

  @override
  String get goalComplete => 'लक्ष्य पूरा';

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
  String get loansAndDebts => 'ऋण और देनदारियाँ';

  @override
  String get totalOutstanding => 'कुल बकाया';

  @override
  String get monthlyPayment => 'मासिक';

  @override
  String get nextPayment => 'अगला भुगतान';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'ब्याज';

  @override
  String get upcomingPayments => 'आगामी भुगतान';

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
  String get overdue => 'अतिदेय';

  @override
  String get reports => 'रिपोर्ट';

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'माह';

  @override
  String get quarter => 'तिमाही';

  @override
  String get incomeVsExpenses => 'आय बनाम व्यय';

  @override
  String get spendingByCategory => 'श्रेणी अनुसार खर्च';

  @override
  String get budgetPerformance => 'बजट प्रदर्शन';

  @override
  String get insights => 'अंतर्दृष्टि';

  @override
  String get savingsRate => 'बचत दर';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get account => 'खाता';

  @override
  String get personalInformation => 'व्यक्तिगत जानकारी';

  @override
  String get changePassword => 'पासवर्ड बदलें';

  @override
  String get notifications => 'सूचनाएँ';

  @override
  String get preferences => 'प्राथमिकताएँ';

  @override
  String get language => 'भाषा';

  @override
  String get currency => 'मुद्रा';

  @override
  String get theme => 'थीम';

  @override
  String get security => 'सुरक्षा';

  @override
  String get privacyAndSecurity => 'गोपनीयता और सुरक्षा';

  @override
  String get help => 'सहायता';

  @override
  String get helpAndSupport => 'सहायता और समर्थन';

  @override
  String get termsAndConditions => 'नियम और शर्तें';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get dashboard => 'डैशबोर्ड';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get noNotificationsTitle => 'सब कुछ अपडेट है';

  @override
  String get noNotificationsBody => 'नई अंतर्दृष्टि और अनुस्मारक यहाँ दिखेंगे।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get done => 'हो गया';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get close => 'बंद करें';

  @override
  String get somethingWentWrong => 'कुछ गड़बड़ हो गई';

  @override
  String get comingSoon => 'जल्द ही आ रहा है';

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
  String get nameRequired => 'Give this a name';

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
}
