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
  String get appTagline => 'Spar op til en regnvejrsdag';

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
    return 'Goddag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Godaften, $name';
  }

  @override
  String get greetingSubtitle => 'Her er din økonomiske oversigt';

  @override
  String get totalBalance => 'Samlet saldo';

  @override
  String get vsLastPeriod => 'ift. forrige periode';

  @override
  String get income => 'Indtægt';

  @override
  String get expenses => 'Udgifter';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Sidste 30 dage';

  @override
  String get quickActions => 'Hurtige handlinger';

  @override
  String get addIncome => 'Tilføj indtægt';

  @override
  String get addExpense => 'Tilføj udgift';

  @override
  String get spendingOverview => 'Forbrugsoversigt';

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
  String get filterIncome => 'Indtægt';

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
      'Prøv en anden søgning eller et andet filter for at se mere af din aktivitet.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaktioner',
      one: '1 transaktion',
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
  String get noteHint => 'Valgfri note';

  @override
  String get saveIncome => 'Gem indtægt';

  @override
  String get saveExpense => 'Gem udgift';

  @override
  String get selectCategory => 'Vælg kategori';

  @override
  String get transactionSaved => 'Transaktion gemt';

  @override
  String get amountRequired => 'Indtast et beløb større end nul';

  @override
  String get titleRequired => 'Giv denne transaktion et navn';

  @override
  String get descriptionLabel => 'Beskrivelse';

  @override
  String get descriptionHint => 'f.eks. Dagligvarer';

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
  String get onTrack => 'På rette spor';

  @override
  String get approachingLimit => 'Nærmer sig grænsen';

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
  String get monthlyContribution => 'Månedligt';

  @override
  String get addFunds => 'Tilføj midler';

  @override
  String get goalComplete => 'Mål nået';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count måneder tilbage',
      one: '1 måned tilbage',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lån og gæld';

  @override
  String get totalOutstanding => 'Samlet udestående';

  @override
  String get monthlyPayment => 'Månedligt';

  @override
  String get nextPayment => 'Næste betaling';

  @override
  String paidOff(int percent) {
    return '$percent% betalt';
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
      other: 'Forfalder om $count dage',
      one: 'Forfalder i morgen',
      zero: 'Forfalder i dag',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Forsinket';

  @override
  String get reports => 'Rapporter';

  @override
  String get week => 'Uge';

  @override
  String get month => 'Måned';

  @override
  String get quarter => 'Kvartal';

  @override
  String get incomeVsExpenses => 'Indtægter vs. udgifter';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get budgetPerformance => 'Budgetoverholdelse';

  @override
  String get insights => 'Indsigter';

  @override
  String get savingsRate => 'Opsparingsrate';

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
  String get preferences => 'Præferencer';

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
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Lyst';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get settings => 'Indstillinger';

  @override
  String get noNotificationsTitle => 'Du er helt opdateret';

  @override
  String get noNotificationsBody => 'Nye indsigter og påmindelser vises her.';

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
  String get comingSoon => 'Kommer snart i den fulde version';

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
  String get nameRequired => 'Indtast dit navn';

  @override
  String get amountAboveZero => 'Indtast et beløb større end nul';

  @override
  String get editTransaction => 'Rediger transaktion';

  @override
  String get deleteTransaction => 'Slet transaktion?';

  @override
  String deleteTransactionBody(String title) {
    return '$title vil blive fjernet fra din oversigt.';
  }

  @override
  String get transactionDeleted => 'Transaktion slettet';

  @override
  String get transactionUpdated => 'Transaktion opdateret';

  @override
  String get newBudget => 'Nyt budget';

  @override
  String get editBudget => 'Rediger budget';

  @override
  String get budgetLimit => 'Månedlig grænse';

  @override
  String get deleteBudget => 'Slet budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budgettet for $category vil blive fjernet. Dine transaktioner påvirkes ikke.';
  }

  @override
  String get budgetSaved => 'Budget gemt';

  @override
  String get budgetDeleted => 'Budget slettet';

  @override
  String get allCategoriesBudgeted => 'Alle kategorier har allerede et budget';

  @override
  String get noBudgetsTitle => 'Ingen budgetter endnu';

  @override
  String get noBudgetsBody =>
      'Sæt en månedlig grænse på en kategori for at begynde at spore den.';

  @override
  String get newGoal => 'Nyt mål';

  @override
  String get editGoal => 'Rediger mål';

  @override
  String get goalName => 'Navn på mål';

  @override
  String get goalNameHint => 'f.eks. Nødfond';

  @override
  String get targetAmount => 'Målbeløb';

  @override
  String get alreadySaved => 'Allerede opsparet';

  @override
  String get deleteGoal => 'Slet mål?';

  @override
  String deleteGoalBody(String name) {
    return '$name og dets fremskridt vil blive fjernet.';
  }

  @override
  String get goalSaved => 'Mål gemt';

  @override
  String get goalDeleted => 'Mål slettet';

  @override
  String get noGoalsTitle => 'Ingen opsparingsmål endnu';

  @override
  String get noGoalsBody => 'Sæt et mål, så sporer RainyPenny dine fremskridt.';

  @override
  String get fundsAdded => 'Beløb tilføjet';

  @override
  String get newDebt => 'Nyt lån eller kreditkort';

  @override
  String get editDebt => 'Rediger lån';

  @override
  String get debtName => 'Navn';

  @override
  String get debtNameHint => 'f.eks. Billån';

  @override
  String get lender => 'Långiver';

  @override
  String get lenderHint => 'f.eks. Danske Bank';

  @override
  String get originalAmount => 'Oprindeligt beløb';

  @override
  String get creditLimit => 'Kreditgrænse';

  @override
  String get remainingBalance => 'Resterende saldo';

  @override
  String get interestRatePercent => 'Rentesats (%)';

  @override
  String get kindLoan => 'Lån';

  @override
  String get kindCreditCard => 'Kreditkort';

  @override
  String get recordPayment => 'Registrer betaling';

  @override
  String get paymentRecorded => 'Betaling registreret';

  @override
  String get deleteDebt => 'Slet denne gæld?';

  @override
  String deleteDebtBody(String name) {
    return '$name vil blive fjernet fra din gældsoversigt.';
  }

  @override
  String get debtSaved => 'Gemt';

  @override
  String get debtDeleted => 'Slettet';

  @override
  String get noDebtsTitle => 'Ingen gæld spores';

  @override
  String get noDebtsBody =>
      'Tilføj et lån eller et kreditkort for at holde øje med afbetalinger.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget for $subject overskredet';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du er $amount over dit budget for $subject i denne periode.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject er tæt på sin grænse';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Dit budget for $subject er $percent% brugt, med $amount tilbage.';
  }

  @override
  String get insightOverIncomeTitle => 'Forbruget overstiger indtægten';

  @override
  String get insightOverIncomeBody =>
      'Du har brugt mere, end du har tjent i denne periode. Gennemgå dine største kategorier for at genskabe balancen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Forbruget på $subject er steget';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Dit forbrug på $subject er $percent% højere end i forrige periode.';
  }

  @override
  String get insightTrendDownTitle => 'Forbruget er faldende';

  @override
  String insightTrendDownBody(int percent) {
    return 'Det samlede forbrug er $percent% lavere end i forrige periode.';
  }

  @override
  String get insightTrendUpTitle => 'Forbruget er stigende';

  @override
  String insightTrendUpBody(int percent) {
    return 'Det samlede forbrug er $percent% højere end i forrige periode.';
  }

  @override
  String get insightSavingsStrongTitle => 'Flot opsparing i denne periode';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du beholdt $percent% af din indtægt – et godt stykke over målet på $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Opsparingsraten er under målet';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Du beholdt $percent% af din indtægt i denne periode. Sigt efter $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject er næsten fuldført';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Kun $amount tilbage for at nå målet for $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'På rette spor mod $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months måneder',
      one: '1 måned',
    );
    return 'Med $amount om måneden når du dette mål om $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Betaling for $subject er forsinket';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage',
      one: '1 dag',
    );
    return 'Betalingen for $subject på $amount er forsinket med $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Betaling for $subject forfalder snart';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dage',
      one: 'i morgen',
      zero: 'i dag',
    );
    return '$amount forfalder $_temp0.';
  }

  @override
  String get signIn => 'Log ind';

  @override
  String get signUp => 'Opret konto';

  @override
  String get signInSubtitle => 'Velkommen tilbage. Dit overblik venter på dig.';

  @override
  String get signUpSubtitle => 'Et par oplysninger, og så er du i gang.';

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
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Glemt adgangskode?';

  @override
  String get resetSent => 'Tjek din indbakke for et nulstillingslink';

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
  String get insightWeeklySummaryTitle => 'Din uge i overblik';

  @override
  String get insightWeeklySummaryBody =>
      'Se, hvad dine penge gik til i denne uge, og hvordan dine budgetter holder.';

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
  String get savingsUpdates => 'Opsparingsopdateringer';

  @override
  String get savingsUpdatesBody => 'Fremskridt mod dine mål';

  @override
  String get weeklySummaryLabel => 'Ugentlig oversigt';

  @override
  String get weeklySummaryBody => 'Et overblik over den forgangne uge';

  @override
  String get scheduleSection => 'Tidspunkt';

  @override
  String get reminderTime => 'Tidspunkt for påmindelse';

  @override
  String get quietHours => 'Stilletid';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dag for oversigt';

  @override
  String get permissionRequired => 'Notifikationer er slået fra';

  @override
  String get permissionRequiredBody =>
      'Tillad notifikationer, så RainyPenny kan advare dig, før et budget eller en betaling løber løbsk.';

  @override
  String get allowNotifications => 'Tillad notifikationer';

  @override
  String get permissionDenied =>
      'Notifikationer er blokeret. Du kan slå dem til i enhedens indstillinger.';

  @override
  String get upcomingAlerts => 'Planlagte';

  @override
  String get noScheduledAlerts => 'Intet planlagt lige nu';

  @override
  String get noScheduledAlertsBody =>
      'Advarsler vises her, når dine budgetter og betalinger nærmer sig deres grænser.';

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
  String get quickActionsTitle => 'Hvad vil du gerne gøre?';

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
      'Tip: Hold + nede for at registrere en udgift med det samme';

  @override
  String get searchCurrencies => 'Søg efter valutaer';

  @override
  String get noCurrenciesFound => 'Ingen valutaer fundet';

  @override
  String get noCurrenciesFoundMessage =>
      'Prøv en anden kode, et andet symbol eller navn.';

  @override
  String get popularCurrencies => 'Populære';

  @override
  String get allCurrencies => 'Alle valutaer';

  @override
  String get totalLoanAmount => 'Samlet lånebeløb';

  @override
  String get installmentAmount => 'Afdragsbeløb';

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
  String get paymentDueDate => 'Forfaldsdato for betaling';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Den $day. i hver måned';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'På rette spor';

  @override
  String get statusDueSoon => 'Forfalder snart';

  @override
  String get statusOverdue => 'Forsinket';

  @override
  String get statusCompleted => 'Indfriet';

  @override
  String get repaymentProgress => 'Afbetalingsfremskridt';

  @override
  String get byAmount => 'Efter beløb';

  @override
  String get byInstallments => 'Efter afdrag';

  @override
  String get startDate => 'Startdato';

  @override
  String get openEnded => 'Tidsubegrænset';

  @override
  String get loanDetails => 'Låneoplysninger';

  @override
  String get notSet => 'Ikke angivet';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject forfalder i dag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Din betaling på $amount forfalder i dag. Et hurtigt tryk sikrer rettidig betaling.';
  }

  @override
  String get remindMorningTitle => 'Godmorgen ☀️';

  @override
  String get remindMorningBody =>
      'Start dagen med overblik over dine penge. Er der noget at tilføje fra i går?';

  @override
  String get remindNoonTitle => 'Middagstjek';

  @override
  String get remindNoonBody =>
      'Frokost, kaffe eller en billet? Tilføj det på få sekunder.';

  @override
  String get remindAfternoonTitle => 'Hurtig opfølgning';

  @override
  String get remindAfternoonBody =>
      'Registrer, hvad du har brugt indtil videre, og hold dagen opdateret.';

  @override
  String get remindEveningTitle => 'Afrunding på dagen';

  @override
  String get remindEveningBody =>
      'To minutter nu, og dagens tal er fuldstændige.';

  @override
  String get happyWeekendTitle => 'God weekend! 🎉';

  @override
  String get happyWeekendBody =>
      'Nyd den – og hold et lille øje med weekendforbruget.';

  @override
  String get dailyReminders => 'Daglige udgiftspåmindelser';

  @override
  String get dailyRemindersBody =>
      'Venlige påmindelser om at holde dine udgifter opdaterede';

  @override
  String get weekendGreeting => 'Weekenthilsen';

  @override
  String get weekendGreetingBody =>
      'En venlig hilsen ved starten af din weekend';

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
  String get generatedOn => 'Genereret den';

  @override
  String get reportDisclaimer =>
      'Genereret af RainyPenny ud fra dine egne optegnelser.';

  @override
  String pageOf(int page, int total) {
    return 'Side $page af $total';
  }

  @override
  String get overview => 'Oversigt';

  @override
  String get description => 'Beskrivelse';

  @override
  String get totalIncome => 'Samlet indtægt';

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
  String get progress => 'Fremskridt';

  @override
  String get paidOffShort => 'Afbetalt';

  @override
  String get transactions => 'Transaktioner';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'og $count transaktioner mere',
      one: 'og 1 transaktion mere',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksporter PDF';

  @override
  String get sharePdf => 'Del rapport';

  @override
  String get preparingReport => 'Forbereder din rapport…';

  @override
  String get reportReady => 'Rapport klar';

  @override
  String get reportFailed => 'Kunne ikke oprette rapporten';

  @override
  String get categories => 'Kategorier';

  @override
  String get categoriesIntro =>
      'Tilføj dine egne kategorier for at registrere indtægter og udgifter præcis, som det passer dig.';

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
  String get categoryNameHint => 'f.eks. Kæledyr';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori gemt';

  @override
  String get categoryDeleted => 'Kategori slettet';

  @override
  String get deleteCategory => 'Slet denne kategori?';

  @override
  String deleteCategoryBody(String name) {
    return '$name vil blive fjernet fra dine kategorier.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster bruger stadig denne kategori',
      one: '1 post bruger stadig denne kategori',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Intet her endnu.';

  @override
  String get builtIn => 'Indbygget';

  @override
  String get manageCategories => 'Administrer kategorier';

  @override
  String get expense => 'Udgift';

  @override
  String get languageNote =>
      'Arabisk, urdu, farsi og hebraisk skifter hele brugerfladen til højre-mod-venstre, herunder diagrammer og PDF-rapporter.';

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
  String get confirmPasswordLabel => 'Bekræft adgangskode';

  @override
  String get passwordsDoNotMatch => 'Begge adgangskoder skal matche';

  @override
  String get showPassword => 'Vis adgangskode';

  @override
  String get hidePassword => 'Skjul adgangskode';

  @override
  String get savePassword => 'Gem adgangskode';

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
  String get acceptTermsRequired => 'Accepter venligst for at fortsætte';

  @override
  String get passwordStrengthTooShort => 'For kort';

  @override
  String get passwordStrengthWeak => 'Svag';

  @override
  String get passwordStrengthFair => 'Middelmådig';

  @override
  String get passwordStrengthGood => 'God';

  @override
  String get passwordStrengthStrong => 'Stærk';

  @override
  String get passwordAdvice =>
      'En lang sætning, du kan huske, er bedre end en kort fuld af symboler. Undgå noget, du allerede bruger andre steder.';

  @override
  String get authInvalidCredentials =>
      'Denne e-mail og adgangskode matcher ikke en konto';

  @override
  String get authEmailNotConfirmed =>
      'Bekræft din e-mailadresse før du logger ind';

  @override
  String get authEmailAlreadyRegistered =>
      'En konto med denne e-mail findes allerede';

  @override
  String get authWeakPassword => 'Vælg en længere adgangskode';

  @override
  String get authRateLimited =>
      'For mange forsøg. Prøv igen om et par minutter';

  @override
  String get authNetworkError =>
      'Ingen forbindelse. Tjek dit netværk, og prøv igen';

  @override
  String get authGenericError => 'Noget gik galt. Prøv venligst igen';

  @override
  String get confirmEmailTitle => 'Tjek din e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Vi har sendt et bekræftelseslink til $email. Åbn det for at fuldføre oprettelsen af din konto.';
  }

  @override
  String get resendConfirmation => 'Gensend bekræftelses-e-mail';

  @override
  String get confirmationResent => 'Bekræftelses-e-mail sendt';

  @override
  String get forgotPasswordTitle => 'Nulstil din adgangskode';

  @override
  String get forgotPasswordSubtitle =>
      'Indtast den e-mail, du tilmeldte dig med, så sender vi dig et link til at vælge en ny adgangskode.';

  @override
  String get sendResetLink => 'Send nulstillingslink';

  @override
  String get resetLinkSentTitle => 'Nulstillingslink sendt';

  @override
  String resetLinkSentBody(String email) {
    return 'Hvis $email har en konto, er et nulstillingslink på vej.';
  }

  @override
  String get resetLinkSentHint =>
      'Linket udløber om en time. Hvis det ikke dukker op, så tjek din spammappe, før du anmoder om et nyt.';

  @override
  String get tryAnotherEmail => 'Brug en anden e-mail';

  @override
  String get resetPasswordTitle => 'Vælg en ny adgangskode';

  @override
  String get resetPasswordSubtitle =>
      'Vælg noget, du ikke har brugt på denne konto før.';

  @override
  String get passwordChangedTitle => 'Adgangskode opdateret';

  @override
  String get passwordChangedBody =>
      'Din nye adgangskode er gemt. Du er logget ind og klar til at fortsætte.';

  @override
  String get demoModeHint => 'Demo-version – ingen konto påkrævet';

  @override
  String get demoModeFill => 'Udfyld';

  @override
  String get welcomeTrackTitle => 'Se, hvor dine penge bliver af';

  @override
  String get welcomeTrackBody =>
      'Registrer, hvad der kommer ind, og hvad der går ud. RainyPenny gør det til et overblik, du rent faktisk kan forstå.';

  @override
  String get welcomeBudgetTitle => 'Sæt grænser, der holder';

  @override
  String get welcomeBudgetBody =>
      'Giv hver del af dit forbrug et månedligt loft, og få besked før du overskrider det frem for bagefter.';

  @override
  String get welcomeGoalsTitle => 'Spar op til det, der betyder noget';

  @override
  String get welcomeGoalsBody =>
      'Navngiv et mål, sæt et beløb, og se det vokse. En opsparing til uforudsete udgifter er lettere at opbygge, når du kan se den.';

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
      'Vi bruger det kun til at hilse på dig og ingen andre steder.';

  @override
  String get onboardingNameHint =>
      'Et fornavn er rigeligt. Du kan ændre det senere.';

  @override
  String get onboardingCurrencyTitle => 'Hvilken valuta bruger du?';

  @override
  String get onboardingCurrencyBody =>
      'Alle beløb i appen vises i denne valuta. Valget konverterer ikke noget.';

  @override
  String get onboardingCurrencySearch => 'Søg i alle valutaer';

  @override
  String get onboardingAppearanceTitle => 'Gør den til din egen';

  @override
  String get onboardingAppearanceBody =>
      'Vælg et udtryk. Alt ændrer sig, når du trykker, og du kan altid vende tilbage til det.';

  @override
  String get onboardingNotificationsTitle => 'Hold dig opdateret';

  @override
  String get onboardingNotificationsBody =>
      'Et venligt prik på det rette tidspunkt er det, der gør dette til en vane.';

  @override
  String get onboardingNotifyReminders =>
      'En venlig påmindelse om at registrere dit forbrug';

  @override
  String get onboardingNotifyBudget => 'Et praj inden et budget slipper op';

  @override
  String get onboardingNotifySummary =>
      'En ugentlig oversigt over, hvor dine penge gik hen';

  @override
  String get onboardingNotifyEnable => 'Slå notifikationer til';

  @override
  String get onboardingNotifyDone => 'Notifikationsindstillinger gemt';

  @override
  String get onboardingNotifyLater =>
      'Du kan altid ændre alt dette i Indstillinger.';

  @override
  String get onboardingReadyTitle => 'Du er helt klar';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Du er helt klar, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Det var opsætningen. Vil du have en hurtig rundvisning i, hvordan det hele fungerer?';

  @override
  String get onboardingTakeTour => 'Vis mig rundt';

  @override
  String get onboardingGoToApp => 'Gå til appen';

  @override
  String get onboardingTourLater =>
      'Ikke nu? Guiden findes altid i Indstillinger.';

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
  String get guideDashboardTitle => 'Dit kontrolpanel';

  @override
  String get guideDashboardBody =>
      'Alt starter her. Kortet øverst viser, hvad du har tilbage; herunder ses hvad der kom ind og gik ud i perioden, efterfulgt af dit forbrug, budgetter og mål.';

  @override
  String get guideDashboardTip1 =>
      'Træk nedad på skærmen for at opdatere alt på én gang.';

  @override
  String get guideDashboardTip2 =>
      'Tryk på indtægts- eller udgiftskortet for at springe til listen.';

  @override
  String get guideDashboardTip3 =>
      'Cirklerne og indsigterne opdateres i samme øjeblik, du registrerer noget.';

  @override
  String get guideAddTitle => 'Registrering af penge';

  @override
  String get guideAddBody =>
      'Knappen i midten af bjælken er der, hvor det hele begynder. Den åbner en hurtig menu: udgift, indtægt, lån, budget eller et opsparingsmål.';

  @override
  String get guideAddTip1 =>
      'Tryk på midterknappen for at registrere indtægter eller udgifter.';

  @override
  String get guideAddTip2 =>
      'Hold den nede for at gå direkte til en ny udgift og springe menuen over.';

  @override
  String get guideAddTip3 =>
      'Vælg altid en kategori – det er det, der får diagrammer og budgetter til at fungere.';

  @override
  String get guideCategoriesTitle => 'Kategorier';

  @override
  String get guideCategoriesBody =>
      'Kategorier er den måde, forbrug grupperes på. Dem, der følger med appen, dækker de flestes behov, og du kan omdøbe dem eller tilføje dine egne.';

  @override
  String get guideCategoriesTip1 =>
      'Gå til Indstillinger og derefter Administrer kategorier for at ændre eller tilføje en.';

  @override
  String get guideCategoriesTip2 =>
      'Alt, der efterlades ukategoriseret, lander i Andet, så oversigterne forbliver retvisende.';

  @override
  String get guideBudgetTitle => 'Budgetter';

  @override
  String get guideBudgetBody =>
      'Et budget er et månedligt loft for en kategori. Bjælken fyldes op i takt med, at du bruger penge, og skifter farve, når grænsen nærmer sig.';

  @override
  String get guideBudgetTip1 =>
      'Start med to eller tre kategorier frem for alle på én gang.';

  @override
  String get guideBudgetTip2 =>
      'Sæt grænsen en smule over dit normale forbrug, og stram den derefter ind.';

  @override
  String get guideBudgetTip3 =>
      'Lad budgetadvarsler være slået til, så appen advarer dig i god tid.';

  @override
  String get guideSavingsTitle => 'Opsparingsmål';

  @override
  String get guideSavingsBody =>
      'Angiv hvad du sparer op til, fastsæt et mål og en dato, hvorefter appen beregner, hvad du skal lægge til side hver måned.';

  @override
  String get guideSavingsTip1 =>
      'Et navngivet mål er nemmere at fastholde end en vag hensigt om at spare op.';

  @override
  String get guideSavingsTip2 =>
      'Flere små mål fuldføres oftere end ét stort mål.';

  @override
  String get guideLoansTitle => 'Gæld og lån';

  @override
  String get guideLoansBody =>
      'Registrer hvad du skylder, hvad det koster, og hvornår næste betaling forfalder. Alt samles på én overskuelig liste med det samlede restbeløb.';

  @override
  String get guideLoansTip1 =>
      'Tilføj forfaldsdatoen, så hjælper betalingspåmindelser dig med at huske den.';

  @override
  String get guideLoansTip2 =>
      'Gæld markeret som forsinket vises med rødt på kontrolpanelet, indtil den er betalt.';

  @override
  String get guideReportsTitle => 'Rapporter';

  @override
  String get guideReportsBody =>
      'Det dybdegående indblik: indtægter mod udgifter, forbrug efter kategori, overholdelse af budgetter og hvor stor en del af din indtægt, du beholdt.';

  @override
  String get guideReportsTip1 =>
      'Skift mellem uge, måned og kvartal øverst på skærmen.';

  @override
  String get guideReportsTip2 =>
      'Eksporter eller del en PDF – den genereres på dit eget sprog og læseretning.';

  @override
  String get guideSettingsTitle => 'Indstillinger';

  @override
  String get guideSettingsBody =>
      'Sprog, valuta, farver og advarsler findes her, og intet er fastlåst – du kan ændre det hele når som helst.';

  @override
  String get guideSettingsTip1 =>
      'Fyrre sprog understøttes, og hele layoutet spejlvendes for højre-mod-venstre-sprog.';

  @override
  String get guideSettingsTip2 =>
      'Vælg hvilke advarsler du ønsker, samt i hvilket tidsrum de må ankomme.';

  @override
  String get guideSettingsTip3 =>
      'Stilletid holder alle notifikationer tilbage indtil om morgenen.';

  @override
  String get guideHabitTitle => 'Gør det til en vane';

  @override
  String get guideHabitBody =>
      'Appen er kun så god som de data, du indtaster. Et minut om dagen slår en time en gang om måneden, og efter to uger begynder tallene for alvor at give mening.';

  @override
  String get guideHabitTip1 =>
      'Registrer dit forbrug løbende frem for ved ugens udgang.';

  @override
  String get guideHabitTip2 =>
      'Kast et hurtigt blik på kontrolpanelet én gang om dagen. Ti sekunder er nok.';

  @override
  String get guideHabitTip3 =>
      'Denne guide forbliver i Indstillinger – vend tilbage til den, når du har lyst.';

  @override
  String get appearance => 'Udseende';

  @override
  String get themeCaption => 'Lyst, mørkt eller det samme som din telefon.';

  @override
  String get accentColor => 'Accentfarve';

  @override
  String get accentColorCaption =>
      'Giver farve til knapper, fremhævninger og diagrammer.';

  @override
  String get accentSemanticsNote =>
      'Indtægter og udgifter bevarer altid deres egne farver i alle temaer, så et tal aldrig skifter betydning, fordi du ændrer tema.';

  @override
  String get accentTeal => 'Blågrøn';

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
  String get accentPink => 'Lyserød';

  @override
  String get accentCrimson => 'Karmoisinrød';

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
      'Prøv navnet på engelsk eller den to-bogstavede kode.';

  @override
  String get rightToLeft => 'Højre mod venstre';

  @override
  String get replayGuide => 'Gense guiden';

  @override
  String get replaySetup => 'Kør opsætning igen';

  @override
  String get replaySetupBody =>
      'Gennemgå introduktionsspørgsmålene igen. Intet af det, du har registreret, bliver slettet.';

  @override
  String get rateTitle => 'Er du glad for RainyPenny?';

  @override
  String get rateBody =>
      'Du har brugt appen i et stykke tid nu. En anmeldelse tager kun et øjeblik og hjælper andre med at finde appen.';

  @override
  String get rateAction => 'Bedøm appen';

  @override
  String get rateLater => 'Måske senere';

  @override
  String get rateNever => 'Nej tak';

  @override
  String get rateThanks => 'Mange tak';

  @override
  String get monthlySalary => 'Månedsløn';

  @override
  String get remainingAmount => 'Tilbage';

  @override
  String get carriedForward => 'Overført';

  @override
  String get carriedForwardHint => 'Til overs fra sidste cyklus';

  @override
  String get totalSpending => 'Samlet forbrug';

  @override
  String get salaryCycle => 'Løncyklus';

  @override
  String get payday => 'Lønningsdag';

  @override
  String get paydayDescription =>
      'Dagen din løn udbetales. Din økonomiske måned løber fra denne dag og frem til dagen før den næste udbetaling.';

  @override
  String get paydayUpdated => 'Lønningsdag opdateret';

  @override
  String paydayDayOfMonth(int day) {
    return 'Den $day.';
  }

  @override
  String get paydayShortMonthNote =>
      'I kortere måneder starter cyklussen på månedens sidste dag i stedet.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage til lønningsdag',
      one: '1 dag til lønningsdag',
      zero: 'Sidste dag i cyklussen',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Næste lønningsdag';

  @override
  String get spentSoFar => 'Brugt indtil videre';

  @override
  String get dailyAllowance => 'Sikkert dagligt rådighedsbeløb';

  @override
  String get overspentNotice =>
      'Du har brugt mere, end der er kommet ind i denne cyklus.';

  @override
  String get backToThisMonth => 'Tilbage til denne måned';

  @override
  String get cycleRangeLabel => 'Cyklus';

  @override
  String get noSalaryRecorded => 'Ingen løn registreret endnu';

  @override
  String get addSalaryAction => 'Tilføj din løn';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Fremragende';

  @override
  String get healthGood => 'God';

  @override
  String get healthFair => 'Middelmådig';

  @override
  String get healthNeedsWork => 'Kræver forbedring';

  @override
  String get healthExcellentBody =>
      'Du sparer flot op og overholder dine budgetter.';

  @override
  String get healthGoodBody =>
      'Du er på rette spor med dit forbrug i denne periode.';

  @override
  String get healthFairBody =>
      'Et par budgetter er pressede. Små justeringer vil hjælpe.';

  @override
  String get healthNeedsWorkBody =>
      'Forbruget overstiger planen. Start med din største udgiftskategori.';

  @override
  String get factorSavingsRate => 'Opsparingsrate';

  @override
  String get factorBudgetControl => 'Budgetkontrol';

  @override
  String get factorDebtLoad => 'Gældsbyrde';

  @override
  String get factorSpendingTrend => 'Forbrugstendens';

  @override
  String factorKept(String percent) {
    return '$percent% beholdt';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% brugt';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% af indtægt';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% op';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% ned';
  }

  @override
  String get howScoreWorks => 'Sådan fungerer denne score';

  @override
  String get healthScoreExplainer =>
      'Din score kombinerer fire ting: hvor meget af din indtægt du beholder, hvor godt du overholder dine budgetter, hvor stor en del af din indtægt der går til gæld, samt om dit forbrug er stigende eller faldende.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% af den samlede score';
  }

  @override
  String get viewHealthDetails => 'Se oversigten';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get profileUpdated => 'Profil opdateret';

  @override
  String get changePhoto => 'Skift billede';

  @override
  String get removePhoto => 'Fjern billede';

  @override
  String get personalInformationIntro =>
      'Dit navn og billede vises på tværs af appen. Din e-mail er den adresse, du logger ind med.';

  @override
  String get emailNotEditable =>
      'Kontakt support for at ændre den e-mailadresse, du logger ind med.';

  @override
  String get pressBackAgainToExit => 'Tryk tilbage igen for at afslutte';

  @override
  String get categoryHousing => 'Bolig';

  @override
  String get categoryFood => 'Mad og drikke';

  @override
  String get categoryTransport => 'Transport';

  @override
  String get categoryShopping => 'Indkøb';

  @override
  String get categoryBills => 'Regninger og forsyning';

  @override
  String get categoryEntertainment => 'Underholdning';

  @override
  String get categoryHealth => 'Sundhed og fitness';

  @override
  String get categoryEducation => 'Uddannelse';

  @override
  String get categoryTravel => 'Rejser';

  @override
  String get categorySalary => 'Løn';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investeringer';

  @override
  String get categoryGift => 'Gave';

  @override
  String get categoryOther => 'Andet';

  @override
  String get categoryGroceries => 'Dagligvarer';

  @override
  String get categoryDining => 'Restaurantbesøg';

  @override
  String get categoryCoffee => 'Kaffe';

  @override
  String get categoryUtilities => 'Forsyning';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Forsikring';

  @override
  String get categorySubscriptions => 'Abonnementer';

  @override
  String get categoryPersonalCare => 'Personlig pleje';

  @override
  String get categoryClothing => 'Tøj';

  @override
  String get categoryElectronics => 'Elektronik';

  @override
  String get categoryHomeSupplies => 'Husholdningsartikler';

  @override
  String get categoryPets => 'Kæledyr';

  @override
  String get categoryChildcare => 'Børnepasning';

  @override
  String get categoryFamily => 'Familie';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Medicin';

  @override
  String get categoryMedical => 'Lægehjælp';

  @override
  String get categoryCharity => 'Velgørenhed';

  @override
  String get categoryTaxes => 'Skat';

  @override
  String get categoryFees => 'Gebyrer';

  @override
  String get categoryDebt => 'Gæld';

  @override
  String get categorySavings => 'Opsparing';

  @override
  String get categoryRepairs => 'Reparationer';

  @override
  String get categoryCarMaintenance => 'Bilvedligeholdelse';

  @override
  String get categoryFuel => 'Brændstof';

  @override
  String get categoryParking => 'Parkering';

  @override
  String get categoryPublicTransport => 'Offentlig transport';

  @override
  String get categoryRent => 'Husleje';

  @override
  String get categoryMortgage => 'Realkreditlån';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provision';

  @override
  String get categoryPension => 'Pension';

  @override
  String get categoryInterest => 'Renter';

  @override
  String get categoryDividends => 'Udbytte';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Refusion';

  @override
  String get categoryRentalIncome => 'Lejeindtægt';

  @override
  String get addCategory => 'Ny kategori';

  @override
  String get filterByCategory => 'Filtrer efter kategori';

  @override
  String get allCategories => 'Alle kategorier';

  @override
  String get clearFilters => 'Ryd filtre';

  @override
  String spentInCategory(String category, String amount) {
    return '$category · $amount';
  }

  @override
  String get allTime => 'Altid';

  @override
  String get customRange => 'Tilpasset';

  @override
  String get selectDateRange => 'Vælg en periode';

  @override
  String rangeApplied(String start, String end) {
    return 'Viser $start – $end';
  }

  @override
  String get loans => 'Lån';

  @override
  String get debts => 'Gældsposter';

  @override
  String get noLoansTitle => 'Ingen lån';

  @override
  String get noLoansBody => 'Du har ingen aktive lån.';

  @override
  String get emptyHealthTitle => 'Ingen økonomisk score endnu';

  @override
  String get emptyHealthDescription =>
      'Vi skal bruge en smule økonomisk aktivitet, før vi kan beregne en nøjagtig sundhedsscore.';

  @override
  String get emptyHealthAddTransactions =>
      'Tilføj indtægts- eller udgiftstransaktioner';

  @override
  String get emptyHealthSetBudgets => 'Opret dine månedlige budgetter';

  @override
  String get emptyHealthTrackLoans => 'Spor lån eller gæld (valgfrit)';

  @override
  String get emptyHealthCardSubtitle =>
      'Tilføj transaktioner for at beregne din score og få indsigter.';

  @override
  String get smartBudgetSplit => 'Smart budgetfordeling';

  @override
  String get smartBudgetSplitSubtitle =>
      'Indtast din månedsløn for at beregne anbefalede grænser';

  @override
  String get monthlyNetSalary => 'Månedlig nettoløn';

  @override
  String get categoryAllocations => 'Kategorifordelinger';

  @override
  String totalBudgeted(String amount) {
    return 'I alt: $amount';
  }

  @override
  String get applyAllBudgets => 'Anvend alle budgetter';

  @override
  String get applyingBudgets => 'Anvender budgetter...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kategoribudgetter oprettet.',
      one: '1 kategoribudget oprettet.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Kunne ikke gemme budgetter.';

  @override
  String get recommendedBudget => 'Anbefalet budget';
}
