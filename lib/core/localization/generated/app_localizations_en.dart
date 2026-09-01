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
  String get dashboard => 'Dashboard';

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
}
