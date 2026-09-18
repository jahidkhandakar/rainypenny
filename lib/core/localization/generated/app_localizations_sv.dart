// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppL10nSv extends AppL10n {
  AppL10nSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Spara till en regnig dag';

  @override
  String get navHome => 'Hem';

  @override
  String get navTransactions => 'Transaktioner';

  @override
  String get navAdd => 'Lägg till';

  @override
  String get navReports => 'Rapporter';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'God morgon, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'God eftermiddag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'God kväll, $name';
  }

  @override
  String get greetingSubtitle => 'Så här ser din ekonomi ut';

  @override
  String get totalBalance => 'Totalt saldo';

  @override
  String get vsLastPeriod => 'mot föregående period';

  @override
  String get income => 'Inkomster';

  @override
  String get expenses => 'Utgifter';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Senaste 30 dagarna';

  @override
  String get quickActions => 'Snabbåtgärder';

  @override
  String get addIncome => 'Lägg till inkomst';

  @override
  String get addExpense => 'Lägg till utgift';

  @override
  String get spendingOverview => 'Utgiftsöversikt';

  @override
  String get recentTransactions => 'Senaste transaktionerna';

  @override
  String get seeAll => 'Se alla';

  @override
  String get viewAll => 'Visa alla';

  @override
  String get budgetProgress => 'Budgetläge';

  @override
  String get savingsGoals => 'Sparmål';

  @override
  String get financialInsight => 'Ekonomisk insikt';

  @override
  String get financialHealth => 'Ekonomisk hälsa';

  @override
  String ofTotal(String total) {
    return 'av $total';
  }

  @override
  String get searchTransactions => 'Sök transaktioner';

  @override
  String get filterAll => 'Alla';

  @override
  String get filterIncome => 'Inkomster';

  @override
  String get filterExpenses => 'Utgifter';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get noTransactionsTitle => 'Inga transaktioner hittades';

  @override
  String get noTransactionsBody =>
      'Prova en annan sökning eller ett annat filter för att se fler poster.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaktioner',
      one: '$count transaktion',
      zero: 'Inga transaktioner',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Lägg till transaktion';

  @override
  String get amount => 'Belopp';

  @override
  String get category => 'Kategori';

  @override
  String get date => 'Datum';

  @override
  String get note => 'Anteckning';

  @override
  String get noteHint => 'Anteckning (valfritt)';

  @override
  String get saveIncome => 'Spara inkomst';

  @override
  String get saveExpense => 'Spara utgift';

  @override
  String get selectCategory => 'Välj kategori';

  @override
  String get transactionSaved => 'Transaktionen sparad';

  @override
  String get amountRequired => 'Ange ett belopp större än noll';

  @override
  String get titleRequired => 'Ge den här transaktionen ett namn';

  @override
  String get descriptionLabel => 'Beskrivning';

  @override
  String get descriptionHint => 't.ex. matvaror';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgetar';

  @override
  String get totalBudget => 'Total budget';

  @override
  String get spent => 'Använt';

  @override
  String get remaining => 'Kvar';

  @override
  String budgetUsed(int percent) {
    return '$percent% använt';
  }

  @override
  String get onTrack => 'Enligt plan';

  @override
  String get approachingLimit => 'Nära gränsen';

  @override
  String get overBudget => 'Över budget';

  @override
  String get savings => 'Sparande';

  @override
  String get yourGoals => 'Dina mål';

  @override
  String get saved => 'Sparat';

  @override
  String get target => 'Mål';

  @override
  String get monthlyContribution => 'Per månad';

  @override
  String get addFunds => 'Sätt in pengar';

  @override
  String get goalComplete => 'Målet är nått';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count månader kvar',
      one: '$count månad kvar',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lån och skulder';

  @override
  String get totalOutstanding => 'Totalt kvar att betala';

  @override
  String get monthlyPayment => 'Per månad';

  @override
  String get nextPayment => 'Nästa betalning';

  @override
  String paidOff(int percent) {
    return '$percent% avbetalat';
  }

  @override
  String get interestRate => 'Ränta';

  @override
  String get upcomingPayments => 'Kommande betalningar';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Om $count dagar',
      one: 'Om $count dag',
      zero: 'Förfaller i dag',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Förfallen';

  @override
  String get reports => 'Rapporter';

  @override
  String get week => 'Vecka';

  @override
  String get month => 'Månad';

  @override
  String get quarter => 'Kvartal';

  @override
  String get incomeVsExpenses => 'Inkomster mot utgifter';

  @override
  String get spendingByCategory => 'Utgifter per kategori';

  @override
  String get budgetPerformance => 'Budgetutfall';

  @override
  String get insights => 'Insikter';

  @override
  String get savingsRate => 'Sparkvot';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Personuppgifter';

  @override
  String get changePassword => 'Byt lösenord';

  @override
  String get notifications => 'Aviseringar';

  @override
  String get preferences => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get currency => 'Valuta';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Säkerhet';

  @override
  String get privacyAndSecurity => 'Integritet och säkerhet';

  @override
  String get help => 'Hjälp';

  @override
  String get helpAndSupport => 'Hjälp och support';

  @override
  String get termsAndConditions => 'Villkor';

  @override
  String get logOut => 'Logga ut';

  @override
  String memberSince(String date) {
    return 'Medlem sedan $date';
  }

  @override
  String get themeSystem => 'Följ systemet';

  @override
  String get themeLight => 'Ljust';

  @override
  String get themeDark => 'Mörkt';

  @override
  String get settings => 'Inställningar';

  @override
  String get noNotificationsTitle => 'Du är i fas';

  @override
  String get noNotificationsBody =>
      'Nya insikter och påminnelser dyker upp här.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get done => 'Klart';

  @override
  String get retry => 'Försök igen';

  @override
  String get close => 'Stäng';

  @override
  String get somethingWentWrong => 'Något gick fel';

  @override
  String get comingSoon => 'Kommer i den fullständiga versionen';

  @override
  String get edit => 'Redigera';

  @override
  String get delete => 'Ta bort';

  @override
  String get undo => 'Ångra';

  @override
  String get add => 'Lägg till';

  @override
  String get create => 'Skapa';

  @override
  String get nameRequired => 'Ge det ett namn';

  @override
  String get amountAboveZero => 'Ange ett belopp större än noll';

  @override
  String get editTransaction => 'Redigera transaktion';

  @override
  String get deleteTransaction => 'Ta bort transaktionen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title försvinner från dina noteringar.';
  }

  @override
  String get transactionDeleted => 'Transaktionen borttagen';

  @override
  String get transactionUpdated => 'Transaktionen uppdaterad';

  @override
  String get newBudget => 'Ny budget';

  @override
  String get editBudget => 'Redigera budget';

  @override
  String get budgetLimit => 'Månadsgräns';

  @override
  String get deleteBudget => 'Ta bort budgeten?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budgeten $category tas bort. Dina transaktioner påverkas inte.';
  }

  @override
  String get budgetSaved => 'Budgeten sparad';

  @override
  String get budgetDeleted => 'Budgeten borttagen';

  @override
  String get allCategoriesBudgeted => 'Alla kategorier har redan en budget';

  @override
  String get noBudgetsTitle => 'Inga budgetar än';

  @override
  String get noBudgetsBody =>
      'Sätt en månadsgräns på en kategori så börjar vi följa den.';

  @override
  String get newGoal => 'Nytt mål';

  @override
  String get editGoal => 'Redigera mål';

  @override
  String get goalName => 'Målets namn';

  @override
  String get goalNameHint => 't.ex. buffert';

  @override
  String get targetAmount => 'Målbelopp';

  @override
  String get alreadySaved => 'Redan sparat';

  @override
  String get deleteGoal => 'Ta bort målet?';

  @override
  String deleteGoalBody(String name) {
    return '$name och dess framsteg tas bort.';
  }

  @override
  String get goalSaved => 'Målet sparat';

  @override
  String get goalDeleted => 'Målet borttaget';

  @override
  String get noGoalsTitle => 'Inga sparmål än';

  @override
  String get noGoalsBody => 'Sätt ett mål så följer RainyPenny dina framsteg.';

  @override
  String get fundsAdded => 'Pengarna tillagda';

  @override
  String get newDebt => 'Nytt lån eller kort';

  @override
  String get editDebt => 'Redigera lån';

  @override
  String get debtName => 'Namn';

  @override
  String get debtNameHint => 't.ex. billån';

  @override
  String get lender => 'Långivare';

  @override
  String get lenderHint => 't.ex. Swedbank';

  @override
  String get originalAmount => 'Ursprungligt belopp';

  @override
  String get creditLimit => 'Kreditgräns';

  @override
  String get remainingBalance => 'Kvarvarande skuld';

  @override
  String get interestRatePercent => 'Räntesats (%)';

  @override
  String get kindLoan => 'Lån';

  @override
  String get kindCreditCard => 'Kreditkort';

  @override
  String get recordPayment => 'Registrera betalning';

  @override
  String get paymentRecorded => 'Betalningen registrerad';

  @override
  String get deleteDebt => 'Ta bort den här skulden?';

  @override
  String deleteDebtBody(String name) {
    return '$name försvinner från dina skulder.';
  }

  @override
  String get debtSaved => 'Sparat';

  @override
  String get debtDeleted => 'Borttaget';

  @override
  String get noDebtsTitle => 'Inga skulder följs';

  @override
  String get noDebtsBody =>
      'Lägg till ett lån eller kreditkort för att hålla koll på återbetalningarna.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budgeten $subject är överskriden';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Du ligger $amount över din $subject-budget den här perioden.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject närmar sig gränsen';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Din $subject-budget är använd till $percent%, $amount återstår.';
  }

  @override
  String get insightOverIncomeTitle => 'Utgifterna överstiger inkomsterna';

  @override
  String get insightOverIncomeBody =>
      'Den här perioden gjorde du av med mer än du tjänade. Gå igenom de största kategorierna för att få balans igen.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Utgifterna för $subject har ökat';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Dina utgifter för $subject är $percent% högre än föregående period.';
  }

  @override
  String get insightTrendDownTitle => 'Utgifterna sjunker';

  @override
  String insightTrendDownBody(int percent) {
    return 'De totala utgifterna är $percent% lägre än föregående period.';
  }

  @override
  String get insightTrendUpTitle => 'Utgifterna stiger';

  @override
  String insightTrendUpBody(int percent) {
    return 'De totala utgifterna är $percent% högre än föregående period.';
  }

  @override
  String get insightSavingsStrongTitle => 'Starkt sparande den här perioden';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Du behöll $percent% av inkomsten — väl över målet på $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Sparkvoten ligger under målet';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Den här perioden behöll du $percent% av inkomsten. Sikta på $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject är nästan i hamn';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Bara $amount kvar till $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject går enligt plan';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months månader',
      one: '$months månad',
    );
    return 'Med $amount i månaden når du målet om $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Betalningen för $subject är försenad';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagar',
      one: '$days dag',
    );
    return 'Betalningen på $amount för $subject är $_temp0 sen.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Betalningen för $subject närmar sig';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dagar',
      one: 'om $days dag',
      zero: 'i dag',
    );
    return '$amount ska betalas $_temp0.';
  }

  @override
  String get signIn => 'Logga in';

  @override
  String get signUp => 'Skapa konto';

  @override
  String get signInSubtitle => 'Välkommen tillbaka. Dina pengar väntar.';

  @override
  String get signUpSubtitle => 'Några uppgifter så är du igång.';

  @override
  String get emailLabel => 'E-post';

  @override
  String get emailHint => 'du@email.com';

  @override
  String get passwordLabel => 'Lösenord';

  @override
  String get passwordHint => 'Minst 8 tecken';

  @override
  String get fullNameLabel => 'Fullständigt namn';

  @override
  String get fullNameHint => 'Anna Lindqvist';

  @override
  String get forgotPassword => 'Glömt lösenordet?';

  @override
  String get resetSent => 'Kolla inkorgen efter återställningslänken';

  @override
  String get noAccountYet => 'Ny här?';

  @override
  String get haveAccount => 'Har du redan ett konto?';

  @override
  String get emailInvalid => 'Ange en giltig e-postadress';

  @override
  String get passwordTooShort => 'Använd minst 8 tecken';

  @override
  String get signOutConfirm => 'Logga ut?';

  @override
  String get signOutBody => 'Du behöver logga in igen för att se din ekonomi.';

  @override
  String get dataSource => 'Datakälla';

  @override
  String get insightWeeklySummaryTitle => 'Din vecka i korthet';

  @override
  String get insightWeeklySummaryBody =>
      'Se vart pengarna tog vägen den här veckan och hur budgetarna håller.';

  @override
  String get notificationSettings => 'Aviseringar';

  @override
  String get alertsSection => 'Varningar';

  @override
  String get budgetAlerts => 'Budgetvarningar';

  @override
  String get budgetAlertsBody =>
      'När en budget närmar sig eller passerar sin gräns';

  @override
  String get paymentReminders => 'Betalningspåminnelser';

  @override
  String get paymentRemindersBody => 'Några dagar innan en betalning förfaller';

  @override
  String get savingsUpdates => 'Sparnyheter';

  @override
  String get savingsUpdatesBody => 'Framsteg mot dina mål';

  @override
  String get weeklySummaryLabel => 'Veckosammanfattning';

  @override
  String get weeklySummaryBody => 'En sammanställning av veckan som gick';

  @override
  String get scheduleSection => 'Tidpunkt';

  @override
  String get reminderTime => 'Tid för påminnelse';

  @override
  String get quietHours => 'Tysta timmar';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dag för sammanfattning';

  @override
  String get permissionRequired => 'Aviseringar är avstängda';

  @override
  String get permissionRequiredBody =>
      'Tillåt aviseringar så kan RainyPenny varna dig innan en budget eller en betalning glider iväg.';

  @override
  String get allowNotifications => 'Tillåt aviseringar';

  @override
  String get permissionDenied =>
      'Aviseringar är blockerade. Du kan slå på dem i enhetens inställningar.';

  @override
  String get upcomingAlerts => 'Schemalagt';

  @override
  String get noScheduledAlerts => 'Inget är schemalagt just nu';

  @override
  String get noScheduledAlertsBody =>
      'Varningar dyker upp här när dina budgetar och betalningar närmar sig sina gränser.';

  @override
  String scheduledFor(String date) {
    return 'Schemalagd till $date';
  }

  @override
  String get everyWeek => 'Varje vecka';

  @override
  String get allNotificationsOff => 'Alla aviseringar är avstängda';

  @override
  String get needsAttention => 'Behöver uppmärksamhet';

  @override
  String get quickActionsTitle => 'Vad vill du göra?';

  @override
  String get createSection => 'Registrera';

  @override
  String get jumpToSection => 'Gå till';

  @override
  String get addLoanAction => 'Lägg till lån';

  @override
  String get addBudgetAction => 'Lägg till budget';

  @override
  String get addGoalAction => 'Lägg till mål';

  @override
  String get longPressHint =>
      'Tips: håll in + för att registrera en utgift direkt';

  @override
  String get searchCurrencies => 'Sök valutor';

  @override
  String get noCurrenciesFound => 'Inga valutor hittades';

  @override
  String get noCurrenciesFoundMessage =>
      'Prova en annan kod, symbol eller ett annat namn.';

  @override
  String get popularCurrencies => 'Vanliga';

  @override
  String get allCurrencies => 'Alla valutor';

  @override
  String get totalLoanAmount => 'Totalt lånebelopp';

  @override
  String get installmentAmount => 'Belopp per avbetalning';

  @override
  String get numberOfInstallments => 'Antal avbetalningar';

  @override
  String get paidInstallments => 'Betalda avbetalningar';

  @override
  String get remainingInstallments => 'Återstående avbetalningar';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid av $total betalda';
  }

  @override
  String get finalPayment => 'Sista betalningen';

  @override
  String get paymentDueDate => 'Förfallodag';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Den $day varje månad';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Enligt plan';

  @override
  String get statusDueSoon => 'Förfaller snart';

  @override
  String get statusOverdue => 'Förfallen';

  @override
  String get statusCompleted => 'Slutbetald';

  @override
  String get repaymentProgress => 'Återbetalningsläge';

  @override
  String get byAmount => 'Efter belopp';

  @override
  String get byInstallments => 'Efter avbetalningar';

  @override
  String get startDate => 'Startdatum';

  @override
  String get openEnded => 'Utan slutdatum';

  @override
  String get loanDetails => 'Om lånet';

  @override
  String get notSet => 'Inte angivet';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject förfaller i dag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Betalningen på $amount förfaller i dag. En tryckning så är den i tid.';
  }

  @override
  String get remindMorningTitle => 'God morgon ☀️';

  @override
  String get remindMorningBody =>
      'Börja dagen med koll på pengarna. Något från i går att lägga till?';

  @override
  String get remindNoonTitle => 'Avstämning mitt på dagen';

  @override
  String get remindNoonBody =>
      'Lunch, kaffe, en biljett? Registrerat på några sekunder.';

  @override
  String get remindAfternoonTitle => 'En snabb komplettering';

  @override
  String get remindAfternoonBody =>
      'Registrera det du gjort av med hittills så stämmer dagens siffror.';

  @override
  String get remindEveningTitle => 'Vi rundar av dagen';

  @override
  String get remindEveningBody =>
      'Två minuter nu så är dagens noteringar kompletta.';

  @override
  String get happyWeekendTitle => 'Trevlig helg! 🎉';

  @override
  String get happyWeekendBody =>
      'Njut av den — och håll ett öga på helgutgifterna.';

  @override
  String get dailyReminders => 'Dagliga utgiftspåminnelser';

  @override
  String get dailyRemindersBody =>
      'Vänliga knuffar så att utgifterna hålls uppdaterade';

  @override
  String get weekendGreeting => 'Helghälsning';

  @override
  String get weekendGreetingBody => 'En vänlig hälsning när helgen börjar';

  @override
  String get reminderTimesSection => 'Tider för påminnelser';

  @override
  String get slotMorning => 'Morgon';

  @override
  String get slotNoon => 'Middag';

  @override
  String get slotAfternoon => 'Eftermiddag';

  @override
  String get slotEvening => 'Kväll';

  @override
  String get everyDay => 'Varje dag';

  @override
  String get financialReport => 'Ekonomisk rapport';

  @override
  String get preparedFor => 'Framtagen för';

  @override
  String get generatedOn => 'Skapad';

  @override
  String get reportDisclaimer =>
      'Skapad av RainyPenny utifrån dina egna noteringar.';

  @override
  String pageOf(int page, int total) {
    return 'Sida $page av $total';
  }

  @override
  String get overview => 'Översikt';

  @override
  String get description => 'Beskrivning';

  @override
  String get totalIncome => 'Totala inkomster';

  @override
  String get totalExpenses => 'Totala utgifter';

  @override
  String get totalSaved => 'Totalt sparat';

  @override
  String get shareOfTotal => 'Andel';

  @override
  String get used => 'Använt';

  @override
  String get goal => 'Mål';

  @override
  String get targetDate => 'Måldatum';

  @override
  String get progress => 'Framsteg';

  @override
  String get paidOffShort => 'Betalt';

  @override
  String get transactions => 'Transaktioner';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'och $count transaktioner till',
      one: 'och $count transaktion till',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportera PDF';

  @override
  String get sharePdf => 'Dela rapporten';

  @override
  String get preparingReport => 'Din rapport förbereds…';

  @override
  String get reportReady => 'Rapporten är klar';

  @override
  String get reportFailed => 'Rapporten kunde inte skapas';

  @override
  String get categories => 'Kategorier';

  @override
  String get categoriesIntro =>
      'Lägg till egna kategorier så att inkomster och utgifter hamnar precis som du tänker på dem.';

  @override
  String get expenseCategories => 'Utgiftskategorier';

  @override
  String get incomeCategories => 'Inkomstkategorier';

  @override
  String get newCategory => 'Ny kategori';

  @override
  String get editCategory => 'Redigera kategori';

  @override
  String get categoryName => 'Namn';

  @override
  String get categoryNameHint => 't.ex. husdjur';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategorin sparad';

  @override
  String get categoryDeleted => 'Kategorin borttagen';

  @override
  String get deleteCategory => 'Ta bort den här kategorin?';

  @override
  String deleteCategoryBody(String name) {
    return '$name försvinner från dina kategorier.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster använder fortfarande den här kategorin',
      one: '$count post använder fortfarande den här kategorin',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Inget här än.';

  @override
  String get builtIn => 'Inbyggd';

  @override
  String get manageCategories => 'Hantera kategorier';

  @override
  String get expense => 'Utgift';

  @override
  String get languageNote =>
      'Arabiska, urdu, persiska och hebreiska vänder hela gränssnittet från höger till vänster, inklusive diagram och PDF-rapporter.';

  @override
  String get next => 'Nästa';

  @override
  String get back => 'Tillbaka';

  @override
  String get skip => 'Hoppa över';

  @override
  String get continueLabel => 'Fortsätt';

  @override
  String get selected => 'Vald';

  @override
  String get passwordRequired => 'Ange ditt lösenord';

  @override
  String get newPasswordLabel => 'Nytt lösenord';

  @override
  String get confirmPasswordLabel => 'Bekräfta lösenordet';

  @override
  String get passwordsDoNotMatch => 'Båda lösenorden måste stämma överens';

  @override
  String get showPassword => 'Visa lösenordet';

  @override
  String get hidePassword => 'Dölj lösenordet';

  @override
  String get savePassword => 'Spara lösenordet';

  @override
  String get backToSignIn => 'Tillbaka till inloggningen';

  @override
  String get alreadyHaveAccount => 'Jag har redan ett konto';

  @override
  String get getStarted => 'Kom igång';

  @override
  String get acceptTerms =>
      'Jag godkänner användarvillkoren och integritetspolicyn';

  @override
  String get acceptTermsRequired => 'Godkänn för att fortsätta';

  @override
  String get passwordStrengthTooShort => 'För kort';

  @override
  String get passwordStrengthWeak => 'Svagt';

  @override
  String get passwordStrengthFair => 'Godtagbart';

  @override
  String get passwordStrengthGood => 'Bra';

  @override
  String get passwordStrengthStrong => 'Starkt';

  @override
  String get passwordAdvice =>
      'En lång fras du kommer ihåg slår ett kort lösenord fullt av tecken. Undvik något du redan använder någon annanstans.';

  @override
  String get authInvalidCredentials =>
      'E-postadressen och lösenordet stämmer inte med något konto';

  @override
  String get authEmailNotConfirmed =>
      'Bekräfta din e-postadress innan du loggar in';

  @override
  String get authEmailAlreadyRegistered =>
      'Det finns redan ett konto med den här e-postadressen';

  @override
  String get authWeakPassword => 'Välj ett längre lösenord';

  @override
  String get authRateLimited => 'För många försök. Prova igen om några minuter';

  @override
  String get authNetworkError =>
      'Ingen anslutning. Kontrollera nätverket och försök igen';

  @override
  String get authGenericError => 'Något gick fel. Försök igen';

  @override
  String get confirmEmailTitle => 'Kolla din e-post';

  @override
  String confirmEmailBody(String email) {
    return 'Vi skickade en bekräftelselänk till $email. Öppna den för att bli klar med kontot.';
  }

  @override
  String get resendConfirmation => 'Skicka bekräftelsen igen';

  @override
  String get confirmationResent => 'Bekräftelsemejlet skickat';

  @override
  String get forgotPasswordTitle => 'Återställ lösenordet';

  @override
  String get forgotPasswordSubtitle =>
      'Ange e-postadressen du registrerade dig med så skickar vi en länk för att välja ett nytt lösenord.';

  @override
  String get sendResetLink => 'Skicka länken';

  @override
  String get resetLinkSentTitle => 'Länken är skickad';

  @override
  String resetLinkSentBody(String email) {
    return 'Om $email har ett konto är länken på väg.';
  }

  @override
  String get resetLinkSentHint =>
      'Länken går ut om en timme. Kommer den inte fram, kolla skräpposten innan du begär en ny.';

  @override
  String get tryAnotherEmail => 'Använd en annan e-postadress';

  @override
  String get resetPasswordTitle => 'Välj ett nytt lösenord';

  @override
  String get resetPasswordSubtitle =>
      'Välj något du inte använt på det här kontot tidigare.';

  @override
  String get passwordChangedTitle => 'Lösenordet är uppdaterat';

  @override
  String get passwordChangedBody =>
      'Ditt nya lösenord är sparat. Du är inloggad och redo.';

  @override
  String get demoModeHint => 'Demoversion — inget konto behövs';

  @override
  String get demoModeFill => 'Fyll i';

  @override
  String get welcomeTrackTitle => 'Se vart pengarna tar vägen';

  @override
  String get welcomeTrackBody =>
      'Notera vad som kommer in och vad som går ut. RainyPenny gör det till en bild man faktiskt kan läsa.';

  @override
  String get welcomeBudgetTitle => 'Gränser som håller';

  @override
  String get welcomeBudgetBody =>
      'Ge varje del av dina utgifter ett månadstak, och få veta innan du passerar det — inte efteråt.';

  @override
  String get welcomeGoalsTitle => 'Spara till det som betyder något';

  @override
  String get welcomeGoalsBody =>
      'Namnge ett mål, sätt ett belopp och se det fyllas på. En buffert byggs lättare när man ser den.';

  @override
  String get welcomePrivacyTitle => 'Dina pengar förblir dina';

  @override
  String get welcomePrivacyBody =>
      'Dina siffror tillhör bara dig. Inget säljs och inget delas med någon.';

  @override
  String stepOf(int step, int total) {
    return 'Steg $step av $total';
  }

  @override
  String get onboardingNameTitle => 'Vad ska vi kalla dig?';

  @override
  String get onboardingNameBody =>
      'Vi använder det bara för att hälsa, ingen annanstans.';

  @override
  String get onboardingNameHint =>
      'Förnamnet räcker gott. Du kan ändra det senare.';

  @override
  String get onboardingCurrencyTitle => 'Vilken valuta använder du?';

  @override
  String get onboardingCurrencyBody =>
      'Alla belopp i appen visas i den här valutan. Att välja den räknar inte om något.';

  @override
  String get onboardingCurrencySearch => 'Sök bland alla valutor';

  @override
  String get onboardingAppearanceTitle => 'Gör den till din';

  @override
  String get onboardingAppearanceBody =>
      'Välj ett utseende. Allt ändras medan du trycker, och du kan komma tillbaka när du vill.';

  @override
  String get onboardingNotificationsTitle => 'Håll koll';

  @override
  String get onboardingNotificationsBody =>
      'En stillsam knuff i rätt ögonblick är det som gör det här till en vana.';

  @override
  String get onboardingNotifyReminders =>
      'En vänlig påminnelse om att notera vad du gjort av med';

  @override
  String get onboardingNotifyBudget =>
      'Ett förvarnande innan en budget tar slut';

  @override
  String get onboardingNotifySummary =>
      'En veckosammanfattning av vart pengarna tog vägen';

  @override
  String get onboardingNotifyEnable => 'Slå på aviseringar';

  @override
  String get onboardingNotifyDone => 'Aviseringsinställningarna sparade';

  @override
  String get onboardingNotifyLater =>
      'Allt det här kan du ändra i Inställningar när du vill.';

  @override
  String get onboardingReadyTitle => 'Allt är klart';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Allt är klart, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Inställningarna är gjorda. Vill du ha en snabb rundtur i hur allt fungerar?';

  @override
  String get onboardingTakeTour => 'Visa mig';

  @override
  String get onboardingGoToApp => 'Ta mig till appen';

  @override
  String get onboardingTourLater =>
      'Inte nu? Guiden ligger kvar i Inställningar när du vill ha den.';

  @override
  String get beginnersGuide => 'Nybörjarguide';

  @override
  String get guideFinish => 'Slutför';

  @override
  String chapterOf(int number, int total) {
    return 'Kapitel $number av $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Öppna $screen';
  }

  @override
  String get guideDashboardTitle => 'Din startsida';

  @override
  String get guideDashboardBody =>
      'Allt börjar här. Kortet högst upp visar vad du har kvar; under det vad som kommit in och gått ut den här perioden, och sedan dina utgifter, budgetar och mål.';

  @override
  String get guideDashboardTip1 =>
      'Dra skärmen nedåt för att uppdatera allt på en gång.';

  @override
  String get guideDashboardTip2 =>
      'Tryck på inkomst- eller utgiftskortet för att gå rakt till den listan.';

  @override
  String get guideDashboardTip3 =>
      'Ringarna och insikterna uppdateras i samma stund som du noterar något.';

  @override
  String get guideAddTitle => 'Att notera pengar';

  @override
  String get guideAddBody =>
      'Knappen mitt i raden är där allt börjar. Den öppnar en kort meny: utgift, inkomst, skuld, budget eller sparmål.';

  @override
  String get guideAddTip1 =>
      'Tryck på mittenknappen för att notera pengar in eller ut.';

  @override
  String get guideAddTip2 =>
      'Håll in den för att gå rakt till en ny utgift och hoppa över menyn.';

  @override
  String get guideAddTip3 =>
      'Välj alltid en kategori — det är den som får diagram och budgetar att fungera.';

  @override
  String get guideCategoriesTitle => 'Kategorier';

  @override
  String get guideCategoriesBody =>
      'Kategorier är hur utgifterna grupperas. De som följer med räcker för de flesta, och du kan byta namn på dem eller lägga till egna.';

  @override
  String get guideCategoriesTip1 =>
      'Inställningar och sedan Hantera kategorier för att ändra eller lägga till.';

  @override
  String get guideCategoriesTip2 =>
      'Allt utan kategori hamnar under ”Övrigt”, så att diagrammen förblir ärliga.';

  @override
  String get guideBudgetTitle => 'Budgetar';

  @override
  String get guideBudgetBody =>
      'En budget är ett månadstak för en kategori. Stapeln fylls medan du gör av med pengar och byter färg när det närmar sig, så du får veta innan du passerat.';

  @override
  String get guideBudgetTip1 =>
      'Börja med två eller tre kategorier, inte alla på en gång.';

  @override
  String get guideBudgetTip2 =>
      'Sätt gränsen strax över vad du brukar göra av med och dra sedan åt.';

  @override
  String get guideBudgetTip3 =>
      'Låt budgetvarningarna vara på så säger appen till när en budget börjar ta slut.';

  @override
  String get guideSavingsTitle => 'Sparmål';

  @override
  String get guideSavingsBody =>
      'Namnge vad du sparar till, sätt ett belopp och ett datum, så räknar appen ut hur mycket du behöver lägga undan varje månad.';

  @override
  String get guideSavingsTip1 =>
      'Ett mål med namn håller man lättare än en vag föresats att spara.';

  @override
  String get guideSavingsTip2 =>
      'Flera små mål blir oftare färdiga än ett enda stort.';

  @override
  String get guideLoansTitle => 'Skulder och lån';

  @override
  String get guideLoansBody =>
      'Notera vad du är skyldig, vad det kostar och när nästa betalning förfaller. Allt du betalar av ligger i en lista tillsammans med vad som är kvar.';

  @override
  String get guideLoansTip1 =>
      'Lägg in förfallodagen så håller betalningspåminnelserna reda på den åt dig.';

  @override
  String get guideLoansTip2 =>
      'En förfallen skuld lyser rött på startsidan tills den är betald.';

  @override
  String get guideReportsTitle => 'Rapporter';

  @override
  String get guideReportsBody =>
      'Den djupare bilden: inkomster mot utgifter, utgifter per kategori, hur budgetarna höll och hur stor del av inkomsten du behöll.';

  @override
  String get guideReportsTip1 =>
      'Växla mellan vecka, månad och kvartal högst upp på skärmen.';

  @override
  String get guideReportsTip2 =>
      'Exportera eller dela en PDF — den kommer ut på ditt språk och i dess läsriktning.';

  @override
  String get guideSettingsTitle => 'Inställningar';

  @override
  String get guideSettingsBody =>
      'Språk, valuta, färger och varningar finns alla här, och inget av det låses av den första inställningen — ändra vad du vill, när du vill.';

  @override
  String get guideSettingsTip1 =>
      'Fyrtio språk, och hela layouten speglas för dem som läses från höger till vänster.';

  @override
  String get guideSettingsTip2 =>
      'Välj vilka varningar du vill ha och vilka timmar de får komma.';

  @override
  String get guideSettingsTip3 =>
      'Tysta timmar håller tillbaka allt till morgonen.';

  @override
  String get guideHabitTitle => 'Få det att fastna';

  @override
  String get guideHabitBody =>
      'Appen är bara så bra som det du stoppar in i den. En minut om dagen slår en timme i månaden, och efter två veckor börjar siffrorna säga något.';

  @override
  String get guideHabitTip1 =>
      'Notera utgifter när de sker, inte i slutet av veckan.';

  @override
  String get guideHabitTip2 =>
      'Kasta ett öga på startsidan en gång om dagen. Tio sekunder räcker.';

  @override
  String get guideHabitTip3 =>
      'Den här guiden ligger kvar i Inställningar — kom tillbaka när du vill.';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeCaption => 'Ljust, mörkt, eller vad telefonen gör.';

  @override
  String get accentColor => 'Accentfärg';

  @override
  String get accentColorCaption => 'Färgar knappar, markeringar och diagram.';

  @override
  String get accentSemanticsNote =>
      'Pengar in och pengar ut behåller sina egna färger i alla teman, så en siffra byter aldrig betydelse för att du bytt accentfärg.';

  @override
  String get accentTeal => 'Turkos';

  @override
  String get accentGreen => 'Grön';

  @override
  String get accentSky => 'Himmelsblå';

  @override
  String get accentBlue => 'Blå';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violett';

  @override
  String get accentPink => 'Rosa';

  @override
  String get accentCrimson => 'Karmosin';

  @override
  String get accentOrange => 'Orange';

  @override
  String get accentSlate => 'Skiffergrå';

  @override
  String get searchLanguages => 'Sök språk';

  @override
  String get suggestedLanguages => 'Föreslagna';

  @override
  String get allLanguages => 'Alla språk';

  @override
  String get noLanguagesFound => 'Inga språk hittades';

  @override
  String get noLanguagesFoundMessage =>
      'Prova namnet på engelska eller den tvåbokstavskoden.';

  @override
  String get rightToLeft => 'Höger till vänster';

  @override
  String get replayGuide => 'Se guiden igen';

  @override
  String get replaySetup => 'Gör om inställningen';

  @override
  String get replaySetupBody =>
      'Gå igenom de första frågorna en gång till. Inget av det du noterat tas bort.';

  @override
  String get rateTitle => 'Gillar du RainyPenny?';

  @override
  String get rateBody =>
      'Du har hållit på ett tag nu. Ett betyg tar ett ögonblick och hjälper andra att hitta appen.';

  @override
  String get rateAction => 'Betygsätt appen';

  @override
  String get rateLater => 'Kanske senare';

  @override
  String get rateNever => 'Nej tack';

  @override
  String get rateThanks => 'Tack';

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
  String get categoryOther => 'Other';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investments';

  @override
  String get categoryRefunds => 'Refunds & Gifts';

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
