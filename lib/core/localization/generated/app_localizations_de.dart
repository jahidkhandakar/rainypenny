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
    return 'von $total';
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
      other: '$count Buchungen',
      one: '1 Buchung',
      zero: 'Keine Buchungen',
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
  String get amountRequired => 'Gib einen Betrag über null ein';

  @override
  String get titleRequired => 'Gib dieser Buchung einen Namen';

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
    return '$percent% verbraucht';
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
      other: 'noch $count Monate',
      one: 'noch 1 Monat',
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
    return '$percent% getilgt';
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
      other: 'Fällig in $count Tagen',
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
  String get budgetPerformance => 'Budget-Performance';

  @override
  String get insights => 'Einblicke';

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
  String get nameRequired => 'Gib dem einen Namen';

  @override
  String get amountAboveZero => 'Gib einen Betrag über null ein';

  @override
  String get editTransaction => 'Buchung bearbeiten';

  @override
  String get deleteTransaction => 'Buchung löschen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title wird aus deinem Kontobuch entfernt.';
  }

  @override
  String get transactionDeleted => 'Buchung gelöscht';

  @override
  String get transactionUpdated => 'Buchung aktualisiert';

  @override
  String get newBudget => 'Neues Budget';

  @override
  String get editBudget => 'Budget bearbeiten';

  @override
  String get budgetLimit => 'Monatslimit';

  @override
  String get deleteBudget => 'Budget löschen?';

  @override
  String deleteBudgetBody(String category) {
    return 'Das Budget für $category wird entfernt. Deine Buchungen bleiben unberührt.';
  }

  @override
  String get budgetSaved => 'Budget gespeichert';

  @override
  String get budgetDeleted => 'Budget gelöscht';

  @override
  String get allCategoriesBudgeted => 'Jede Kategorie hat bereits ein Budget';

  @override
  String get noBudgetsTitle => 'Noch keine Budgets';

  @override
  String get noBudgetsBody =>
      'Lege ein Monatslimit für eine Kategorie fest, um sie zu verfolgen.';

  @override
  String get newGoal => 'Neues Ziel';

  @override
  String get editGoal => 'Ziel bearbeiten';

  @override
  String get goalName => 'Name des Ziels';

  @override
  String get goalNameHint => 'z. B. Notgroschen';

  @override
  String get targetAmount => 'Zielbetrag';

  @override
  String get alreadySaved => 'Bereits gespart';

  @override
  String get deleteGoal => 'Ziel löschen?';

  @override
  String deleteGoalBody(String name) {
    return '$name und der bisherige Fortschritt werden entfernt.';
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
  String get fundsAdded => 'Betrag hinzugefügt';

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
  String get originalAmount => 'Ursprungsbetrag';

  @override
  String get creditLimit => 'Kreditrahmen';

  @override
  String get remainingBalance => 'Restschuld';

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
      'Füge einen Kredit oder eine Kreditkarte hinzu, um die Rückzahlung im Blick zu behalten.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget für $subject überschritten';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du liegst in dieser Periode $amount über deinem Budget für $subject.';
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
    return 'Dein Budget für $subject ist zu $percent% verbraucht, $amount bleiben übrig.';
  }

  @override
  String get insightOverIncomeTitle => 'Ausgaben über den Einnahmen';

  @override
  String get insightOverIncomeBody =>
      'Du hast in dieser Periode mehr ausgegeben als eingenommen. Sieh dir deine größten Kategorien an, um das auszugleichen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Ausgaben für $subject gestiegen';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Deine Ausgaben für $subject liegen $percent% über der Vorperiode.';
  }

  @override
  String get insightTrendDownTitle => 'Ausgaben rückläufig';

  @override
  String insightTrendDownBody(int percent) {
    return 'Die Gesamtausgaben liegen $percent% unter der Vorperiode.';
  }

  @override
  String get insightTrendUpTitle => 'Ausgaben steigend';

  @override
  String insightTrendUpBody(int percent) {
    return 'Die Gesamtausgaben liegen $percent% über der Vorperiode.';
  }

  @override
  String get insightSavingsStrongTitle => 'Starke Sparquote in dieser Periode';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du hast $percent% deiner Einnahmen behalten — deutlich über dem Ziel von $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Sparquote unter dem Ziel';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Du hast in dieser Periode $percent% deiner Einnahmen behalten. Ziel sind $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject ist fast finanziert';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Nur noch $amount bis $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Auf Kurs für $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months Monaten',
      one: '1 Monat',
    );
    return 'Mit $amount im Monat erreichst du dieses Ziel in $_temp0.';
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
    return 'Die Zahlung für $subject über $amount ist seit $_temp0 überfällig.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Zahlung für $subject steht an';
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
    return '$amount sind $_temp0 fällig.';
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
  String get emailHint => 'du@email.com';

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
  String get resetSent => 'Prüfe dein Postfach auf den Link zum Zurücksetzen';

  @override
  String get noAccountYet => 'Neu hier?';

  @override
  String get haveAccount => 'Schon ein Konto?';

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
      'Sieh, wohin dein Geld diese Woche geflossen ist und wie deine Budgets stehen.';

  @override
  String get notificationSettings => 'Mitteilungen';

  @override
  String get alertsSection => 'Hinweise';

  @override
  String get budgetAlerts => 'Budget-Hinweise';

  @override
  String get budgetAlertsBody =>
      'Wenn ein Budget sein Limit fast oder ganz erreicht';

  @override
  String get paymentReminders => 'Zahlungserinnerungen';

  @override
  String get paymentRemindersBody =>
      'Ein paar Tage bevor eine Zahlung fällig wird';

  @override
  String get savingsUpdates => 'Spar-Updates';

  @override
  String get savingsUpdatesBody => 'Fortschritt bei deinen Zielen';

  @override
  String get weeklySummaryLabel => 'Wochenrückblick';

  @override
  String get weeklySummaryBody => 'Eine Zusammenfassung der vergangenen Woche';

  @override
  String get scheduleSection => 'Zeitpunkt';

  @override
  String get reminderTime => 'Erinnerungszeit';

  @override
  String get quietHours => 'Ruhezeiten';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Tag des Rückblicks';

  @override
  String get permissionRequired => 'Mitteilungen sind deaktiviert';

  @override
  String get permissionRequiredBody =>
      'Erlaube Mitteilungen, damit RainyPenny dich warnen kann, bevor dir ein Budget oder eine Zahlung entgleitet.';

  @override
  String get allowNotifications => 'Mitteilungen erlauben';

  @override
  String get permissionDenied =>
      'Mitteilungen sind blockiert. Du kannst sie in den Geräteeinstellungen aktivieren.';

  @override
  String get upcomingAlerts => 'Geplant';

  @override
  String get noScheduledAlerts => 'Derzeit ist nichts geplant';

  @override
  String get noScheduledAlertsBody =>
      'Hinweise erscheinen hier, sobald deine Budgets und Zahlungen an ihre Grenzen kommen.';

  @override
  String scheduledFor(String date) {
    return 'Geplant für $date';
  }

  @override
  String get everyWeek => 'Jede Woche';

  @override
  String get allNotificationsOff => 'Alle Mitteilungen sind aus';

  @override
  String get needsAttention => 'Braucht Aufmerksamkeit';

  @override
  String get quickActionsTitle => 'Was möchtest du tun?';

  @override
  String get createSection => 'Erfassen';

  @override
  String get jumpToSection => 'Gehe zu';

  @override
  String get addLoanAction => 'Kredit hinzufügen';

  @override
  String get addBudgetAction => 'Budget hinzufügen';

  @override
  String get addGoalAction => 'Ziel hinzufügen';

  @override
  String get longPressHint =>
      'Tipp: + gedrückt halten, um sofort eine Ausgabe zu erfassen';

  @override
  String get searchCurrencies => 'Währungen suchen';

  @override
  String get noCurrenciesFound => 'Keine Währungen gefunden';

  @override
  String get noCurrenciesFoundMessage =>
      'Versuch einen anderen Code, ein anderes Symbol oder einen anderen Namen.';

  @override
  String get popularCurrencies => 'Häufig genutzt';

  @override
  String get allCurrencies => 'Alle Währungen';

  @override
  String get totalLoanAmount => 'Gesamter Kreditbetrag';

  @override
  String get installmentAmount => 'Ratenhöhe';

  @override
  String get numberOfInstallments => 'Anzahl der Raten';

  @override
  String get paidInstallments => 'Bezahlte Raten';

  @override
  String get remainingInstallments => 'Offene Raten';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid von $total bezahlt';
  }

  @override
  String get finalPayment => 'Letzte Rate';

  @override
  String get paymentDueDate => 'Fälligkeitstag';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Am $day. jedes Monats';
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
  String get repaymentProgress => 'Tilgungsfortschritt';

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
    return 'Deine Zahlung über $amount ist heute fällig. Ein Tippen und sie bleibt pünktlich.';
  }

  @override
  String get remindMorningTitle => 'Guten Morgen ☀️';

  @override
  String get remindMorningBody =>
      'Starte den Tag mit dem Überblick. Gibt es noch etwas von gestern nachzutragen?';

  @override
  String get remindNoonTitle => 'Mittagscheck';

  @override
  String get remindNoonBody =>
      'Mittagessen, Kaffee, Ticket? In Sekunden erfasst.';

  @override
  String get remindAfternoonTitle => 'Kurzer Abgleich';

  @override
  String get remindAfternoonBody =>
      'Trag ein, was du bisher ausgegeben hast, und der Tag bleibt korrekt.';

  @override
  String get remindEveningTitle => 'Tagesabschluss';

  @override
  String get remindEveningBody =>
      'Zwei Minuten jetzt und die Zahlen des Tages sind vollständig.';

  @override
  String get happyWeekendTitle => 'Schönes Wochenende! 🎉';

  @override
  String get happyWeekendBody =>
      'Genieß es — und behalte die Wochenendausgaben im Blick.';

  @override
  String get dailyReminders => 'Tägliche Ausgaben-Erinnerungen';

  @override
  String get dailyRemindersBody =>
      'Freundliche Anstöße, deine Ausgaben aktuell zu halten';

  @override
  String get weekendGreeting => 'Schönes Wochenende';

  @override
  String get weekendGreetingBody =>
      'Ein freundlicher Gruß zum Start ins Wochenende';

  @override
  String get reminderTimesSection => 'Erinnerungszeiten';

  @override
  String get slotMorning => 'Morgens';

  @override
  String get slotNoon => 'Mittags';

  @override
  String get slotAfternoon => 'Nachmittags';

  @override
  String get slotEvening => 'Abends';

  @override
  String get everyDay => 'Täglich';

  @override
  String get financialReport => 'Finanzbericht';

  @override
  String get preparedFor => 'Erstellt für';

  @override
  String get generatedOn => 'Erstellt am';

  @override
  String get reportDisclaimer =>
      'Von RainyPenny aus deinen eigenen Aufzeichnungen erstellt.';

  @override
  String pageOf(int page, int total) {
    return 'Seite $page von $total';
  }

  @override
  String get overview => 'Überblick';

  @override
  String get description => 'Beschreibung';

  @override
  String get totalIncome => 'Einnahmen gesamt';

  @override
  String get totalExpenses => 'Ausgaben gesamt';

  @override
  String get totalSaved => 'Gespart gesamt';

  @override
  String get shareOfTotal => 'Anteil';

  @override
  String get used => 'Verbraucht';

  @override
  String get goal => 'Ziel';

  @override
  String get targetDate => 'Zieldatum';

  @override
  String get progress => 'Fortschritt';

  @override
  String get paidOffShort => 'Getilgt';

  @override
  String get transactions => 'Buchungen';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'und $count weitere Buchungen',
      one: 'und 1 weitere Buchung',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF exportieren';

  @override
  String get sharePdf => 'Bericht teilen';

  @override
  String get preparingReport => 'Dein Bericht wird erstellt…';

  @override
  String get reportReady => 'Bericht fertig';

  @override
  String get reportFailed => 'Bericht konnte nicht erstellt werden';

  @override
  String get categories => 'Kategorien';

  @override
  String get categoriesIntro =>
      'Lege eigene Kategorien an, damit Einnahmen und Ausgaben genau so einsortiert werden, wie du denkst.';

  @override
  String get expenseCategories => 'Ausgabenkategorien';

  @override
  String get incomeCategories => 'Einnahmenkategorien';

  @override
  String get newCategory => 'Neue Kategorie';

  @override
  String get editCategory => 'Kategorie bearbeiten';

  @override
  String get categoryName => 'Name';

  @override
  String get categoryNameHint => 'z. B. Tierpflege';

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
      other: '$count Einträge nutzen diese Kategorie noch',
      one: '1 Eintrag nutzt diese Kategorie noch',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Hier ist noch nichts.';

  @override
  String get builtIn => 'Vorgegeben';

  @override
  String get manageCategories => 'Kategorien verwalten';

  @override
  String get expense => 'Ausgabe';

  @override
  String get languageNote =>
      'Arabisch, Urdu, Persisch und Hebräisch stellen die gesamte Oberfläche auf Rechts-nach-links um – einschließlich Diagrammen und PDF-Berichten.';

  @override
  String get next => 'Weiter';

  @override
  String get back => 'Zurück';

  @override
  String get skip => 'Überspringen';

  @override
  String get continueLabel => 'Weiter';

  @override
  String get selected => 'Ausgewählt';

  @override
  String get passwordRequired => 'Passwort eingeben';

  @override
  String get newPasswordLabel => 'Neues Passwort';

  @override
  String get confirmPasswordLabel => 'Passwort bestätigen';

  @override
  String get passwordsDoNotMatch => 'Beide Passwörter müssen übereinstimmen';

  @override
  String get showPassword => 'Passwort anzeigen';

  @override
  String get hidePassword => 'Passwort verbergen';

  @override
  String get savePassword => 'Passwort speichern';

  @override
  String get backToSignIn => 'Zurück zur Anmeldung';

  @override
  String get alreadyHaveAccount => 'Ich habe bereits ein Konto';

  @override
  String get getStarted => 'Los geht’s';

  @override
  String get acceptTerms =>
      'Ich stimme den Nutzungsbedingungen und der Datenschutzerklärung zu';

  @override
  String get acceptTermsRequired => 'Bitte zustimmen, um fortzufahren';

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
      'Ein langer Satz, den Sie sich merken können, ist besser als ein kurzes Passwort voller Sonderzeichen. Verwenden Sie nichts, was Sie schon anderswo nutzen.';

  @override
  String get authInvalidCredentials =>
      'E-Mail und Passwort passen zu keinem Konto';

  @override
  String get authEmailNotConfirmed =>
      'Bestätigen Sie Ihre E-Mail-Adresse vor der Anmeldung';

  @override
  String get authEmailAlreadyRegistered =>
      'Mit dieser E-Mail-Adresse besteht bereits ein Konto';

  @override
  String get authWeakPassword => 'Wählen Sie ein längeres Passwort';

  @override
  String get authRateLimited =>
      'Zu viele Versuche. Versuchen Sie es in ein paar Minuten erneut';

  @override
  String get authNetworkError =>
      'Keine Verbindung. Prüfen Sie Ihr Netzwerk und versuchen Sie es erneut';

  @override
  String get authGenericError =>
      'Etwas ist schiefgelaufen. Bitte erneut versuchen';

  @override
  String get confirmEmailTitle => 'Prüfen Sie Ihr Postfach';

  @override
  String confirmEmailBody(String email) {
    return 'Wir haben einen Bestätigungslink an $email geschickt. Öffnen Sie ihn, um Ihr Konto fertig einzurichten.';
  }

  @override
  String get resendConfirmation => 'Bestätigungsmail erneut senden';

  @override
  String get confirmationResent => 'Bestätigungsmail gesendet';

  @override
  String get forgotPasswordTitle => 'Passwort zurücksetzen';

  @override
  String get forgotPasswordSubtitle =>
      'Geben Sie die E-Mail-Adresse Ihrer Anmeldung ein. Wir senden Ihnen einen Link, um ein neues Passwort zu wählen.';

  @override
  String get sendResetLink => 'Link senden';

  @override
  String get resetLinkSentTitle => 'Link gesendet';

  @override
  String resetLinkSentBody(String email) {
    return 'Falls für $email ein Konto besteht, ist der Link unterwegs.';
  }

  @override
  String get resetLinkSentHint =>
      'Der Link ist eine Stunde gültig. Kommt er nicht an, sehen Sie im Spam-Ordner nach, bevor Sie einen neuen anfordern.';

  @override
  String get tryAnotherEmail => 'Andere E-Mail verwenden';

  @override
  String get resetPasswordTitle => 'Neues Passwort wählen';

  @override
  String get resetPasswordSubtitle =>
      'Wählen Sie etwas, das Sie für dieses Konto noch nicht verwendet haben.';

  @override
  String get passwordChangedTitle => 'Passwort aktualisiert';

  @override
  String get passwordChangedBody =>
      'Ihr neues Passwort ist gespeichert. Sie sind angemeldet und startklar.';

  @override
  String get demoModeHint => 'Demo-Version – kein Konto nötig';

  @override
  String get demoModeFill => 'Ausfüllen';

  @override
  String get welcomeTrackTitle => 'Sehen Sie, wohin Ihr Geld geht';

  @override
  String get welcomeTrackBody =>
      'Halten Sie fest, was hereinkommt und was hinausgeht. RainyPenny macht daraus ein Bild, das man wirklich lesen kann.';

  @override
  String get welcomeBudgetTitle => 'Grenzen, die halten';

  @override
  String get welcomeBudgetBody =>
      'Geben Sie jedem Teil Ihrer Ausgaben eine monatliche Obergrenze – und erfahren Sie es, bevor Sie sie überschreiten, nicht danach.';

  @override
  String get welcomeGoalsTitle => 'Sparen Sie für das, was zählt';

  @override
  String get welcomeGoalsBody =>
      'Ziel benennen, Betrag festlegen, beim Wachsen zusehen. Ein Notgroschen entsteht leichter, wenn man ihn sieht.';

  @override
  String get welcomePrivacyTitle => 'Ihr Geld bleibt Ihres';

  @override
  String get welcomePrivacyBody =>
      'Ihre Zahlen gehören Ihnen allein. Nichts wird verkauft, nichts weitergegeben.';

  @override
  String stepOf(int step, int total) {
    return 'Schritt $step von $total';
  }

  @override
  String get onboardingNameTitle => 'Wie sollen wir Sie nennen?';

  @override
  String get onboardingNameBody =>
      'Wir verwenden den Namen nur zur Begrüßung, sonst nirgends.';

  @override
  String get onboardingNameHint =>
      'Der Vorname genügt. Sie können ihn später ändern.';

  @override
  String get onboardingCurrencyTitle => 'Welche Währung nutzen Sie?';

  @override
  String get onboardingCurrencyBody =>
      'Alle Beträge werden in dieser Währung angezeigt. Die Auswahl rechnet nichts um.';

  @override
  String get onboardingCurrencySearch => 'Alle Währungen durchsuchen';

  @override
  String get onboardingAppearanceTitle => 'Machen Sie es zu Ihrem';

  @override
  String get onboardingAppearanceBody =>
      'Wählen Sie einen Look. Alles ändert sich sofort, und Sie können jederzeit zurückkommen.';

  @override
  String get onboardingNotificationsTitle => 'Behalten Sie den Überblick';

  @override
  String get onboardingNotificationsBody =>
      'Ein leiser Hinweis im richtigen Moment macht daraus eine Gewohnheit.';

  @override
  String get onboardingNotifyReminders =>
      'Eine sanfte Erinnerung, Ausgaben einzutragen';

  @override
  String get onboardingNotifyBudget =>
      'Ein Hinweis, bevor ein Budget aufgebraucht ist';

  @override
  String get onboardingNotifySummary =>
      'Eine Wochenübersicht, wohin Ihr Geld ging';

  @override
  String get onboardingNotifyEnable => 'Mitteilungen aktivieren';

  @override
  String get onboardingNotifyDone => 'Mitteilungseinstellungen gespeichert';

  @override
  String get onboardingNotifyLater =>
      'All das können Sie jederzeit in den Einstellungen ändern.';

  @override
  String get onboardingReadyTitle => 'Alles bereit';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Alles bereit, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Die Einrichtung ist fertig. Möchten Sie eine kurze Tour durch die App?';

  @override
  String get onboardingTakeTour => 'Zeig es mir';

  @override
  String get onboardingGoToApp => 'Zur App';

  @override
  String get onboardingTourLater =>
      'Nicht jetzt? Die Anleitung bleibt in den Einstellungen, wann immer Sie wollen.';

  @override
  String get beginnersGuide => 'Einsteiger-Anleitung';

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
  String get guideDashboardTitle => 'Ihre Übersicht';

  @override
  String get guideDashboardBody =>
      'Hier beginnt alles. Die Karte oben zeigt, was Ihnen bleibt; darunter, was in dieser Periode herein- und hinausging, dann Ausgaben, Budgets und Ziele.';

  @override
  String get guideDashboardTip1 =>
      'Ziehen Sie den Bildschirm nach unten, um alles auf einmal zu aktualisieren.';

  @override
  String get guideDashboardTip2 =>
      'Tippen Sie auf Einnahmen oder Ausgaben, um direkt zu dieser Liste zu springen.';

  @override
  String get guideDashboardTip3 =>
      'Ringe und Hinweise aktualisieren sich, sobald Sie etwas eintragen.';

  @override
  String get guideAddTitle => 'Geld erfassen';

  @override
  String get guideAddBody =>
      'Die Schaltfläche in der Mitte der Leiste ist der Ausgangspunkt. Sie öffnet ein kurzes Menü: Ausgabe, Einnahme, Schuld, Budget oder Sparziel.';

  @override
  String get guideAddTip1 =>
      'Tippen Sie auf die mittlere Schaltfläche, um Geld ein- oder auszutragen.';

  @override
  String get guideAddTip2 =>
      'Halten Sie sie gedrückt, um das Menü zu überspringen und direkt eine Ausgabe zu erfassen.';

  @override
  String get guideAddTip3 =>
      'Wählen Sie immer eine Kategorie – nur so funktionieren Diagramme und Budgets.';

  @override
  String get guideCategoriesTitle => 'Kategorien';

  @override
  String get guideCategoriesBody =>
      'Kategorien gruppieren Ihre Ausgaben. Die mitgelieferten reichen den meisten; Sie können sie umbenennen oder eigene anlegen.';

  @override
  String get guideCategoriesTip1 =>
      'Einstellungen, dann Kategorien verwalten, zum Ändern oder Anlegen.';

  @override
  String get guideCategoriesTip2 =>
      'Alles ohne Kategorie landet in „Sonstiges“, damit die Diagramme ehrlich bleiben.';

  @override
  String get guideBudgetTitle => 'Budgets';

  @override
  String get guideBudgetBody =>
      'Ein Budget ist eine monatliche Obergrenze für eine Kategorie. Der Balken füllt sich beim Ausgeben und färbt sich, wenn es eng wird – Sie erfahren es also vorher.';

  @override
  String get guideBudgetTip1 =>
      'Beginnen Sie mit zwei oder drei Kategorien, nicht mit allen auf einmal.';

  @override
  String get guideBudgetTip2 =>
      'Setzen Sie die Grenze etwas über Ihre üblichen Ausgaben und ziehen Sie sie dann an.';

  @override
  String get guideBudgetTip3 =>
      'Lassen Sie Budget-Warnungen an, dann meldet sich die App rechtzeitig.';

  @override
  String get guideSavingsTitle => 'Sparziele';

  @override
  String get guideSavingsBody =>
      'Benennen Sie, wofür Sie sparen, setzen Sie Betrag und Datum – die App rechnet aus, was Sie monatlich zurücklegen müssen.';

  @override
  String get guideSavingsTip1 =>
      'Ein benanntes Ziel hält man leichter durch als einen vagen Sparvorsatz.';

  @override
  String get guideSavingsTip2 =>
      'Mehrere kleine Ziele werden öfter erreicht als ein großes.';

  @override
  String get guideLoansTitle => 'Schulden und Kredite';

  @override
  String get guideLoansBody =>
      'Erfassen Sie, was Sie schulden, was es kostet und wann die nächste Rate fällig ist. Alles steht in einer Liste mit dem offenen Betrag.';

  @override
  String get guideLoansTip1 =>
      'Tragen Sie das Fälligkeitsdatum ein, dann erinnern Sie die Zahlungshinweise.';

  @override
  String get guideLoansTip2 =>
      'Eine überfällige Schuld erscheint rot auf der Übersicht, bis sie beglichen ist.';

  @override
  String get guideReportsTitle => 'Berichte';

  @override
  String get guideReportsBody =>
      'Der genauere Blick: Einnahmen gegen Ausgaben, Ausgaben nach Kategorie, wie Ihre Budgets gehalten haben und wie viel Ihres Einkommens geblieben ist.';

  @override
  String get guideReportsTip1 =>
      'Oben wechseln Sie zwischen Woche, Monat und Quartal.';

  @override
  String get guideReportsTip2 =>
      'Exportieren oder teilen Sie ein PDF – in Ihrer Sprache und Leserichtung.';

  @override
  String get guideSettingsTitle => 'Einstellungen';

  @override
  String get guideSettingsBody =>
      'Sprache, Währung, Farben und Hinweise liegen alle hier, und nichts davon ist durch die Einrichtung festgelegt – ändern Sie es, wann Sie wollen.';

  @override
  String get guideSettingsTip1 =>
      'Vierzig Sprachen, und das ganze Layout spiegelt sich für Rechts-nach-links-Sprachen.';

  @override
  String get guideSettingsTip2 =>
      'Wählen Sie, welche Hinweise Sie wollen und zu welchen Zeiten.';

  @override
  String get guideSettingsTip3 =>
      'Ruhezeiten halten alles bis zum Morgen zurück.';

  @override
  String get guideHabitTitle => 'Dranbleiben';

  @override
  String get guideHabitBody =>
      'Die App ist nur so gut wie das, was Sie hineingeben. Eine Minute am Tag schlägt eine Stunde im Monat, und nach zwei Wochen sagen die Zahlen etwas aus.';

  @override
  String get guideHabitTip1 =>
      'Erfassen Sie Ausgaben sofort, nicht erst am Wochenende.';

  @override
  String get guideHabitTip2 =>
      'Ein Blick am Tag auf die Übersicht. Zehn Sekunden reichen.';

  @override
  String get guideHabitTip3 =>
      'Diese Anleitung bleibt in den Einstellungen – kommen Sie jederzeit zurück.';

  @override
  String get appearance => 'Darstellung';

  @override
  String get themeCaption => 'Hell, dunkel oder was Ihr Gerät gerade macht.';

  @override
  String get accentColor => 'Akzentfarbe';

  @override
  String get accentColorCaption =>
      'Färbt Schaltflächen, Hervorhebungen und Diagramme.';

  @override
  String get accentSemanticsNote =>
      'Einnahmen und Ausgaben behalten in jedem Design ihre eigenen Farben – eine Zahl ändert also nie ihre Bedeutung, nur weil Sie den Akzent gewechselt haben.';

  @override
  String get accentTeal => 'Türkis';

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
  String get suggestedLanguages => 'Vorschläge';

  @override
  String get allLanguages => 'Alle Sprachen';

  @override
  String get noLanguagesFound => 'Keine Sprachen gefunden';

  @override
  String get noLanguagesFoundMessage =>
      'Versuchen Sie den englischen Namen oder das Zwei-Buchstaben-Kürzel.';

  @override
  String get rightToLeft => 'Rechts nach links';

  @override
  String get replayGuide => 'Anleitung erneut ansehen';

  @override
  String get replaySetup => 'Einrichtung wiederholen';

  @override
  String get replaySetupBody =>
      'Gehen Sie die Einstiegsfragen noch einmal durch. Nichts von dem, was Sie erfasst haben, wird gelöscht.';

  @override
  String get rateTitle => 'Gefällt dir RainyPenny?';

  @override
  String get rateBody =>
      'Du bist jetzt schon eine Weile dabei. Eine Bewertung dauert einen Moment und hilft anderen, die App zu finden.';

  @override
  String get rateAction => 'App bewerten';

  @override
  String get rateLater => 'Vielleicht später';

  @override
  String get rateNever => 'Nein, danke';

  @override
  String get rateThanks => 'Danke';

  @override
  String get monthlySalary => 'Monatsgehalt';

  @override
  String get remainingAmount => 'Verbleibend';

  @override
  String get carriedForward => 'Übertrag';

  @override
  String get carriedForwardHint => 'Rest aus dem letzten Zyklus';

  @override
  String get totalSpending => 'Gesamtausgaben';

  @override
  String get salaryCycle => 'Gehaltszyklus';

  @override
  String get payday => 'Zahltag';

  @override
  String get paydayDescription =>
      'Der Tag, an dem dein Gehalt eingeht. Dein Finanzmonat läuft von diesem Tag bis zum Tag vor dem nächsten.';

  @override
  String get paydayUpdated => 'Zahltag aktualisiert';

  @override
  String paydayDayOfMonth(int day) {
    return 'Tag $day';
  }

  @override
  String get paydayShortMonthNote =>
      'In kürzeren Monaten beginnt der Zyklus am letzten Tag des Monats.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage bis zum Zahltag',
      one: '1 Tag bis zum Zahltag',
      zero: 'Letzter Tag des Zyklus',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Nächster Zahltag';

  @override
  String get spentSoFar => 'Bisher ausgegeben';

  @override
  String get dailyAllowance => 'Sicherer Tagesbetrag';

  @override
  String get overspentNotice =>
      'Du hast in diesem Zyklus mehr ausgegeben, als eingegangen ist.';

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
  String get healthFair => 'Befriedigend';

  @override
  String get healthNeedsWork => 'Verbesserungsbedarf';

  @override
  String get healthExcellentBody =>
      'Du sparst gut und bleibst innerhalb deiner Budgets.';

  @override
  String get healthGoodBody =>
      'Deine Ausgaben liegen in diesem Zeitraum im Plan.';

  @override
  String get healthFairBody =>
      'Einige Budgets sind angespannt. Kleine Änderungen helfen.';

  @override
  String get healthNeedsWorkBody =>
      'Die Ausgaben übersteigen deinen Plan. Beginne mit der größten Kategorie.';

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
    return '$percent% verbraucht';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% des Einkommens';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% höher';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% niedriger';
  }

  @override
  String get howScoreWorks => 'So entsteht dieser Wert';

  @override
  String get healthScoreExplainer =>
      'Dein Wert verbindet vier Dinge: wie viel deines Einkommens du behältst, wie gut du in deinen Budgets bleibst, wie viel deines Einkommens in Schulden fließt, und ob deine Ausgaben steigen oder fallen.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% des Werts';
  }

  @override
  String get viewHealthDetails => 'Aufschlüsselung ansehen';

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
      'Dein Name und dein Foto erscheinen überall in der App. Deine E-Mail ist die Adresse, mit der du dich anmeldest.';

  @override
  String get emailNotEditable =>
      'Wende dich an den Support, um die Anmeldeadresse zu ändern.';

  @override
  String get pressBackAgainToExit => 'Zum Beenden erneut zurück drücken';

  @override
  String get categoryHousing => 'Wohnen';

  @override
  String get categoryFood => 'Essen und Trinken';

  @override
  String get categoryTransport => 'Transport';

  @override
  String get categoryShopping => 'Einkaufen';

  @override
  String get categoryBills => 'Rechnungen und Nebenkosten';

  @override
  String get categoryEntertainment => 'Unterhaltung';

  @override
  String get categoryHealth => 'Gesundheit und Fitness';

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
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Sonstiges';

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
  String get addCategory => 'Neue Kategorie';

  @override
  String get filterByCategory => 'Nach Kategorie filtern';

  @override
  String get allCategories => 'Alle Kategorien';

  @override
  String get clearFilters => 'Filter zurücksetzen';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Gesamter Zeitraum';

  @override
  String get customRange => 'Benutzerdefiniert';

  @override
  String get selectDateRange => 'Zeitraum wählen';

  @override
  String rangeApplied(String start, String end) {
    return 'Zeigt $start – $end';
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
