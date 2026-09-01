// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppL10nIt extends AppL10n {
  AppL10nIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Risparmia per i giorni di pioggia';

  @override
  String get navHome => 'Home';

  @override
  String get navTransactions => 'Movimenti';

  @override
  String get navAdd => 'Aggiungi';

  @override
  String get navReports => 'Report';

  @override
  String get navProfile => 'Profilo';

  @override
  String greetingMorning(String name) {
    return 'Buongiorno, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Buon pomeriggio, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Buonasera, $name';
  }

  @override
  String get greetingSubtitle => 'Ecco il tuo quadro finanziario';

  @override
  String get totalBalance => 'Saldo totale';

  @override
  String get vsLastPeriod => 'vs. periodo precedente';

  @override
  String get income => 'Entrate';

  @override
  String get expenses => 'Uscite';

  @override
  String get netBalance => 'Saldo netto';

  @override
  String get lastThirtyDays => 'Ultimi 30 giorni';

  @override
  String get quickActions => 'Azioni rapide';

  @override
  String get addIncome => 'Aggiungi entrata';

  @override
  String get addExpense => 'Aggiungi uscita';

  @override
  String get spendingOverview => 'Panoramica spese';

  @override
  String get recentTransactions => 'Movimenti recenti';

  @override
  String get seeAll => 'Vedi tutto';

  @override
  String get viewAll => 'Vedi tutto';

  @override
  String get budgetProgress => 'Andamento budget';

  @override
  String get savingsGoals => 'Obiettivi di risparmio';

  @override
  String get financialInsight => 'Analisi finanziaria';

  @override
  String get financialHealth => 'Salute finanziaria';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'Cerca movimenti';

  @override
  String get filterAll => 'Tutti';

  @override
  String get filterIncome => 'Entrate';

  @override
  String get filterExpenses => 'Uscite';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get noTransactionsTitle => 'Nessun movimento';

  @override
  String get noTransactionsBody =>
      'Prova con un\'altra ricerca o un altro filtro.';

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
  String get addTransaction => 'Aggiungi movimento';

  @override
  String get amount => 'Importo';

  @override
  String get category => 'Categoria';

  @override
  String get date => 'Data';

  @override
  String get note => 'Nota';

  @override
  String get noteHint => 'Nota facoltativa';

  @override
  String get saveIncome => 'Salva entrata';

  @override
  String get saveExpense => 'Salva uscita';

  @override
  String get selectCategory => 'Scegli categoria';

  @override
  String get transactionSaved => 'Movimento salvato';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'Descrizione';

  @override
  String get descriptionHint => 'es. Spesa';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budget';

  @override
  String get totalBudget => 'Budget totale';

  @override
  String get spent => 'Speso';

  @override
  String get remaining => 'Rimanente';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'In linea';

  @override
  String get approachingLimit => 'Vicino al limite';

  @override
  String get overBudget => 'Budget superato';

  @override
  String get savings => 'Risparmi';

  @override
  String get yourGoals => 'I tuoi obiettivi';

  @override
  String get saved => 'Risparmiato';

  @override
  String get target => 'Obiettivo';

  @override
  String get monthlyContribution => 'Mensile';

  @override
  String get addFunds => 'Aggiungi fondi';

  @override
  String get goalComplete => 'Obiettivo raggiunto';

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
  String get loansAndDebts => 'Prestiti e debiti';

  @override
  String get totalOutstanding => 'Totale residuo';

  @override
  String get monthlyPayment => 'Mensile';

  @override
  String get nextPayment => 'Prossimo pagamento';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'Interessi';

  @override
  String get upcomingPayments => 'Prossimi pagamenti';

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
  String get overdue => 'Scaduto';

  @override
  String get reports => 'Report';

  @override
  String get week => 'Settimana';

  @override
  String get month => 'Mese';

  @override
  String get quarter => 'Trimestre';

  @override
  String get incomeVsExpenses => 'Entrate e uscite';

  @override
  String get spendingByCategory => 'Spese per categoria';

  @override
  String get budgetPerformance => 'Performance del budget';

  @override
  String get insights => 'Analisi';

  @override
  String get savingsRate => 'Tasso di risparmio';

  @override
  String get profile => 'Profilo';

  @override
  String get account => 'Account';

  @override
  String get personalInformation => 'Informazioni personali';

  @override
  String get changePassword => 'Cambia password';

  @override
  String get notifications => 'Notifiche';

  @override
  String get preferences => 'Preferenze';

  @override
  String get language => 'Lingua';

  @override
  String get currency => 'Valuta';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Sicurezza';

  @override
  String get privacyAndSecurity => 'Privacy e sicurezza';

  @override
  String get help => 'Aiuto';

  @override
  String get helpAndSupport => 'Aiuto e supporto';

  @override
  String get termsAndConditions => 'Termini e condizioni';

  @override
  String get logOut => 'Esci';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get settings => 'Impostazioni';

  @override
  String get noNotificationsTitle => 'Sei aggiornato';

  @override
  String get noNotificationsBody =>
      'Nuove analisi e promemoria appariranno qui.';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get done => 'Fatto';

  @override
  String get retry => 'Riprova';

  @override
  String get close => 'Chiudi';

  @override
  String get somethingWentWrong => 'Qualcosa è andato storto';

  @override
  String get comingSoon => 'Disponibile a breve';

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
