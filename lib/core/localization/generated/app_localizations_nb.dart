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
  String get greetingSubtitle => 'Slik ser økonomien din ut';

  @override
  String get totalBalance => 'Total saldo';

  @override
  String get vsLastPeriod => 'mot forrige periode';

  @override
  String get income => 'Inntekter';

  @override
  String get expenses => 'Utgifter';

  @override
  String get netBalance => 'Nettosaldo';

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
  String get budgetProgress => 'Budsjettstatus';

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
  String get noTransactionsTitle => 'Fant ingen transaksjoner';

  @override
  String get noTransactionsBody =>
      'Prøv et annet søk eller filter for å se flere oppføringer.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksjoner',
      one: '$count transaksjon',
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
  String get noteHint => 'Notat (valgfritt)';

  @override
  String get saveIncome => 'Lagre inntekt';

  @override
  String get saveExpense => 'Lagre utgift';

  @override
  String get selectCategory => 'Velg kategori';

  @override
  String get transactionSaved => 'Transaksjonen er lagret';

  @override
  String get amountRequired => 'Skriv inn et beløp større enn null';

  @override
  String get titleRequired => 'Gi denne transaksjonen et navn';

  @override
  String get descriptionLabel => 'Beskrivelse';

  @override
  String get descriptionHint => 'f.eks. dagligvarer';

  @override
  String get budget => 'Budsjett';

  @override
  String get budgets => 'Budsjetter';

  @override
  String get totalBudget => 'Totalt budsjett';

  @override
  String get spent => 'Brukt';

  @override
  String get remaining => 'Igjen';

  @override
  String budgetUsed(int percent) {
    return '$percent% brukt';
  }

  @override
  String get onTrack => 'Etter planen';

  @override
  String get approachingLimit => 'Nær grensen';

  @override
  String get overBudget => 'Over budsjett';

  @override
  String get savings => 'Sparing';

  @override
  String get yourGoals => 'Målene dine';

  @override
  String get saved => 'Spart';

  @override
  String get target => 'Mål';

  @override
  String get monthlyContribution => 'Per måned';

  @override
  String get addFunds => 'Sett inn penger';

  @override
  String get goalComplete => 'Målet er nådd';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count måneder igjen',
      one: '$count måned igjen',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lån og gjeld';

  @override
  String get totalOutstanding => 'Totalt utestående';

  @override
  String get monthlyPayment => 'Per måned';

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
      other: 'Om $count dager',
      one: 'Om $count dag',
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
  String get incomeVsExpenses => 'Inntekter mot utgifter';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get budgetPerformance => 'Budsjettresultat';

  @override
  String get insights => 'Innsikter';

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
  String get themeSystem => 'Følg systemet';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get settings => 'Innstillinger';

  @override
  String get noNotificationsTitle => 'Du er helt oppdatert';

  @override
  String get noNotificationsBody =>
      'Nye innsikter og påminnelser dukker opp her.';

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
  String get comingSoon => 'Kommer i fullversjonen';

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
  String get nameRequired => 'Gi det et navn';

  @override
  String get amountAboveZero => 'Skriv inn et beløp større enn null';

  @override
  String get editTransaction => 'Rediger transaksjon';

  @override
  String get deleteTransaction => 'Slette denne transaksjonen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title forsvinner fra oversikten din.';
  }

  @override
  String get transactionDeleted => 'Transaksjonen er slettet';

  @override
  String get transactionUpdated => 'Transaksjonen er oppdatert';

  @override
  String get newBudget => 'Nytt budsjett';

  @override
  String get editBudget => 'Rediger budsjett';

  @override
  String get budgetLimit => 'Månedlig grense';

  @override
  String get deleteBudget => 'Slette dette budsjettet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budsjettet for $category blir fjernet. Transaksjonene dine røres ikke.';
  }

  @override
  String get budgetSaved => 'Budsjettet er lagret';

  @override
  String get budgetDeleted => 'Budsjettet er slettet';

  @override
  String get allCategoriesBudgeted =>
      'Alle kategorier har allerede et budsjett';

  @override
  String get noBudgetsTitle => 'Ingen budsjetter ennå';

  @override
  String get noBudgetsBody =>
      'Sett en månedlig grense på en kategori, så begynner vi å følge den.';

  @override
  String get newGoal => 'Nytt mål';

  @override
  String get editGoal => 'Rediger mål';

  @override
  String get goalName => 'Navn på målet';

  @override
  String get goalNameHint => 'f.eks. buffer';

  @override
  String get targetAmount => 'Målbeløp';

  @override
  String get alreadySaved => 'Allerede spart';

  @override
  String get deleteGoal => 'Slette dette målet?';

  @override
  String deleteGoalBody(String name) {
    return '$name og fremgangen mot det blir fjernet.';
  }

  @override
  String get goalSaved => 'Målet er lagret';

  @override
  String get goalDeleted => 'Målet er slettet';

  @override
  String get noGoalsTitle => 'Ingen sparemål ennå';

  @override
  String get noGoalsBody => 'Sett et mål, så følger RainyPenny fremgangen din.';

  @override
  String get fundsAdded => 'Pengene er satt inn';

  @override
  String get newDebt => 'Nytt lån eller kort';

  @override
  String get editDebt => 'Rediger lån';

  @override
  String get debtName => 'Navn';

  @override
  String get debtNameHint => 'f.eks. billån';

  @override
  String get lender => 'Långiver';

  @override
  String get lenderHint => 'f.eks. DNB';

  @override
  String get originalAmount => 'Opprinnelig beløp';

  @override
  String get creditLimit => 'Kredittgrense';

  @override
  String get remainingBalance => 'Restgjeld';

  @override
  String get interestRatePercent => 'Rente (%)';

  @override
  String get kindLoan => 'Lån';

  @override
  String get kindCreditCard => 'Kredittkort';

  @override
  String get recordPayment => 'Registrer betaling';

  @override
  String get paymentRecorded => 'Betalingen er registrert';

  @override
  String get deleteDebt => 'Slette denne gjelden?';

  @override
  String deleteDebtBody(String name) {
    return '$name forsvinner fra gjelden din.';
  }

  @override
  String get debtSaved => 'Lagret';

  @override
  String get debtDeleted => 'Slettet';

  @override
  String get noDebtsTitle => 'Ingen gjeld følges';

  @override
  String get noDebtsBody =>
      'Legg til et lån eller kredittkort for å holde oversikt over nedbetalingen.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budsjettet for $subject er overskredet';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du ligger $amount over $subject-budsjettet ditt denne perioden.';
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
    return '$subject-budsjettet ditt er brukt $percent%, $amount står igjen.';
  }

  @override
  String get insightOverIncomeTitle => 'Utgiftene overstiger inntektene';

  @override
  String get insightOverIncomeBody =>
      'Denne perioden brukte du mer enn du tjente. Gå gjennom de største kategoriene for å få balanse igjen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Forbruket på $subject øker';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Du brukte $percent% mer på $subject enn forrige periode.';
  }

  @override
  String get insightTrendDownTitle => 'Forbruket faller';

  @override
  String insightTrendDownBody(int percent) {
    return 'Totalforbruket er $percent% lavere enn forrige periode.';
  }

  @override
  String get insightTrendUpTitle => 'Forbruket stiger';

  @override
  String insightTrendUpBody(int percent) {
    return 'Totalforbruket er $percent% høyere enn forrige periode.';
  }

  @override
  String get insightSavingsStrongTitle => 'Sterk sparing denne perioden';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du beholdt $percent% av inntekten — godt over målet på $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Spareraten ligger under målet';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Denne perioden beholdt du $percent% av inntekten. Sikt mot $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject er nesten i havn';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Bare $amount igjen til $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject går etter planen';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months måneder',
      one: '$months måned',
    );
    return 'Med $amount i måneden når du målet om $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Betalingen på $subject er forsinket';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dager',
      one: '$days dag',
    );
    return 'Betalingen på $amount for $subject er $_temp0 forsinket.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Betalingen på $subject nærmer seg';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dager',
      one: 'om $days dag',
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
  String get signUpSubtitle => 'Noen få opplysninger, så er du i gang.';

  @override
  String get emailLabel => 'E-post';

  @override
  String get emailHint => 'du@email.com';

  @override
  String get passwordLabel => 'Passord';

  @override
  String get passwordHint => 'Minst 8 tegn';

  @override
  String get fullNameLabel => 'Fullt navn';

  @override
  String get fullNameHint => 'Anne Johansen';

  @override
  String get forgotPassword => 'Glemt passord?';

  @override
  String get resetSent => 'Sjekk innboksen for tilbakestillingslenken';

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
  String get insightWeeklySummaryTitle => 'Uken din kort fortalt';

  @override
  String get insightWeeklySummaryBody =>
      'Se hvor pengene tok veien denne uken, og hvordan budsjettene holder.';

  @override
  String get notificationSettings => 'Varsler';

  @override
  String get alertsSection => 'Varslinger';

  @override
  String get budgetAlerts => 'Budsjettvarsler';

  @override
  String get budgetAlertsBody =>
      'Når et budsjett nærmer seg eller passerer grensen sin';

  @override
  String get paymentReminders => 'Betalingspåminnelser';

  @override
  String get paymentRemindersBody => 'Noen dager før en betaling forfaller';

  @override
  String get savingsUpdates => 'Sparenytt';

  @override
  String get savingsUpdatesBody => 'Fremgang mot målene dine';

  @override
  String get weeklySummaryLabel => 'Ukesoppsummering';

  @override
  String get weeklySummaryBody => 'En oppsummering av uken som gikk';

  @override
  String get scheduleSection => 'Tidspunkt';

  @override
  String get reminderTime => 'Tidspunkt for påminnelse';

  @override
  String get quietHours => 'Stille timer';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dag for oppsummering';

  @override
  String get permissionRequired => 'Varsler er slått av';

  @override
  String get permissionRequiredBody =>
      'Tillat varsler, så kan RainyPenny si fra før et budsjett eller en betaling løper løpsk.';

  @override
  String get allowNotifications => 'Tillat varsler';

  @override
  String get permissionDenied =>
      'Varsler er blokkert. Du kan slå dem på i innstillingene på enheten.';

  @override
  String get upcomingAlerts => 'Planlagt';

  @override
  String get noScheduledAlerts => 'Ingenting er planlagt akkurat nå';

  @override
  String get noScheduledAlertsBody =>
      'Varsler dukker opp her når budsjettene og betalingene dine nærmer seg grensene sine.';

  @override
  String scheduledFor(String date) {
    return 'Planlagt til $date';
  }

  @override
  String get everyWeek => 'Hver uke';

  @override
  String get allNotificationsOff => 'Alle varsler er slått av';

  @override
  String get needsAttention => 'Trenger oppmerksomhet';

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
      'Tips: hold inne + for å registrere en utgift med én gang';

  @override
  String get searchCurrencies => 'Søk etter valutaer';

  @override
  String get noCurrenciesFound => 'Fant ingen valutaer';

  @override
  String get noCurrenciesFoundMessage =>
      'Prøv en annen kode, et annet symbol eller navn.';

  @override
  String get popularCurrencies => 'Vanlige';

  @override
  String get allCurrencies => 'Alle valutaer';

  @override
  String get totalLoanAmount => 'Totalt lånebeløp';

  @override
  String get installmentAmount => 'Beløp per avdrag';

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
    return 'Den $day. hver måned';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Etter planen';

  @override
  String get statusDueSoon => 'Forfaller snart';

  @override
  String get statusOverdue => 'Forfalt';

  @override
  String get statusCompleted => 'Nedbetalt';

  @override
  String get repaymentProgress => 'Nedbetalingsstatus';

  @override
  String get byAmount => 'Etter beløp';

  @override
  String get byInstallments => 'Etter avdrag';

  @override
  String get startDate => 'Startdato';

  @override
  String get openEnded => 'Uten sluttdato';

  @override
  String get loanDetails => 'Om lånet';

  @override
  String get notSet => 'Ikke angitt';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject forfaller i dag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Betalingen på $amount forfaller i dag. Ett trykk, og den er i tide.';
  }

  @override
  String get remindMorningTitle => 'God morgen ☀️';

  @override
  String get remindMorningBody =>
      'Start dagen med oversikt over pengene. Er det noe fra i går som skal med?';

  @override
  String get remindNoonTitle => 'En sjekk midt på dagen';

  @override
  String get remindNoonBody =>
      'Lunsj, kaffe, en billett? Det tar noen sekunder å få det inn.';

  @override
  String get remindAfternoonTitle => 'En rask oppdatering';

  @override
  String get remindAfternoonBody =>
      'Registrer det du har brukt så langt, så stemmer dagens tall.';

  @override
  String get remindEveningTitle => 'La oss runde av dagen';

  @override
  String get remindEveningBody =>
      'To minutter nå, så er dagens oversikt komplett.';

  @override
  String get happyWeekendTitle => 'God helg! 🎉';

  @override
  String get happyWeekendBody => 'Kos deg — og hold et øye med helgeforbruket.';

  @override
  String get dailyReminders => 'Daglige utgiftspåminnelser';

  @override
  String get dailyRemindersBody =>
      'Vennlige dytt så utgiftene holdes oppdatert';

  @override
  String get weekendGreeting => 'Helgehilsen';

  @override
  String get weekendGreetingBody => 'En vennlig hilsen når helgen starter';

  @override
  String get reminderTimesSection => 'Tidspunkter for påminnelser';

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
  String get generatedOn => 'Laget';

  @override
  String get reportDisclaimer =>
      'Laget av RainyPenny ut fra dine egne registreringer.';

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
  String get progress => 'Fremgang';

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
      one: 'og $count transaksjon til',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksporter PDF';

  @override
  String get sharePdf => 'Del rapporten';

  @override
  String get preparingReport => 'Rapporten din klargjøres…';

  @override
  String get reportReady => 'Rapporten er klar';

  @override
  String get reportFailed => 'Klarte ikke å lage rapporten';

  @override
  String get categories => 'Kategorier';

  @override
  String get categoriesIntro =>
      'Legg til dine egne kategorier, så havner inntekter og utgifter akkurat slik du selv tenker om dem.';

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
  String get categoryNameHint => 'f.eks. kjæledyr';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategorien er lagret';

  @override
  String get categoryDeleted => 'Kategorien er slettet';

  @override
  String get deleteCategory => 'Slette denne kategorien?';

  @override
  String deleteCategoryBody(String name) {
    return '$name forsvinner fra kategoriene dine.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oppføringer bruker fortsatt denne kategorien',
      one: '$count oppføring bruker fortsatt denne kategorien',
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
      'Arabisk, urdu, persisk og hebraisk snur hele grensesnittet fra høyre mot venstre, inkludert diagrammer og PDF-rapporter.';

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
  String get confirmPasswordLabel => 'Bekreft passordet';

  @override
  String get passwordsDoNotMatch => 'Begge passordene må være like';

  @override
  String get showPassword => 'Vis passordet';

  @override
  String get hidePassword => 'Skjul passordet';

  @override
  String get savePassword => 'Lagre passordet';

  @override
  String get backToSignIn => 'Tilbake til innlogging';

  @override
  String get alreadyHaveAccount => 'Jeg har allerede en konto';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get acceptTerms =>
      'Jeg godtar vilkårene for bruk og personvernerklæringen';

  @override
  String get acceptTermsRequired => 'Godta for å fortsette';

  @override
  String get passwordStrengthTooShort => 'For kort';

  @override
  String get passwordStrengthWeak => 'Svakt';

  @override
  String get passwordStrengthFair => 'Middels';

  @override
  String get passwordStrengthGood => 'Bra';

  @override
  String get passwordStrengthStrong => 'Sterkt';

  @override
  String get passwordAdvice =>
      'En lang frase du husker, slår et kort passord fullt av tegn. Unngå noe du allerede bruker et annet sted.';

  @override
  String get authInvalidCredentials =>
      'Den e-postadressen og det passordet passer ikke til noen konto';

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
    return 'Vi sendte en bekreftelseslenke til $email. Åpne den for å gjøre kontoen ferdig.';
  }

  @override
  String get resendConfirmation => 'Send bekreftelsen på nytt';

  @override
  String get confirmationResent => 'Bekreftelsesmeldingen er sendt';

  @override
  String get forgotPasswordTitle => 'Tilbakestill passordet';

  @override
  String get forgotPasswordSubtitle =>
      'Skriv inn e-postadressen du registrerte deg med, så sender vi en lenke for å velge nytt passord.';

  @override
  String get sendResetLink => 'Send lenken';

  @override
  String get resetLinkSentTitle => 'Lenken er sendt';

  @override
  String resetLinkSentBody(String email) {
    return 'Hvis $email har en konto, er lenken på vei.';
  }

  @override
  String get resetLinkSentHint =>
      'Lenken utløper om en time. Kommer den ikke frem, sjekk søppelposten før du ber om en ny.';

  @override
  String get tryAnotherEmail => 'Bruk en annen e-postadresse';

  @override
  String get resetPasswordTitle => 'Velg et nytt passord';

  @override
  String get resetPasswordSubtitle =>
      'Velg noe du ikke har brukt på denne kontoen før.';

  @override
  String get passwordChangedTitle => 'Passordet er oppdatert';

  @override
  String get passwordChangedBody =>
      'Det nye passordet ditt er lagret. Du er logget inn og klar.';

  @override
  String get demoModeHint => 'Demoversjon — ingen konto nødvendig';

  @override
  String get demoModeFill => 'Fyll ut';

  @override
  String get welcomeTrackTitle => 'Se hvor pengene tar veien';

  @override
  String get welcomeTrackBody =>
      'Noter hva som kommer inn og hva som går ut. RainyPenny gjør det om til et bilde du faktisk kan lese.';

  @override
  String get welcomeBudgetTitle => 'Grenser som holder';

  @override
  String get welcomeBudgetBody =>
      'Gi hver del av forbruket et månedlig tak, og få vite det før du passerer det — ikke etterpå.';

  @override
  String get welcomeGoalsTitle => 'Spar til det som betyr noe';

  @override
  String get welcomeGoalsBody =>
      'Gi målet et navn, sett et beløp, og se det fylles opp. En buffer er lettere å bygge når du ser den.';

  @override
  String get welcomePrivacyTitle => 'Pengene dine forblir dine';

  @override
  String get welcomePrivacyBody =>
      'Tallene dine tilhører bare deg. Ingenting selges, og ingenting deles med noen.';

  @override
  String stepOf(int step, int total) {
    return 'Trinn $step av $total';
  }

  @override
  String get onboardingNameTitle => 'Hva skal vi kalle deg?';

  @override
  String get onboardingNameBody =>
      'Vi bruker det bare til å si hei, ingen andre steder.';

  @override
  String get onboardingNameHint =>
      'Fornavnet holder lenge. Du kan endre det senere.';

  @override
  String get onboardingCurrencyTitle => 'Hvilken valuta bruker du?';

  @override
  String get onboardingCurrencyBody =>
      'Alle beløp i appen vises i denne valutaen. Å velge den regner ikke om noe.';

  @override
  String get onboardingCurrencySearch => 'Søk gjennom alle valutaer';

  @override
  String get onboardingAppearanceTitle => 'Gjør den til din';

  @override
  String get onboardingAppearanceBody =>
      'Velg et utseende. Alt endrer seg mens du trykker, og du kan komme tilbake når som helst.';

  @override
  String get onboardingNotificationsTitle => 'Hold deg oppdatert';

  @override
  String get onboardingNotificationsBody =>
      'Et stille dytt til rett tid er det som gjør dette til en vane.';

  @override
  String get onboardingNotifyReminders =>
      'En vennlig påminnelse om å notere hva du har brukt';

  @override
  String get onboardingNotifyBudget => 'Et varsel før et budsjett tar slutt';

  @override
  String get onboardingNotifySummary =>
      'En ukentlig oppsummering av hvor pengene tok veien';

  @override
  String get onboardingNotifyEnable => 'Slå på varsler';

  @override
  String get onboardingNotifyDone => 'Varselinnstillingene er lagret';

  @override
  String get onboardingNotifyLater =>
      'Alt dette kan du endre i Innstillinger når du vil.';

  @override
  String get onboardingReadyTitle => 'Alt er klart';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Alt er klart, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Innstillingene er på plass. Vil du ha en rask omvisning i hvordan alt fungerer?';

  @override
  String get onboardingTakeTour => 'Vis meg';

  @override
  String get onboardingGoToApp => 'Ta meg til appen';

  @override
  String get onboardingTourLater =>
      'Ikke nå? Guiden blir liggende i Innstillinger, når du trenger den.';

  @override
  String get beginnersGuide => 'Nybegynnerguide';

  @override
  String get guideFinish => 'Fullfør';

  @override
  String chapterOf(int number, int total) {
    return 'Kapittel $number av $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Åpne $screen';
  }

  @override
  String get guideDashboardTitle => 'Startskjermen din';

  @override
  String get guideDashboardBody =>
      'Alt begynner her. Kortet øverst viser hva du har igjen; under det hva som har kommet inn og gått ut denne perioden, og deretter forbruket, budsjettene og målene dine.';

  @override
  String get guideDashboardTip1 =>
      'Dra skjermen nedover for å oppdatere alt på én gang.';

  @override
  String get guideDashboardTip2 =>
      'Trykk på inntekts- eller utgiftskortet for å gå rett til den listen.';

  @override
  String get guideDashboardTip3 =>
      'Ringene og innsiktene oppdateres i samme øyeblikk som du registrerer noe.';

  @override
  String get guideAddTitle => 'Å registrere penger';

  @override
  String get guideAddBody =>
      'Knappen midt i raden er der alt begynner. Den åpner en kort meny: utgift, inntekt, gjeld, budsjett eller sparemål.';

  @override
  String get guideAddTip1 =>
      'Trykk på midtknappen for å registrere penger inn eller ut.';

  @override
  String get guideAddTip2 =>
      'Hold den inne for å gå rett til en ny utgift og hoppe over menyen.';

  @override
  String get guideAddTip3 =>
      'Velg alltid en kategori — det er den som får diagrammer og budsjetter til å virke.';

  @override
  String get guideCategoriesTitle => 'Kategorier';

  @override
  String get guideCategoriesBody =>
      'Kategorier er måten forbruket grupperes på. De som følger med, holder for de fleste, og du kan gi dem nye navn eller legge til dine egne.';

  @override
  String get guideCategoriesTip1 =>
      'Innstillinger og så Administrer kategorier for å endre eller legge til.';

  @override
  String get guideCategoriesTip2 =>
      'Alt uten kategori havner under «Annet», slik at diagrammene forblir ærlige.';

  @override
  String get guideBudgetTitle => 'Budsjetter';

  @override
  String get guideBudgetBody =>
      'Et budsjett er et månedlig tak for én kategori. Stolpen fylles mens du bruker penger og skifter farge når det nærmer seg, så du får vite det før du er over.';

  @override
  String get guideBudgetTip1 =>
      'Start med to eller tre kategorier, ikke alle på én gang.';

  @override
  String get guideBudgetTip2 =>
      'Sett grensen litt over det du vanligvis bruker, og stram den inn etter hvert.';

  @override
  String get guideBudgetTip3 =>
      'La budsjettvarslene stå på, så sier appen fra når et budsjett begynner å ta slutt.';

  @override
  String get guideSavingsTitle => 'Sparemål';

  @override
  String get guideSavingsBody =>
      'Gi det du sparer til et navn, sett et beløp og en dato, så regner appen ut hvor mye du må legge til side hver måned.';

  @override
  String get guideSavingsTip1 =>
      'Et mål med navn er lettere å holde fast ved enn en vag intensjon om å spare.';

  @override
  String get guideSavingsTip2 =>
      'Flere små mål blir oftere fullført enn ett stort.';

  @override
  String get guideLoansTitle => 'Gjeld og lån';

  @override
  String get guideLoansBody =>
      'Noter hva du skylder, hva det koster, og når neste betaling forfaller. Alt du betaler ned ligger i en liste sammen med det som står igjen.';

  @override
  String get guideLoansTip1 =>
      'Legg inn forfallsdatoen, så holder betalingspåminnelsene styr på den for deg.';

  @override
  String get guideLoansTip2 =>
      'En forfalt gjeld lyser rødt på startskjermen til den er betalt.';

  @override
  String get guideReportsTitle => 'Rapporter';

  @override
  String get guideReportsBody =>
      'Det dypere bildet: inntekter mot utgifter, forbruk etter kategori, hvordan budsjettene holdt, og hvor stor del av inntekten du beholdt.';

  @override
  String get guideReportsTip1 =>
      'Bytt mellom uke, måned og kvartal øverst på skjermen.';

  @override
  String get guideReportsTip2 =>
      'Eksporter eller del en PDF — den kommer ut på ditt språk og i dets leseretning.';

  @override
  String get guideSettingsTitle => 'Innstillinger';

  @override
  String get guideSettingsBody =>
      'Språk, valuta, farger og varsler ligger alle her, og ingenting av det låses av det første valget — endre det du vil, når du vil.';

  @override
  String get guideSettingsTip1 =>
      'Førti språk, og hele oppsettet speilvendes for dem som leses fra høyre mot venstre.';

  @override
  String get guideSettingsTip2 =>
      'Velg hvilke varsler du vil ha, og hvilke timer de får komme i.';

  @override
  String get guideSettingsTip3 =>
      'Stille timer holder alt tilbake til morgenen.';

  @override
  String get guideHabitTitle => 'Få det til å sitte';

  @override
  String get guideHabitBody =>
      'Appen er bare så god som det du legger inn i den. Ett minutt om dagen slår en time i måneden, og etter to uker begynner tallene å si noe.';

  @override
  String get guideHabitTip1 =>
      'Registrer utgifter når de skjer, ikke på slutten av uken.';

  @override
  String get guideHabitTip2 =>
      'Kast et blikk på startskjermen én gang om dagen. Ti sekunder holder.';

  @override
  String get guideHabitTip3 =>
      'Denne guiden blir liggende i Innstillinger — kom tilbake når som helst.';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeCaption => 'Lyst, mørkt, eller det telefonen gjør.';

  @override
  String get accentColor => 'Aksentfarge';

  @override
  String get accentColorCaption => 'Farger knapper, valg og diagrammer.';

  @override
  String get accentSemanticsNote =>
      'Penger inn og penger ut beholder sine egne farger i alle temaer, så et tall bytter aldri betydning fordi du har byttet aksentfarge.';

  @override
  String get accentTeal => 'Turkis';

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
  String get accentCrimson => 'Karmosin';

  @override
  String get accentOrange => 'Oransje';

  @override
  String get accentSlate => 'Skifergrå';

  @override
  String get searchLanguages => 'Søk etter språk';

  @override
  String get suggestedLanguages => 'Foreslåtte';

  @override
  String get allLanguages => 'Alle språk';

  @override
  String get noLanguagesFound => 'Fant ingen språk';

  @override
  String get noLanguagesFoundMessage =>
      'Prøv navnet på engelsk eller den tobokstavskoden.';

  @override
  String get rightToLeft => 'Høyre mot venstre';

  @override
  String get replayGuide => 'Se guiden på nytt';

  @override
  String get replaySetup => 'Kjør oppsettet på nytt';

  @override
  String get replaySetupBody =>
      'Gå gjennom de første spørsmålene en gang til. Ingenting av det du har registrert blir slettet.';

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
  String get monthlySalary => 'Monthly salary';

  @override
  String get remainingAmount => 'Remaining';

  @override
  String get carriedForward => 'Carried forward';

  @override
  String get carriedForwardHint => 'Left over from last cycle';

  @override
  String get totalSpending => 'Total spending';

  @override
  String get salaryCycle => 'Salary cycle';

  @override
  String get payday => 'Salary day';

  @override
  String get paydayDescription =>
      'The day your salary arrives. Your financial month runs from this day until the day before the next one.';

  @override
  String get paydayUpdated => 'Salary day updated';

  @override
  String paydayDayOfMonth(int day) {
    return 'Day $day';
  }

  @override
  String get paydayShortMonthNote =>
      'In shorter months the cycle starts on the last day instead.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days to payday',
      one: '1 day to payday',
      zero: 'Last day of the cycle',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Next payday';

  @override
  String get spentSoFar => 'Spent so far';

  @override
  String get dailyAllowance => 'Safe to spend daily';

  @override
  String get overspentNotice => 'You have spent more than came in this cycle.';

  @override
  String get backToThisMonth => 'Back to this month';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'No salary recorded yet';

  @override
  String get addSalaryAction => 'Add your salary';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excellent';

  @override
  String get healthGood => 'Good';

  @override
  String get healthFair => 'Fair';

  @override
  String get healthNeedsWork => 'Needs work';

  @override
  String get healthExcellentBody =>
      'You are saving well and staying inside your budgets.';

  @override
  String get healthGoodBody =>
      'You are on track with your spending this period.';

  @override
  String get healthFairBody =>
      'A few budgets are running hot. Small changes will help.';

  @override
  String get healthNeedsWorkBody =>
      'Spending is outpacing your plan. Start with your largest category.';

  @override
  String get factorSavingsRate => 'Savings rate';

  @override
  String get factorBudgetControl => 'Budget control';

  @override
  String get factorDebtLoad => 'Debt load';

  @override
  String get factorSpendingTrend => 'Spending trend';

  @override
  String factorKept(String percent) {
    return '$percent% kept';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% used';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% of income';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Up $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Down $percent%';
  }

  @override
  String get howScoreWorks => 'How this score works';

  @override
  String get healthScoreExplainer =>
      'Your score blends four things: how much of your income you keep, how well you stay inside your budgets, how much of your income goes to debt, and whether your spending is rising or falling.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% of the score';
  }

  @override
  String get viewHealthDetails => 'See the breakdown';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get changePhoto => 'Change photo';

  @override
  String get removePhoto => 'Remove photo';

  @override
  String get personalInformationIntro =>
      'Your name and photo appear across the app. Your email is the address you sign in with.';

  @override
  String get emailNotEditable =>
      'Contact support to change the address you sign in with.';

  @override
  String get pressBackAgainToExit => 'Press back again to exit';

  @override
  String get categoryHousing => 'Housing';

  @override
  String get categoryFood => 'Food & Dining';

  @override
  String get categoryTransport => 'Transportation';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryBills => 'Bills & Utilities';

  @override
  String get categoryEntertainment => 'Entertainment';

  @override
  String get categoryHealth => 'Health & Fitness';

  @override
  String get categoryEducation => 'Education';

  @override
  String get categoryTravel => 'Travel';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investments';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Other';

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
  String get addCategory => 'New category';

  @override
  String get filterByCategory => 'Filter by category';

  @override
  String get allCategories => 'All categories';

  @override
  String get clearFilters => 'Clear filters';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'All time';

  @override
  String get customRange => 'Custom';

  @override
  String get selectDateRange => 'Choose a period';

  @override
  String rangeApplied(String start, String end) {
    return 'Showing $start – $end';
  }

  @override
  String get loans => 'Loans';

  @override
  String get debts => 'Debts';

  @override
  String get noLoansTitle => 'No loans';

  @override
  String get noLoansBody => 'You have no active loans.';

  @override
  String get emptyHealthTitle => 'No Financial Score Yet';

  @override
  String get emptyHealthDescription =>
      'We need a little financial activity before we can calculate an accurate health score.';

  @override
  String get emptyHealthAddTransactions => 'Add income or expense transactions';

  @override
  String get emptyHealthSetBudgets => 'Set up your monthly budgets';

  @override
  String get emptyHealthTrackLoans => 'Track loans or debts (optional)';

  @override
  String get emptyHealthCardSubtitle =>
      'Add transactions to calculate your score and get insights.';

  @override
  String get smartBudgetSplit => 'Smart Budget Split';

  @override
  String get smartBudgetSplitSubtitle =>
      'Enter your monthly salary to calculate recommended limits';

  @override
  String get monthlyNetSalary => 'Monthly Net Salary';

  @override
  String get categoryAllocations => 'Category Allocations';

  @override
  String totalBudgeted(String amount) {
    return 'Total: $amount';
  }

  @override
  String get applyAllBudgets => 'Apply All Budgets';

  @override
  String get applyingBudgets => 'Applying budgets...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count category budgets created.',
      one: '1 category budget created.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Failed to save budgets.';

  @override
  String get recommendedBudget => 'Recommended budget';
}
