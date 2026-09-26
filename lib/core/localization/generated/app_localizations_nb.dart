// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppL10nNb extends AppL10n {
  AppL10nNb([String locale = 'nb']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Spar til en regnværsdag';

  @override
  String get navHome => 'Hjem';

  @override
  String get navTransactions => 'Transaksjoner';

  @override
  String get navAdd => 'Legg til';

  @override
  String get navReports => 'Rapporter';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'God morgen, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'God ettermiddag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'God kveld, $name';
  }

  @override
  String get greetingSubtitle => 'Her er din økonomiske oversikt';

  @override
  String get totalBalance => 'Total saldo';

  @override
  String get vsLastPeriod => 'vs. forrige periode';

  @override
  String get income => 'Inntekter';

  @override
  String get expenses => 'Utgifter';

  @override
  String get netBalance => 'Netto saldo';

  @override
  String get lastThirtyDays => 'Siste 30 dager';

  @override
  String get quickActions => 'Hurtighandlinger';

  @override
  String get addIncome => 'Legg til inntekt';

  @override
  String get addExpense => 'Legg til utgift';

  @override
  String get spendingOverview => 'Forbruksoversikt';

  @override
  String get recentTransactions => 'Siste transaksjoner';

  @override
  String get seeAll => 'Se alle';

  @override
  String get viewAll => 'Vis alle';

  @override
  String get budgetProgress => 'Budsjettfremdrift';

  @override
  String get savingsGoals => 'Sparemål';

  @override
  String get financialInsight => 'Økonomisk innsikt';

  @override
  String get financialHealth => 'Økonomisk helse';

  @override
  String ofTotal(String total) {
    return 'av $total';
  }

  @override
  String get searchTransactions => 'Søk i transaksjoner';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterIncome => 'Inntekter';

  @override
  String get filterExpenses => 'Utgifter';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get noTransactionsTitle => 'Ingen transaksjoner funnet';

  @override
  String get noTransactionsBody =>
      'Prøv et annet søk eller filter for å se mer av aktiviteten din.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksjoner',
      one: '1 transaksjon',
      zero: 'Ingen transaksjoner',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Legg til transaksjon';

  @override
  String get amount => 'Beløp';

  @override
  String get category => 'Kategori';

  @override
  String get date => 'Dato';

  @override
  String get note => 'Notat';

  @override
  String get noteHint => 'Valgfritt notat';

  @override
  String get saveIncome => 'Lagre inntekt';

  @override
  String get saveExpense => 'Lagre utgift';

  @override
  String get selectCategory => 'Velg kategori';

  @override
  String get transactionSaved => 'Transaksjon lagret';

  @override
  String get amountRequired => 'Skriv inn et beløp større enn null';

  @override
  String get titleRequired => 'Gi transaksjonen et navn';

  @override
  String get descriptionLabel => 'Beskrivelse';

  @override
  String get descriptionHint => 'f.eks. Dagligvarer';

  @override
  String get budget => 'Budsjett';

  @override
  String get budgets => 'Budsjetter';

  @override
  String get totalBudget => 'Totalt budsjett';

  @override
  String get spent => 'Brukt';

  @override
  String get remaining => 'Gjenstår';

  @override
  String budgetUsed(int percent) {
    return '$percent% brukt';
  }

  @override
  String get onTrack => 'På rett spor';

  @override
  String get approachingLimit => 'Nærmer seg grensen';

  @override
  String get overBudget => 'Over budsjett';

  @override
  String get savings => 'Sparing';

  @override
  String get yourGoals => 'Dine mål';

  @override
  String get saved => 'Sparte';

  @override
  String get target => 'Mål';

  @override
  String get monthlyContribution => 'Månedlig';

  @override
  String get addFunds => 'Legg til penger';

  @override
  String get goalComplete => 'Mål nådd';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count måneder igjen',
      one: '1 måned igjen',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lån og gjeld';

  @override
  String get totalOutstanding => 'Total utestående';

  @override
  String get monthlyPayment => 'Månedlig';

  @override
  String get nextPayment => 'Neste betaling';

  @override
  String paidOff(int percent) {
    return '$percent% nedbetalt';
  }

  @override
  String get interestRate => 'Rente';

  @override
  String get upcomingPayments => 'Kommende betalinger';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Forfaller om $count dager',
      one: 'Forfaller i morgen',
      zero: 'Forfaller i dag',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Forfalt';

  @override
  String get reports => 'Rapporter';

  @override
  String get week => 'Uke';

  @override
  String get month => 'Måned';

  @override
  String get quarter => 'Kvartal';

  @override
  String get incomeVsExpenses => 'Inntekter vs. utgifter';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get budgetPerformance => 'Budsjettresultater';

  @override
  String get insights => 'Innsikt';

  @override
  String get savingsRate => 'Sparerate';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Personopplysninger';

  @override
  String get changePassword => 'Endre passord';

  @override
  String get notifications => 'Varsler';

  @override
  String get preferences => 'Innstillinger';

  @override
  String get language => 'Språk';

  @override
  String get currency => 'Valuta';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Sikkerhet';

  @override
  String get privacyAndSecurity => 'Personvern og sikkerhet';

  @override
  String get help => 'Hjelp';

  @override
  String get helpAndSupport => 'Hjelp og støtte';

  @override
  String get termsAndConditions => 'Vilkår og betingelser';

  @override
  String get logOut => 'Logg ut';

  @override
  String memberSince(String date) {
    return 'Medlem siden $date';
  }

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lys';

  @override
  String get themeDark => 'Mørk';

  @override
  String get settings => 'Innstillinger';

  @override
  String get noNotificationsTitle => 'Du er helt oppdatert';

  @override
  String get noNotificationsBody => 'Nye innsikter og påminnelser vises her.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get done => 'Ferdig';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get close => 'Lukk';

  @override
  String get somethingWentWrong => 'Noe gikk galt';

  @override
  String get comingSoon => 'Kommer snart i fullversjonen';

  @override
  String get edit => 'Rediger';

  @override
  String get delete => 'Slett';

  @override
  String get undo => 'Angre';

  @override
  String get add => 'Legg til';

  @override
  String get create => 'Opprett';

  @override
  String get nameRequired => 'Skriv inn navnet ditt';

  @override
  String get amountAboveZero => 'Skriv inn et beløp større enn null';

  @override
  String get editTransaction => 'Rediger transaksjon';

  @override
  String get deleteTransaction => 'Slette transaksjonen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title fjernes fra regnskapet ditt.';
  }

  @override
  String get transactionDeleted => 'Transaksjon slettet';

  @override
  String get transactionUpdated => 'Transaksjon oppdatert';

  @override
  String get newBudget => 'Nytt budsjett';

  @override
  String get editBudget => 'Rediger budsjett';

  @override
  String get budgetLimit => 'Månedlig grense';

  @override
  String get deleteBudget => 'Slette budsjettet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budsjettet for $category fjernes. Transaksjonene dine påvirkes ikke.';
  }

  @override
  String get budgetSaved => 'Budsjett lagret';

  @override
  String get budgetDeleted => 'Budsjett slettet';

  @override
  String get allCategoriesBudgeted =>
      'Alle kategorier har allerede et budsjett';

  @override
  String get noBudgetsTitle => 'Ingen budsjetter ennå';

  @override
  String get noBudgetsBody =>
      'Sett en månedlig grense for en kategori for å begynne å følge med.';

  @override
  String get newGoal => 'Nytt mål';

  @override
  String get editGoal => 'Rediger mål';

  @override
  String get goalName => 'Målnavn';

  @override
  String get goalNameHint => 'f.eks. Bufferkonto';

  @override
  String get targetAmount => 'Målbeløp';

  @override
  String get alreadySaved => 'Allerede spart';

  @override
  String get deleteGoal => 'Slette målet?';

  @override
  String deleteGoalBody(String name) {
    return '$name og fremdriften fjernes.';
  }

  @override
  String get goalSaved => 'Mål lagret';

  @override
  String get goalDeleted => 'Mål slettet';

  @override
  String get noGoalsTitle => 'Ingen sparemål ennå';

  @override
  String get noGoalsBody =>
      'Sett et mål, så følger RainyPenny fremdriften din.';

  @override
  String get fundsAdded => 'Penger lagt til';

  @override
  String get newDebt => 'Nytt lån eller kort';

  @override
  String get editDebt => 'Rediger lån';

  @override
  String get debtName => 'Navn';

  @override
  String get debtNameHint => 'f.eks. Billån';

  @override
  String get lender => 'Långiver';

  @override
  String get lenderHint => 'f.eks. Meridian Bank';

  @override
  String get originalAmount => 'Opprinnelig beløp';

  @override
  String get creditLimit => 'Kredittgrense';

  @override
  String get remainingBalance => 'Gjenstående saldo';

  @override
  String get interestRatePercent => 'Rente (%)';

  @override
  String get kindLoan => 'Lån';

  @override
  String get kindCreditCard => 'Kredittkort';

  @override
  String get recordPayment => 'Registrer betaling';

  @override
  String get paymentRecorded => 'Betaling registrert';

  @override
  String get deleteDebt => 'Slette denne gjelden?';

  @override
  String deleteDebtBody(String name) {
    return '$name fjernes fra gjeldsoversikten din.';
  }

  @override
  String get debtSaved => 'Lagret';

  @override
  String get debtDeleted => 'Slettet';

  @override
  String get noDebtsTitle => 'Ingen gjeld registrert';

  @override
  String get noDebtsBody =>
      'Legg til et lån eller kredittkort for å holde oversikt over nedbetalingene.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject-budsjettet er overskredet';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du har brukt $amount mer enn $subject-budsjettet ditt for denne perioden.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject nærmer seg grensen';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject-budsjettet ditt er brukt $percent%, og $amount gjenstår.';
  }

  @override
  String get insightOverIncomeTitle => 'Forbruket er høyere enn inntekten';

  @override
  String get insightOverIncomeBody =>
      'Du brukte mer enn du tjente i denne perioden. Se på de største kategoriene dine for å få balansen tilbake.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Forbruket på $subject har økt';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Forbruket ditt på $subject er $percent% høyere enn i forrige periode.';
  }

  @override
  String get insightTrendDownTitle => 'Forbruket går ned';

  @override
  String insightTrendDownBody(int percent) {
    return 'Det totale forbruket er $percent% lavere enn i forrige periode.';
  }

  @override
  String get insightTrendUpTitle => 'Forbruket går opp';

  @override
  String insightTrendUpBody(int percent) {
    return 'Det totale forbruket er $percent% høyere enn i forrige periode.';
  }

  @override
  String get insightSavingsStrongTitle => 'God sparing denne perioden';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du beholdt $percent% av inntekten din — godt over målet på $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Spareraten er under målet';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Du beholdt $percent% av inntekten din denne perioden. Sikt mot $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject er nesten fullfinansiert';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Bare $amount gjenstår for å nå $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'På rett spor mot $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months måneder',
      one: '1 måned',
    );
    return 'Med $amount i måneden når du dette målet om $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject-betalingen er forfalt';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dager',
      one: '1 dag',
    );
    return 'Betalingen på $amount for $subject er $_temp0 forsinket.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject-betalingen nærmer seg';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dager',
      one: 'i morgen',
      zero: 'i dag',
    );
    return '$amount forfaller $_temp0.';
  }

  @override
  String get signIn => 'Logg inn';

  @override
  String get signUp => 'Opprett konto';

  @override
  String get signInSubtitle => 'Velkommen tilbake. Pengene dine venter.';

  @override
  String get signUpSubtitle => 'Noen få opplysninger, så er du klar.';

  @override
  String get emailLabel => 'E-post';

  @override
  String get emailHint => '[du@epost.no](mailto:du@epost.no)';

  @override
  String get passwordLabel => 'Passord';

  @override
  String get passwordHint => 'Minst 8 tegn';

  @override
  String get fullNameLabel => 'Fullt navn';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Glemt passord?';

  @override
  String get resetSent =>
      'Sjekk innboksen for en lenke for å tilbakestille passordet';

  @override
  String get noAccountYet => 'Ny her?';

  @override
  String get haveAccount => 'Har du allerede en konto?';

  @override
  String get emailInvalid => 'Skriv inn en gyldig e-postadresse';

  @override
  String get passwordTooShort => 'Bruk minst 8 tegn';

  @override
  String get signOutConfirm => 'Logge ut?';

  @override
  String get signOutBody => 'Du må logge inn igjen for å se økonomien din.';

  @override
  String get dataSource => 'Datakilde';

  @override
  String get insightWeeklySummaryTitle => 'Uken din i gjennomgang';

  @override
  String get insightWeeklySummaryBody =>
      'Se hvor pengene dine gikk denne uken, og hvordan budsjettene dine holder seg.';

  @override
  String get notificationSettings => 'Varsler';

  @override
  String get alertsSection => 'Varsler';

  @override
  String get budgetAlerts => 'Budsjettvarsler';

  @override
  String get budgetAlertsBody =>
      'Når et budsjett nærmer seg eller overskrider grensen';

  @override
  String get paymentReminders => 'Betalingspåminnelser';

  @override
  String get paymentRemindersBody => 'Noen dager før en betaling forfaller';

  @override
  String get savingsUpdates => 'Spareoppdateringer';

  @override
  String get savingsUpdatesBody => 'Fremgang mot målene dine';

  @override
  String get weeklySummaryLabel => 'Ukentlig sammendrag';

  @override
  String get weeklySummaryBody => 'Et sammendrag av uken som gikk';

  @override
  String get scheduleSection => 'Tidspunkt';

  @override
  String get reminderTime => 'Påminnelsestidspunkt';

  @override
  String get quietHours => 'Stilleperioder';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Sammendragsdag';

  @override
  String get permissionRequired => 'Varsler er slått av';

  @override
  String get permissionRequiredBody =>
      'Tillat varsler slik at RainyPenny kan varsle deg før et budsjett eller en betaling løper fra deg.';

  @override
  String get allowNotifications => 'Tillat varsler';

  @override
  String get permissionDenied =>
      'Varsler er blokkert. Du kan slå dem på i enhetsinnstillingene.';

  @override
  String get upcomingAlerts => 'Planlagt';

  @override
  String get noScheduledAlerts => 'Ingenting er planlagt akkurat nå';

  @override
  String get noScheduledAlertsBody =>
      'Varsler vises her når budsjettene eller betalingene dine nærmer seg grensene sine.';

  @override
  String scheduledFor(String date) {
    return 'Planlagt $date';
  }

  @override
  String get everyWeek => 'Hver uke';

  @override
  String get allNotificationsOff => 'Alle varsler er slått av';

  @override
  String get needsAttention => 'Krever oppmerksomhet';

  @override
  String get quickActionsTitle => 'Hva vil du gjøre?';

  @override
  String get createSection => 'Registrer';

  @override
  String get jumpToSection => 'Gå til';

  @override
  String get addLoanAction => 'Legg til lån';

  @override
  String get addBudgetAction => 'Legg til budsjett';

  @override
  String get addGoalAction => 'Legg til mål';

  @override
  String get longPressHint =>
      'Tips: Hold inne + for å registrere en utgift med en gang';

  @override
  String get searchCurrencies => 'Søk etter valutaer';

  @override
  String get noCurrenciesFound => 'Ingen valutaer funnet';

  @override
  String get noCurrenciesFoundMessage =>
      'Prøv en annen kode, et annet symbol eller navn.';

  @override
  String get popularCurrencies => 'Populære';

  @override
  String get allCurrencies => 'Alle valutaer';

  @override
  String get totalLoanAmount => 'Totalt lånebeløp';

  @override
  String get installmentAmount => 'Avdragsbeløp';

  @override
  String get numberOfInstallments => 'Antall avdrag';

  @override
  String get paidInstallments => 'Betalte avdrag';

  @override
  String get remainingInstallments => 'Gjenstående avdrag';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid av $total betalt';
  }

  @override
  String get finalPayment => 'Siste betaling';

  @override
  String get paymentDueDate => 'Forfallsdato';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Dag $day hver måned';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'På rett spor';

  @override
  String get statusDueSoon => 'Forfaller snart';

  @override
  String get statusOverdue => 'Forfalt';

  @override
  String get statusCompleted => 'Nedbetalt';

  @override
  String get repaymentProgress => 'Nedbetalingsfremdrift';

  @override
  String get byAmount => 'Etter beløp';

  @override
  String get byInstallments => 'Etter avdrag';

  @override
  String get startDate => 'Startdato';

  @override
  String get openEnded => 'Uten fast sluttdato';

  @override
  String get loanDetails => 'Lånedetaljer';

  @override
  String get notSet => 'Ikke angitt';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject forfaller i dag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Betalingen på $amount forfaller i dag. Et raskt trykk holder den i rute.';
  }

  @override
  String get remindMorningTitle => 'God morgen ☀️';

  @override
  String get remindMorningBody =>
      'Start dagen med oversikt over pengene dine. Noe du vil legge til fra i går?';

  @override
  String get remindNoonTitle => 'Sjekk inn midt på dagen';

  @override
  String get remindNoonBody =>
      'Lunsj, kaffe, en billett? Legg det til på noen sekunder.';

  @override
  String get remindAfternoonTitle => 'Rask oppdatering';

  @override
  String get remindAfternoonBody =>
      'Registrer det du har brukt så langt, og hold dagens oversikt oppdatert.';

  @override
  String get remindEveningTitle => 'Avslutt dagen';

  @override
  String get remindEveningBody =>
      'To minutter nå, så er dagens tall komplette.';

  @override
  String get happyWeekendTitle => 'God helg! 🎉';

  @override
  String get happyWeekendBody => 'Kos deg — og hold øye med helgeforbruket.';

  @override
  String get dailyReminders => 'Daglige utgiftspåminnelser';

  @override
  String get dailyRemindersBody =>
      'Vennlige påminnelser som hjelper deg å holde utgiftene oppdatert';

  @override
  String get weekendGreeting => 'Helgehilsen';

  @override
  String get weekendGreetingBody => 'En hyggelig hilsen i starten av helgen';

  @override
  String get reminderTimesSection => 'Påminnelsestidspunkter';

  @override
  String get slotMorning => 'Morgen';

  @override
  String get slotNoon => 'Midt på dagen';

  @override
  String get slotAfternoon => 'Ettermiddag';

  @override
  String get slotEvening => 'Kveld';

  @override
  String get everyDay => 'Hver dag';

  @override
  String get financialReport => 'Økonomisk rapport';

  @override
  String get preparedFor => 'Utarbeidet for';

  @override
  String get generatedOn => 'Generert';

  @override
  String get reportDisclaimer =>
      'Generert av RainyPenny fra dine egne registreringer.';

  @override
  String pageOf(int page, int total) {
    return 'Side $page av $total';
  }

  @override
  String get overview => 'Oversikt';

  @override
  String get description => 'Beskrivelse';

  @override
  String get totalIncome => 'Totale inntekter';

  @override
  String get totalExpenses => 'Totale utgifter';

  @override
  String get totalSaved => 'Totalt spart';

  @override
  String get shareOfTotal => 'Andel';

  @override
  String get used => 'Brukt';

  @override
  String get goal => 'Mål';

  @override
  String get targetDate => 'Måldato';

  @override
  String get progress => 'Fremdrift';

  @override
  String get paidOffShort => 'Betalt';

  @override
  String get transactions => 'Transaksjoner';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'og $count transaksjoner til',
      one: 'og 1 transaksjon til',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksporter PDF';

  @override
  String get sharePdf => 'Del rapport';

  @override
  String get preparingReport => 'Forbereder rapporten …';

  @override
  String get reportReady => 'Rapporten er klar';

  @override
  String get reportFailed => 'Kunne ikke opprette rapporten';

  @override
  String get categories => 'Kategorier';

  @override
  String get categoriesIntro =>
      'Legg til egne kategorier for å sortere inntekter og utgifter akkurat slik du tenker på dem.';

  @override
  String get expenseCategories => 'Utgiftskategorier';

  @override
  String get incomeCategories => 'Inntektskategorier';

  @override
  String get newCategory => 'Ny kategori';

  @override
  String get editCategory => 'Rediger kategori';

  @override
  String get categoryName => 'Navn';

  @override
  String get categoryNameHint => 'f.eks. Kjæledyr';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori lagret';

  @override
  String get categoryDeleted => 'Kategori slettet';

  @override
  String get deleteCategory => 'Slette denne kategorien?';

  @override
  String deleteCategoryBody(String name) {
    return '$name fjernes fra kategoriene dine.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster bruker fortsatt denne kategorien',
      one: '1 post bruker fortsatt denne kategorien',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Ingenting her ennå.';

  @override
  String get builtIn => 'Innebygd';

  @override
  String get manageCategories => 'Administrer kategorier';

  @override
  String get expense => 'Utgift';

  @override
  String get languageNote =>
      'Arabisk, urdu, persisk og hebraisk bytter hele grensesnittet til høyre-til-venstre, inkludert diagrammer og PDF-rapporter.';

  @override
  String get next => 'Neste';

  @override
  String get back => 'Tilbake';

  @override
  String get skip => 'Hopp over';

  @override
  String get continueLabel => 'Fortsett';

  @override
  String get selected => 'Valgt';

  @override
  String get passwordRequired => 'Skriv inn passordet ditt';

  @override
  String get newPasswordLabel => 'Nytt passord';

  @override
  String get confirmPasswordLabel => 'Bekreft passord';

  @override
  String get passwordsDoNotMatch => 'Passordene må være like';

  @override
  String get showPassword => 'Vis passord';

  @override
  String get hidePassword => 'Skjul passord';

  @override
  String get savePassword => 'Lagre passord';

  @override
  String get backToSignIn => 'Tilbake til innlogging';

  @override
  String get alreadyHaveAccount => 'Jeg har allerede en konto';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get acceptTerms =>
      'Jeg godtar tjenestevilkårene og personvernerklæringen';

  @override
  String get acceptTermsRequired => 'Godta for å fortsette';

  @override
  String get passwordStrengthTooShort => 'For kort';

  @override
  String get passwordStrengthWeak => 'Svakt';

  @override
  String get passwordStrengthFair => 'Middels';

  @override
  String get passwordStrengthGood => 'Godt';

  @override
  String get passwordStrengthStrong => 'Sterkt';

  @override
  String get passwordAdvice =>
      'En lang frase du husker er bedre enn en kort med mange symboler. Unngå noe du allerede bruker et annet sted.';

  @override
  String get authInvalidCredentials =>
      'E-posten og passordet samsvarer ikke med en konto';

  @override
  String get authEmailNotConfirmed =>
      'Bekreft e-postadressen din før du logger inn';

  @override
  String get authEmailAlreadyRegistered =>
      'Det finnes allerede en konto med denne e-postadressen';

  @override
  String get authWeakPassword => 'Velg et lengre passord';

  @override
  String get authRateLimited => 'For mange forsøk. Prøv igjen om noen minutter';

  @override
  String get authNetworkError =>
      'Ingen forbindelse. Sjekk nettverket og prøv igjen';

  @override
  String get authGenericError => 'Noe gikk galt. Prøv igjen';

  @override
  String get confirmEmailTitle => 'Sjekk e-posten din';

  @override
  String confirmEmailBody(String email) {
    return 'Vi sendte en bekreftelseslenke til $email. Åpne den for å fullføre oppsettet av kontoen din.';
  }

  @override
  String get resendConfirmation => 'Send bekreftelses-e-post på nytt';

  @override
  String get confirmationResent => 'Bekreftelses-e-post sendt';

  @override
  String get forgotPasswordTitle => 'Tilbakestill passordet ditt';

  @override
  String get forgotPasswordSubtitle =>
      'Skriv inn e-postadressen du registrerte deg med, så sender vi deg en lenke for å velge et nytt passord.';

  @override
  String get sendResetLink => 'Send lenke for tilbakestilling';

  @override
  String get resetLinkSentTitle => 'Lenke for tilbakestilling sendt';

  @override
  String resetLinkSentBody(String email) {
    return 'Hvis $email har en konto, er en lenke for tilbakestilling på vei.';
  }

  @override
  String get resetLinkSentHint =>
      'Lenken utløper om en time. Hvis den ikke kommer, sjekk søppelposten før du ber om en ny.';

  @override
  String get tryAnotherEmail => 'Bruk en annen e-post';

  @override
  String get resetPasswordTitle => 'Velg et nytt passord';

  @override
  String get resetPasswordSubtitle =>
      'Velg noe du ikke har brukt på denne kontoen før.';

  @override
  String get passwordChangedTitle => 'Passord oppdatert';

  @override
  String get passwordChangedBody =>
      'Det nye passordet ditt er lagret. Du er logget inn og klar til å fortsette.';

  @override
  String get demoModeHint => 'Demoversjon — ingen konto nødvendig';

  @override
  String get demoModeFill => 'Fyll inn';

  @override
  String get welcomeTrackTitle => 'Se hvor pengene dine går';

  @override
  String get welcomeTrackBody =>
      'Registrer det som kommer inn og det som går ut. RainyPenny gjør det om til en oversikt du faktisk kan lese.';

  @override
  String get welcomeBudgetTitle => 'Sett grenser som holder';

  @override
  String get welcomeBudgetBody =>
      'Gi hver del av forbruket ditt en månedlig grense, og få beskjed før du går over den, ikke etterpå.';

  @override
  String get welcomeGoalsTitle => 'Spar til det som betyr noe';

  @override
  String get welcomeGoalsBody =>
      'Gi målet et navn, sett et målbeløp og se det fylles opp. Det er enklere å bygge en buffer når du kan se fremgangen.';

  @override
  String get welcomePrivacyTitle => 'Pengene dine forblir dine';

  @override
  String get welcomePrivacyBody =>
      'Tallene dine tilhører bare deg. Ingenting selges, og ingenting deles med andre.';

  @override
  String stepOf(int step, int total) {
    return 'Trinn $step av $total';
  }

  @override
  String get onboardingNameTitle => 'Hva skal vi kalle deg?';

  @override
  String get onboardingNameBody =>
      'Vi bruker det til å hilse på deg, og ingen andre steder.';

  @override
  String get onboardingNameHint =>
      'Et fornavn er nok. Du kan endre det senere.';

  @override
  String get onboardingCurrencyTitle => 'Hvilken valuta bruker du?';

  @override
  String get onboardingCurrencyBody =>
      'Alle beløp i appen vises i denne valutaen. Valget konverterer ikke noe.';

  @override
  String get onboardingCurrencySearch => 'Søk i alle valutaer';

  @override
  String get onboardingAppearanceTitle => 'Gjør den til din';

  @override
  String get onboardingAppearanceBody =>
      'Velg et utseende. Alt endres mens du trykker, og du kan komme tilbake til det når som helst.';

  @override
  String get onboardingNotificationsTitle => 'Hold oversikten';

  @override
  String get onboardingNotificationsBody =>
      'En rolig påminnelse på riktig tidspunkt er det som gjør dette til en vane.';

  @override
  String get onboardingNotifyReminders =>
      'En vennlig påminnelse om å registrere det du har brukt';

  @override
  String get onboardingNotifyBudget => 'Et varsel før et budsjett går tomt';

  @override
  String get onboardingNotifySummary =>
      'Et ukentlig sammendrag av hvor pengene dine gikk';

  @override
  String get onboardingNotifyEnable => 'Slå på varsler';

  @override
  String get onboardingNotifyDone => 'Varselinnstillinger lagret';

  @override
  String get onboardingNotifyLater =>
      'Du kan endre alt dette i Innstillinger når du vil.';

  @override
  String get onboardingReadyTitle => 'Du er klar';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Du er klar, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Da er oppsettet ferdig. Vil du ha en rask omvisning i hvordan alt fungerer?';

  @override
  String get onboardingTakeTour => 'Vis meg rundt';

  @override
  String get onboardingGoToApp => 'Ta meg til appen';

  @override
  String get onboardingTourLater =>
      'Ikke nå? Veiledningen blir liggende i Innstillinger når du trenger den.';

  @override
  String get beginnersGuide => 'Kom i gang-guide';

  @override
  String get guideFinish => 'Ferdig';

  @override
  String chapterOf(int number, int total) {
    return 'Kapittel $number av $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Åpne $screen';
  }

  @override
  String get guideDashboardTitle => 'Dashbordet ditt';

  @override
  String get guideDashboardBody =>
      'Alt starter her. Kortet øverst viser det du har igjen; under ser du det som kom inn og gikk ut i denne perioden, etterfulgt av forbruk, budsjetter og mål.';

  @override
  String get guideDashboardTip1 =>
      'Trekk skjermen ned for å oppdatere alt samtidig.';

  @override
  String get guideDashboardTip2 =>
      'Trykk på inntekts- eller utgiftskortet for å gå direkte til listen.';

  @override
  String get guideDashboardTip3 =>
      'Ringene og innsikten oppdateres med en gang du registrerer noe.';

  @override
  String get guideAddTitle => 'Registrere penger';

  @override
  String get guideAddBody =>
      'Knappen midt på navigasjonslinjen er stedet der alt begynner. Den åpner en kort meny: penger ut, penger inn, gjeld, budsjett eller sparemål.';

  @override
  String get guideAddTip1 =>
      'Trykk på midtknappen for å registrere penger inn eller ut.';

  @override
  String get guideAddTip2 =>
      'Hold den inne for å gå rett til en ny utgift og hoppe over menyen.';

  @override
  String get guideAddTip3 =>
      'Velg alltid en kategori — det er det som får diagrammene og budsjettene til å fungere.';

  @override
  String get guideCategoriesTitle => 'Kategorier';

  @override
  String get guideCategoriesBody =>
      'Kategorier er hvordan forbruket grupperes. De som følger med appen dekker de fleste, og du kan gi dem nye navn eller legge til egne.';

  @override
  String get guideCategoriesTip1 =>
      'Gå til Innstillinger, deretter Administrer kategorier, for å endre eller legge til en.';

  @override
  String get guideCategoriesTip2 =>
      'Alt som ikke kategoriseres havner i Annet, slik at diagrammene forblir korrekte.';

  @override
  String get guideBudgetTitle => 'Budsjetter';

  @override
  String get guideBudgetBody =>
      'Et budsjett er en månedlig grense for én kategori. Linjen fylles etter hvert som du bruker penger og endrer seg når du nærmer deg grensen, slik at du får vite det før du går over.';

  @override
  String get guideBudgetTip1 =>
      'Start med to eller tre kategorier, ikke alle samtidig.';

  @override
  String get guideBudgetTip2 =>
      'Sett grensen litt over det du vanligvis bruker, og stram den deretter inn.';

  @override
  String get guideBudgetTip3 =>
      'La budsjettvarsler være på, så varsler appen deg når et budsjett begynner å bli brukt opp.';

  @override
  String get guideSavingsTitle => 'Sparemål';

  @override
  String get guideSavingsBody =>
      'Gi navn til det du sparer til, sett et mål og en dato, så regner appen ut hvor mye du må sette av hver måned for å nå det.';

  @override
  String get guideSavingsTip1 =>
      'Et navngitt mål er enklere å holde fast ved enn en vag intensjon om å spare.';

  @override
  String get guideSavingsTip2 =>
      'Flere små mål blir oftere fullført enn ett stort.';

  @override
  String get guideLoansTitle => 'Gjeld og lån';

  @override
  String get guideLoansBody =>
      'Registrer hva du skylder, hva det koster og når neste betaling forfaller. Alt du betaler ned ligger i én liste med totalbeløpet som gjenstår.';

  @override
  String get guideLoansTip1 =>
      'Legg til forfallsdatoen, så følger betalingspåminnelsene opp for deg.';

  @override
  String get guideLoansTip2 =>
      'En gjeld som er markert som forfalt vises i rødt på dashbordet til den er betalt.';

  @override
  String get guideReportsTitle => 'Rapporter';

  @override
  String get guideReportsBody =>
      'Det mer detaljerte bildet: inntekter mot utgifter, forbruk etter kategori, hvordan budsjettene holdt seg, og hvor stor andel av inntekten du beholdt.';

  @override
  String get guideReportsTip1 =>
      'Bytt mellom uke, måned og kvartal øverst på skjermen.';

  @override
  String get guideReportsTip2 =>
      'Eksporter eller del en PDF — den kommer på ditt eget språk og i riktig tekstretning.';

  @override
  String get guideSettingsTitle => 'Innstillinger';

  @override
  String get guideSettingsBody =>
      'Språk, valuta, farger og varsler finner du her, og ingen av dem er låst etter oppsettet — endre dem når du vil.';

  @override
  String get guideSettingsTip1 =>
      'Førti språk, og hele oppsettet speiles for høyre-til-venstre-språk.';

  @override
  String get guideSettingsTip2 =>
      'Velg hvilke varsler du ønsker, og hvilke tidspunkter de kan komme.';

  @override
  String get guideSettingsTip3 =>
      'Stilleperioder holder alt tilbake til morgenen.';

  @override
  String get guideHabitTitle => 'Gjør det til en vane';

  @override
  String get guideHabitBody =>
      'Appen er bare så god som det du legger inn. Ett minutt om dagen slår én time én gang i måneden, og etter et par uker begynner tallene å fortelle deg noe.';

  @override
  String get guideHabitTip1 =>
      'Registrer det du bruker penger på mens det skjer, ikke på slutten av uken.';

  @override
  String get guideHabitTip2 =>
      'Ta en titt på dashbordet én gang om dagen. Ti sekunder er nok.';

  @override
  String get guideHabitTip3 =>
      'Denne veiledningen blir liggende i Innstillinger — kom tilbake når du vil.';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeCaption => 'Lyst, mørkt eller det telefonen din bruker.';

  @override
  String get accentColor => 'Aksentfarge';

  @override
  String get accentColorCaption =>
      'Farger knappene, fremhevingene og diagrammene.';

  @override
  String get accentSemanticsNote =>
      'Penger inn og penger ut beholder sine egne farger i alle temaer, slik at et tall aldri endrer betydning fordi du endret aksentfargen.';

  @override
  String get accentTeal => 'Blågrønn';

  @override
  String get accentGreen => 'Grønn';

  @override
  String get accentSky => 'Himmelblå';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Fiolett';

  @override
  String get accentPink => 'Rosa';

  @override
  String get accentCrimson => 'Karmosinrød';

  @override
  String get accentOrange => 'Oransje';

  @override
  String get accentSlate => 'Skifer';

  @override
  String get searchLanguages => 'Søk etter språk';

  @override
  String get suggestedLanguages => 'Foreslåtte';

  @override
  String get allLanguages => 'Alle språk';

  @override
  String get noLanguagesFound => 'Ingen språk funnet';

  @override
  String get noLanguagesFoundMessage =>
      'Prøv navnet på engelsk eller språkkoden på to bokstaver.';

  @override
  String get rightToLeft => 'Høyre til venstre';

  @override
  String get replayGuide => 'Spill av veiledningen på nytt';

  @override
  String get replaySetup => 'Kjør oppsettet på nytt';

  @override
  String get replaySetupBody =>
      'Gå gjennom spørsmålene fra første gangs oppsett igjen. Ingenting du har registrert blir slettet.';

  @override
  String get rateTitle => 'Liker du RainyPenny?';

  @override
  String get rateBody =>
      'Du har holdt på en stund nå. En vurdering tar et øyeblikk og hjelper andre med å finne appen.';

  @override
  String get rateAction => 'Vurder appen';

  @override
  String get rateLater => 'Kanskje senere';

  @override
  String get rateNever => 'Nei takk';

  @override
  String get rateThanks => 'Takk';

  @override
  String get monthlySalary => 'Månedslønn';

  @override
  String get remainingAmount => 'Gjenstår';

  @override
  String get carriedForward => 'Overført';

  @override
  String get carriedForwardHint => 'Til overs fra forrige periode';

  @override
  String get totalSpending => 'Totalt forbruk';

  @override
  String get salaryCycle => 'Lønnssyklus';

  @override
  String get payday => 'Lønningsdag';

  @override
  String get paydayDescription =>
      'Dagen lønnen din kommer inn. Din økonomiske måned går fra denne dagen til dagen før neste lønningsdag.';

  @override
  String get paydayUpdated => 'Lønningsdag oppdatert';

  @override
  String paydayDayOfMonth(int day) {
    return 'Dag $day';
  }

  @override
  String get paydayShortMonthNote =>
      'I kortere måneder starter syklusen på den siste dagen i måneden i stedet.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dager til lønningsdag',
      one: '1 dag til lønningsdag',
      zero: 'Siste dag i syklusen',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Neste lønningsdag';

  @override
  String get spentSoFar => 'Brukt så langt';

  @override
  String get dailyAllowance => 'Trygt å bruke per dag';

  @override
  String get overspentNotice =>
      'Du har brukt mer enn det som kom inn i denne syklusen.';

  @override
  String get backToThisMonth => 'Tilbake til denne måneden';

  @override
  String get cycleRangeLabel => 'Syklus';

  @override
  String get noSalaryRecorded => 'Ingen lønn registrert ennå';

  @override
  String get addSalaryAction => 'Legg til lønnen din';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Utmerket';

  @override
  String get healthGood => 'God';

  @override
  String get healthFair => 'Middels';

  @override
  String get healthNeedsWork => 'Bør forbedres';

  @override
  String get healthExcellentBody =>
      'Du sparer godt og holder deg innenfor budsjettene dine.';

  @override
  String get healthGoodBody =>
      'Du er på rett spor med forbruket ditt denne perioden.';

  @override
  String get healthFairBody =>
      'Noen budsjetter begynner å bli presset. Små endringer vil hjelpe.';

  @override
  String get healthNeedsWorkBody =>
      'Forbruket er høyere enn planen din. Start med den største kategorien.';

  @override
  String get factorSavingsRate => 'Sparerate';

  @override
  String get factorBudgetControl => 'Budsjettkontroll';

  @override
  String get factorDebtLoad => 'Gjeldsbelastning';

  @override
  String get factorSpendingTrend => 'Forbrukstrend';

  @override
  String factorKept(String percent) {
    return '$percent% beholdt';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% brukt';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% av inntekten';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Opp $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Ned $percent%';
  }

  @override
  String get howScoreWorks => 'Slik fungerer poengsummen';

  @override
  String get healthScoreExplainer =>
      'Poengsummen din kombinerer fire ting: hvor mye av inntekten du beholder, hvor godt du holder deg innenfor budsjettene, hvor mye av inntekten som går til gjeld, og om forbruket ditt øker eller synker.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% av poengsummen';
  }

  @override
  String get viewHealthDetails => 'Se oversikten';

  @override
  String get saveChanges => 'Lagre endringer';

  @override
  String get profileUpdated => 'Profil oppdatert';

  @override
  String get changePhoto => 'Bytt bilde';

  @override
  String get removePhoto => 'Fjern bilde';

  @override
  String get personalInformationIntro =>
      'Navnet og bildet ditt vises i hele appen. E-postadressen er adressen du logger inn med.';

  @override
  String get emailNotEditable =>
      'Kontakt kundestøtte for å endre adressen du logger inn med.';

  @override
  String get pressBackAgainToExit => 'Trykk tilbake igjen for å avslutte';

  @override
  String get categoryHousing => 'Bolig';

  @override
  String get categoryFood => 'Mat og restaurant';

  @override
  String get categoryTransport => 'Transport';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryBills => 'Regninger og tjenester';

  @override
  String get categoryEntertainment => 'Underholdning';

  @override
  String get categoryHealth => 'Helse og trening';

  @override
  String get categoryEducation => 'Utdanning';

  @override
  String get categoryTravel => 'Reise';

  @override
  String get categorySalary => 'Lønn';

  @override
  String get categoryFreelance => 'Frilans';

  @override
  String get categoryInvestments => 'Investeringer';

  @override
  String get categoryGift => 'Gave';

  @override
  String get categoryOther => 'Annet';

  @override
  String get categoryGroceries => 'Dagligvarer';

  @override
  String get categoryDining => 'Restaurant';

  @override
  String get categoryCoffee => 'Kaffe';

  @override
  String get categoryUtilities => 'Tjenester';

  @override
  String get categoryInternet => 'Internett';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Forsikring';

  @override
  String get categorySubscriptions => 'Abonnementer';

  @override
  String get categoryPersonalCare => 'Personlig pleie';

  @override
  String get categoryClothing => 'Klær';

  @override
  String get categoryElectronics => 'Elektronikk';

  @override
  String get categoryHomeSupplies => 'Husholdningsartikler';

  @override
  String get categoryPets => 'Kjæledyr';

  @override
  String get categoryChildcare => 'Barnepass';

  @override
  String get categoryFamily => 'Familie';

  @override
  String get categoryFitness => 'Trening';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Medisiner';

  @override
  String get categoryMedical => 'Medisinsk';

  @override
  String get categoryCharity => 'Veldedighet';

  @override
  String get categoryTaxes => 'Skatter';

  @override
  String get categoryFees => 'Gebyrer';

  @override
  String get categoryDebt => 'Gjeld';

  @override
  String get categorySavings => 'Sparing';

  @override
  String get categoryRepairs => 'Reparasjoner';

  @override
  String get categoryCarMaintenance => 'Bilvedlikehold';

  @override
  String get categoryFuel => 'Drivstoff';

  @override
  String get categoryParking => 'Parkering';

  @override
  String get categoryPublicTransport => 'Kollektivtransport';

  @override
  String get categoryRent => 'Husleie';

  @override
  String get categoryMortgage => 'Boliglån';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provisjon';

  @override
  String get categoryPension => 'Pensjon';

  @override
  String get categoryInterest => 'Renter';

  @override
  String get categoryDividends => 'Utbytte';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Refusjon';

  @override
  String get categoryRentalIncome => 'Leieinntekter';

  @override
  String get addCategory => 'Ny kategori';

  @override
  String get filterByCategory => 'Filtrer etter kategori';

  @override
  String get allCategories => 'Alle kategorier';

  @override
  String get clearFilters => 'Fjern filtre';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Alle tider';

  @override
  String get customRange => 'Tilpasset';

  @override
  String get selectDateRange => 'Velg en periode';

  @override
  String rangeApplied(String start, String end) {
    return 'Viser $start – $end';
  }

  @override
  String get loans => 'Lån';

  @override
  String get debts => 'Gjeld';

  @override
  String get noLoansTitle => 'Ingen lån';

  @override
  String get noLoansBody => 'Du har ingen aktive lån.';

  @override
  String get emptyHealthTitle => 'Ingen økonomisk poengsum ennå';

  @override
  String get emptyHealthDescription =>
      'Vi trenger litt økonomisk aktivitet før vi kan beregne en nøyaktig økonomisk poengsum.';

  @override
  String get emptyHealthAddTransactions =>
      'Legg til inntekts- eller utgiftstransaksjoner';

  @override
  String get emptyHealthSetBudgets => 'Sett opp månedlige budsjetter';

  @override
  String get emptyHealthTrackLoans => 'Følg med på lån eller gjeld (valgfritt)';

  @override
  String get emptyHealthCardSubtitle =>
      'Legg til transaksjoner for å beregne poengsummen din og få innsikt.';

  @override
  String get smartBudgetSplit => 'Smart budsjettfordeling';

  @override
  String get smartBudgetSplitSubtitle =>
      'Skriv inn månedslønnen din for å beregne anbefalte grenser';

  @override
  String get monthlyNetSalary => 'Månedlig nettolønn';

  @override
  String get categoryAllocations => 'Kategori­fordelinger';

  @override
  String totalBudgeted(String amount) {
    return 'Totalt: $amount';
  }

  @override
  String get applyAllBudgets => 'Bruk alle budsjetter';

  @override
  String get applyingBudgets => 'Bruker budsjetter...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kategoribudsjetter opprettet.',
      one: '1 kategoribudsjett opprettet.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Kunne ikke lagre budsjettene.';

  @override
  String get recommendedBudget => 'Anbefalt budsjett';
}
