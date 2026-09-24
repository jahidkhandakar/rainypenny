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
    return 'di $total';
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
      other: '$count movimenti',
      one: '1 movimento',
      zero: 'Nessun movimento',
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
  String get amountRequired => 'Inserisci un importo maggiore di zero';

  @override
  String get titleRequired => 'Dai un nome a questo movimento';

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
    return '$percent% utilizzato';
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
      other: 'mancano $count mesi',
      one: 'manca 1 mese',
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
    return '$percent% rimborsato';
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
    return 'Iscritto dal $date';
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
  String get edit => 'Modifica';

  @override
  String get delete => 'Elimina';

  @override
  String get undo => 'Annulla';

  @override
  String get add => 'Aggiungi';

  @override
  String get create => 'Crea';

  @override
  String get nameRequired => 'Dagli un nome';

  @override
  String get amountAboveZero => 'Inserisci un importo maggiore di zero';

  @override
  String get editTransaction => 'Modifica movimento';

  @override
  String get deleteTransaction => 'Eliminare il movimento?';

  @override
  String deleteTransactionBody(String title) {
    return '$title sarà rimosso dal tuo registro.';
  }

  @override
  String get transactionDeleted => 'Movimento eliminato';

  @override
  String get transactionUpdated => 'Movimento aggiornato';

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
    return 'Il budget $category sarà rimosso. I tuoi movimenti non saranno toccati.';
  }

  @override
  String get budgetSaved => 'Budget salvato';

  @override
  String get budgetDeleted => 'Budget eliminato';

  @override
  String get allCategoriesBudgeted => 'Ogni categoria ha già un budget';

  @override
  String get noBudgetsTitle => 'Ancora nessun budget';

  @override
  String get noBudgetsBody =>
      'Imposta un limite mensile su una categoria per iniziare a seguirla.';

  @override
  String get newGoal => 'Nuovo obiettivo';

  @override
  String get editGoal => 'Modifica obiettivo';

  @override
  String get goalName => 'Nome dell\'obiettivo';

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
    return '$name e i suoi progressi saranno rimossi.';
  }

  @override
  String get goalSaved => 'Obiettivo salvato';

  @override
  String get goalDeleted => 'Obiettivo eliminato';

  @override
  String get noGoalsTitle => 'Ancora nessun obiettivo di risparmio';

  @override
  String get noGoalsBody =>
      'Imposta un obiettivo e RainyPenny seguirà i tuoi progressi.';

  @override
  String get fundsAdded => 'Importo aggiunto';

  @override
  String get newDebt => 'Nuovo prestito o carta';

  @override
  String get editDebt => 'Modifica prestito';

  @override
  String get debtName => 'Nome';

  @override
  String get debtNameHint => 'es. Prestito auto';

  @override
  String get lender => 'Finanziatore';

  @override
  String get lenderHint => 'es. Banca Meridian';

  @override
  String get originalAmount => 'Importo originale';

  @override
  String get creditLimit => 'Limite di credito';

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
    return '$name sarà rimosso dai tuoi debiti.';
  }

  @override
  String get debtSaved => 'Salvato';

  @override
  String get debtDeleted => 'Eliminato';

  @override
  String get noDebtsTitle => 'Nessun debito monitorato';

  @override
  String get noDebtsBody =>
      'Aggiungi un prestito o una carta di credito per tenere d\'occhio le rate.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget $subject superato';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Hai superato di $amount il tuo budget $subject in questo periodo.';
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
    return 'Il tuo budget $subject è utilizzato al $percent%, restano $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Le spese superano le entrate';

  @override
  String get insightOverIncomeBody =>
      'In questo periodo hai speso più di quanto hai guadagnato. Controlla le categorie più pesanti per riequilibrare.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Le spese per $subject sono aumentate';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Le tue spese per $subject sono del $percent% più alte rispetto al periodo precedente.';
  }

  @override
  String get insightTrendDownTitle => 'Le spese sono in calo';

  @override
  String insightTrendDownBody(int percent) {
    return 'Le spese totali sono del $percent% più basse rispetto al periodo precedente.';
  }

  @override
  String get insightTrendUpTitle => 'Le spese sono in aumento';

  @override
  String insightTrendUpBody(int percent) {
    return 'Le spese totali sono del $percent% più alte rispetto al periodo precedente.';
  }

  @override
  String get insightSavingsStrongTitle => 'Ottimo risparmio in questo periodo';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Hai messo da parte il $percent% delle tue entrate, ben oltre l\'obiettivo del $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Tasso di risparmio sotto l\'obiettivo';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'In questo periodo hai messo da parte il $percent% delle tue entrate. Punta al $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject è quasi raggiunto';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Mancano solo $amount per raggiungere $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Sei sulla buona strada per $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months mesi',
      one: '1 mese',
    );
    return 'Con $amount al mese raggiungerai questo obiettivo tra $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Pagamento $subject in ritardo';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days giorni',
      one: '1 giorno',
    );
    return 'Il pagamento $subject di $amount è in ritardo di $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Pagamento $subject in arrivo';
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
    return '$amount in scadenza $_temp0.';
  }

  @override
  String get signIn => 'Accedi';

  @override
  String get signUp => 'Crea un account';

  @override
  String get signInSubtitle => 'Bentornato. Il tuo denaro ti aspetta.';

  @override
  String get signUpSubtitle => 'Pochi dati e sei pronto.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'tu@email.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Almeno 8 caratteri';

  @override
  String get fullNameLabel => 'Nome completo';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get resetSent => 'Controlla la posta per il link di reimpostazione';

  @override
  String get noAccountYet => 'Nuovo qui?';

  @override
  String get haveAccount => 'Hai già un account?';

  @override
  String get emailInvalid => 'Inserisci un indirizzo e-mail valido';

  @override
  String get passwordTooShort => 'Usa almeno 8 caratteri';

  @override
  String get signOutConfirm => 'Uscire?';

  @override
  String get signOutBody =>
      'Dovrai accedere di nuovo per vedere le tue finanze.';

  @override
  String get dataSource => 'Origine dati';

  @override
  String get insightWeeklySummaryTitle => 'La tua settimana in sintesi';

  @override
  String get insightWeeklySummaryBody =>
      'Guarda dove è andato il tuo denaro questa settimana e come stanno i tuoi budget.';

  @override
  String get notificationSettings => 'Notifiche';

  @override
  String get alertsSection => 'Avvisi';

  @override
  String get budgetAlerts => 'Avvisi di budget';

  @override
  String get budgetAlertsBody =>
      'Quando un budget si avvicina al limite o lo supera';

  @override
  String get paymentReminders => 'Promemoria di pagamento';

  @override
  String get paymentRemindersBody =>
      'Qualche giorno prima della scadenza di un pagamento';

  @override
  String get savingsUpdates => 'Aggiornamenti sul risparmio';

  @override
  String get savingsUpdatesBody => 'I tuoi progressi verso gli obiettivi';

  @override
  String get weeklySummaryLabel => 'Riepilogo settimanale';

  @override
  String get weeklySummaryBody =>
      'Un riassunto della settimana appena trascorsa';

  @override
  String get scheduleSection => 'Orari';

  @override
  String get reminderTime => 'Ora del promemoria';

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
      'Consenti le notifiche così RainyPenny può avvisarti prima che un budget o un pagamento ti sfugga.';

  @override
  String get allowNotifications => 'Consenti notifiche';

  @override
  String get permissionDenied =>
      'Le notifiche sono bloccate. Puoi attivarle nelle impostazioni del dispositivo.';

  @override
  String get upcomingAlerts => 'Programmati';

  @override
  String get noScheduledAlerts => 'Al momento non c\'è nulla in programma';

  @override
  String get noScheduledAlertsBody =>
      'Gli avvisi compariranno qui man mano che budget e pagamenti si avvicinano ai loro limiti.';

  @override
  String scheduledFor(String date) {
    return 'Programmato per $date';
  }

  @override
  String get everyWeek => 'Ogni settimana';

  @override
  String get allNotificationsOff => 'Tutte le notifiche sono disattivate';

  @override
  String get needsAttention => 'Richiede attenzione';

  @override
  String get quickActionsTitle => 'Cosa vuoi fare?';

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
      'Prova un codice, un simbolo o un nome diverso.';

  @override
  String get popularCurrencies => 'Più usate';

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
  String get remainingInstallments => 'Rate residue';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid di $total pagate';
  }

  @override
  String get finalPayment => 'Ultima rata';

  @override
  String get paymentDueDate => 'Data di scadenza';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Il $day di ogni mese';
  }

  @override
  String get loanStatus => 'Stato';

  @override
  String get statusActive => 'In regola';

  @override
  String get statusDueSoon => 'In scadenza';

  @override
  String get statusOverdue => 'In ritardo';

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
  String get openEnded => 'Senza scadenza';

  @override
  String get loanDetails => 'Dettagli del prestito';

  @override
  String get notSet => 'Non impostato';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject scade oggi';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Il tuo pagamento di $amount scade oggi. Un tocco e resta puntuale.';
  }

  @override
  String get remindMorningTitle => 'Buongiorno ☀️';

  @override
  String get remindMorningBody =>
      'Inizia la giornata con i conti in ordine. C\'è qualcosa di ieri da aggiungere?';

  @override
  String get remindNoonTitle => 'Controllo di mezzogiorno';

  @override
  String get remindNoonBody =>
      'Pranzo, caffè, un biglietto? Aggiungilo in pochi secondi.';

  @override
  String get remindAfternoonTitle => 'Aggiornamento rapido';

  @override
  String get remindAfternoonBody =>
      'Registra quanto hai speso finora e la giornata resta precisa.';

  @override
  String get remindEveningTitle => 'Chiusura della giornata';

  @override
  String get remindEveningBody =>
      'Due minuti adesso e i numeri di oggi sono completi.';

  @override
  String get happyWeekendTitle => 'Buon fine settimana! 🎉';

  @override
  String get happyWeekendBody =>
      'Goditelo — e tieni d\'occhio le spese del weekend.';

  @override
  String get dailyReminders => 'Promemoria spese giornalieri';

  @override
  String get dailyRemindersBody =>
      'Spinte gentili per tenere aggiornate le tue spese';

  @override
  String get weekendGreeting => 'Buon fine settimana';

  @override
  String get weekendGreetingBody =>
      'Un saluto all\'inizio del tuo fine settimana';

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
  String get reportDisclaimer => 'Generato da RainyPenny dai tuoi stessi dati.';

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
  String get totalExpenses => 'Spese totali';

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
  String get paidOffShort => 'Pagato';

  @override
  String get transactions => 'Movimenti';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e altri $count movimenti',
      one: 'e 1 altro movimento',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Esporta PDF';

  @override
  String get sharePdf => 'Condividi report';

  @override
  String get preparingReport => 'Preparazione del report…';

  @override
  String get reportReady => 'Report pronto';

  @override
  String get reportFailed => 'Impossibile creare il report';

  @override
  String get categories => 'Categorie';

  @override
  String get categoriesIntro =>
      'Aggiungi le tue categorie per classificare entrate e spese esattamente come le pensi.';

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
    return '$name sarà rimossa dalle tue categorie.';
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
  String get noCategoriesYet => 'Qui non c\'è ancora nulla.';

  @override
  String get builtIn => 'Predefinita';

  @override
  String get manageCategories => 'Gestisci categorie';

  @override
  String get expense => 'Spesa';

  @override
  String get languageNote =>
      'Arabo, urdu, persiano ed ebraico portano tutta l’interfaccia da destra a sinistra, grafici e report PDF compresi.';

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
  String get passwordRequired => 'Inserisci la password';

  @override
  String get newPasswordLabel => 'Nuova password';

  @override
  String get confirmPasswordLabel => 'Conferma password';

  @override
  String get passwordsDoNotMatch => 'Le due password devono coincidere';

  @override
  String get showPassword => 'Mostra password';

  @override
  String get hidePassword => 'Nascondi password';

  @override
  String get savePassword => 'Salva password';

  @override
  String get backToSignIn => 'Torna all’accesso';

  @override
  String get alreadyHaveAccount => 'Ho già un account';

  @override
  String get getStarted => 'Iniziamo';

  @override
  String get acceptTerms =>
      'Accetto i Termini di servizio e l’Informativa sulla privacy';

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
      'Una frase lunga che ricordi vale più di una parola corta piena di simboli. Evita qualsiasi password che usi già altrove.';

  @override
  String get authInvalidCredentials =>
      'Questa email e questa password non corrispondono a nessun account';

  @override
  String get authEmailNotConfirmed =>
      'Conferma il tuo indirizzo email prima di accedere';

  @override
  String get authEmailAlreadyRegistered =>
      'Esiste già un account con questa email';

  @override
  String get authWeakPassword => 'Scegli una password più lunga';

  @override
  String get authRateLimited => 'Troppi tentativi. Riprova tra qualche minuto';

  @override
  String get authNetworkError =>
      'Nessuna connessione. Controlla la rete e riprova';

  @override
  String get authGenericError => 'Qualcosa è andato storto. Riprova';

  @override
  String get confirmEmailTitle => 'Controlla la tua email';

  @override
  String confirmEmailBody(String email) {
    return 'Abbiamo inviato un link di conferma a $email. Aprilo per completare la creazione dell’account.';
  }

  @override
  String get resendConfirmation => 'Invia di nuovo l’email di conferma';

  @override
  String get confirmationResent => 'Email di conferma inviata';

  @override
  String get forgotPasswordTitle => 'Reimposta la password';

  @override
  String get forgotPasswordSubtitle =>
      'Inserisci l’email con cui ti sei registrato e ti manderemo un link per scegliere una nuova password.';

  @override
  String get sendResetLink => 'Invia il link';

  @override
  String get resetLinkSentTitle => 'Link inviato';

  @override
  String resetLinkSentBody(String email) {
    return 'Se $email corrisponde a un account, il link è in arrivo.';
  }

  @override
  String get resetLinkSentHint =>
      'Il link scade tra un’ora. Se non arriva, controlla la cartella spam prima di chiederne un altro.';

  @override
  String get tryAnotherEmail => 'Usa un’altra email';

  @override
  String get resetPasswordTitle => 'Scegli una nuova password';

  @override
  String get resetPasswordSubtitle =>
      'Scegli qualcosa che non hai mai usato su questo account.';

  @override
  String get passwordChangedTitle => 'Password aggiornata';

  @override
  String get passwordChangedBody =>
      'La nuova password è salvata. Hai effettuato l’accesso e puoi ripartire.';

  @override
  String get demoModeHint =>
      'Versione dimostrativa — nessun account necessario';

  @override
  String get demoModeFill => 'Compila';

  @override
  String get welcomeTrackTitle => 'Guarda dove vanno i tuoi soldi';

  @override
  String get welcomeTrackBody =>
      'Annota ciò che entra e ciò che esce. RainyPenny lo trasforma in un quadro che si riesce davvero a leggere.';

  @override
  String get welcomeBudgetTitle => 'Limiti che tengono';

  @override
  String get welcomeBudgetBody =>
      'Dai a ogni voce di spesa un tetto mensile e scoprilo prima di superarlo, non dopo.';

  @override
  String get welcomeGoalsTitle => 'Risparmia per ciò che conta';

  @override
  String get welcomeGoalsBody =>
      'Dai un nome a un obiettivo, fissa una cifra e guardalo riempirsi. Un fondo per i giorni difficili si costruisce meglio quando lo vedi.';

  @override
  String get welcomePrivacyTitle => 'I tuoi soldi restano tuoi';

  @override
  String get welcomePrivacyBody =>
      'I tuoi numeri sono soltanto tuoi. Niente viene venduto e niente viene condiviso.';

  @override
  String stepOf(int step, int total) {
    return 'Passo $step di $total';
  }

  @override
  String get onboardingNameTitle => 'Come vuoi che ti chiamiamo?';

  @override
  String get onboardingNameBody =>
      'Lo useremo per salutarti, e in nessun altro punto.';

  @override
  String get onboardingNameHint =>
      'Basta il nome. Potrai cambiarlo più avanti.';

  @override
  String get onboardingCurrencyTitle => 'Quale valuta usi?';

  @override
  String get onboardingCurrencyBody =>
      'Tutti gli importi vengono mostrati in questa valuta. Sceglierla non converte nulla.';

  @override
  String get onboardingCurrencySearch => 'Cerca fra tutte le valute';

  @override
  String get onboardingAppearanceTitle => 'Rendila tua';

  @override
  String get onboardingAppearanceBody =>
      'Scegli un aspetto. Tutto cambia mentre tocchi, e potrai tornarci quando vuoi.';

  @override
  String get onboardingNotificationsTitle => 'Tieni tutto sotto controllo';

  @override
  String get onboardingNotificationsBody =>
      'Un promemoria discreto al momento giusto è ciò che trasforma tutto questo in un’abitudine.';

  @override
  String get onboardingNotifyReminders =>
      'Un promemoria gentile per annotare le spese';

  @override
  String get onboardingNotifyBudget =>
      'Un avviso prima che un budget si esaurisca';

  @override
  String get onboardingNotifySummary =>
      'Un riepilogo settimanale di dove sono finiti i soldi';

  @override
  String get onboardingNotifyEnable => 'Attiva le notifiche';

  @override
  String get onboardingNotifyDone => 'Impostazioni di notifica salvate';

  @override
  String get onboardingNotifyLater =>
      'Puoi cambiare tutto questo nelle Impostazioni, quando vuoi.';

  @override
  String get onboardingReadyTitle => 'È tutto pronto';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'È tutto pronto, $name';
  }

  @override
  String get onboardingReadyBody =>
      'La configurazione è finita. Vuoi un giro veloce per capire come funziona?';

  @override
  String get onboardingTakeTour => 'Fammi vedere';

  @override
  String get onboardingGoToApp => 'Vai all’app';

  @override
  String get onboardingTourLater =>
      'Non ora? La guida resta nelle Impostazioni, quando ti serve.';

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
  String get guideDashboardTitle => 'La tua panoramica';

  @override
  String get guideDashboardBody =>
      'Tutto parte da qui. La scheda in alto è quello che ti resta; sotto, quanto è entrato e uscito nel periodo, poi spese, budget e obiettivi.';

  @override
  String get guideDashboardTip1 =>
      'Trascina lo schermo verso il basso per aggiornare tutto in una volta.';

  @override
  String get guideDashboardTip2 =>
      'Tocca la scheda entrate o uscite per andare dritto a quell’elenco.';

  @override
  String get guideDashboardTip3 =>
      'Anelli e analisi si aggiornano nel momento in cui registri qualcosa.';

  @override
  String get guideAddTitle => 'Registrare i movimenti';

  @override
  String get guideAddBody =>
      'Il pulsante al centro della barra è il punto di partenza. Apre un menu breve: spesa, entrata, debito, budget o obiettivo di risparmio.';

  @override
  String get guideAddTip1 =>
      'Tocca il pulsante centrale per registrare un’entrata o un’uscita.';

  @override
  String get guideAddTip2 =>
      'Tienilo premuto per andare dritto a una nuova spesa saltando il menu.';

  @override
  String get guideAddTip3 =>
      'Scegli sempre una categoria — è ciò che fa funzionare grafici e budget.';

  @override
  String get guideCategoriesTitle => 'Categorie';

  @override
  String get guideCategoriesBody =>
      'Le categorie raggruppano le spese. Quelle incluse bastano alla maggior parte delle persone, e puoi rinominarle o aggiungerne di tue.';

  @override
  String get guideCategoriesTip1 =>
      'Impostazioni, poi Gestisci categorie, per modificarne o aggiungerne una.';

  @override
  String get guideCategoriesTip2 =>
      'Tutto ciò che resta senza categoria finisce in «Altro», così i grafici restano onesti.';

  @override
  String get guideBudgetTitle => 'Budget';

  @override
  String get guideBudgetBody =>
      'Un budget è un tetto mensile per una categoria. La barra si riempie mentre spendi e cambia colore quando ci si avvicina, così te ne accorgi prima di sforare.';

  @override
  String get guideBudgetTip1 =>
      'Comincia con due o tre categorie, non con tutte insieme.';

  @override
  String get guideBudgetTip2 =>
      'Metti il limite poco sopra la tua spesa abituale, poi stringilo.';

  @override
  String get guideBudgetTip3 =>
      'Lascia attivi gli avvisi e l’app ti avverte quando un budget sta finendo.';

  @override
  String get guideSavingsTitle => 'Obiettivi di risparmio';

  @override
  String get guideSavingsBody =>
      'Dai un nome a ciò per cui stai risparmiando, fissa cifra e data, e l’app calcola quanto mettere da parte ogni mese.';

  @override
  String get guideSavingsTip1 =>
      'Un obiettivo con un nome si mantiene meglio di un vago proposito di risparmiare.';

  @override
  String get guideSavingsTip2 =>
      'Diversi obiettivi piccoli si portano a termine più spesso di uno grande.';

  @override
  String get guideLoansTitle => 'Debiti e prestiti';

  @override
  String get guideLoansBody =>
      'Registra quanto devi, quanto ti costa e quando scade la prossima rata. Tutto ciò che stai rimborsando sta in un solo elenco, con il residuo.';

  @override
  String get guideLoansTip1 =>
      'Aggiungi la scadenza e i promemoria di pagamento la seguiranno per te.';

  @override
  String get guideLoansTip2 =>
      'Un debito scaduto appare in rosso nella panoramica finché non è saldato.';

  @override
  String get guideReportsTitle => 'Report';

  @override
  String get guideReportsBody =>
      'Lo sguardo più a fondo: entrate contro uscite, spesa per categoria, come hanno tenuto i budget e quanta parte del reddito hai conservato.';

  @override
  String get guideReportsTip1 =>
      'In alto passi fra settimana, mese e trimestre.';

  @override
  String get guideReportsTip2 =>
      'Esporta o condividi un PDF — esce nella tua lingua e nel suo verso di lettura.';

  @override
  String get guideSettingsTitle => 'Impostazioni';

  @override
  String get guideSettingsBody =>
      'Lingua, valuta, colori e avvisi stanno tutti qui, e la configurazione iniziale non blocca nulla — cambia ciò che vuoi, quando vuoi.';

  @override
  String get guideSettingsTip1 =>
      'Quaranta lingue, e tutto il layout si specchia per quelle che si leggono da destra a sinistra.';

  @override
  String get guideSettingsTip2 =>
      'Scegli quali avvisi vuoi e in quali ore possono arrivare.';

  @override
  String get guideSettingsTip3 =>
      'Le ore di silenzio trattengono tutto fino al mattino.';

  @override
  String get guideHabitTitle => 'Farne un’abitudine';

  @override
  String get guideHabitBody =>
      'L’app vale quanto ciò che ci metti dentro. Un minuto al giorno batte un’ora al mese, e dopo due settimane i numeri iniziano a dirti qualcosa.';

  @override
  String get guideHabitTip1 =>
      'Registra le spese sul momento, non a fine settimana.';

  @override
  String get guideHabitTip2 =>
      'Un’occhiata alla panoramica una volta al giorno. Dieci secondi bastano.';

  @override
  String get guideHabitTip3 =>
      'Questa guida resta nelle Impostazioni — torna quando vuoi.';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeCaption =>
      'Chiaro, scuro, o quello che sta facendo il telefono.';

  @override
  String get accentColor => 'Colore d’accento';

  @override
  String get accentColorCaption => 'Colora pulsanti, evidenziazioni e grafici.';

  @override
  String get accentSemanticsNote =>
      'Entrate e uscite mantengono i propri colori in ogni tema, così una cifra non cambia mai significato perché hai cambiato l’accento.';

  @override
  String get accentTeal => 'Foglia di tè';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentSky => 'Azzurro cielo';

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
  String get searchLanguages => 'Cerca una lingua';

  @override
  String get suggestedLanguages => 'Suggerite';

  @override
  String get allLanguages => 'Tutte le lingue';

  @override
  String get noLanguagesFound => 'Nessuna lingua trovata';

  @override
  String get noLanguagesFoundMessage =>
      'Prova con il nome in inglese o con il codice di due lettere.';

  @override
  String get rightToLeft => 'Da destra a sinistra';

  @override
  String get replayGuide => 'Rivedi la guida';

  @override
  String get replaySetup => 'Rifai la configurazione';

  @override
  String get replaySetupBody =>
      'Ripassa le domande iniziali. Niente di ciò che hai registrato viene cancellato.';

  @override
  String get rateTitle => 'Ti piace RainyPenny?';

  @override
  String get rateBody =>
      'È da un po’ che ci tieni dietro. Lasciare una valutazione richiede un attimo e aiuta altre persone a trovare l’app.';

  @override
  String get rateAction => 'Valuta l’app';

  @override
  String get rateLater => 'Forse più tardi';

  @override
  String get rateNever => 'No, grazie';

  @override
  String get rateThanks => 'Grazie';

  @override
  String get monthlySalary => 'Stipendio mensile';

  @override
  String get remainingAmount => 'Rimanente';

  @override
  String get carriedForward => 'Riportato';

  @override
  String get carriedForwardHint => 'Avanzo del ciclo precedente';

  @override
  String get totalSpending => 'Spesa totale';

  @override
  String get salaryCycle => 'Ciclo dello stipendio';

  @override
  String get payday => 'Giorno di paga';

  @override
  String get paydayDescription =>
      'Il giorno in cui arriva lo stipendio. Il tuo mese finanziario va da quel giorno al giorno prima del successivo.';

  @override
  String get paydayUpdated => 'Giorno di paga aggiornato';

  @override
  String paydayDayOfMonth(int day) {
    return 'Giorno $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Nei mesi più corti il ciclo inizia l\'ultimo giorno del mese.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni alla paga',
      one: '1 giorno alla paga',
      zero: 'Ultimo giorno del ciclo',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Prossima paga';

  @override
  String get spentSoFar => 'Speso finora';

  @override
  String get dailyAllowance => 'Spesa giornaliera sicura';

  @override
  String get overspentNotice =>
      'Hai speso più di quanto è entrato in questo ciclo.';

  @override
  String get backToThisMonth => 'Torna a questo mese';

  @override
  String get cycleRangeLabel => 'Ciclo';

  @override
  String get noSalaryRecorded => 'Nessuno stipendio registrato';

  @override
  String get addSalaryAction => 'Aggiungi il tuo stipendio';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Eccellente';

  @override
  String get healthGood => 'Buono';

  @override
  String get healthFair => 'Discreto';

  @override
  String get healthNeedsWork => 'Da migliorare';

  @override
  String get healthExcellentBody =>
      'Stai risparmiando bene e rispetti i tuoi budget.';

  @override
  String get healthGoodBody =>
      'Le tue spese sono sulla buona strada in questo periodo.';

  @override
  String get healthFairBody =>
      'Alcuni budget sono al limite. Piccoli cambiamenti aiuteranno.';

  @override
  String get healthNeedsWorkBody =>
      'Le spese superano il tuo piano. Inizia dalla categoria più grande.';

  @override
  String get factorSavingsRate => 'Tasso di risparmio';

  @override
  String get factorBudgetControl => 'Controllo del budget';

  @override
  String get factorDebtLoad => 'Peso del debito';

  @override
  String get factorSpendingTrend => 'Andamento delle spese';

  @override
  String factorKept(String percent) {
    return '$percent% conservato';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilizzato';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% del reddito';
  }

  @override
  String factorTrendUp(String percent) {
    return 'In aumento del $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'In calo del $percent%';
  }

  @override
  String get howScoreWorks => 'Come si calcola questo punteggio';

  @override
  String get healthScoreExplainer =>
      'Il punteggio unisce quattro elementi: quanto del reddito trattieni, quanto rispetti i budget, quanta parte del reddito va ai debiti e se le spese salgono o scendono.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% del punteggio';
  }

  @override
  String get viewHealthDetails => 'Vedi il dettaglio';

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
      'Il tuo nome e la tua foto compaiono in tutta l\'app. La tua email è l\'indirizzo con cui accedi.';

  @override
  String get emailNotEditable =>
      'Contatta l\'assistenza per cambiare l\'indirizzo di accesso.';

  @override
  String get pressBackAgainToExit => 'Premi di nuovo indietro per uscire';

  @override
  String get categoryHousing => 'Casa';

  @override
  String get categoryFood => 'Cibo e ristoranti';

  @override
  String get categoryTransport => 'Trasporti';

  @override
  String get categoryShopping => 'Acquisti';

  @override
  String get categoryBills => 'Bollette e utenze';

  @override
  String get categoryEntertainment => 'Intrattenimento';

  @override
  String get categoryHealth => 'Salute e benessere';

  @override
  String get categoryEducation => 'Istruzione';

  @override
  String get categoryTravel => 'Viaggi';

  @override
  String get categorySalary => 'Stipendio';

  @override
  String get categoryFreelance => 'Libera professione';

  @override
  String get categoryInvestments => 'Investimenti';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Altro';

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
  String get allTime => 'Tutto lo storico';

  @override
  String get customRange => 'Personalizzato';

  @override
  String get selectDateRange => 'Scegli un periodo';

  @override
  String rangeApplied(String start, String end) {
    return 'Mostra $start – $end';
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
