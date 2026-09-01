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
}
