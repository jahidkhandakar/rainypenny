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
  String get navTransactions => 'Transazioni';

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
  String get greetingSubtitle => 'Ecco la tua panoramica finanziaria';

  @override
  String get totalBalance => 'Saldo totale';

  @override
  String get vsLastPeriod => 'rispetto al periodo precedente';

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
  String get addExpense => 'Aggiungi spesa';

  @override
  String get spendingOverview => 'Panoramica delle spese';

  @override
  String get recentTransactions => 'Transazioni recenti';

  @override
  String get seeAll => 'Vedi tutte';

  @override
  String get viewAll => 'Mostra tutte';

  @override
  String get budgetProgress => 'Avanzamento del budget';

  @override
  String get savingsGoals => 'Obiettivi di risparmio';

  @override
  String get financialInsight => 'Analisi finanziaria';

  @override
  String get financialHealth => 'Salute finanziaria';

  @override
  String ofTotal(String total) {
    return 'di $total';
  }

  @override
  String get searchTransactions => 'Cerca transazioni';

  @override
  String get filterAll => 'Tutte';

  @override
  String get filterIncome => 'Entrate';

  @override
  String get filterExpenses => 'Uscite';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get noTransactionsTitle => 'Nessuna transazione trovata';

  @override
  String get noTransactionsBody =>
      'Prova con un\'altra ricerca o un filtro diverso per vedere la tua attività.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transazioni',
      one: '1 transazione',
      zero: 'Nessuna transazione',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Aggiungi transazione';

  @override
  String get amount => 'Importo';

  @override
  String get category => 'Categoria';

  @override
  String get date => 'Data';

  @override
  String get note => 'Nota';

  @override
  String get noteHint => 'Nota opzionale';

  @override
  String get saveIncome => 'Salva entrata';

  @override
  String get saveExpense => 'Salva spesa';

  @override
  String get selectCategory => 'Seleziona categoria';

  @override
  String get transactionSaved => 'Transazione salvata';

  @override
  String get amountRequired => 'Inserisci un importo maggiore di zero';

  @override
  String get titleRequired => 'Assegna un nome a questa transazione';

  @override
  String get descriptionLabel => 'Descrizione';

  @override
  String get descriptionHint => 'es. Spesa alimentare';

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
    return '$percent% utilizzato';
  }

  @override
  String get onTrack => 'In linea';

  @override
  String get approachingLimit => 'Vicino al limite';

  @override
  String get overBudget => 'Fuori budget';

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
      other: 'Mancano $count mesi',
      one: 'Manca 1 mese',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Prestiti e debiti';

  @override
  String get totalOutstanding => 'Totale residuo';

  @override
  String get monthlyPayment => 'Rata mensile';

  @override
  String get nextPayment => 'Prossimo pagamento';

  @override
  String paidOff(int percent) {
    return '$percent% rimborsato';
  }

  @override
  String get interestRate => 'Tasso di interesse';

  @override
  String get upcomingPayments => 'Pagamenti imminenti';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Scade tra $count giorni',
      one: 'Scade domani',
      zero: 'Scade oggi',
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
  String get incomeVsExpenses => 'Entrate vs uscite';

  @override
  String get spendingByCategory => 'Spese per categoria';

  @override
  String get budgetPerformance => 'Andamento del budget';

  @override
  String get insights => 'Approfondimenti';

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
  String get logOut => 'Disconnettiti';

  @override
  String memberSince(String date) {
    return 'Membro dal $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get settings => 'Impostazioni';

  @override
  String get noNotificationsTitle => 'Nessuna nuova notifica';

  @override
  String get noNotificationsBody =>
      'Nuovi promemoria e approfondimenti appariranno qui.';

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
  String get somethingWentWrong => 'Si è verificato un errore';

  @override
  String get comingSoon => 'In arrivo con la versione completa';

  @override
  String get edit => 'Modifica';

  @override
  String get delete => 'Elimina';

  @override
  String get undo => 'Annulla operazione';

  @override
  String get add => 'Aggiungi';

  @override
  String get create => 'Crea';

  @override
  String get nameRequired => 'Inserisci il tuo nome';

  @override
  String get amountAboveZero => 'Inserisci un importo maggiore di zero';

  @override
  String get editTransaction => 'Modifica transazione';

  @override
  String get deleteTransaction => 'Eliminare la transazione?';

  @override
  String deleteTransactionBody(String title) {
    return '$title verrà rimossa dal tuo registro.';
  }

  @override
  String get transactionDeleted => 'Transazione eliminata';

  @override
  String get transactionUpdated => 'Transazione aggiornata';

  @override
  String get newBudget => 'Nuovo budget';

  @override
  String get editBudget => 'Modifica budget';

  @override
  String get budgetLimit => 'Limite mensile';

  @override
  String get deleteBudget => 'Eliminare il budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'Il budget per $category verrà rimosso. Le tue transazioni non saranno interessate.';
  }

  @override
  String get budgetSaved => 'Budget salvato';

  @override
  String get budgetDeleted => 'Budget eliminato';

  @override
  String get allCategoriesBudgeted =>
      'Ogni categoria ha già un budget assegnato';

  @override
  String get noBudgetsTitle => 'Ancora nessun budget';

  @override
  String get noBudgetsBody =>
      'Imposta un limite mensile per una categoria per iniziare a monitorarla.';

  @override
  String get newGoal => 'Nuovo obiettivo';

  @override
  String get editGoal => 'Modifica obiettivo';

  @override
  String get goalName => 'Nome obiettivo';

  @override
  String get goalNameHint => 'es. Fondo di emergenza';

  @override
  String get targetAmount => 'Importo obiettivo';

  @override
  String get alreadySaved => 'Già risparmiato';

  @override
  String get deleteGoal => 'Eliminare l\'obiettivo?';

  @override
  String deleteGoalBody(String name) {
    return '$name e i suoi progressi verranno rimossi.';
  }

  @override
  String get goalSaved => 'Obiettivo salvato';

  @override
  String get goalDeleted => 'Obiettivo eliminato';

  @override
  String get noGoalsTitle => 'Nessun obiettivo di risparmio';

  @override
  String get noGoalsBody =>
      'Imposta un traguardo e RainyPenny monitorerà i tuoi progressi.';

  @override
  String get fundsAdded => 'Fondi aggiunti';

  @override
  String get newDebt => 'Nuovo prestito o carta';

  @override
  String get editDebt => 'Modifica prestito';

  @override
  String get debtName => 'Nome';

  @override
  String get debtNameHint => 'es. Finanziamento auto';

  @override
  String get lender => 'Creditore';

  @override
  String get lenderHint => 'es. Intesa Sanpaolo';

  @override
  String get originalAmount => 'Importo originale';

  @override
  String get creditLimit => 'Plafond';

  @override
  String get remainingBalance => 'Saldo residuo';

  @override
  String get interestRatePercent => 'Tasso di interesse (%)';

  @override
  String get kindLoan => 'Prestito';

  @override
  String get kindCreditCard => 'Carta di credito';

  @override
  String get recordPayment => 'Registra pagamento';

  @override
  String get paymentRecorded => 'Pagamento registrato';

  @override
  String get deleteDebt => 'Eliminare questo debito?';

  @override
  String deleteDebtBody(String name) {
    return '$name verrà rimosso dai tuoi debiti.';
  }

  @override
  String get debtSaved => 'Salvato';

  @override
  String get debtDeleted => 'Eliminato';

  @override
  String get noDebtsTitle => 'Nessun debito monitorato';

  @override
  String get noDebtsBody =>
      'Aggiungi un prestito o una carta di credito per tenere d\'occhio i rimborsi.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget superato per $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Hai superato di $amount il tuo budget per $subject in questo periodo.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject è vicino al limite';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Hai utilizzato il $percent% del tuo budget per $subject, con $amount rimanenti.';
  }

  @override
  String get insightOverIncomeTitle => 'Le uscite superano le entrate';

  @override
  String get insightOverIncomeBody =>
      'Hai speso più di quanto hai guadagnato in questo periodo. Controlla le categorie di spesa maggiori per riequilibrare i conti.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Spese in aumento per $subject';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Le tue spese per $subject sono superiori del $percent% rispetto al periodo precedente.';
  }

  @override
  String get insightTrendDownTitle => 'Le uscite sono in calo';

  @override
  String insightTrendDownBody(int percent) {
    return 'Le spese complessive sono inferiori del $percent% rispetto al periodo precedente.';
  }

  @override
  String get insightTrendUpTitle => 'Le uscite sono in aumento';

  @override
  String insightTrendUpBody(int percent) {
    return 'Le spese complessive sono superiori del $percent% rispetto al periodo precedente.';
  }

  @override
  String get insightSavingsStrongTitle => 'Ottimo risparmio in questo periodo';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Hai risparmiato il $percent% delle tue entrate — ben al di sopra dell\'obiettivo del $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Tasso di risparmio sotto l\'obiettivo';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Hai risparmiato il $percent% delle tue entrate in questo periodo. Punta al $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'L\'obiettivo $subject è quasi raggiunto';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Mancano solo $amount per completare $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'In linea con l\'obiettivo $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months mesi',
      one: '1 mese',
    );
    return 'Mettendo da parte $amount al mese, raggiungerai questo obiettivo in $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Pagamento per $subject scaduto';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days giorni',
      one: '1 giorno',
    );
    return 'Il pagamento di $amount per $subject è in ritardo di $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Pagamento per $subject in arrivo';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'tra $days giorni',
      one: 'domani',
      zero: 'oggi',
    );
    return '$amount scade $_temp0.';
  }

  @override
  String get signIn => 'Accedi';

  @override
  String get signUp => 'Crea account';

  @override
  String get signInSubtitle =>
      'Bentornato. I tuoi conti sono pronti per essere controllati.';

  @override
  String get signUpSubtitle =>
      'Bastano pochi dati per essere subito operativo.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'tu@email.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Almeno 8 caratteri';

  @override
  String get fullNameLabel => 'Nome completo';

  @override
  String get fullNameHint => 'Mario Rossi';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get resetSent =>
      'Controlla la tua casella di posta per il link di ripristino';

  @override
  String get noAccountYet => 'Non hai un account?';

  @override
  String get haveAccount => 'Hai già un account?';

  @override
  String get emailInvalid => 'Inserisci un indirizzo email valido';

  @override
  String get passwordTooShort => 'Usa almeno 8 caratteri';

  @override
  String get signOutConfirm => 'Vuoi uscire?';

  @override
  String get signOutBody =>
      'Dovrai accedere nuovamente per visualizzare le tue finanze.';

  @override
  String get dataSource => 'Origine dati';

  @override
  String get insightWeeklySummaryTitle => 'Il tuo riepilogo settimanale';

  @override
  String get insightWeeklySummaryBody =>
      'Scopri dove sono andati i tuoi soldi questa settimana e come stanno tenendo i tuoi budget.';

  @override
  String get notificationSettings => 'Notifiche';

  @override
  String get alertsSection => 'Avvisi';

  @override
  String get budgetAlerts => 'Avvisi di budget';

  @override
  String get budgetAlertsBody =>
      'Quando un budget si avvicina o supera il limite';

  @override
  String get paymentReminders => 'Promemoria pagamenti';

  @override
  String get paymentRemindersBody =>
      'Qualche giorno prima della scadenza di un pagamento';

  @override
  String get savingsUpdates => 'Aggiornamenti sui risparmi';

  @override
  String get savingsUpdatesBody => 'I progressi verso i tuoi obiettivi';

  @override
  String get weeklySummaryLabel => 'Riepilogo settimanale';

  @override
  String get weeklySummaryBody =>
      'Una panoramica della settimana appena trascorsa';

  @override
  String get scheduleSection => 'Orari';

  @override
  String get reminderTime => 'Orario promemoria';

  @override
  String get quietHours => 'Ore di silenzio';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Giorno del riepilogo';

  @override
  String get permissionRequired => 'Le notifiche sono disattivate';

  @override
  String get permissionRequiredBody =>
      'Consenti le notifiche in modo che RainyPenny possa avvisarti prima che un budget o un pagamento ti sfugga di mano.';

  @override
  String get allowNotifications => 'Attiva notifiche';

  @override
  String get permissionDenied =>
      'Le notifiche sono bloccate. Puoi abilitarle nelle impostazioni del tuo dispositivo.';

  @override
  String get upcomingAlerts => 'Programmate';

  @override
  String get noScheduledAlerts => 'Nessuna notifica programmata al momento';

  @override
  String get noScheduledAlertsBody =>
      'Gli avvisi appariranno qui man mano che i tuoi budget e i tuoi pagamenti si avvicinano alle scadenze.';

  @override
  String scheduledFor(String date) {
    return 'Programmata per il $date';
  }

  @override
  String get everyWeek => 'Ogni settimana';

  @override
  String get allNotificationsOff => 'Tutte le notifiche sono disattivate';

  @override
  String get needsAttention => 'Richiede attenzione';

  @override
  String get quickActionsTitle => 'Cosa desideri fare?';

  @override
  String get createSection => 'Registra';

  @override
  String get jumpToSection => 'Vai a';

  @override
  String get addLoanAction => 'Aggiungi prestito';

  @override
  String get addBudgetAction => 'Aggiungi budget';

  @override
  String get addGoalAction => 'Aggiungi obiettivo';

  @override
  String get longPressHint =>
      'Suggerimento: tieni premuto + per registrare subito una spesa';

  @override
  String get searchCurrencies => 'Cerca valute';

  @override
  String get noCurrenciesFound => 'Nessuna valuta trovata';

  @override
  String get noCurrenciesFoundMessage =>
      'Prova con un altro codice, simbolo o nome.';

  @override
  String get popularCurrencies => 'Popolari';

  @override
  String get allCurrencies => 'Tutte le valute';

  @override
  String get totalLoanAmount => 'Importo totale del prestito';

  @override
  String get installmentAmount => 'Importo della rata';

  @override
  String get numberOfInstallments => 'Numero di rate';

  @override
  String get paidInstallments => 'Rate pagate';

  @override
  String get remainingInstallments => 'Rate rimanenti';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid di $total pagate';
  }

  @override
  String get finalPayment => 'Ultima rata';

  @override
  String get paymentDueDate => 'Scadenza del pagamento';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Giorno $day di ogni mese';
  }

  @override
  String get loanStatus => 'Stato';

  @override
  String get statusActive => 'Regolare';

  @override
  String get statusDueSoon => 'In scadenza';

  @override
  String get statusOverdue => 'Scaduto';

  @override
  String get statusCompleted => 'Estinto';

  @override
  String get repaymentProgress => 'Avanzamento del rimborso';

  @override
  String get byAmount => 'Per importo';

  @override
  String get byInstallments => 'Per rate';

  @override
  String get startDate => 'Data di inizio';

  @override
  String get openEnded => 'A tempo indeterminato';

  @override
  String get loanDetails => 'Dettagli del prestito';

  @override
  String get notSet => 'Non impostato';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'Il pagamento per $subject scade oggi';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'La tua rata di $amount scade oggi. Registrala subito per rimanere in regola.';
  }

  @override
  String get remindMorningTitle => 'Buongiorno ☀️';

  @override
  String get remindMorningBody =>
      'Inizia la giornata tenendo d\'occhio le tue spese. C\'è qualcosa da aggiungere da ieri?';

  @override
  String get remindNoonTitle => 'Controllo di metà giornata';

  @override
  String get remindNoonBody =>
      'Pranzo, caffè o biglietto dell\'autobus? Aggiungilo in pochi secondi.';

  @override
  String get remindAfternoonTitle => 'Aggiornamento rapido';

  @override
  String get remindAfternoonBody =>
      'Registra quanto hai speso finora per mantenere precisi i conti di oggi.';

  @override
  String get remindEveningTitle => 'Chiusura della giornata';

  @override
  String get remindEveningBody =>
      'Bastano due minuti adesso per completare i numeri di oggi.';

  @override
  String get happyWeekendTitle => 'Buon fine settimana! 🎉';

  @override
  String get happyWeekendBody =>
      'Goditi il weekend — tenendo comunque un occhio sulle spese.';

  @override
  String get dailyReminders => 'Promemoria giornalieri sulle spese';

  @override
  String get dailyRemindersBody =>
      'Notifiche gentili per mantenere aggiornate le tue spese';

  @override
  String get weekendGreeting => 'Saluto del fine settimana';

  @override
  String get weekendGreetingBody =>
      'Un pensiero amichevole all\'inizio del tuo fine settimana';

  @override
  String get reminderTimesSection => 'Orari dei promemoria';

  @override
  String get slotMorning => 'Mattina';

  @override
  String get slotNoon => 'Mezzogiorno';

  @override
  String get slotAfternoon => 'Pomeriggio';

  @override
  String get slotEvening => 'Sera';

  @override
  String get everyDay => 'Ogni giorno';

  @override
  String get financialReport => 'Report finanziario';

  @override
  String get preparedFor => 'Preparato per';

  @override
  String get generatedOn => 'Generato il';

  @override
  String get reportDisclaimer =>
      'Generato da RainyPenny sulla base delle tue registrazioni personali.';

  @override
  String pageOf(int page, int total) {
    return 'Pagina $page di $total';
  }

  @override
  String get overview => 'Panoramica';

  @override
  String get description => 'Descrizione';

  @override
  String get totalIncome => 'Entrate totali';

  @override
  String get totalExpenses => 'Uscite totali';

  @override
  String get totalSaved => 'Totale risparmiato';

  @override
  String get shareOfTotal => 'Quota';

  @override
  String get used => 'Utilizzato';

  @override
  String get goal => 'Obiettivo';

  @override
  String get targetDate => 'Data obiettivo';

  @override
  String get progress => 'Avanzamento';

  @override
  String get paidOffShort => 'Rimborsato';

  @override
  String get transactions => 'Transazioni';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e altre $count transazioni',
      one: 'e un\'altra transazione',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Esporta PDF';

  @override
  String get sharePdf => 'Condividi report';

  @override
  String get preparingReport => 'Preparazione del report in corso…';

  @override
  String get reportReady => 'Report pronto';

  @override
  String get reportFailed => 'Impossibile creare il report';

  @override
  String get categories => 'Categorie';

  @override
  String get categoriesIntro =>
      'Aggiungi le tue categorie per archiviare entrate e uscite esattamente secondo le tue esigenze.';

  @override
  String get expenseCategories => 'Categorie di spesa';

  @override
  String get incomeCategories => 'Categorie di entrata';

  @override
  String get newCategory => 'Nuova categoria';

  @override
  String get editCategory => 'Modifica categoria';

  @override
  String get categoryName => 'Nome';

  @override
  String get categoryNameHint => 'es. Animali domestici';

  @override
  String get icon => 'Icona';

  @override
  String get categorySaved => 'Categoria salvata';

  @override
  String get categoryDeleted => 'Categoria eliminata';

  @override
  String get deleteCategory => 'Eliminare questa categoria?';

  @override
  String deleteCategoryBody(String name) {
    return '$name verrà rimossa dalle tue categorie.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voci usano ancora questa categoria',
      one: '1 voce usa ancora questa categoria',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Ancora nulla qui.';

  @override
  String get builtIn => 'Predefinita';

  @override
  String get manageCategories => 'Gestisci categorie';

  @override
  String get expense => 'Spesa';

  @override
  String get languageNote =>
      'L\'arabo, l\'urdu, il persiano e l\'ebraico invertono l\'intera interfaccia da destra a sinistra, inclusi grafici e report PDF.';

  @override
  String get next => 'Avanti';

  @override
  String get back => 'Indietro';

  @override
  String get skip => 'Salta';

  @override
  String get continueLabel => 'Continua';

  @override
  String get selected => 'Selezionato';

  @override
  String get passwordRequired => 'Inserisci la tua password';

  @override
  String get newPasswordLabel => 'Nuova password';

  @override
  String get confirmPasswordLabel => 'Conferma password';

  @override
  String get passwordsDoNotMatch => 'Le password devono coincidere';

  @override
  String get showPassword => 'Mostra password';

  @override
  String get hidePassword => 'Nascondi password';

  @override
  String get savePassword => 'Salva password';

  @override
  String get backToSignIn => 'Torna ad accedi';

  @override
  String get alreadyHaveAccount => 'Ho già un account';

  @override
  String get getStarted => 'Inizia subito';

  @override
  String get acceptTerms =>
      'Accetto i Termini di servizio e l\'Informativa sulla privacy';

  @override
  String get acceptTermsRequired => 'Accetta per continuare';

  @override
  String get passwordStrengthTooShort => 'Troppo corta';

  @override
  String get passwordStrengthWeak => 'Debole';

  @override
  String get passwordStrengthFair => 'Discreta';

  @override
  String get passwordStrengthGood => 'Buona';

  @override
  String get passwordStrengthStrong => 'Forte';

  @override
  String get passwordAdvice =>
      'Una frase lunga che ricordi facilmente è meglio di una breve piena di simboli. Evita password che usi già altrove.';

  @override
  String get authInvalidCredentials =>
      'Email o password non corrispondono a nessun account';

  @override
  String get authEmailNotConfirmed =>
      'Conferma il tuo indirizzo email prima di accedere';

  @override
  String get authEmailAlreadyRegistered =>
      'Esiste già un account con questo indirizzo email';

  @override
  String get authWeakPassword => 'Scegli una password più lunga';

  @override
  String get authRateLimited => 'Troppi tentativi. Riprova tra qualche minuto';

  @override
  String get authNetworkError =>
      'Nessuna connessione. Controlla la tua rete e riprova';

  @override
  String get authGenericError => 'Si è verificato un errore. Riprova';

  @override
  String get confirmEmailTitle => 'Controlla la tua email';

  @override
  String confirmEmailBody(String email) {
    return 'Abbiamo inviato un link di conferma a $email. Aprilo per completare la configurazione del tuo account.';
  }

  @override
  String get resendConfirmation => 'Reinvia email di conferma';

  @override
  String get confirmationResent => 'Email di conferma reinviata';

  @override
  String get forgotPasswordTitle => 'Reimposta la password';

  @override
  String get forgotPasswordSubtitle =>
      'Inserisci l\'email con cui ti sei registrato e ti invieremo un link per scegliere una nuova password.';

  @override
  String get sendResetLink => 'Invia link di reimpostazione';

  @override
  String get resetLinkSentTitle => 'Link inviato';

  @override
  String resetLinkSentBody(String email) {
    return 'Se l\'indirizzo $email è associato a un account, abbiamo inviato un link di reimpostazione.';
  }

  @override
  String get resetLinkSentHint =>
      'Il link scade tra un\'ora. Se non arriva, controlla la cartella spam prima di richiederne un altro.';

  @override
  String get tryAnotherEmail => 'Usa un\'altra email';

  @override
  String get resetPasswordTitle => 'Scegli una nuova password';

  @override
  String get resetPasswordSubtitle =>
      'Scegli qualcosa che non hai mai utilizzato prima su questo account.';

  @override
  String get passwordChangedTitle => 'Password aggiornata';

  @override
  String get passwordChangedBody =>
      'La tua nuova password è stata salvata. Hai effettuato l\'accesso e sei pronto a partire.';

  @override
  String get demoModeHint => 'Versione demo — nessun account richiesto';

  @override
  String get demoModeFill => 'Compila automaticamente';

  @override
  String get welcomeTrackTitle => 'Scopri dove vanno i tuoi soldi';

  @override
  String get welcomeTrackBody =>
      'Registra entrate e uscite. RainyPenny le trasforma in un quadro chiaro che puoi comprendere a colpo d\'occhio.';

  @override
  String get welcomeBudgetTitle => 'Imposta limiti efficaci';

  @override
  String get welcomeBudgetBody =>
      'Assegna un tetto mensile a ciascuna area di spesa e ricevi una notifica prima di superarlo, non dopo.';

  @override
  String get welcomeGoalsTitle => 'Risparmia per ciò che conta';

  @override
  String get welcomeGoalsBody =>
      'Dai un nome a un obiettivo, imposta una cifra e guardalo crescere. Creare un fondo per le emergenze è più facile quando puoi vederlo.';

  @override
  String get welcomePrivacyTitle => 'I tuoi dati restano solo tuoi';

  @override
  String get welcomePrivacyBody =>
      'Le tue cifre appartengono solo a te. Nulla viene venduto e nulla viene condiviso con terzi.';

  @override
  String stepOf(int step, int total) {
    return 'Passo $step di $total';
  }

  @override
  String get onboardingNameTitle => 'Come dovremmo chiamarti?';

  @override
  String get onboardingNameBody =>
      'Lo useremo solo per salutarti, e da nessun\'altra parte.';

  @override
  String get onboardingNameHint =>
      'Il tuo nome di battesimo andrà benissimo. Potrai cambiarlo in seguito.';

  @override
  String get onboardingCurrencyTitle => 'Quale valuta utilizzi?';

  @override
  String get onboardingCurrencyBody =>
      'Ogni importo nell\'app verrà mostrato in questa valuta. La selezione non effettua conversioni.';

  @override
  String get onboardingCurrencySearch => 'Cerca tra tutte le valute';

  @override
  String get onboardingAppearanceTitle => 'Personalizzala come preferisci';

  @override
  String get onboardingAppearanceBody =>
      'Scegli lo stile grafico. Tutto cambia in tempo reale mentre tocchi e potrai modificarlo quando vuoi.';

  @override
  String get onboardingNotificationsTitle => 'Mantieni il controllo';

  @override
  String get onboardingNotificationsBody =>
      'Un promemoria discreto al momento giusto è ciò che trasforma questa attività in una solida abitudine.';

  @override
  String get onboardingNotifyReminders =>
      'Un promemoria discreto per registrare quanto hai speso';

  @override
  String get onboardingNotifyBudget =>
      'Un avviso prima che un budget si esaurisca';

  @override
  String get onboardingNotifySummary =>
      'Un riepilogo settimanale di dove sono andati i tuoi soldi';

  @override
  String get onboardingNotifyEnable => 'Attiva notifiche';

  @override
  String get onboardingNotifyDone => 'Impostazioni delle notifiche salvate';

  @override
  String get onboardingNotifyLater =>
      'Puoi modificare tutto questo nelle Impostazioni, ogni volta che lo desideri.';

  @override
  String get onboardingReadyTitle => 'È tutto pronto';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'È tutto pronto, $name';
  }

  @override
  String get onboardingReadyBody =>
      'La configurazione è terminata. Desideri un breve tour di come funziona il tutto?';

  @override
  String get onboardingTakeTour => 'Mostrami l\'app';

  @override
  String get onboardingGoToApp => 'Vai direttamente all\'app';

  @override
  String get onboardingTourLater =>
      'Non adesso? La guida resta nelle Impostazioni ogni volta che vorrai consultarla.';

  @override
  String get beginnersGuide => 'Guida per principianti';

  @override
  String get guideFinish => 'Fine';

  @override
  String chapterOf(int number, int total) {
    return 'Capitolo $number di $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Apri $screen';
  }

  @override
  String get guideDashboardTitle => 'La tua dashboard';

  @override
  String get guideDashboardBody =>
      'Tutto parte da qui. La scheda in alto mostra quanto ti resta; sotto ci sono entrate e uscite del periodo, seguite da spese, budget e obiettivi.';

  @override
  String get guideDashboardTip1 =>
      'Trascina la schermata verso il basso per aggiornare tutto in una volta.';

  @override
  String get guideDashboardTip2 =>
      'Tocca la scheda entrate o uscite per passare all\'elenco corrispondente.';

  @override
  String get guideDashboardTip3 =>
      'I cerchi e gli approfondimenti si aggiornano nell\'istante in cui registri qualcosa.';

  @override
  String get guideAddTitle => 'Registrare denaro';

  @override
  String get guideAddBody =>
      'Il pulsante al centro della barra è dove comincia tutto. Apre un breve menu: spesa, entrata, debito, budget o obiettivo di risparmio.';

  @override
  String get guideAddTip1 =>
      'Tocca il pulsante centrale per registrare entrate o uscite.';

  @override
  String get guideAddTip2 =>
      'Tienilo premuto per passare direttamente a una nuova spesa saltando il menu.';

  @override
  String get guideAddTip3 =>
      'Scegli sempre una categoria: è ciò che fa funzionare grafici e budget.';

  @override
  String get guideCategoriesTitle => 'Categorie';

  @override
  String get guideCategoriesBody =>
      'Le categorie servono a raggruppare le spese. Quelle predefinite coprono la maggior parte delle esigenze, ma puoi rinominarle o crearne di nuove.';

  @override
  String get guideCategoriesTip1 =>
      'Vai su Impostazioni, poi su Gestisci categorie, per modificarle o aggiungerne.';

  @override
  String get guideCategoriesTip2 =>
      'Tutto ciò che resta senza categoria finisce in Altro, mantenendo coerenti i grafici.';

  @override
  String get guideBudgetTitle => 'Budget';

  @override
  String get guideBudgetBody =>
      'Un budget è un tetto mensile per una categoria. La barra si riempie man mano che spendi e cambia colore vicino al limite, avvisandoti per tempo.';

  @override
  String get guideBudgetTip1 =>
      'Inizia con due o tre categorie, non con tutte contemporaneamente.';

  @override
  String get guideBudgetTip2 =>
      'Imposta il limite leggermente sopra quanto spendi di solito, poi riducilo progressivamente.';

  @override
  String get guideBudgetTip3 =>
      'Lascia attivi gli avvisi di budget per ricevere notifiche tempestive.';

  @override
  String get guideSavingsTitle => 'Obiettivi di risparmio';

  @override
  String get guideSavingsBody =>
      'Indica per cosa stai risparmiando, fissa una cifra e una data: l\'app calcolerà quanto devi mettere da parte ogni mese per raggiungerla.';

  @override
  String get guideSavingsTip1 =>
      'Un obiettivo con un nome chiaro è più facile da rispettare rispetto a un generico proposito.';

  @override
  String get guideSavingsTip2 =>
      'È più facile completare diversi piccoli obiettivi piuttosto che uno solo grandissimo.';

  @override
  String get guideLoansTitle => 'Debiti e prestiti';

  @override
  String get guideLoansBody =>
      'Registra ciò che devi, quanto ti costa e quando scade la prossima rata. Tutto ciò che stai rimborsando è riunito in un unico elenco con il saldo residuo.';

  @override
  String get guideLoansTip1 =>
      'Inserisci la data di scadenza e i promemoria di pagamento ti aiuteranno a non dimenticarla.';

  @override
  String get guideLoansTip2 =>
      'Un debito scaduto viene mostrato in rosso sulla dashboard fino al saldo.';

  @override
  String get guideReportsTitle => 'Report';

  @override
  String get guideReportsBody =>
      'La visione approfondita: entrate rispetto alle uscite, spese per categoria, tenuta dei budget e percentuale di reddito accantonata.';

  @override
  String get guideReportsTip1 =>
      'Passa da settimana, mese o trimestre nella parte superiore dello schermo.';

  @override
  String get guideReportsTip2 =>
      'Esporta o condividi un PDF: verrà generato nella tua lingua e direzione di lettura.';

  @override
  String get guideSettingsTitle => 'Impostazioni';

  @override
  String get guideSettingsBody =>
      'Lingua, valuta, colori e avvisi si trovano qui, e nulla è vincolante: puoi cambiare qualsiasi opzione quando vuoi.';

  @override
  String get guideSettingsTip1 =>
      'Quaranta lingue supportate, con mirroring completo del layout per le lingue da destra a sinistra.';

  @override
  String get guideSettingsTip2 =>
      'Scegli quali avvisi desideri e le fasce orarie in cui possono arrivare.';

  @override
  String get guideSettingsTip3 =>
      'Le ore di silenzio trattengono tutte le notifiche fino al mattino successivo.';

  @override
  String get guideHabitTitle => 'Trasformalo in abitudine';

  @override
  String get guideHabitBody =>
      'L\'app vale quanto i dati che ci inserisci. Un minuto al giorno batte un\'ora una volta al mese, e dopo due settimane i numeri cominceranno a raccontarti qualcosa di utile.';

  @override
  String get guideHabitTip1 =>
      'Registra le spese appena accadono, non alla fine della settimana.';

  @override
  String get guideHabitTip2 =>
      'Dai un\'occhiata alla dashboard una volta al giorno. Dieci secondi bastano.';

  @override
  String get guideHabitTip3 =>
      'Questa guida resta nelle Impostazioni: torna a consultarla ogni volta che vuoi.';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeCaption =>
      'Chiaro, scuro o conforme alle impostazioni del telefono.';

  @override
  String get accentColor => 'Colore primario';

  @override
  String get accentColorCaption => 'Colora pulsanti, selezioni e grafici.';

  @override
  String get accentSemanticsNote =>
      'Entrate e uscite mantengono sempre i loro colori in ogni tema, così una cifra non cambierà mai significato per aver cambiato il colore primario.';

  @override
  String get accentTeal => 'Ottanio';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentSky => 'Celeste';

  @override
  String get accentBlue => 'Blu';

  @override
  String get accentIndigo => 'Indaco';

  @override
  String get accentViolet => 'Viola';

  @override
  String get accentPink => 'Rosa';

  @override
  String get accentCrimson => 'Cremisi';

  @override
  String get accentOrange => 'Arancione';

  @override
  String get accentSlate => 'Ardesia';

  @override
  String get searchLanguages => 'Cerca lingue';

  @override
  String get suggestedLanguages => 'Suggerite';

  @override
  String get allLanguages => 'Tutte le lingue';

  @override
  String get noLanguagesFound => 'Nessuna lingua trovata';

  @override
  String get noLanguagesFoundMessage =>
      'Prova con il nome in inglese o con il codice a due lettere.';

  @override
  String get rightToLeft => 'Da destra a sinistra';

  @override
  String get replayGuide => 'Rivedi la guida';

  @override
  String get replaySetup => 'Esegui di nuovo la configurazione';

  @override
  String get replaySetupBody =>
      'Ripercorri le domande iniziali. Nessun dato precedentemente registrato verrà cancellato.';

  @override
  String get rateTitle => 'Ti piace RainyPenny?';

  @override
  String get rateBody =>
      'La usi ormai da un po\' di tempo. Una recensione richiede solo un attimo e aiuta altre persone a scoprire l\'app.';

  @override
  String get rateAction => 'Valuta l\'app';

  @override
  String get rateLater => 'Magari più tardi';

  @override
  String get rateNever => 'No, grazie';

  @override
  String get rateThanks => 'Grazie mille';

  @override
  String get monthlySalary => 'Stipendio mensile';

  @override
  String get remainingAmount => 'Rimanente';

  @override
  String get carriedForward => 'Riportato dal ciclo precedente';

  @override
  String get carriedForwardHint => 'Avanzato dal ciclo precedente';

  @override
  String get totalSpending => 'Spesa totale';

  @override
  String get salaryCycle => 'Ciclo dello stipendio';

  @override
  String get payday => 'Giorno di paga';

  @override
  String get paydayDescription =>
      'Il giorno in cui ricevi lo stipendio. Il tuo mese finanziario decorre da questo giorno fino a quello precedente al prossimo accredito.';

  @override
  String get paydayUpdated => 'Giorno di paga aggiornato';

  @override
  String paydayDayOfMonth(int day) {
    return 'Giorno $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Nei mesi più brevi il ciclo inizia invece l\'ultimo giorno del mese.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni al giorno di paga',
      one: '1 giorno al giorno di paga',
      zero: 'Ultimo giorno del ciclo',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Prossimo giorno di paga';

  @override
  String get spentSoFar => 'Speso finora';

  @override
  String get dailyAllowance => 'Budget giornaliero sicuro';

  @override
  String get overspentNotice =>
      'Hai speso più di quanto hai incassato in questo ciclo.';

  @override
  String get backToThisMonth => 'Torna a questo mese';

  @override
  String get cycleRangeLabel => 'Ciclo';

  @override
  String get noSalaryRecorded => 'Nessuno stipendio registrato finora';

  @override
  String get addSalaryAction => 'Aggiungi il tuo stipendio';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Eccellente';

  @override
  String get healthGood => 'Buona';

  @override
  String get healthFair => 'Discreta';

  @override
  String get healthNeedsWork => 'Da migliorare';

  @override
  String get healthExcellentBody =>
      'Stai risparmiando bene e rispetti costantemente i tuoi budget.';

  @override
  String get healthGoodBody =>
      'Le tue spese procedono nella direzione giusta in questo periodo.';

  @override
  String get healthFairBody =>
      'Alcuni budget sono vicini al limite. Piccoli accorgimenti faranno la differenza.';

  @override
  String get healthNeedsWorkBody =>
      'Le uscite superano quanto pianificato. Comincia analizzando la tua categoria di spesa maggiore.';

  @override
  String get factorSavingsRate => 'Tasso di risparmio';

  @override
  String get factorBudgetControl => 'Controllo del budget';

  @override
  String get factorDebtLoad => 'Carico debitorio';

  @override
  String get factorSpendingTrend => 'Tendenza delle spese';

  @override
  String factorKept(String percent) {
    return '$percent% trattenuto';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilizzato';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% delle entrate';
  }

  @override
  String factorTrendUp(String percent) {
    return '+$percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return '-$percent%';
  }

  @override
  String get howScoreWorks => 'Come funziona questo punteggio';

  @override
  String get healthScoreExplainer =>
      'Il tuo punteggio combina quattro fattori: quanta parte delle tue entrate riesci a conservare, quanto bene rispetti i tuoi budget, quale percentuale di entrate è destinata ai debiti e se le tue spese sono in aumento o in diminuzione.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% del punteggio totale';
  }

  @override
  String get viewHealthDetails => 'Guarda il dettaglio';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get profileUpdated => 'Profilo aggiornato';

  @override
  String get changePhoto => 'Cambia foto';

  @override
  String get removePhoto => 'Rimuovi foto';

  @override
  String get personalInformationIntro =>
      'Il tuo nome e la tua foto compaiono nell\'app. La tua email è l\'indirizzo con cui effettui l\'accesso.';

  @override
  String get emailNotEditable =>
      'Contatta l\'assistenza per modificare l\'indirizzo con cui accedi.';

  @override
  String get pressBackAgainToExit => 'Premi di nuovo indietro per uscire';

  @override
  String get categoryHousing => 'Casa';

  @override
  String get categoryFood => 'Cibo e ristoranti';

  @override
  String get categoryTransport => 'Trasporti';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryBills => 'Bollette e utenze';

  @override
  String get categoryEntertainment => 'Intrattenimento';

  @override
  String get categoryHealth => 'Salute e fitness';

  @override
  String get categoryEducation => 'Istruzione';

  @override
  String get categoryTravel => 'Viaggi';

  @override
  String get categorySalary => 'Stipendio';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investimenti';

  @override
  String get categoryGift => 'Regali';

  @override
  String get categoryOther => 'Altro';

  @override
  String get categoryGroceries => 'Spesa alimentare';

  @override
  String get categoryDining => 'Ristoranti';

  @override
  String get categoryCoffee => 'Caffè e bar';

  @override
  String get categoryUtilities => 'Utenze';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefono';

  @override
  String get categoryInsurance => 'Assicurazioni';

  @override
  String get categorySubscriptions => 'Abbonamenti';

  @override
  String get categoryPersonalCare => 'Cura della persona';

  @override
  String get categoryClothing => 'Abbigliamento';

  @override
  String get categoryElectronics => 'Elettronica';

  @override
  String get categoryHomeSupplies => 'Articoli per la casa';

  @override
  String get categoryPets => 'Animali';

  @override
  String get categoryChildcare => 'Cura dei figli';

  @override
  String get categoryFamily => 'Famiglia';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Medicinali';

  @override
  String get categoryMedical => 'Visite mediche';

  @override
  String get categoryCharity => 'Beneficenza';

  @override
  String get categoryTaxes => 'Tasse';

  @override
  String get categoryFees => 'Commissioni';

  @override
  String get categoryDebt => 'Debiti';

  @override
  String get categorySavings => 'Risparmi';

  @override
  String get categoryRepairs => 'Riparazioni';

  @override
  String get categoryCarMaintenance => 'Manutenzione auto';

  @override
  String get categoryFuel => 'Carburante';

  @override
  String get categoryParking => 'Parcheggio';

  @override
  String get categoryPublicTransport => 'Trasporto pubblico';

  @override
  String get categoryRent => 'Affitto';

  @override
  String get categoryMortgage => 'Mutuo';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provvigioni';

  @override
  String get categoryPension => 'Pensione';

  @override
  String get categoryInterest => 'Interessi';

  @override
  String get categoryDividends => 'Dividendi';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Rimborsi';

  @override
  String get categoryRentalIncome => 'Entrate da locazione';

  @override
  String get addCategory => 'Nuova categoria';

  @override
  String get filterByCategory => 'Filtra per categoria';

  @override
  String get allCategories => 'Tutte le categorie';

  @override
  String get clearFilters => 'Cancella filtri';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Tutto il periodo';

  @override
  String get customRange => 'Personalizzato';

  @override
  String get selectDateRange => 'Scegli un periodo';

  @override
  String rangeApplied(String start, String end) {
    return 'Mostra $start – $end';
  }

  @override
  String get loans => 'Prestiti';

  @override
  String get debts => 'Debiti';

  @override
  String get noLoansTitle => 'Nessun prestito';

  @override
  String get noLoansBody => 'Non hai prestiti attivi.';

  @override
  String get emptyHealthTitle => 'Nessun punteggio finanziario';

  @override
  String get emptyHealthDescription =>
      'Abbiamo bisogno di un po\' di attività finanziaria per poter calcolare un punteggio accurato.';

  @override
  String get emptyHealthAddTransactions =>
      'Aggiungi transazioni di entrata o spesa';

  @override
  String get emptyHealthSetBudgets => 'Imposta i tuoi budget mensili';

  @override
  String get emptyHealthTrackLoans =>
      'Monitora prestiti o debiti (facoltativo)';

  @override
  String get emptyHealthCardSubtitle =>
      'Aggiungi transazioni per calcolare il tuo punteggio e ottenere approfondimenti.';

  @override
  String get smartBudgetSplit => 'Ripartizione smart del budget';

  @override
  String get smartBudgetSplitSubtitle =>
      'Inserisci il tuo stipendio mensile per calcolare i limiti consigliati';

  @override
  String get monthlyNetSalary => 'Stipendio netto mensile';

  @override
  String get categoryAllocations => 'Assegnazioni per categoria';

  @override
  String totalBudgeted(String amount) {
    return 'Totale: $amount';
  }

  @override
  String get applyAllBudgets => 'Applica tutti i budget';

  @override
  String get applyingBudgets => 'Applicazione dei budget in corso...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count budget di categoria creati.',
      one: '1 budget di categoria creato.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Impossibile salvare i budget.';

  @override
  String get recommendedBudget => 'Budget consigliato';
}
