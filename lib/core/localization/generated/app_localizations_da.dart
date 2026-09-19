// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppL10nDa extends AppL10n {
  AppL10nDa([String locale = 'da']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Spar op til regnvejrsdage';

  @override
  String get navHome => 'Hjem';

  @override
  String get navTransactions => 'Transaktioner';

  @override
  String get navAdd => 'Tilføj';

  @override
  String get navReports => 'Rapporter';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Godmorgen, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'God eftermiddag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Godaften, $name';
  }

  @override
  String get greetingSubtitle => 'Sådan ser din økonomi ud';

  @override
  String get totalBalance => 'Samlet saldo';

  @override
  String get vsLastPeriod => 'mod forrige periode';

  @override
  String get income => 'Indtægter';

  @override
  String get expenses => 'Udgifter';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Seneste 30 dage';

  @override
  String get quickActions => 'Hurtige handlinger';

  @override
  String get addIncome => 'Tilføj indtægt';

  @override
  String get addExpense => 'Tilføj udgift';

  @override
  String get spendingOverview => 'Forbrugsoverblik';

  @override
  String get recentTransactions => 'Seneste transaktioner';

  @override
  String get seeAll => 'Se alle';

  @override
  String get viewAll => 'Vis alle';

  @override
  String get budgetProgress => 'Budgetstatus';

  @override
  String get savingsGoals => 'Opsparingsmål';

  @override
  String get financialInsight => 'Økonomisk indsigt';

  @override
  String get financialHealth => 'Økonomisk sundhed';

  @override
  String ofTotal(String total) {
    return 'af $total';
  }

  @override
  String get searchTransactions => 'Søg i transaktioner';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterIncome => 'Indtægter';

  @override
  String get filterExpenses => 'Udgifter';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get noTransactionsTitle => 'Ingen transaktioner fundet';

  @override
  String get noTransactionsBody =>
      'Prøv en anden søgning eller et andet filter for at se flere poster.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaktioner',
      one: '$count transaktion',
      zero: 'Ingen transaktioner',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Tilføj transaktion';

  @override
  String get amount => 'Beløb';

  @override
  String get category => 'Kategori';

  @override
  String get date => 'Dato';

  @override
  String get note => 'Note';

  @override
  String get noteHint => 'Note (valgfri)';

  @override
  String get saveIncome => 'Gem indtægt';

  @override
  String get saveExpense => 'Gem udgift';

  @override
  String get selectCategory => 'Vælg kategori';

  @override
  String get transactionSaved => 'Transaktionen er gemt';

  @override
  String get amountRequired => 'Indtast et beløb større end nul';

  @override
  String get titleRequired => 'Giv denne transaktion et navn';

  @override
  String get descriptionLabel => 'Beskrivelse';

  @override
  String get descriptionHint => 'f.eks. dagligvarer';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgetter';

  @override
  String get totalBudget => 'Samlet budget';

  @override
  String get spent => 'Brugt';

  @override
  String get remaining => 'Tilbage';

  @override
  String budgetUsed(int percent) {
    return '$percent% brugt';
  }

  @override
  String get onTrack => 'Efter planen';

  @override
  String get approachingLimit => 'Tæt på grænsen';

  @override
  String get overBudget => 'Over budget';

  @override
  String get savings => 'Opsparing';

  @override
  String get yourGoals => 'Dine mål';

  @override
  String get saved => 'Opsparet';

  @override
  String get target => 'Mål';

  @override
  String get monthlyContribution => 'Om måneden';

  @override
  String get addFunds => 'Indbetal';

  @override
  String get goalComplete => 'Målet er nået';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count måneder tilbage',
      one: '$count måned tilbage',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lån og gæld';

  @override
  String get totalOutstanding => 'Samlet restgæld';

  @override
  String get monthlyPayment => 'Om måneden';

  @override
  String get nextPayment => 'Næste betaling';

  @override
  String paidOff(int percent) {
    return '$percent% afdraget';
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
      other: 'Om $count dage',
      one: 'Om $count dag',
      zero: 'Forfalder i dag',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Forfalden';

  @override
  String get reports => 'Rapporter';

  @override
  String get week => 'Uge';

  @override
  String get month => 'Måned';

  @override
  String get quarter => 'Kvartal';

  @override
  String get incomeVsExpenses => 'Indtægter mod udgifter';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get budgetPerformance => 'Budgetresultat';

  @override
  String get insights => 'Indsigter';

  @override
  String get savingsRate => 'Opsparingsgrad';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Personlige oplysninger';

  @override
  String get changePassword => 'Skift adgangskode';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get preferences => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get currency => 'Valuta';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Sikkerhed';

  @override
  String get privacyAndSecurity => 'Privatliv og sikkerhed';

  @override
  String get help => 'Hjælp';

  @override
  String get helpAndSupport => 'Hjælp og support';

  @override
  String get termsAndConditions => 'Vilkår og betingelser';

  @override
  String get logOut => 'Log ud';

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
  String get settings => 'Indstillinger';

  @override
  String get noNotificationsTitle => 'Du er helt opdateret';

  @override
  String get noNotificationsBody =>
      'Nye indsigter og påmindelser dukker op her.';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get done => 'Færdig';

  @override
  String get retry => 'Prøv igen';

  @override
  String get close => 'Luk';

  @override
  String get somethingWentWrong => 'Noget gik galt';

  @override
  String get comingSoon => 'Kommer i den fulde version';

  @override
  String get edit => 'Rediger';

  @override
  String get delete => 'Slet';

  @override
  String get undo => 'Fortryd';

  @override
  String get add => 'Tilføj';

  @override
  String get create => 'Opret';

  @override
  String get nameRequired => 'Giv det et navn';

  @override
  String get amountAboveZero => 'Indtast et beløb større end nul';

  @override
  String get editTransaction => 'Rediger transaktion';

  @override
  String get deleteTransaction => 'Slet denne transaktion?';

  @override
  String deleteTransactionBody(String title) {
    return '$title forsvinder fra dine noteringer.';
  }

  @override
  String get transactionDeleted => 'Transaktionen er slettet';

  @override
  String get transactionUpdated => 'Transaktionen er opdateret';

  @override
  String get newBudget => 'Nyt budget';

  @override
  String get editBudget => 'Rediger budget';

  @override
  String get budgetLimit => 'Månedlig grænse';

  @override
  String get deleteBudget => 'Slet dette budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budgettet for $category bliver fjernet. Dine transaktioner rører vi ikke.';
  }

  @override
  String get budgetSaved => 'Budgettet er gemt';

  @override
  String get budgetDeleted => 'Budgettet er slettet';

  @override
  String get allCategoriesBudgeted => 'Alle kategorier har allerede et budget';

  @override
  String get noBudgetsTitle => 'Ingen budgetter endnu';

  @override
  String get noBudgetsBody =>
      'Sæt en månedlig grænse på en kategori, så begynder vi at følge den.';

  @override
  String get newGoal => 'Nyt mål';

  @override
  String get editGoal => 'Rediger mål';

  @override
  String get goalName => 'Målets navn';

  @override
  String get goalNameHint => 'f.eks. buffer';

  @override
  String get targetAmount => 'Målbeløb';

  @override
  String get alreadySaved => 'Allerede opsparet';

  @override
  String get deleteGoal => 'Slet dette mål?';

  @override
  String deleteGoalBody(String name) {
    return '$name og dets fremgang bliver fjernet.';
  }

  @override
  String get goalSaved => 'Målet er gemt';

  @override
  String get goalDeleted => 'Målet er slettet';

  @override
  String get noGoalsTitle => 'Ingen opsparingsmål endnu';

  @override
  String get noGoalsBody => 'Sæt et mål, så følger RainyPenny din fremgang.';

  @override
  String get fundsAdded => 'Beløbet er indbetalt';

  @override
  String get newDebt => 'Nyt lån eller kort';

  @override
  String get editDebt => 'Rediger lån';

  @override
  String get debtName => 'Navn';

  @override
  String get debtNameHint => 'f.eks. billån';

  @override
  String get lender => 'Långiver';

  @override
  String get lenderHint => 'f.eks. Danske Bank';

  @override
  String get originalAmount => 'Oprindeligt beløb';

  @override
  String get creditLimit => 'Kreditgrænse';

  @override
  String get remainingBalance => 'Restgæld';

  @override
  String get interestRatePercent => 'Rente (%)';

  @override
  String get kindLoan => 'Lån';

  @override
  String get kindCreditCard => 'Kreditkort';

  @override
  String get recordPayment => 'Registrer betaling';

  @override
  String get paymentRecorded => 'Betalingen er registreret';

  @override
  String get deleteDebt => 'Slet denne gæld?';

  @override
  String deleteDebtBody(String name) {
    return '$name forsvinder fra din gæld.';
  }

  @override
  String get debtSaved => 'Gemt';

  @override
  String get debtDeleted => 'Slettet';

  @override
  String get noDebtsTitle => 'Ingen gæld følges';

  @override
  String get noDebtsBody =>
      'Tilføj et lån eller kreditkort for at holde styr på afdragene.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budgettet for $subject er overskredet';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du ligger $amount over dit $subject-budget i denne periode.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject nærmer sig grænsen';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Dit $subject-budget er brugt $percent%, $amount er tilbage.';
  }

  @override
  String get insightOverIncomeTitle => 'Udgifterne overstiger indtægterne';

  @override
  String get insightOverIncomeBody =>
      'I denne periode brugte du mere, end du tjente. Se de største kategorier igennem for at få balance igen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Forbruget på $subject stiger';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Du brugte $percent% mere på $subject end i forrige periode.';
  }

  @override
  String get insightTrendDownTitle => 'Forbruget falder';

  @override
  String insightTrendDownBody(int percent) {
    return 'Det samlede forbrug er $percent% lavere end i forrige periode.';
  }

  @override
  String get insightTrendUpTitle => 'Forbruget stiger';

  @override
  String insightTrendUpBody(int percent) {
    return 'Det samlede forbrug er $percent% højere end i forrige periode.';
  }

  @override
  String get insightSavingsStrongTitle => 'Stærk opsparing i denne periode';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du beholdt $percent% af din indtægt — et godt stykke over målet på $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Opsparingsgraden er under målet';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'I denne periode beholdt du $percent% af din indtægt. Sigt efter $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject er næsten i hus';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Kun $amount tilbage til $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject følger planen';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months måneder',
      one: '$months måned',
    );
    return 'Med $amount om måneden når du målet om $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Betalingen til $subject er forsinket';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage',
      one: '$days dag',
    );
    return 'Betalingen på $amount til $subject er $_temp0 forsinket.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Betalingen til $subject nærmer sig';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dage',
      one: 'om $days dag',
      zero: 'i dag',
    );
    return '$amount forfalder $_temp0.';
  }

  @override
  String get signIn => 'Log ind';

  @override
  String get signUp => 'Opret konto';

  @override
  String get signInSubtitle => 'Velkommen tilbage. Dine penge venter.';

  @override
  String get signUpSubtitle => 'Et par oplysninger, så er du i gang.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'dig@email.com';

  @override
  String get passwordLabel => 'Adgangskode';

  @override
  String get passwordHint => 'Mindst 8 tegn';

  @override
  String get fullNameLabel => 'Fulde navn';

  @override
  String get fullNameHint => 'Anne Kristensen';

  @override
  String get forgotPassword => 'Glemt adgangskode?';

  @override
  String get resetSent => 'Tjek din indbakke for nulstillingslinket';

  @override
  String get noAccountYet => 'Ny her?';

  @override
  String get haveAccount => 'Har du allerede en konto?';

  @override
  String get emailInvalid => 'Indtast en gyldig e-mailadresse';

  @override
  String get passwordTooShort => 'Brug mindst 8 tegn';

  @override
  String get signOutConfirm => 'Log ud?';

  @override
  String get signOutBody => 'Du skal logge ind igen for at se din økonomi.';

  @override
  String get dataSource => 'Datakilde';

  @override
  String get insightWeeklySummaryTitle => 'Din uge kort fortalt';

  @override
  String get insightWeeklySummaryBody =>
      'Se, hvor pengene gik hen i denne uge, og hvordan budgetterne holder.';

  @override
  String get notificationSettings => 'Notifikationer';

  @override
  String get alertsSection => 'Advarsler';

  @override
  String get budgetAlerts => 'Budgetadvarsler';

  @override
  String get budgetAlertsBody =>
      'Når et budget nærmer sig eller overskrider sin grænse';

  @override
  String get paymentReminders => 'Betalingspåmindelser';

  @override
  String get paymentRemindersBody => 'Et par dage før en betaling forfalder';

  @override
  String get savingsUpdates => 'Opsparingsnyt';

  @override
  String get savingsUpdatesBody => 'Fremgang mod dine mål';

  @override
  String get weeklySummaryLabel => 'Ugentligt overblik';

  @override
  String get weeklySummaryBody => 'En opsamling på ugen, der gik';

  @override
  String get scheduleSection => 'Tidspunkt';

  @override
  String get reminderTime => 'Tidspunkt for påmindelse';

  @override
  String get quietHours => 'Stille timer';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dag for overblik';

  @override
  String get permissionRequired => 'Notifikationer er slået fra';

  @override
  String get permissionRequiredBody =>
      'Tillad notifikationer, så kan RainyPenny advare dig, før et budget eller en betaling løber løbsk.';

  @override
  String get allowNotifications => 'Tillad notifikationer';

  @override
  String get permissionDenied =>
      'Notifikationer er blokeret. Du kan slå dem til i enhedens indstillinger.';

  @override
  String get upcomingAlerts => 'Planlagt';

  @override
  String get noScheduledAlerts => 'Der er intet planlagt lige nu';

  @override
  String get noScheduledAlertsBody =>
      'Advarsler dukker op her, når dine budgetter og betalinger nærmer sig deres grænser.';

  @override
  String scheduledFor(String date) {
    return 'Planlagt til $date';
  }

  @override
  String get everyWeek => 'Hver uge';

  @override
  String get allNotificationsOff => 'Alle notifikationer er slået fra';

  @override
  String get needsAttention => 'Kræver opmærksomhed';

  @override
  String get quickActionsTitle => 'Hvad vil du gerne?';

  @override
  String get createSection => 'Registrer';

  @override
  String get jumpToSection => 'Gå til';

  @override
  String get addLoanAction => 'Tilføj lån';

  @override
  String get addBudgetAction => 'Tilføj budget';

  @override
  String get addGoalAction => 'Tilføj mål';

  @override
  String get longPressHint =>
      'Tip: hold + nede for at registrere en udgift med det samme';

  @override
  String get searchCurrencies => 'Søg efter valutaer';

  @override
  String get noCurrenciesFound => 'Ingen valutaer fundet';

  @override
  String get noCurrenciesFoundMessage =>
      'Prøv en anden kode, et andet symbol eller navn.';

  @override
  String get popularCurrencies => 'Almindelige';

  @override
  String get allCurrencies => 'Alle valutaer';

  @override
  String get totalLoanAmount => 'Samlet lånebeløb';

  @override
  String get installmentAmount => 'Beløb pr. afdrag';

  @override
  String get numberOfInstallments => 'Antal afdrag';

  @override
  String get paidInstallments => 'Betalte afdrag';

  @override
  String get remainingInstallments => 'Resterende afdrag';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid af $total betalt';
  }

  @override
  String get finalPayment => 'Sidste betaling';

  @override
  String get paymentDueDate => 'Forfaldsdato';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Den $day. hver måned';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Efter planen';

  @override
  String get statusDueSoon => 'Forfalder snart';

  @override
  String get statusOverdue => 'Forfalden';

  @override
  String get statusCompleted => 'Færdigbetalt';

  @override
  String get repaymentProgress => 'Afdragsstatus';

  @override
  String get byAmount => 'Efter beløb';

  @override
  String get byInstallments => 'Efter afdrag';

  @override
  String get startDate => 'Startdato';

  @override
  String get openEnded => 'Uden slutdato';

  @override
  String get loanDetails => 'Om lånet';

  @override
  String get notSet => 'Ikke angivet';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject forfalder i dag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Betalingen på $amount forfalder i dag. Ét tryk, og den er til tiden.';
  }

  @override
  String get remindMorningTitle => 'Godmorgen ☀️';

  @override
  String get remindMorningBody =>
      'Start dagen med styr på pengene. Er der noget fra i går, du skal have med?';

  @override
  String get remindNoonTitle => 'Tjek midt på dagen';

  @override
  String get remindNoonBody =>
      'Frokost, kaffe, en billet? Det tager få sekunder at få det ind.';

  @override
  String get remindAfternoonTitle => 'En hurtig opdatering';

  @override
  String get remindAfternoonBody =>
      'Registrer det, du har brugt indtil nu, så passer dagens tal.';

  @override
  String get remindEveningTitle => 'Lad os runde dagen af';

  @override
  String get remindEveningBody =>
      'To minutter nu, så er dagens noteringer komplette.';

  @override
  String get happyWeekendTitle => 'God weekend! 🎉';

  @override
  String get happyWeekendBody =>
      'Nyd den — og hold et øje med weekendforbruget.';

  @override
  String get dailyReminders => 'Daglige udgiftspåmindelser';

  @override
  String get dailyRemindersBody =>
      'Venlige puf, så udgifterne holdes opdaterede';

  @override
  String get weekendGreeting => 'Weekendhilsen';

  @override
  String get weekendGreetingBody => 'En venlig hilsen, når weekenden begynder';

  @override
  String get reminderTimesSection => 'Tidspunkter for påmindelser';

  @override
  String get slotMorning => 'Morgen';

  @override
  String get slotNoon => 'Middag';

  @override
  String get slotAfternoon => 'Eftermiddag';

  @override
  String get slotEvening => 'Aften';

  @override
  String get everyDay => 'Hver dag';

  @override
  String get financialReport => 'Økonomisk rapport';

  @override
  String get preparedFor => 'Udarbejdet til';

  @override
  String get generatedOn => 'Oprettet';

  @override
  String get reportDisclaimer =>
      'Lavet af RainyPenny ud fra dine egne noteringer.';

  @override
  String pageOf(int page, int total) {
    return 'Side $page af $total';
  }

  @override
  String get overview => 'Overblik';

  @override
  String get description => 'Beskrivelse';

  @override
  String get totalIncome => 'Samlede indtægter';

  @override
  String get totalExpenses => 'Samlede udgifter';

  @override
  String get totalSaved => 'Samlet opsparet';

  @override
  String get shareOfTotal => 'Andel';

  @override
  String get used => 'Brugt';

  @override
  String get goal => 'Mål';

  @override
  String get targetDate => 'Måldato';

  @override
  String get progress => 'Fremgang';

  @override
  String get paidOffShort => 'Betalt';

  @override
  String get transactions => 'Transaktioner';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'og $count transaktioner mere',
      one: 'og $count transaktion mere',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksportér PDF';

  @override
  String get sharePdf => 'Del rapporten';

  @override
  String get preparingReport => 'Din rapport klargøres…';

  @override
  String get reportReady => 'Rapporten er klar';

  @override
  String get reportFailed => 'Rapporten kunne ikke laves';

  @override
  String get categories => 'Kategorier';

  @override
  String get categoriesIntro =>
      'Tilføj dine egne kategorier, så indtægter og udgifter lander præcis, som du selv tænker på dem.';

  @override
  String get expenseCategories => 'Udgiftskategorier';

  @override
  String get incomeCategories => 'Indtægtskategorier';

  @override
  String get newCategory => 'Ny kategori';

  @override
  String get editCategory => 'Rediger kategori';

  @override
  String get categoryName => 'Navn';

  @override
  String get categoryNameHint => 'f.eks. kæledyr';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategorien er gemt';

  @override
  String get categoryDeleted => 'Kategorien er slettet';

  @override
  String get deleteCategory => 'Slet denne kategori?';

  @override
  String deleteCategoryBody(String name) {
    return '$name forsvinder fra dine kategorier.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster bruger stadig denne kategori',
      one: '$count post bruger stadig denne kategori',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Der er ikke noget her endnu.';

  @override
  String get builtIn => 'Indbygget';

  @override
  String get manageCategories => 'Administrer kategorier';

  @override
  String get expense => 'Udgift';

  @override
  String get languageNote =>
      'Arabisk, urdu, persisk og hebraisk vender hele grænsefladen fra højre mod venstre, inklusive diagrammer og PDF-rapporter.';

  @override
  String get next => 'Næste';

  @override
  String get back => 'Tilbage';

  @override
  String get skip => 'Spring over';

  @override
  String get continueLabel => 'Fortsæt';

  @override
  String get selected => 'Valgt';

  @override
  String get passwordRequired => 'Indtast din adgangskode';

  @override
  String get newPasswordLabel => 'Ny adgangskode';

  @override
  String get confirmPasswordLabel => 'Bekræft adgangskoden';

  @override
  String get passwordsDoNotMatch => 'De to adgangskoder skal være ens';

  @override
  String get showPassword => 'Vis adgangskoden';

  @override
  String get hidePassword => 'Skjul adgangskoden';

  @override
  String get savePassword => 'Gem adgangskoden';

  @override
  String get backToSignIn => 'Tilbage til login';

  @override
  String get alreadyHaveAccount => 'Jeg har allerede en konto';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get acceptTerms =>
      'Jeg accepterer servicevilkårene og privatlivspolitikken';

  @override
  String get acceptTermsRequired => 'Accepter for at fortsætte';

  @override
  String get passwordStrengthTooShort => 'For kort';

  @override
  String get passwordStrengthWeak => 'Svag';

  @override
  String get passwordStrengthFair => 'Nogenlunde';

  @override
  String get passwordStrengthGood => 'God';

  @override
  String get passwordStrengthStrong => 'Stærk';

  @override
  String get passwordAdvice =>
      'En lang sætning, du kan huske, slår en kort adgangskode fuld af tegn. Undgå noget, du allerede bruger et andet sted.';

  @override
  String get authInvalidCredentials =>
      'Den e-mail og adgangskode passer ikke til nogen konto';

  @override
  String get authEmailNotConfirmed =>
      'Bekræft din e-mailadresse, før du logger ind';

  @override
  String get authEmailAlreadyRegistered =>
      'Der findes allerede en konto med denne e-mail';

  @override
  String get authWeakPassword => 'Vælg en længere adgangskode';

  @override
  String get authRateLimited =>
      'For mange forsøg. Prøv igen om et par minutter';

  @override
  String get authNetworkError =>
      'Ingen forbindelse. Tjek netværket, og prøv igen';

  @override
  String get authGenericError => 'Noget gik galt. Prøv igen';

  @override
  String get confirmEmailTitle => 'Tjek din e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Vi sendte et bekræftelseslink til $email. Åbn det for at gøre kontoen færdig.';
  }

  @override
  String get resendConfirmation => 'Send bekræftelsen igen';

  @override
  String get confirmationResent => 'Bekræftelsesmailen er sendt';

  @override
  String get forgotPasswordTitle => 'Nulstil din adgangskode';

  @override
  String get forgotPasswordSubtitle =>
      'Indtast den e-mailadresse, du oprettede dig med, så sender vi et link til at vælge en ny adgangskode.';

  @override
  String get sendResetLink => 'Send linket';

  @override
  String get resetLinkSentTitle => 'Linket er sendt';

  @override
  String resetLinkSentBody(String email) {
    return 'Hvis $email har en konto, er linket på vej.';
  }

  @override
  String get resetLinkSentHint =>
      'Linket udløber om en time. Kommer det ikke frem, så tjek spam, før du beder om et nyt.';

  @override
  String get tryAnotherEmail => 'Brug en anden e-mail';

  @override
  String get resetPasswordTitle => 'Vælg en ny adgangskode';

  @override
  String get resetPasswordSubtitle =>
      'Vælg noget, du ikke har brugt på denne konto før.';

  @override
  String get passwordChangedTitle => 'Adgangskoden er opdateret';

  @override
  String get passwordChangedBody =>
      'Din nye adgangskode er gemt. Du er logget ind og klar.';

  @override
  String get demoModeHint => 'Demoversion — ingen konto nødvendig';

  @override
  String get demoModeFill => 'Udfyld';

  @override
  String get welcomeTrackTitle => 'Se, hvor pengene bliver af';

  @override
  String get welcomeTrackBody =>
      'Notér, hvad der kommer ind, og hvad der går ud. RainyPenny gør det til et billede, man rent faktisk kan læse.';

  @override
  String get welcomeBudgetTitle => 'Grænser, der holder';

  @override
  String get welcomeBudgetBody =>
      'Giv hver del af dit forbrug et månedligt loft, og få det at vide, før du overskrider det — ikke bagefter.';

  @override
  String get welcomeGoalsTitle => 'Spar op til det, der betyder noget';

  @override
  String get welcomeGoalsBody =>
      'Giv målet et navn, sæt et beløb, og se det fylde op. En buffer er lettere at bygge, når man kan se den.';

  @override
  String get welcomePrivacyTitle => 'Dine penge forbliver dine';

  @override
  String get welcomePrivacyBody =>
      'Dine tal tilhører kun dig. Intet bliver solgt, og intet bliver delt med nogen.';

  @override
  String stepOf(int step, int total) {
    return 'Trin $step af $total';
  }

  @override
  String get onboardingNameTitle => 'Hvad skal vi kalde dig?';

  @override
  String get onboardingNameBody =>
      'Vi bruger det kun til at sige goddag, ikke andre steder.';

  @override
  String get onboardingNameHint =>
      'Fornavnet er rigeligt. Du kan ændre det senere.';

  @override
  String get onboardingCurrencyTitle => 'Hvilken valuta bruger du?';

  @override
  String get onboardingCurrencyBody =>
      'Alle beløb i appen vises i denne valuta. At vælge den omregner ikke noget.';

  @override
  String get onboardingCurrencySearch => 'Søg blandt alle valutaer';

  @override
  String get onboardingAppearanceTitle => 'Gør den til din';

  @override
  String get onboardingAppearanceBody =>
      'Vælg et udseende. Alt ændrer sig, mens du trykker, og du kan komme tilbage når som helst.';

  @override
  String get onboardingNotificationsTitle => 'Hold dig opdateret';

  @override
  String get onboardingNotificationsBody =>
      'Et stille puf på det rigtige tidspunkt er det, der gør det her til en vane.';

  @override
  String get onboardingNotifyReminders =>
      'En venlig påmindelse om at notere, hvad du har brugt';

  @override
  String get onboardingNotifyBudget => 'Et varsel, før et budget slipper op';

  @override
  String get onboardingNotifySummary =>
      'Et ugentligt overblik over, hvor pengene gik hen';

  @override
  String get onboardingNotifyEnable => 'Slå notifikationer til';

  @override
  String get onboardingNotifyDone => 'Notifikationsindstillingerne er gemt';

  @override
  String get onboardingNotifyLater =>
      'Alt det her kan du ændre i Indstillinger, når du vil.';

  @override
  String get onboardingReadyTitle => 'Alt er klar';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Alt er klar, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Indstillingerne er på plads. Vil du have en hurtig rundtur i, hvordan det hele virker?';

  @override
  String get onboardingTakeTour => 'Vis mig det';

  @override
  String get onboardingGoToApp => 'Tag mig til appen';

  @override
  String get onboardingTourLater =>
      'Ikke nu? Guiden bliver liggende i Indstillinger, når du får brug for den.';

  @override
  String get beginnersGuide => 'Begynderguide';

  @override
  String get guideFinish => 'Afslut';

  @override
  String chapterOf(int number, int total) {
    return 'Kapitel $number af $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Åbn $screen';
  }

  @override
  String get guideDashboardTitle => 'Din startskærm';

  @override
  String get guideDashboardBody =>
      'Det hele begynder her. Kortet øverst viser, hvad du har tilbage; nedenunder hvad der er kommet ind og gået ud i denne periode, og derefter dit forbrug, dine budgetter og dine mål.';

  @override
  String get guideDashboardTip1 =>
      'Træk skærmen nedad for at opdatere det hele på én gang.';

  @override
  String get guideDashboardTip2 =>
      'Tryk på indtægts- eller udgiftskortet for at gå direkte til den liste.';

  @override
  String get guideDashboardTip3 =>
      'Ringene og indsigterne opdateres, i samme øjeblik du noterer noget.';

  @override
  String get guideAddTitle => 'At notere penge';

  @override
  String get guideAddBody =>
      'Knappen midt i rækken er der, hvor det hele begynder. Den åbner en kort menu: udgift, indtægt, gæld, budget eller opsparingsmål.';

  @override
  String get guideAddTip1 =>
      'Tryk på den midterste knap for at notere penge ind eller ud.';

  @override
  String get guideAddTip2 =>
      'Hold den nede for at gå direkte til en ny udgift og springe menuen over.';

  @override
  String get guideAddTip3 =>
      'Vælg altid en kategori — det er den, der får diagrammer og budgetter til at virke.';

  @override
  String get guideCategoriesTitle => 'Kategorier';

  @override
  String get guideCategoriesBody =>
      'Kategorier er måden, forbruget grupperes på. Dem, der følger med, rækker for de fleste, og du kan omdøbe dem eller tilføje dine egne.';

  @override
  String get guideCategoriesTip1 =>
      'Indstillinger og derefter Administrer kategorier for at ændre eller tilføje.';

  @override
  String get guideCategoriesTip2 =>
      'Alt uden kategori havner under „Andet“, så diagrammerne forbliver ærlige.';

  @override
  String get guideBudgetTitle => 'Budgetter';

  @override
  String get guideBudgetBody =>
      'Et budget er et månedligt loft for én kategori. Bjælken fyldes, mens du bruger penge, og skifter farve, når det nærmer sig, så du får det at vide, før du er over.';

  @override
  String get guideBudgetTip1 =>
      'Start med to eller tre kategorier, ikke dem alle på én gang.';

  @override
  String get guideBudgetTip2 =>
      'Sæt grænsen lige over det, du plejer at bruge, og stram den så gradvist.';

  @override
  String get guideBudgetTip3 =>
      'Lad budgetadvarslerne være slået til, så siger appen til, når et budget begynder at slippe op.';

  @override
  String get guideSavingsTitle => 'Opsparingsmål';

  @override
  String get guideSavingsBody =>
      'Giv det, du sparer op til, et navn, sæt et beløb og en dato, så regner appen ud, hvor meget du skal lægge til side hver måned.';

  @override
  String get guideSavingsTip1 =>
      'Et mål med et navn er lettere at holde fast i end en vag hensigt om at spare op.';

  @override
  String get guideSavingsTip2 =>
      'Flere små mål bliver oftere færdige end ét stort.';

  @override
  String get guideLoansTitle => 'Gæld og lån';

  @override
  String get guideLoansBody =>
      'Notér, hvad du skylder, hvad det koster, og hvornår næste betaling forfalder. Alt, du afdrager, ligger på en liste sammen med det, der er tilbage.';

  @override
  String get guideLoansTip1 =>
      'Indtast forfaldsdatoen, så holder betalingspåmindelserne styr på den for dig.';

  @override
  String get guideLoansTip2 =>
      'En forfalden gæld lyser rødt på startskærmen, indtil den er betalt.';

  @override
  String get guideReportsTitle => 'Rapporter';

  @override
  String get guideReportsBody =>
      'Det dybere billede: indtægter mod udgifter, forbrug efter kategori, hvordan budgetterne holdt, og hvor stor en del af indtægten du beholdt.';

  @override
  String get guideReportsTip1 =>
      'Skift mellem uge, måned og kvartal øverst på skærmen.';

  @override
  String get guideReportsTip2 =>
      'Eksportér eller del en PDF — den kommer ud på dit sprog og i dets læseretning.';

  @override
  String get guideSettingsTitle => 'Indstillinger';

  @override
  String get guideSettingsBody =>
      'Sprog, valuta, farver og advarsler er alle her, og intet af det er låst fast af det første valg — ret hvad du vil, når du vil.';

  @override
  String get guideSettingsTip1 =>
      'Fyrre sprog, og hele layoutet spejlvendes for dem, der læses fra højre mod venstre.';

  @override
  String get guideSettingsTip2 =>
      'Vælg, hvilke advarsler du vil have, og hvilke timer de må komme i.';

  @override
  String get guideSettingsTip3 =>
      'Stille timer holder alt tilbage til om morgenen.';

  @override
  String get guideHabitTitle => 'Få det til at sidde fast';

  @override
  String get guideHabitBody =>
      'Appen er kun så god som det, du putter i den. Ét minut om dagen slår en time om måneden, og efter to uger begynder tallene at sige noget.';

  @override
  String get guideHabitTip1 =>
      'Notér udgifter, når de sker, ikke ved ugens slutning.';

  @override
  String get guideHabitTip2 =>
      'Kast et blik på startskærmen én gang om dagen. Ti sekunder er nok.';

  @override
  String get guideHabitTip3 =>
      'Denne guide bliver liggende i Indstillinger — kom tilbage når som helst.';

  @override
  String get appearance => 'Udseende';

  @override
  String get themeCaption => 'Lyst, mørkt, eller hvad telefonen gør.';

  @override
  String get accentColor => 'Accentfarve';

  @override
  String get accentColorCaption => 'Farver knapper, markeringer og diagrammer.';

  @override
  String get accentSemanticsNote =>
      'Penge ind og penge ud beholder deres egne farver i alle temaer, så et tal skifter aldrig betydning, fordi du har skiftet accentfarve.';

  @override
  String get accentTeal => 'Turkis';

  @override
  String get accentGreen => 'Grøn';

  @override
  String get accentSky => 'Himmelblå';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Pink';

  @override
  String get accentCrimson => 'Karmoisin';

  @override
  String get accentOrange => 'Orange';

  @override
  String get accentSlate => 'Skifergrå';

  @override
  String get searchLanguages => 'Søg efter sprog';

  @override
  String get suggestedLanguages => 'Foreslåede';

  @override
  String get allLanguages => 'Alle sprog';

  @override
  String get noLanguagesFound => 'Ingen sprog fundet';

  @override
  String get noLanguagesFoundMessage =>
      'Prøv navnet på engelsk eller den tobogstavskode.';

  @override
  String get rightToLeft => 'Højre mod venstre';

  @override
  String get replayGuide => 'Se guiden igen';

  @override
  String get replaySetup => 'Kør opsætningen igen';

  @override
  String get replaySetupBody =>
      'Gå de første spørgsmål igennem én gang til. Intet af det, du har noteret, bliver slettet.';

  @override
  String get rateTitle => 'Er du glad for RainyPenny?';

  @override
  String get rateBody =>
      'Du har holdt ved et stykke tid nu. En bedømmelse tager et øjeblik og hjælper andre med at finde appen.';

  @override
  String get rateAction => 'Bedøm appen';

  @override
  String get rateLater => 'Måske senere';

  @override
  String get rateNever => 'Nej tak';

  @override
  String get rateThanks => 'Tak';

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
}
