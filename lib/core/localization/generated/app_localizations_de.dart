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
}
