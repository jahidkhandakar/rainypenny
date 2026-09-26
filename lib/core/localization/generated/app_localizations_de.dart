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
  String get appTagline => 'Für einen regnerischen Tag sparen';

  @override
  String get navHome => 'Startseite';

  @override
  String get navTransactions => 'Transaktionen';

  @override
  String get navAdd => 'Hinzufügen';

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
  String get vsLastPeriod => 'gegenüber dem letzten Zeitraum';

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
  String get addIncome => 'Einnahme hinzufügen';

  @override
  String get addExpense => 'Ausgabe hinzufügen';

  @override
  String get spendingOverview => 'Ausgabenübersicht';

  @override
  String get recentTransactions => 'Letzte Transaktionen';

  @override
  String get seeAll => 'Alle anzeigen';

  @override
  String get viewAll => 'Alle anzeigen';

  @override
  String get budgetProgress => 'Budgetfortschritt';

  @override
  String get savingsGoals => 'Sparziele';

  @override
  String get financialInsight => 'Finanzielle Erkenntnis';

  @override
  String get financialHealth => 'Finanzielle Gesundheit';

  @override
  String ofTotal(String total) {
    return 'von $total';
  }

  @override
  String get searchTransactions => 'Transaktionen suchen';

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
  String get noTransactionsTitle => 'Keine Transaktionen gefunden';

  @override
  String get noTransactionsBody =>
      'Versuche eine andere Suche oder einen anderen Filter, um mehr Aktivitäten zu sehen.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Transaktionen',
      one: '1 Transaktion',
      zero: 'Keine Transaktionen',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Transaktion hinzufügen';

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
  String get selectCategory => 'Kategorie auswählen';

  @override
  String get transactionSaved => 'Transaktion gespeichert';

  @override
  String get amountRequired => 'Gib einen Betrag größer als null ein';

  @override
  String get titleRequired => 'Gib dieser Transaktion einen Namen';

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
    return '$percent% verwendet';
  }

  @override
  String get onTrack => 'Im Plan';

  @override
  String get approachingLimit => 'Limit wird erreicht';

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
      other: 'Noch $count Monate',
      one: 'Noch 1 Monat',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Kredite & Schulden';

  @override
  String get totalOutstanding => 'Offener Gesamtbetrag';

  @override
  String get monthlyPayment => 'Monatlich';

  @override
  String get nextPayment => 'Nächste Zahlung';

  @override
  String paidOff(int percent) {
    return '$percent% abbezahlt';
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
      other: 'In $count Tagen fällig',
      one: 'Morgen fällig',
      zero: 'Heute fällig',
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
  String get budgetPerformance => 'Budgetentwicklung';

  @override
  String get insights => 'Erkenntnisse';

  @override
  String get savingsRate => 'Sparquote';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Persönliche Informationen';

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
  String get termsAndConditions => 'Allgemeine Geschäftsbedingungen';

  @override
  String get logOut => 'Abmelden';

  @override
  String memberSince(String date) {
    return 'Mitglied seit $date';
  }

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get settings => 'Einstellungen';

  @override
  String get noNotificationsTitle => 'Du bist auf dem neuesten Stand';

  @override
  String get noNotificationsBody =>
      'Neue Erkenntnisse und Erinnerungen werden hier angezeigt.';

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
  String get comingSoon => 'Kommt mit der vollständigen Version';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get delete => 'Löschen';

  @override
  String get undo => 'Rückgängig';

  @override
  String get add => 'Hinzufügen';

  @override
  String get create => 'Erstellen';

  @override
  String get nameRequired => 'Gib deinen Namen ein';

  @override
  String get amountAboveZero => 'Gib einen Betrag größer als null ein';

  @override
  String get editTransaction => 'Transaktion bearbeiten';

  @override
  String get deleteTransaction => 'Transaktion löschen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title wird aus deinem Buch entfernt.';
  }

  @override
  String get transactionDeleted => 'Transaktion gelöscht';

  @override
  String get transactionUpdated => 'Transaktion aktualisiert';

  @override
  String get newBudget => 'Neues Budget';

  @override
  String get editBudget => 'Budget bearbeiten';

  @override
  String get budgetLimit => 'Monatliches Limit';

  @override
  String get deleteBudget => 'Budget löschen?';

  @override
  String deleteBudgetBody(String category) {
    return 'Das Budget für $category wird entfernt. Deine Transaktionen bleiben unverändert.';
  }

  @override
  String get budgetSaved => 'Budget gespeichert';

  @override
  String get budgetDeleted => 'Budget gelöscht';

  @override
  String get allCategoriesBudgeted =>
      'Für jede Kategorie gibt es bereits ein Budget';

  @override
  String get noBudgetsTitle => 'Noch keine Budgets';

  @override
  String get noBudgetsBody =>
      'Lege ein monatliches Limit für eine Kategorie fest, um sie zu verfolgen.';

  @override
  String get newGoal => 'Neues Ziel';

  @override
  String get editGoal => 'Ziel bearbeiten';

  @override
  String get goalName => 'Name des Ziels';

  @override
  String get goalNameHint => 'z. B. Notfallfonds';

  @override
  String get targetAmount => 'Zielbetrag';

  @override
  String get alreadySaved => 'Bereits gespart';

  @override
  String get deleteGoal => 'Ziel löschen?';

  @override
  String deleteGoalBody(String name) {
    return '$name und der Fortschritt werden entfernt.';
  }

  @override
  String get goalSaved => 'Ziel gespeichert';

  @override
  String get goalDeleted => 'Ziel gelöscht';

  @override
  String get noGoalsTitle => 'Noch keine Sparziele';

  @override
  String get noGoalsBody =>
      'Setze ein Ziel und RainyPenny verfolgt deinen Fortschritt.';

  @override
  String get fundsAdded => 'Geld hinzugefügt';

  @override
  String get newDebt => 'Neuer Kredit oder neue Karte';

  @override
  String get editDebt => 'Kredit bearbeiten';

  @override
  String get debtName => 'Name';

  @override
  String get debtNameHint => 'z. B. Autokredit';

  @override
  String get lender => 'Kreditgeber';

  @override
  String get lenderHint => 'z. B. Meridian Bank';

  @override
  String get originalAmount => 'Ursprünglicher Betrag';

  @override
  String get creditLimit => 'Kreditlimit';

  @override
  String get remainingBalance => 'Restbetrag';

  @override
  String get interestRatePercent => 'Zinssatz (%)';

  @override
  String get kindLoan => 'Kredit';

  @override
  String get kindCreditCard => 'Kreditkarte';

  @override
  String get recordPayment => 'Zahlung erfassen';

  @override
  String get paymentRecorded => 'Zahlung erfasst';

  @override
  String get deleteDebt => 'Diese Schuld löschen?';

  @override
  String deleteDebtBody(String name) {
    return '$name wird aus deinen Schulden entfernt.';
  }

  @override
  String get debtSaved => 'Gespeichert';

  @override
  String get debtDeleted => 'Gelöscht';

  @override
  String get noDebtsTitle => 'Keine Schulden erfasst';

  @override
  String get noDebtsBody =>
      'Füge einen Kredit oder eine Kreditkarte hinzu, um deine Rückzahlungen im Blick zu behalten.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject-Budget überschritten';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du hast dein $subject-Budget für diesen Zeitraum um $amount überschritten.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject nähert sich dem Limit';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Dein $subject-Budget ist zu $percent% ausgeschöpft. $amount sind noch übrig.';
  }

  @override
  String get insightOverIncomeTitle => 'Ausgaben liegen über den Einnahmen';

  @override
  String get insightOverIncomeBody =>
      'Du hast in diesem Zeitraum mehr ausgegeben als verdient. Prüfe deine größten Kategorien, um wieder ins Gleichgewicht zu kommen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Ausgaben für $subject gestiegen';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Deine Ausgaben für $subject sind gegenüber dem vorherigen Zeitraum um $percent% gestiegen.';
  }

  @override
  String get insightTrendDownTitle => 'Ausgaben gehen zurück';

  @override
  String insightTrendDownBody(int percent) {
    return 'Die Gesamtausgaben sind gegenüber dem vorherigen Zeitraum um $percent% gesunken.';
  }

  @override
  String get insightTrendUpTitle => 'Ausgaben steigen';

  @override
  String insightTrendUpBody(int percent) {
    return 'Die Gesamtausgaben sind gegenüber dem vorherigen Zeitraum um $percent% gestiegen.';
  }

  @override
  String get insightSavingsStrongTitle =>
      'Starke Ersparnisse in diesem Zeitraum';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du hast $percent% deiner Einnahmen behalten – deutlich mehr als das Ziel von $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Sparquote liegt unter dem Ziel';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Du hast in diesem Zeitraum $percent% deiner Einnahmen behalten. Strebe $target% an.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject ist fast erreicht';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Nur noch $amount, um $subject zu erreichen.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Du bist bei $subject im Plan';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months Monaten',
      one: '1 Monat',
    );
    return 'Mit $amount pro Monat erreichst du dieses Ziel in $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Zahlung für $subject überfällig';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days Tagen',
      one: '1 Tag',
    );
    return 'Die Zahlung von $amount für $subject ist seit $_temp0 überfällig.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Zahlung für $subject steht bevor';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days Tagen',
      one: 'morgen',
      zero: 'heute',
    );
    return '$amount ist $_temp0 fällig.';
  }

  @override
  String get signIn => 'Anmelden';

  @override
  String get signUp => 'Konto erstellen';

  @override
  String get signInSubtitle => 'Willkommen zurück. Dein Geld wartet.';

  @override
  String get signUpSubtitle => 'Ein paar Angaben und du bist startklar.';

  @override
  String get emailLabel => 'E-Mail';

  @override
  String get emailHint => 'du@email.de';

  @override
  String get passwordLabel => 'Passwort';

  @override
  String get passwordHint => 'Mindestens 8 Zeichen';

  @override
  String get fullNameLabel => 'Vollständiger Name';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get resetSent =>
      'Prüfe deinen Posteingang auf den Link zum Zurücksetzen';

  @override
  String get noAccountYet => 'Neu hier?';

  @override
  String get haveAccount => 'Du hast bereits ein Konto?';

  @override
  String get emailInvalid => 'Gib eine gültige E-Mail-Adresse ein';

  @override
  String get passwordTooShort => 'Verwende mindestens 8 Zeichen';

  @override
  String get signOutConfirm => 'Abmelden?';

  @override
  String get signOutBody =>
      'Du musst dich erneut anmelden, um deine Finanzen zu sehen.';

  @override
  String get dataSource => 'Datenquelle';

  @override
  String get insightWeeklySummaryTitle => 'Deine Woche im Rückblick';

  @override
  String get insightWeeklySummaryBody =>
      'Sieh, wofür du diese Woche Geld ausgegeben hast und wie es um deine Budgets steht.';

  @override
  String get notificationSettings => 'Benachrichtigungen';

  @override
  String get alertsSection => 'Alarme';

  @override
  String get budgetAlerts => 'Budgetalarme';

  @override
  String get budgetAlertsBody =>
      'Wenn sich ein Budget seinem Limit nähert oder es überschreitet';

  @override
  String get paymentReminders => 'Zahlungserinnerungen';

  @override
  String get paymentRemindersBody =>
      'Einige Tage bevor eine Zahlung fällig wird';

  @override
  String get savingsUpdates => 'Sparupdates';

  @override
  String get savingsUpdatesBody => 'Fortschritt bei deinen Zielen';

  @override
  String get weeklySummaryLabel => 'Wochenübersicht';

  @override
  String get weeklySummaryBody => 'Eine Zusammenfassung der vergangenen Woche';

  @override
  String get scheduleSection => 'Zeitplanung';

  @override
  String get reminderTime => 'Erinnerungszeit';

  @override
  String get quietHours => 'Ruhezeiten';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Tag der Zusammenfassung';

  @override
  String get permissionRequired => 'Benachrichtigungen sind deaktiviert';

  @override
  String get permissionRequiredBody =>
      'Erlaube Benachrichtigungen, damit RainyPenny dich warnen kann, bevor ein Budget oder eine Zahlung aus dem Blick gerät.';

  @override
  String get allowNotifications => 'Benachrichtigungen erlauben';

  @override
  String get permissionDenied =>
      'Benachrichtigungen sind blockiert. Du kannst sie in den Geräteeinstellungen aktivieren.';

  @override
  String get upcomingAlerts => 'Geplant';

  @override
  String get noScheduledAlerts => 'Derzeit nichts geplant';

  @override
  String get noScheduledAlertsBody =>
      'Alarme werden hier angezeigt, wenn sich deine Budgets oder Zahlungen ihren Limits nähern.';

  @override
  String scheduledFor(String date) {
    return 'Geplant für $date';
  }

  @override
  String get everyWeek => 'Jede Woche';

  @override
  String get allNotificationsOff => 'Alle Benachrichtigungen sind deaktiviert';

  @override
  String get needsAttention => 'Erfordert Aufmerksamkeit';

  @override
  String get quickActionsTitle => 'Was möchtest du tun?';

  @override
  String get createSection => 'Erfassen';

  @override
  String get jumpToSection => 'Springen zu';

  @override
  String get addLoanAction => 'Kredit hinzufügen';

  @override
  String get addBudgetAction => 'Budget hinzufügen';

  @override
  String get addGoalAction => 'Ziel hinzufügen';

  @override
  String get longPressHint =>
      'Tipp: Halte + gedrückt, um sofort eine Ausgabe zu erfassen';

  @override
  String get searchCurrencies => 'Währungen suchen';

  @override
  String get noCurrenciesFound => 'Keine Währungen gefunden';

  @override
  String get noCurrenciesFoundMessage =>
      'Versuche einen anderen Code, ein anderes Symbol oder einen anderen Namen.';

  @override
  String get popularCurrencies => 'Beliebt';

  @override
  String get allCurrencies => 'Alle Währungen';

  @override
  String get totalLoanAmount => 'Gesamter Kreditbetrag';

  @override
  String get installmentAmount => 'Ratenbetrag';

  @override
  String get numberOfInstallments => 'Anzahl der Raten';

  @override
  String get paidInstallments => 'Bezahlte Raten';

  @override
  String get remainingInstallments => 'Verbleibende Raten';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid von $total bezahlt';
  }

  @override
  String get finalPayment => 'Letzte Zahlung';

  @override
  String get paymentDueDate => 'Fälligkeit der Zahlung';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Am $day. Tag jedes Monats';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Im Plan';

  @override
  String get statusDueSoon => 'Bald fällig';

  @override
  String get statusOverdue => 'Überfällig';

  @override
  String get statusCompleted => 'Abbezahlt';

  @override
  String get repaymentProgress => 'Rückzahlungsfortschritt';

  @override
  String get byAmount => 'Nach Betrag';

  @override
  String get byInstallments => 'Nach Raten';

  @override
  String get startDate => 'Startdatum';

  @override
  String get openEnded => 'Unbefristet';

  @override
  String get loanDetails => 'Kreditdetails';

  @override
  String get notSet => 'Nicht festgelegt';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject ist heute fällig';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Deine Zahlung von $amount ist heute fällig. Ein kurzer Tipp hält sie pünktlich.';
  }

  @override
  String get remindMorningTitle => 'Guten Morgen ☀️';

  @override
  String get remindMorningBody =>
      'Starte den Tag mit deinen Finanzen im Blick. Gab es gestern noch etwas einzutragen?';

  @override
  String get remindNoonTitle => 'Mittags-Check-in';

  @override
  String get remindNoonBody =>
      'Mittagessen, Kaffee, Fahrkarte? Trag es in wenigen Sekunden ein.';

  @override
  String get remindAfternoonTitle => 'Kurzer Nachtrag';

  @override
  String get remindAfternoonBody =>
      'Erfasse, was du bisher ausgegeben hast, und halte den heutigen Stand aktuell.';

  @override
  String get remindEveningTitle => 'Den Tag abschließen';

  @override
  String get remindEveningBody =>
      'Zwei Minuten jetzt, und die Zahlen für heute sind vollständig.';

  @override
  String get happyWeekendTitle => 'Schönes Wochenende! 🎉';

  @override
  String get happyWeekendBody =>
      'Genieß es – und behalte deine Wochenendausgaben im Blick.';

  @override
  String get dailyReminders => 'Tägliche Ausgabenerinnerungen';

  @override
  String get dailyRemindersBody =>
      'Freundliche Erinnerungen, damit deine Ausgaben aktuell bleiben';

  @override
  String get weekendGreeting => 'Schönes Wochenende';

  @override
  String get weekendGreetingBody =>
      'Ein freundlicher Gruß zum Start deines Wochenendes';

  @override
  String get reminderTimesSection => 'Erinnerungszeiten';

  @override
  String get slotMorning => 'Morgen';

  @override
  String get slotNoon => 'Mittag';

  @override
  String get slotAfternoon => 'Nachmittag';

  @override
  String get slotEvening => 'Abend';

  @override
  String get everyDay => 'Jeden Tag';

  @override
  String get financialReport => 'Finanzbericht';

  @override
  String get preparedFor => 'Erstellt für';

  @override
  String get generatedOn => 'Erstellt am';

  @override
  String get reportDisclaimer =>
      'Von RainyPenny anhand deiner eigenen Aufzeichnungen erstellt.';

  @override
  String pageOf(int page, int total) {
    return 'Seite $page von $total';
  }

  @override
  String get overview => 'Übersicht';

  @override
  String get description => 'Beschreibung';

  @override
  String get totalIncome => 'Gesamteinnahmen';

  @override
  String get totalExpenses => 'Gesamtausgaben';

  @override
  String get totalSaved => 'Insgesamt gespart';

  @override
  String get shareOfTotal => 'Anteil';

  @override
  String get used => 'Verwendet';

  @override
  String get goal => 'Ziel';

  @override
  String get targetDate => 'Zieldatum';

  @override
  String get progress => 'Fortschritt';

  @override
  String get paidOffShort => 'Abbezahlt';

  @override
  String get transactions => 'Transaktionen';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'und $count weitere Transaktionen',
      one: 'und 1 weitere Transaktion',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF exportieren';

  @override
  String get sharePdf => 'Bericht teilen';

  @override
  String get preparingReport => 'Bericht wird vorbereitet…';

  @override
  String get reportReady => 'Bericht ist fertig';

  @override
  String get reportFailed => 'Bericht konnte nicht erstellt werden';

  @override
  String get categories => 'Kategorien';

  @override
  String get categoriesIntro =>
      'Füge eigene Kategorien hinzu, um Einnahmen und Ausgaben genau so zuzuordnen, wie du sie denkst.';

  @override
  String get expenseCategories => 'Ausgabenkategorien';

  @override
  String get incomeCategories => 'Einnahmekategorien';

  @override
  String get newCategory => 'Neue Kategorie';

  @override
  String get editCategory => 'Kategorie bearbeiten';

  @override
  String get categoryName => 'Name';

  @override
  String get categoryNameHint => 'z. B. Haustierpflege';

  @override
  String get icon => 'Symbol';

  @override
  String get categorySaved => 'Kategorie gespeichert';

  @override
  String get categoryDeleted => 'Kategorie gelöscht';

  @override
  String get deleteCategory => 'Diese Kategorie löschen?';

  @override
  String deleteCategoryBody(String name) {
    return '$name wird aus deinen Kategorien entfernt.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge verwenden diese Kategorie noch',
      one: '1 Eintrag verwendet diese Kategorie noch',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Hier gibt es noch nichts.';

  @override
  String get builtIn => 'Integriert';

  @override
  String get manageCategories => 'Kategorien verwalten';

  @override
  String get expense => 'Ausgabe';

  @override
  String get languageNote =>
      'Arabisch, Urdu, Persisch und Hebräisch stellen die gesamte Oberfläche auf Rechts-nach-Links um, einschließlich Diagrammen und PDF-Berichten.';

  @override
  String get next => 'Weiter';

  @override
  String get back => 'Zurück';

  @override
  String get skip => 'Überspringen';

  @override
  String get continueLabel => 'Fortfahren';

  @override
  String get selected => 'Ausgewählt';

  @override
  String get passwordRequired => 'Gib dein Passwort ein';

  @override
  String get newPasswordLabel => 'Neues Passwort';

  @override
  String get confirmPasswordLabel => 'Passwort bestätigen';

  @override
  String get passwordsDoNotMatch => 'Beide Passwörter müssen übereinstimmen';

  @override
  String get showPassword => 'Passwort anzeigen';

  @override
  String get hidePassword => 'Passwort ausblenden';

  @override
  String get savePassword => 'Passwort speichern';

  @override
  String get backToSignIn => 'Zurück zur Anmeldung';

  @override
  String get alreadyHaveAccount => 'Ich habe bereits ein Konto';

  @override
  String get getStarted => 'Loslegen';

  @override
  String get acceptTerms =>
      'Ich stimme den Nutzungsbedingungen und der Datenschutzerklärung zu';

  @override
  String get acceptTermsRequired => 'Bitte akzeptiere dies, um fortzufahren';

  @override
  String get passwordStrengthTooShort => 'Zu kurz';

  @override
  String get passwordStrengthWeak => 'Schwach';

  @override
  String get passwordStrengthFair => 'Mittel';

  @override
  String get passwordStrengthGood => 'Gut';

  @override
  String get passwordStrengthStrong => 'Stark';

  @override
  String get passwordAdvice =>
      'Eine lange, gut merkbare Passphrase ist besser als eine kurze mit vielen Symbolen. Vermeide Passwörter, die du bereits an anderer Stelle verwendest.';

  @override
  String get authInvalidCredentials =>
      'E-Mail und Passwort stimmen mit keinem Konto überein';

  @override
  String get authEmailNotConfirmed =>
      'Bestätige deine E-Mail-Adresse, bevor du dich anmeldest';

  @override
  String get authEmailAlreadyRegistered =>
      'Für diese E-Mail-Adresse existiert bereits ein Konto';

  @override
  String get authWeakPassword => 'Wähle ein längeres Passwort';

  @override
  String get authRateLimited =>
      'Zu viele Versuche. Versuche es in einigen Minuten erneut';

  @override
  String get authNetworkError =>
      'Keine Verbindung. Prüfe deine Netzwerkverbindung und versuche es erneut';

  @override
  String get authGenericError =>
      'Etwas ist schiefgelaufen. Bitte versuche es erneut';

  @override
  String get confirmEmailTitle => 'Prüfe deine E-Mail';

  @override
  String confirmEmailBody(String email) {
    return 'Wir haben einen Bestätigungslink an $email gesendet. Öffne ihn, um die Einrichtung deines Kontos abzuschließen.';
  }

  @override
  String get resendConfirmation => 'Bestätigungs-E-Mail erneut senden';

  @override
  String get confirmationResent => 'Bestätigungs-E-Mail gesendet';

  @override
  String get forgotPasswordTitle => 'Passwort zurücksetzen';

  @override
  String get forgotPasswordSubtitle =>
      'Gib die E-Mail-Adresse ein, mit der du dich registriert hast, und wir senden dir einen Link, über den du ein neues Passwort wählen kannst.';

  @override
  String get sendResetLink => 'Link zum Zurücksetzen senden';

  @override
  String get resetLinkSentTitle => 'Link zum Zurücksetzen gesendet';

  @override
  String resetLinkSentBody(String email) {
    return 'Falls für $email ein Konto existiert, ist ein Link zum Zurücksetzen unterwegs.';
  }

  @override
  String get resetLinkSentHint =>
      'Der Link läuft in einer Stunde ab. Wenn er nicht ankommt, prüfe deinen Spam-Ordner, bevor du einen weiteren anforderst.';

  @override
  String get tryAnotherEmail => 'Andere E-Mail-Adresse verwenden';

  @override
  String get resetPasswordTitle => 'Neues Passwort wählen';

  @override
  String get resetPasswordSubtitle =>
      'Wähle ein Passwort, das du für dieses Konto noch nicht verwendet hast.';

  @override
  String get passwordChangedTitle => 'Passwort aktualisiert';

  @override
  String get passwordChangedBody =>
      'Dein neues Passwort wurde gespeichert. Du bist angemeldet und kannst loslegen.';

  @override
  String get demoModeHint => 'Demoversion – kein Konto erforderlich';

  @override
  String get demoModeFill => 'Ausfüllen';

  @override
  String get welcomeTrackTitle => 'Sieh, wohin dein Geld fließt';

  @override
  String get welcomeTrackBody =>
      'Erfasse, was reinkommt und was rausgeht. RainyPenny verwandelt es in eine Übersicht, die du wirklich lesen kannst.';

  @override
  String get welcomeBudgetTitle => 'Setze Limits, die halten';

  @override
  String get welcomeBudgetBody =>
      'Gib jedem Ausgabenbereich eine monatliche Obergrenze und werde gewarnt, bevor du sie überschreitest, nicht danach.';

  @override
  String get welcomeGoalsTitle => 'Spare für das, was wichtig ist';

  @override
  String get welcomeGoalsBody =>
      'Benenne ein Ziel, lege einen Betrag fest und sieh zu, wie es wächst. Ein Notfallfonds lässt sich leichter aufbauen, wenn du den Fortschritt sehen kannst.';

  @override
  String get welcomePrivacyTitle => 'Dein Geld bleibt dein Geld';

  @override
  String get welcomePrivacyBody =>
      'Deine Zahlen gehören nur dir. Nichts wird verkauft und nichts mit anderen geteilt.';

  @override
  String stepOf(int step, int total) {
    return 'Schritt $step von $total';
  }

  @override
  String get onboardingNameTitle => 'Wie sollen wir dich nennen?';

  @override
  String get onboardingNameBody =>
      'Wir verwenden den Namen für deine Begrüßung und sonst nirgendwo.';

  @override
  String get onboardingNameHint =>
      'Ein Vorname reicht. Du kannst ihn später ändern.';

  @override
  String get onboardingCurrencyTitle => 'Welche Währung verwendest du?';

  @override
  String get onboardingCurrencyBody =>
      'Alle Beträge in der App werden in dieser Währung angezeigt. Die Auswahl führt zu keiner Umrechnung.';

  @override
  String get onboardingCurrencySearch => 'Alle Währungen durchsuchen';

  @override
  String get onboardingAppearanceTitle => 'Mach es zu deinem';

  @override
  String get onboardingAppearanceBody =>
      'Wähle einen Look. Alles ändert sich, während du tippst, und du kannst jederzeit zurückkehren.';

  @override
  String get onboardingNotificationsTitle => 'Bleib auf dem Laufenden';

  @override
  String get onboardingNotificationsBody =>
      'Eine ruhige Erinnerung zum richtigen Zeitpunkt macht daraus eine Gewohnheit.';

  @override
  String get onboardingNotifyReminders =>
      'Eine sanfte Erinnerung, deine Ausgaben zu erfassen';

  @override
  String get onboardingNotifyBudget =>
      'Ein Hinweis, bevor ein Budget aufgebraucht ist';

  @override
  String get onboardingNotifySummary =>
      'Eine wöchentliche Zusammenfassung deiner Ausgaben';

  @override
  String get onboardingNotifyEnable => 'Benachrichtigungen aktivieren';

  @override
  String get onboardingNotifyDone =>
      'Benachrichtigungseinstellungen gespeichert';

  @override
  String get onboardingNotifyLater =>
      'Du kannst all das jederzeit in den Einstellungen ändern.';

  @override
  String get onboardingReadyTitle => 'Alles ist eingerichtet';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Alles ist eingerichtet, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Die Einrichtung ist abgeschlossen. Möchtest du eine kurze Einführung sehen, wie alles funktioniert?';

  @override
  String get onboardingTakeTour => 'Zeig mir alles';

  @override
  String get onboardingGoToApp => 'Zur App';

  @override
  String get onboardingTourLater =>
      'Jetzt nicht? Die Anleitung bleibt in den Einstellungen, wann immer du sie brauchst.';

  @override
  String get beginnersGuide => 'Anleitung für Einsteiger';

  @override
  String get guideFinish => 'Fertig';

  @override
  String chapterOf(int number, int total) {
    return 'Kapitel $number von $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen öffnen';
  }

  @override
  String get guideDashboardTitle => 'Dein Dashboard';

  @override
  String get guideDashboardBody =>
      'Hier beginnt alles. Die Karte oben zeigt, was dir noch bleibt; darunter stehen deine Einnahmen und Ausgaben für diesen Zeitraum, gefolgt von Ausgaben, Budgets und Zielen.';

  @override
  String get guideDashboardTip1 =>
      'Ziehe den Bildschirm nach unten, um alles gleichzeitig zu aktualisieren.';

  @override
  String get guideDashboardTip2 =>
      'Tippe auf die Einnahmen- oder Ausgabenkarte, um direkt zur entsprechenden Liste zu gelangen.';

  @override
  String get guideDashboardTip3 =>
      'Die Ringe und Erkenntnisse aktualisieren sich sofort, sobald du etwas erfasst.';

  @override
  String get guideAddTitle => 'Geld erfassen';

  @override
  String get guideAddBody =>
      'Über die Schaltfläche in der Mitte der Leiste beginnt alles. Sie öffnet ein kurzes Menü: Geld ausgeben, Geld erhalten, Schuld, Budget oder Sparziel.';

  @override
  String get guideAddTip1 =>
      'Tippe auf die mittlere Schaltfläche, um Einnahmen oder Ausgaben zu erfassen.';

  @override
  String get guideAddTip2 =>
      'Halte sie gedrückt, um direkt eine neue Ausgabe zu erfassen und das Menü zu überspringen.';

  @override
  String get guideAddTip3 =>
      'Wähle immer eine Kategorie – dadurch funktionieren Diagramme und Budgets.';

  @override
  String get guideCategoriesTitle => 'Kategorien';

  @override
  String get guideCategoriesBody =>
      'Kategorien bestimmen, wie Ausgaben gruppiert werden. Die mitgelieferten Kategorien decken die meisten Fälle ab, und du kannst sie umbenennen oder eigene hinzufügen.';

  @override
  String get guideCategoriesTip1 =>
      'Gehe zu Einstellungen und dann zu Kategorien verwalten, um eine Kategorie zu ändern oder hinzuzufügen.';

  @override
  String get guideCategoriesTip2 =>
      'Alles ohne Kategorie landet unter Sonstiges, damit die Diagramme korrekt bleiben.';

  @override
  String get guideBudgetTitle => 'Budgets';

  @override
  String get guideBudgetBody =>
      'Ein Budget ist eine monatliche Obergrenze für eine Kategorie. Die Leiste füllt sich mit deinen Ausgaben und ändert sich, wenn du dich dem Limit näherst, damit du es rechtzeitig bemerkst.';

  @override
  String get guideBudgetTip1 =>
      'Beginne mit zwei oder drei Kategorien statt mit allen auf einmal.';

  @override
  String get guideBudgetTip2 =>
      'Setze das Limit etwas über deinen üblichen Ausgaben und passe es dann schrittweise an.';

  @override
  String get guideBudgetTip3 =>
      'Lass Budgetalarme aktiviert, damit dich die App warnt, wenn ein Budget knapp wird.';

  @override
  String get guideSavingsTitle => 'Sparziele';

  @override
  String get guideSavingsBody =>
      'Benenne, wofür du sparst, setze einen Zielbetrag und ein Datum, und die App berechnet, wie viel du monatlich zurücklegen musst, um das Ziel zu erreichen.';

  @override
  String get guideSavingsTip1 =>
      'Ein benanntes Ziel lässt sich leichter verfolgen als eine vage Absicht zu sparen.';

  @override
  String get guideSavingsTip2 =>
      'Mehrere kleine Ziele werden häufiger erreicht als ein großes.';

  @override
  String get guideLoansTitle => 'Schulden und Kredite';

  @override
  String get guideLoansBody =>
      'Erfasse, was du schuldest, was es kostet und wann die nächste Zahlung fällig ist. Alles, was du abbezahlst, steht in einer Liste mit dem verbleibenden Gesamtbetrag.';

  @override
  String get guideLoansTip1 =>
      'Füge das Fälligkeitsdatum hinzu, und Zahlungserinnerungen kümmern sich darum.';

  @override
  String get guideLoansTip2 =>
      'Eine überfällige Schuld wird auf dem Dashboard rot angezeigt, bis sie bezahlt ist.';

  @override
  String get guideReportsTitle => 'Berichte';

  @override
  String get guideReportsBody =>
      'Die detailliertere Ansicht: Einnahmen im Vergleich zu Ausgaben, Ausgaben nach Kategorie, wie sich deine Budgets entwickelt haben und welchen Anteil deiner Einnahmen du behalten hast.';

  @override
  String get guideReportsTip1 =>
      'Wechsle oben auf dem Bildschirm zwischen Woche, Monat und Quartal.';

  @override
  String get guideReportsTip2 =>
      'Exportiere oder teile ein PDF – es wird in deiner eigenen Sprache und Schreibrichtung erstellt.';

  @override
  String get guideSettingsTitle => 'Einstellungen';

  @override
  String get guideSettingsBody =>
      'Sprache, Währung, Farben und Benachrichtigungen findest du hier. Nichts davon wird durch die Einrichtung dauerhaft festgelegt – du kannst alles jederzeit ändern.';

  @override
  String get guideSettingsTip1 =>
      'Vierzig Sprachen und die gesamte Oberfläche wird bei Rechts-nach-Links-Sprachen gespiegelt.';

  @override
  String get guideSettingsTip2 =>
      'Wähle, welche Benachrichtigungen du erhalten möchtest und zu welchen Zeiten.';

  @override
  String get guideSettingsTip3 =>
      'Ruhezeiten halten alles bis zum Morgen zurück.';

  @override
  String get guideHabitTitle => 'Mach es zur Gewohnheit';

  @override
  String get guideHabitBody =>
      'Die App ist nur so gut wie die Daten, die du eingibst. Eine Minute am Tag ist besser als eine Stunde einmal im Monat, und nach zwei Wochen beginnen die Zahlen, dir etwas zu sagen.';

  @override
  String get guideHabitTip1 =>
      'Erfasse Ausgaben, sobald sie entstehen, nicht erst am Ende der Woche.';

  @override
  String get guideHabitTip2 =>
      'Schau einmal täglich auf das Dashboard. Zehn Sekunden reichen.';

  @override
  String get guideHabitTip3 =>
      'Diese Anleitung bleibt in den Einstellungen – komm jederzeit zurück.';

  @override
  String get appearance => 'Darstellung';

  @override
  String get themeCaption =>
      'Hell, dunkel oder so, wie es dein Telefon eingestellt hat.';

  @override
  String get accentColor => 'Akzentfarbe';

  @override
  String get accentColorCaption =>
      'Färbt Schaltflächen, Hervorhebungen und Diagramme.';

  @override
  String get accentSemanticsNote =>
      'Einnahmen und Ausgaben behalten in jedem Design ihre eigenen Farben, sodass eine Zahl ihre Bedeutung nicht durch den Wechsel der Akzentfarbe verändert.';

  @override
  String get accentTeal => 'Petrol';

  @override
  String get accentGreen => 'Grün';

  @override
  String get accentSky => 'Himmelblau';

  @override
  String get accentBlue => 'Blau';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violett';

  @override
  String get accentPink => 'Pink';

  @override
  String get accentCrimson => 'Karmesinrot';

  @override
  String get accentOrange => 'Orange';

  @override
  String get accentSlate => 'Schiefergrau';

  @override
  String get searchLanguages => 'Sprachen suchen';

  @override
  String get suggestedLanguages => 'Vorgeschlagen';

  @override
  String get allLanguages => 'Alle Sprachen';

  @override
  String get noLanguagesFound => 'Keine Sprachen gefunden';

  @override
  String get noLanguagesFoundMessage =>
      'Versuche den englischen Namen oder den zweibuchstabigen Code.';

  @override
  String get rightToLeft => 'Rechts nach links';

  @override
  String get replayGuide => 'Anleitung erneut anzeigen';

  @override
  String get replaySetup => 'Einrichtung erneut starten';

  @override
  String get replaySetupBody =>
      'Gehe die Fragen der Ersteinrichtung erneut durch. Nichts von dem, was du erfasst hast, wird gelöscht.';

  @override
  String get rateTitle => 'Gefällt dir RainyPenny?';

  @override
  String get rateBody =>
      'Du bist schon eine Weile dabei. Eine Bewertung dauert nur einen Moment und hilft anderen, die App zu finden.';

  @override
  String get rateAction => 'App bewerten';

  @override
  String get rateLater => 'Vielleicht später';

  @override
  String get rateNever => 'Nein, danke';

  @override
  String get rateThanks => 'Danke';

  @override
  String get monthlySalary => 'Monatliches Gehalt';

  @override
  String get remainingAmount => 'Verbleibend';

  @override
  String get carriedForward => 'Übertrag';

  @override
  String get carriedForwardHint => 'Vom letzten Zyklus übrig';

  @override
  String get totalSpending => 'Gesamtausgaben';

  @override
  String get salaryCycle => 'Gehaltszyklus';

  @override
  String get payday => 'Gehaltstag';

  @override
  String get paydayDescription =>
      'Der Tag, an dem dein Gehalt eingeht. Dein Finanzmonat läuft von diesem Tag bis zum Tag vor dem nächsten Gehaltstag.';

  @override
  String get paydayUpdated => 'Gehaltstag aktualisiert';

  @override
  String paydayDayOfMonth(int day) {
    return 'Tag $day';
  }

  @override
  String get paydayShortMonthNote =>
      'In kürzeren Monaten beginnt der Zyklus stattdessen am letzten Tag.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Tage bis zum Gehalt',
      one: 'Noch 1 Tag bis zum Gehalt',
      zero: 'Letzter Tag des Zyklus',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Nächster Gehaltstag';

  @override
  String get spentSoFar => 'Bisher ausgegeben';

  @override
  String get dailyAllowance => 'Täglich sicher auszugeben';

  @override
  String get overspentNotice =>
      'Du hast in diesem Zyklus mehr ausgegeben, als hereingekommen ist.';

  @override
  String get backToThisMonth => 'Zurück zu diesem Monat';

  @override
  String get cycleRangeLabel => 'Zyklus';

  @override
  String get noSalaryRecorded => 'Noch kein Gehalt erfasst';

  @override
  String get addSalaryAction => 'Gehalt hinzufügen';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Ausgezeichnet';

  @override
  String get healthGood => 'Gut';

  @override
  String get healthFair => 'Ordentlich';

  @override
  String get healthNeedsWork => 'Verbesserungsbedarf';

  @override
  String get healthExcellentBody =>
      'Du sparst gut und bleibst innerhalb deiner Budgets.';

  @override
  String get healthGoodBody =>
      'Du liegst mit deinen Ausgaben in diesem Zeitraum im Plan.';

  @override
  String get healthFairBody =>
      'Einige Budgets werden knapp. Kleine Änderungen können helfen.';

  @override
  String get healthNeedsWorkBody =>
      'Deine Ausgaben übersteigen deinen Plan. Beginne mit deiner größten Kategorie.';

  @override
  String get factorSavingsRate => 'Sparquote';

  @override
  String get factorBudgetControl => 'Budgetkontrolle';

  @override
  String get factorDebtLoad => 'Schuldenlast';

  @override
  String get factorSpendingTrend => 'Ausgabentrend';

  @override
  String factorKept(String percent) {
    return '$percent% behalten';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% verwendet';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% der Einnahmen';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Um $percent% gestiegen';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Um $percent% gesunken';
  }

  @override
  String get howScoreWorks => 'So funktioniert der Score';

  @override
  String get healthScoreExplainer =>
      'Dein Score kombiniert vier Faktoren: wie viel deiner Einnahmen du behältst, wie gut du innerhalb deiner Budgets bleibst, wie viel deiner Einnahmen für Schulden verwendet wird und ob deine Ausgaben steigen oder sinken.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% des Scores';
  }

  @override
  String get viewHealthDetails => 'Aufschlüsselung anzeigen';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get profileUpdated => 'Profil aktualisiert';

  @override
  String get changePhoto => 'Foto ändern';

  @override
  String get removePhoto => 'Foto entfernen';

  @override
  String get personalInformationIntro =>
      'Dein Name und Foto werden in der gesamten App angezeigt. Deine E-Mail-Adresse ist die Adresse, mit der du dich anmeldest.';

  @override
  String get emailNotEditable =>
      'Wende dich an den Support, um die Adresse zu ändern, mit der du dich anmeldest.';

  @override
  String get pressBackAgainToExit => 'Zum Beenden erneut zurück drücken';

  @override
  String get categoryHousing => 'Wohnen';

  @override
  String get categoryFood => 'Essen & Gastronomie';

  @override
  String get categoryTransport => 'Transport';

  @override
  String get categoryShopping => 'Einkäufe';

  @override
  String get categoryBills => 'Rechnungen & Versorger';

  @override
  String get categoryEntertainment => 'Unterhaltung';

  @override
  String get categoryHealth => 'Gesundheit & Fitness';

  @override
  String get categoryEducation => 'Bildung';

  @override
  String get categoryTravel => 'Reisen';

  @override
  String get categorySalary => 'Gehalt';

  @override
  String get categoryFreelance => 'Freiberuflich';

  @override
  String get categoryInvestments => 'Investitionen';

  @override
  String get categoryGift => 'Geschenk';

  @override
  String get categoryOther => 'Sonstiges';

  @override
  String get categoryGroceries => 'Lebensmittel';

  @override
  String get categoryDining => 'Restaurant';

  @override
  String get categoryCoffee => 'Kaffee';

  @override
  String get categoryUtilities => 'Versorgung';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Versicherung';

  @override
  String get categorySubscriptions => 'Abonnements';

  @override
  String get categoryPersonalCare => 'Körperpflege';

  @override
  String get categoryClothing => 'Kleidung';

  @override
  String get categoryElectronics => 'Elektronik';

  @override
  String get categoryHomeSupplies => 'Haushaltsbedarf';

  @override
  String get categoryPets => 'Haustiere';

  @override
  String get categoryChildcare => 'Kinderbetreuung';

  @override
  String get categoryFamily => 'Familie';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Medikamente';

  @override
  String get categoryMedical => 'Medizinische Versorgung';

  @override
  String get categoryCharity => 'Wohltätigkeit';

  @override
  String get categoryTaxes => 'Steuern';

  @override
  String get categoryFees => 'Gebühren';

  @override
  String get categoryDebt => 'Schulden';

  @override
  String get categorySavings => 'Sparen';

  @override
  String get categoryRepairs => 'Reparaturen';

  @override
  String get categoryCarMaintenance => 'Autowartung';

  @override
  String get categoryFuel => 'Kraftstoff';

  @override
  String get categoryParking => 'Parken';

  @override
  String get categoryPublicTransport => 'Öffentliche Verkehrsmittel';

  @override
  String get categoryRent => 'Miete';

  @override
  String get categoryMortgage => 'Hypothek';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provision';

  @override
  String get categoryPension => 'Rente';

  @override
  String get categoryInterest => 'Zinsen';

  @override
  String get categoryDividends => 'Dividenden';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Rückerstattung';

  @override
  String get categoryRentalIncome => 'Mieteinnahmen';

  @override
  String get addCategory => 'Neue Kategorie';

  @override
  String get filterByCategory => 'Nach Kategorie filtern';

  @override
  String get allCategories => 'Alle Kategorien';

  @override
  String get clearFilters => 'Filter löschen';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Gesamter Zeitraum';

  @override
  String get customRange => 'Benutzerdefiniert';

  @override
  String get selectDateRange => 'Zeitraum auswählen';

  @override
  String rangeApplied(String start, String end) {
    return 'Angezeigt: $start – $end';
  }

  @override
  String get loans => 'Kredite';

  @override
  String get debts => 'Schulden';

  @override
  String get noLoansTitle => 'Keine Kredite';

  @override
  String get noLoansBody => 'Du hast keine aktiven Kredite.';

  @override
  String get emptyHealthTitle => 'Noch kein Finanzscore';

  @override
  String get emptyHealthDescription =>
      'Wir benötigen zunächst ein wenig finanzielle Aktivität, bevor wir einen aussagekräftigen Finanzscore berechnen können.';

  @override
  String get emptyHealthAddTransactions => 'Einnahmen oder Ausgaben hinzufügen';

  @override
  String get emptyHealthSetBudgets => 'Monatliche Budgets einrichten';

  @override
  String get emptyHealthTrackLoans =>
      'Kredite oder Schulden verfolgen (optional)';

  @override
  String get emptyHealthCardSubtitle =>
      'Füge Transaktionen hinzu, um deinen Score zu berechnen und Erkenntnisse zu erhalten.';

  @override
  String get smartBudgetSplit => 'Intelligente Budgetaufteilung';

  @override
  String get smartBudgetSplitSubtitle =>
      'Gib dein monatliches Gehalt ein, um empfohlene Limits zu berechnen';

  @override
  String get monthlyNetSalary => 'Monatliches Nettogehalt';

  @override
  String get categoryAllocations => 'Kategorieaufteilungen';

  @override
  String totalBudgeted(String amount) {
    return 'Gesamt: $amount';
  }

  @override
  String get applyAllBudgets => 'Alle Budgets anwenden';

  @override
  String get applyingBudgets => 'Budgets werden angewendet...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Kategorie-Budgets erstellt.',
      one: '1 Kategorie-Budget erstellt.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Budgets konnten nicht gespeichert werden.';

  @override
  String get recommendedBudget => 'Empfohlenes Budget';
}
