// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppL10nDe extends AppL10n {
  AppL10nDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Sparen für schlechte Zeiten';

  @override
  String get navHome => 'Start';

  @override
  String get navTransactions => 'Umsätze';

  @override
  String get navAdd => 'Neu';

  @override
  String get navReports => 'Berichte';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Guten Morgen, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Guten Tag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Guten Abend, $name';
  }

  @override
  String get greetingSubtitle => 'Hier ist deine Finanzübersicht';

  @override
  String get totalBalance => 'Gesamtsaldo';

  @override
  String get vsLastPeriod => 'ggü. Vorperiode';

  @override
  String get income => 'Einnahmen';

  @override
  String get expenses => 'Ausgaben';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Letzte 30 Tage';

  @override
  String get quickActions => 'Schnellaktionen';

  @override
  String get addIncome => 'Einnahme erfassen';

  @override
  String get addExpense => 'Ausgabe erfassen';

  @override
  String get spendingOverview => 'Ausgabenübersicht';

  @override
  String get recentTransactions => 'Letzte Umsätze';

  @override
  String get seeAll => 'Alle ansehen';

  @override
  String get viewAll => 'Alle ansehen';

  @override
  String get budgetProgress => 'Budgetverlauf';

  @override
  String get savingsGoals => 'Sparziele';

  @override
  String get financialInsight => 'Finanz-Insight';

  @override
  String get financialHealth => 'Finanzielle Gesundheit';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'Umsätze suchen';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterIncome => 'Einnahmen';

  @override
  String get filterExpenses => 'Ausgaben';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get noTransactionsTitle => 'Keine Umsätze gefunden';

  @override
  String get noTransactionsBody =>
      'Versuche eine andere Suche oder einen anderen Filter.';

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
  String get addTransaction => 'Umsatz erfassen';

  @override
  String get amount => 'Betrag';

  @override
  String get category => 'Kategorie';

  @override
  String get date => 'Datum';

  @override
  String get note => 'Notiz';

  @override
  String get noteHint => 'Optionale Notiz';

  @override
  String get saveIncome => 'Einnahme speichern';

  @override
  String get saveExpense => 'Ausgabe speichern';

  @override
  String get selectCategory => 'Kategorie wählen';

  @override
  String get transactionSaved => 'Umsatz gespeichert';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'Beschreibung';

  @override
  String get descriptionHint => 'z. B. Lebensmittel';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgets';

  @override
  String get totalBudget => 'Gesamtbudget';

  @override
  String get spent => 'Ausgegeben';

  @override
  String get remaining => 'Verbleibend';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'Im Plan';

  @override
  String get approachingLimit => 'Nähert sich dem Limit';

  @override
  String get overBudget => 'Budget überschritten';

  @override
  String get savings => 'Ersparnisse';

  @override
  String get yourGoals => 'Deine Ziele';

  @override
  String get saved => 'Gespart';

  @override
  String get target => 'Ziel';

  @override
  String get monthlyContribution => 'Monatlich';

  @override
  String get addFunds => 'Geld hinzufügen';

  @override
  String get goalComplete => 'Ziel erreicht';

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
  String get loansAndDebts => 'Kredite & Schulden';

  @override
  String get totalOutstanding => 'Gesamtschuld';

  @override
  String get monthlyPayment => 'Monatlich';

  @override
  String get nextPayment => 'Nächste Zahlung';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'Zinsen';

  @override
  String get upcomingPayments => 'Anstehende Zahlungen';

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
  String get overdue => 'Überfällig';

  @override
  String get reports => 'Berichte';

  @override
  String get week => 'Woche';

  @override
  String get month => 'Monat';

  @override
  String get quarter => 'Quartal';

  @override
  String get incomeVsExpenses => 'Einnahmen vs. Ausgaben';

  @override
  String get spendingByCategory => 'Ausgaben nach Kategorie';

  @override
  String get budgetPerformance => 'Budget-Performance';

  @override
  String get insights => 'Insights';

  @override
  String get savingsRate => 'Sparquote';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Persönliche Daten';

  @override
  String get changePassword => 'Passwort ändern';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get preferences => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get currency => 'Währung';

  @override
  String get theme => 'Design';

  @override
  String get security => 'Sicherheit';

  @override
  String get privacyAndSecurity => 'Datenschutz & Sicherheit';

  @override
  String get help => 'Hilfe';

  @override
  String get helpAndSupport => 'Hilfe & Support';

  @override
  String get termsAndConditions => 'AGB';

  @override
  String get logOut => 'Abmelden';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get dashboard => 'Übersicht';

  @override
  String get settings => 'Einstellungen';

  @override
  String get noNotificationsTitle => 'Alles erledigt';

  @override
  String get noNotificationsBody =>
      'Neue Insights und Erinnerungen erscheinen hier.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get done => 'Fertig';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get close => 'Schließen';

  @override
  String get somethingWentWrong => 'Etwas ist schiefgelaufen';

  @override
  String get comingSoon => 'Bald verfügbar';

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
