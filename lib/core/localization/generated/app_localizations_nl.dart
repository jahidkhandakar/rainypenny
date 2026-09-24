// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppL10nNl extends AppL10n {
  AppL10nNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Sparen voor een regenachtige dag';

  @override
  String get navHome => 'Start';

  @override
  String get navTransactions => 'Transacties';

  @override
  String get navAdd => 'Toevoegen';

  @override
  String get navReports => 'Rapporten';

  @override
  String get navProfile => 'Profiel';

  @override
  String greetingMorning(String name) {
    return 'Goedemorgen, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Goedemiddag, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Goedenavond, $name';
  }

  @override
  String get greetingSubtitle => 'Dit is je financiële overzicht';

  @override
  String get totalBalance => 'Totaal saldo';

  @override
  String get vsLastPeriod => 't.o.v. vorige periode';

  @override
  String get income => 'Inkomsten';

  @override
  String get expenses => 'Uitgaven';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Laatste 30 dagen';

  @override
  String get quickActions => 'Snelle acties';

  @override
  String get addIncome => 'Inkomsten toevoegen';

  @override
  String get addExpense => 'Uitgave toevoegen';

  @override
  String get spendingOverview => 'Uitgavenoverzicht';

  @override
  String get recentTransactions => 'Recente transacties';

  @override
  String get seeAll => 'Alles bekijken';

  @override
  String get viewAll => 'Alles tonen';

  @override
  String get budgetProgress => 'Budgetvoortgang';

  @override
  String get savingsGoals => 'Spaardoelen';

  @override
  String get financialInsight => 'Financieel inzicht';

  @override
  String get financialHealth => 'Financiële gezondheid';

  @override
  String ofTotal(String total) {
    return 'van $total';
  }

  @override
  String get searchTransactions => 'Transacties zoeken';

  @override
  String get filterAll => 'Alles';

  @override
  String get filterIncome => 'Inkomsten';

  @override
  String get filterExpenses => 'Uitgaven';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get noTransactionsTitle => 'Geen transacties gevonden';

  @override
  String get noTransactionsBody =>
      'Probeer een andere zoekterm of filter om meer te zien.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transacties',
      one: '$count transactie',
      zero: 'Geen transacties',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Transactie toevoegen';

  @override
  String get amount => 'Bedrag';

  @override
  String get category => 'Categorie';

  @override
  String get date => 'Datum';

  @override
  String get note => 'Notitie';

  @override
  String get noteHint => 'Notitie (optioneel)';

  @override
  String get saveIncome => 'Inkomsten opslaan';

  @override
  String get saveExpense => 'Uitgave opslaan';

  @override
  String get selectCategory => 'Categorie kiezen';

  @override
  String get transactionSaved => 'Transactie opgeslagen';

  @override
  String get amountRequired => 'Vul een bedrag groter dan nul in';

  @override
  String get titleRequired => 'Geef deze transactie een naam';

  @override
  String get descriptionLabel => 'Omschrijving';

  @override
  String get descriptionHint => 'bijv. boodschappen';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgetten';

  @override
  String get totalBudget => 'Totaal budget';

  @override
  String get spent => 'Uitgegeven';

  @override
  String get remaining => 'Resterend';

  @override
  String budgetUsed(int percent) {
    return '$percent% gebruikt';
  }

  @override
  String get onTrack => 'Op schema';

  @override
  String get approachingLimit => 'Bijna aan de limiet';

  @override
  String get overBudget => 'Over budget';

  @override
  String get savings => 'Sparen';

  @override
  String get yourGoals => 'Jouw doelen';

  @override
  String get saved => 'Gespaard';

  @override
  String get target => 'Doel';

  @override
  String get monthlyContribution => 'Per maand';

  @override
  String get addFunds => 'Geld toevoegen';

  @override
  String get goalComplete => 'Doel bereikt';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nog $count maanden',
      one: 'nog $count maand',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Leningen & schulden';

  @override
  String get totalOutstanding => 'Totaal openstaand';

  @override
  String get monthlyPayment => 'Per maand';

  @override
  String get nextPayment => 'Volgende betaling';

  @override
  String paidOff(int percent) {
    return '$percent% afbetaald';
  }

  @override
  String get interestRate => 'Rente';

  @override
  String get upcomingPayments => 'Komende betalingen';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Over $count dagen',
      one: 'Over $count dag',
      zero: 'Vandaag te betalen',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Achterstallig';

  @override
  String get reports => 'Rapporten';

  @override
  String get week => 'Week';

  @override
  String get month => 'Maand';

  @override
  String get quarter => 'Kwartaal';

  @override
  String get incomeVsExpenses => 'Inkomsten vs. uitgaven';

  @override
  String get spendingByCategory => 'Uitgaven per categorie';

  @override
  String get budgetPerformance => 'Budgetprestatie';

  @override
  String get insights => 'Inzichten';

  @override
  String get savingsRate => 'Spaarquote';

  @override
  String get profile => 'Profiel';

  @override
  String get account => 'Account';

  @override
  String get personalInformation => 'Persoonlijke gegevens';

  @override
  String get changePassword => 'Wachtwoord wijzigen';

  @override
  String get notifications => 'Meldingen';

  @override
  String get preferences => 'Voorkeuren';

  @override
  String get language => 'Taal';

  @override
  String get currency => 'Valuta';

  @override
  String get theme => 'Thema';

  @override
  String get security => 'Beveiliging';

  @override
  String get privacyAndSecurity => 'Privacy & beveiliging';

  @override
  String get help => 'Help';

  @override
  String get helpAndSupport => 'Help & ondersteuning';

  @override
  String get termsAndConditions => 'Algemene voorwaarden';

  @override
  String get logOut => 'Uitloggen';

  @override
  String memberSince(String date) {
    return 'Lid sinds $date';
  }

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get settings => 'Instellingen';

  @override
  String get noNotificationsTitle => 'Je bent helemaal bij';

  @override
  String get noNotificationsBody =>
      'Nieuwe inzichten en herinneringen verschijnen hier.';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get done => 'Klaar';

  @override
  String get retry => 'Opnieuw';

  @override
  String get close => 'Sluiten';

  @override
  String get somethingWentWrong => 'Er ging iets mis';

  @override
  String get comingSoon => 'Komt in de volledige versie';

  @override
  String get edit => 'Bewerken';

  @override
  String get delete => 'Verwijderen';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get add => 'Toevoegen';

  @override
  String get create => 'Aanmaken';

  @override
  String get nameRequired => 'Geef dit een naam';

  @override
  String get amountAboveZero => 'Vul een bedrag groter dan nul in';

  @override
  String get editTransaction => 'Transactie bewerken';

  @override
  String get deleteTransaction => 'Transactie verwijderen?';

  @override
  String deleteTransactionBody(String title) {
    return '$title wordt uit je overzicht gehaald.';
  }

  @override
  String get transactionDeleted => 'Transactie verwijderd';

  @override
  String get transactionUpdated => 'Transactie bijgewerkt';

  @override
  String get newBudget => 'Nieuw budget';

  @override
  String get editBudget => 'Budget bewerken';

  @override
  String get budgetLimit => 'Maandlimiet';

  @override
  String get deleteBudget => 'Budget verwijderen?';

  @override
  String deleteBudgetBody(String category) {
    return 'Het budget $category wordt verwijderd. Je transacties blijven ongemoeid.';
  }

  @override
  String get budgetSaved => 'Budget opgeslagen';

  @override
  String get budgetDeleted => 'Budget verwijderd';

  @override
  String get allCategoriesBudgeted => 'Elke categorie heeft al een budget';

  @override
  String get noBudgetsTitle => 'Nog geen budgetten';

  @override
  String get noBudgetsBody =>
      'Stel een maandlimiet in op een categorie om die te gaan volgen.';

  @override
  String get newGoal => 'Nieuw doel';

  @override
  String get editGoal => 'Doel bewerken';

  @override
  String get goalName => 'Naam van het doel';

  @override
  String get goalNameHint => 'bijv. noodpotje';

  @override
  String get targetAmount => 'Streefbedrag';

  @override
  String get alreadySaved => 'Al gespaard';

  @override
  String get deleteGoal => 'Doel verwijderen?';

  @override
  String deleteGoalBody(String name) {
    return '$name en de voortgang worden verwijderd.';
  }

  @override
  String get goalSaved => 'Doel opgeslagen';

  @override
  String get goalDeleted => 'Doel verwijderd';

  @override
  String get noGoalsTitle => 'Nog geen spaardoelen';

  @override
  String get noGoalsBody =>
      'Stel een doel in en RainyPenny houdt je voortgang bij.';

  @override
  String get fundsAdded => 'Geld toegevoegd';

  @override
  String get newDebt => 'Nieuwe lening of kaart';

  @override
  String get editDebt => 'Lening bewerken';

  @override
  String get debtName => 'Naam';

  @override
  String get debtNameHint => 'bijv. autolening';

  @override
  String get lender => 'Kredietgever';

  @override
  String get lenderHint => 'bijv. Rabobank';

  @override
  String get originalAmount => 'Oorspronkelijk bedrag';

  @override
  String get creditLimit => 'Kredietlimiet';

  @override
  String get remainingBalance => 'Restschuld';

  @override
  String get interestRatePercent => 'Rentepercentage (%)';

  @override
  String get kindLoan => 'Lening';

  @override
  String get kindCreditCard => 'Creditcard';

  @override
  String get recordPayment => 'Betaling vastleggen';

  @override
  String get paymentRecorded => 'Betaling vastgelegd';

  @override
  String get deleteDebt => 'Deze schuld verwijderen?';

  @override
  String deleteDebtBody(String name) {
    return '$name wordt uit je schulden gehaald.';
  }

  @override
  String get debtSaved => 'Opgeslagen';

  @override
  String get debtDeleted => 'Verwijderd';

  @override
  String get noDebtsTitle => 'Geen schulden bijgehouden';

  @override
  String get noDebtsBody =>
      'Voeg een lening of creditcard toe om je aflossingen in de gaten te houden.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget $subject overschreden';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Je zit deze periode $amount boven je budget voor $subject.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject nadert de limiet';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Je budget voor $subject is voor $percent% gebruikt, er is nog $amount over.';
  }

  @override
  String get insightOverIncomeTitle => 'Uitgaven hoger dan inkomsten';

  @override
  String get insightOverIncomeBody =>
      'Je gaf deze periode meer uit dan je verdiende. Bekijk je grootste categorieën om het weer recht te trekken.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Uitgaven aan $subject gestegen';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Je uitgaven aan $subject liggen $percent% hoger dan de vorige periode.';
  }

  @override
  String get insightTrendDownTitle => 'Uitgaven dalen';

  @override
  String insightTrendDownBody(int percent) {
    return 'De totale uitgaven liggen $percent% lager dan de vorige periode.';
  }

  @override
  String get insightTrendUpTitle => 'Uitgaven stijgen';

  @override
  String insightTrendUpBody(int percent) {
    return 'De totale uitgaven liggen $percent% hoger dan de vorige periode.';
  }

  @override
  String get insightSavingsStrongTitle => 'Sterk gespaard deze periode';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Je hield $percent% van je inkomsten over — ruim boven het doel van $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Spaarquote onder het doel';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Je hield deze periode $percent% van je inkomsten over. Mik op $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject is bijna rond';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Nog maar $amount te gaan voor $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Op koers voor $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months maanden',
      one: '$months maand',
    );
    return 'Met $amount per maand haal je dit doel over $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Betaling $subject achterstallig';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagen',
      one: '$days dag',
    );
    return 'De betaling van $amount voor $subject is $_temp0 te laat.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Betaling $subject komt eraan';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'over $days dagen',
      one: 'over $days dag',
      zero: 'vandaag',
    );
    return '$amount moet $_temp0 betaald zijn.';
  }

  @override
  String get signIn => 'Inloggen';

  @override
  String get signUp => 'Account aanmaken';

  @override
  String get signInSubtitle => 'Welkom terug. Je geld wacht op je.';

  @override
  String get signUpSubtitle => 'Een paar gegevens en je bent klaar.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'jij@email.com';

  @override
  String get passwordLabel => 'Wachtwoord';

  @override
  String get passwordHint => 'Minstens 8 tekens';

  @override
  String get fullNameLabel => 'Volledige naam';

  @override
  String get fullNameHint => 'Alex Jansen';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get resetSent => 'Kijk in je inbox voor de herstellink';

  @override
  String get noAccountYet => 'Nieuw hier?';

  @override
  String get haveAccount => 'Heb je al een account?';

  @override
  String get emailInvalid => 'Vul een geldig e-mailadres in';

  @override
  String get passwordTooShort => 'Gebruik minstens 8 tekens';

  @override
  String get signOutConfirm => 'Uitloggen?';

  @override
  String get signOutBody => 'Je moet opnieuw inloggen om je financiën te zien.';

  @override
  String get dataSource => 'Gegevensbron';

  @override
  String get insightWeeklySummaryTitle => 'Je week in het kort';

  @override
  String get insightWeeklySummaryBody =>
      'Bekijk waar je geld deze week heen ging en hoe je budgetten het houden.';

  @override
  String get notificationSettings => 'Meldingen';

  @override
  String get alertsSection => 'Waarschuwingen';

  @override
  String get budgetAlerts => 'Budgetwaarschuwingen';

  @override
  String get budgetAlertsBody =>
      'Als een budget bijna op is of overschreden wordt';

  @override
  String get paymentReminders => 'Betalingsherinneringen';

  @override
  String get paymentRemindersBody => 'Een paar dagen voor een betaling vervalt';

  @override
  String get savingsUpdates => 'Spaarnieuws';

  @override
  String get savingsUpdatesBody => 'Voortgang richting je doelen';

  @override
  String get weeklySummaryLabel => 'Weekoverzicht';

  @override
  String get weeklySummaryBody => 'Een samenvatting van de afgelopen week';

  @override
  String get scheduleSection => 'Timing';

  @override
  String get reminderTime => 'Tijd van herinnering';

  @override
  String get quietHours => 'Stille uren';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dag van het overzicht';

  @override
  String get permissionRequired => 'Meldingen staan uit';

  @override
  String get permissionRequiredBody =>
      'Sta meldingen toe zodat RainyPenny je kan waarschuwen voordat een budget of betaling uit de hand loopt.';

  @override
  String get allowNotifications => 'Meldingen toestaan';

  @override
  String get permissionDenied =>
      'Meldingen zijn geblokkeerd. Je kunt ze aanzetten in je apparaatinstellingen.';

  @override
  String get upcomingAlerts => 'Gepland';

  @override
  String get noScheduledAlerts => 'Op dit moment niets gepland';

  @override
  String get noScheduledAlertsBody =>
      'Waarschuwingen verschijnen hier zodra je budgetten en betalingen hun grens naderen.';

  @override
  String scheduledFor(String date) {
    return 'Gepland voor $date';
  }

  @override
  String get everyWeek => 'Elke week';

  @override
  String get allNotificationsOff => 'Alle meldingen staan uit';

  @override
  String get needsAttention => 'Vraagt aandacht';

  @override
  String get quickActionsTitle => 'Wat wil je doen?';

  @override
  String get createSection => 'Vastleggen';

  @override
  String get jumpToSection => 'Ga naar';

  @override
  String get addLoanAction => 'Lening toevoegen';

  @override
  String get addBudgetAction => 'Budget toevoegen';

  @override
  String get addGoalAction => 'Doel toevoegen';

  @override
  String get longPressHint =>
      'Tip: houd + ingedrukt om meteen een uitgave vast te leggen';

  @override
  String get searchCurrencies => 'Valuta zoeken';

  @override
  String get noCurrenciesFound => 'Geen valuta gevonden';

  @override
  String get noCurrenciesFoundMessage =>
      'Probeer een andere code, symbool of naam.';

  @override
  String get popularCurrencies => 'Populair';

  @override
  String get allCurrencies => 'Alle valuta';

  @override
  String get totalLoanAmount => 'Totale leensom';

  @override
  String get installmentAmount => 'Termijnbedrag';

  @override
  String get numberOfInstallments => 'Aantal termijnen';

  @override
  String get paidInstallments => 'Betaalde termijnen';

  @override
  String get remainingInstallments => 'Resterende termijnen';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid van $total betaald';
  }

  @override
  String get finalPayment => 'Laatste termijn';

  @override
  String get paymentDueDate => 'Vervaldatum';

  @override
  String dueOnDayOfMonth(int day) {
    return 'De ${day}e van elke maand';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Op schema';

  @override
  String get statusDueSoon => 'Bijna verschuldigd';

  @override
  String get statusOverdue => 'Achterstallig';

  @override
  String get statusCompleted => 'Afbetaald';

  @override
  String get repaymentProgress => 'Aflossingsvoortgang';

  @override
  String get byAmount => 'Op bedrag';

  @override
  String get byInstallments => 'Op termijnen';

  @override
  String get startDate => 'Startdatum';

  @override
  String get openEnded => 'Zonder einddatum';

  @override
  String get loanDetails => 'Details van de lening';

  @override
  String get notSet => 'Niet ingesteld';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject vervalt vandaag';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Je betaling van $amount vervalt vandaag. Eén tik en het is op tijd.';
  }

  @override
  String get remindMorningTitle => 'Goedemorgen ☀️';

  @override
  String get remindMorningBody =>
      'Begin de dag met grip op je geld. Nog iets van gisteren toe te voegen?';

  @override
  String get remindNoonTitle => 'Even bijwerken';

  @override
  String get remindNoonBody =>
      'Lunch, koffie, een ritje? In een paar seconden vastgelegd.';

  @override
  String get remindAfternoonTitle => 'Snelle inhaalslag';

  @override
  String get remindAfternoonBody =>
      'Leg vast wat je tot nu toe uitgaf, dan klopt vandaag.';

  @override
  String get remindEveningTitle => 'De dag afronden';

  @override
  String get remindEveningBody =>
      'Twee minuten nu en de cijfers van vandaag zijn compleet.';

  @override
  String get happyWeekendTitle => 'Fijn weekend! 🎉';

  @override
  String get happyWeekendBody =>
      'Geniet ervan — en houd de weekenduitgaven een beetje in de gaten.';

  @override
  String get dailyReminders => 'Dagelijkse uitgavenherinneringen';

  @override
  String get dailyRemindersBody =>
      'Vriendelijke duwtjes om je uitgaven bij te houden';

  @override
  String get weekendGreeting => 'Weekendgroet';

  @override
  String get weekendGreetingBody =>
      'Een vriendelijke groet aan het begin van je weekend';

  @override
  String get reminderTimesSection => 'Momenten van herinnering';

  @override
  String get slotMorning => 'Ochtend';

  @override
  String get slotNoon => 'Middag';

  @override
  String get slotAfternoon => 'Namiddag';

  @override
  String get slotEvening => 'Avond';

  @override
  String get everyDay => 'Elke dag';

  @override
  String get financialReport => 'Financieel rapport';

  @override
  String get preparedFor => 'Opgesteld voor';

  @override
  String get generatedOn => 'Gemaakt op';

  @override
  String get reportDisclaimer =>
      'Door RainyPenny gemaakt op basis van je eigen gegevens.';

  @override
  String pageOf(int page, int total) {
    return 'Pagina $page van $total';
  }

  @override
  String get overview => 'Overzicht';

  @override
  String get description => 'Omschrijving';

  @override
  String get totalIncome => 'Totale inkomsten';

  @override
  String get totalExpenses => 'Totale uitgaven';

  @override
  String get totalSaved => 'Totaal gespaard';

  @override
  String get shareOfTotal => 'Aandeel';

  @override
  String get used => 'Gebruikt';

  @override
  String get goal => 'Doel';

  @override
  String get targetDate => 'Streefdatum';

  @override
  String get progress => 'Voortgang';

  @override
  String get paidOffShort => 'Afbetaald';

  @override
  String get transactions => 'Transacties';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'en nog $count transacties',
      one: 'en nog $count transactie',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF exporteren';

  @override
  String get sharePdf => 'Rapport delen';

  @override
  String get preparingReport => 'Je rapport wordt gemaakt…';

  @override
  String get reportReady => 'Rapport klaar';

  @override
  String get reportFailed => 'Rapport kon niet worden gemaakt';

  @override
  String get categories => 'Categorieën';

  @override
  String get categoriesIntro =>
      'Voeg je eigen categorieën toe zodat inkomsten en uitgaven precies zo geordend zijn als jij erover denkt.';

  @override
  String get expenseCategories => 'Uitgavencategorieën';

  @override
  String get incomeCategories => 'Inkomstencategorieën';

  @override
  String get newCategory => 'Nieuwe categorie';

  @override
  String get editCategory => 'Categorie bewerken';

  @override
  String get categoryName => 'Naam';

  @override
  String get categoryNameHint => 'bijv. huisdieren';

  @override
  String get icon => 'Pictogram';

  @override
  String get categorySaved => 'Categorie opgeslagen';

  @override
  String get categoryDeleted => 'Categorie verwijderd';

  @override
  String get deleteCategory => 'Deze categorie verwijderen?';

  @override
  String deleteCategoryBody(String name) {
    return '$name wordt uit je categorieën gehaald.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count records gebruiken deze categorie nog',
      one: '$count record gebruikt deze categorie nog',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Hier staat nog niets.';

  @override
  String get builtIn => 'Standaard';

  @override
  String get manageCategories => 'Categorieën beheren';

  @override
  String get expense => 'Uitgave';

  @override
  String get languageNote =>
      'Arabisch, Urdu, Perzisch en Hebreeuws zetten de hele interface van rechts naar links, inclusief grafieken en PDF-rapporten.';

  @override
  String get next => 'Volgende';

  @override
  String get back => 'Terug';

  @override
  String get skip => 'Overslaan';

  @override
  String get continueLabel => 'Doorgaan';

  @override
  String get selected => 'Geselecteerd';

  @override
  String get passwordRequired => 'Vul je wachtwoord in';

  @override
  String get newPasswordLabel => 'Nieuw wachtwoord';

  @override
  String get confirmPasswordLabel => 'Wachtwoord bevestigen';

  @override
  String get passwordsDoNotMatch => 'Beide wachtwoorden moeten gelijk zijn';

  @override
  String get showPassword => 'Wachtwoord tonen';

  @override
  String get hidePassword => 'Wachtwoord verbergen';

  @override
  String get savePassword => 'Wachtwoord opslaan';

  @override
  String get backToSignIn => 'Terug naar inloggen';

  @override
  String get alreadyHaveAccount => 'Ik heb al een account';

  @override
  String get getStarted => 'Beginnen';

  @override
  String get acceptTerms =>
      'Ik ga akkoord met de Servicevoorwaarden en het Privacybeleid';

  @override
  String get acceptTermsRequired => 'Ga akkoord om door te gaan';

  @override
  String get passwordStrengthTooShort => 'Te kort';

  @override
  String get passwordStrengthWeak => 'Zwak';

  @override
  String get passwordStrengthFair => 'Redelijk';

  @override
  String get passwordStrengthGood => 'Goed';

  @override
  String get passwordStrengthStrong => 'Sterk';

  @override
  String get passwordAdvice =>
      'Een lange zin die je onthoudt is beter dan een kort wachtwoord vol tekens. Gebruik niets dat je ergens anders al gebruikt.';

  @override
  String get authInvalidCredentials =>
      'Dit e-mailadres en wachtwoord horen bij geen enkel account';

  @override
  String get authEmailNotConfirmed =>
      'Bevestig je e-mailadres voordat je inlogt';

  @override
  String get authEmailAlreadyRegistered =>
      'Er bestaat al een account met dit e-mailadres';

  @override
  String get authWeakPassword => 'Kies een langer wachtwoord';

  @override
  String get authRateLimited =>
      'Te veel pogingen. Probeer het over een paar minuten opnieuw';

  @override
  String get authNetworkError =>
      'Geen verbinding. Controleer je netwerk en probeer opnieuw';

  @override
  String get authGenericError => 'Er ging iets mis. Probeer het opnieuw';

  @override
  String get confirmEmailTitle => 'Kijk in je mailbox';

  @override
  String confirmEmailBody(String email) {
    return 'We stuurden een bevestigingslink naar $email. Open die om je account af te maken.';
  }

  @override
  String get resendConfirmation => 'Bevestigingsmail opnieuw sturen';

  @override
  String get confirmationResent => 'Bevestigingsmail verstuurd';

  @override
  String get forgotPasswordTitle => 'Wachtwoord herstellen';

  @override
  String get forgotPasswordSubtitle =>
      'Vul het e-mailadres in waarmee je je hebt aangemeld, dan sturen we je een link om een nieuw wachtwoord te kiezen.';

  @override
  String get sendResetLink => 'Herstellink sturen';

  @override
  String get resetLinkSentTitle => 'Herstellink verstuurd';

  @override
  String resetLinkSentBody(String email) {
    return 'Als $email een account heeft, is de link onderweg.';
  }

  @override
  String get resetLinkSentHint =>
      'De link verloopt na een uur. Komt hij niet aan, kijk dan in je spammap voordat je een nieuwe aanvraagt.';

  @override
  String get tryAnotherEmail => 'Ander e-mailadres gebruiken';

  @override
  String get resetPasswordTitle => 'Kies een nieuw wachtwoord';

  @override
  String get resetPasswordSubtitle =>
      'Kies iets dat je op dit account nog niet hebt gebruikt.';

  @override
  String get passwordChangedTitle => 'Wachtwoord bijgewerkt';

  @override
  String get passwordChangedBody =>
      'Je nieuwe wachtwoord is opgeslagen. Je bent ingelogd en kunt verder.';

  @override
  String get demoModeHint => 'Demoversie — geen account nodig';

  @override
  String get demoModeFill => 'Invullen';

  @override
  String get welcomeTrackTitle => 'Zie waar je geld heen gaat';

  @override
  String get welcomeTrackBody =>
      'Leg vast wat binnenkomt en wat eruit gaat. RainyPenny maakt er een beeld van dat je echt kunt lezen.';

  @override
  String get welcomeBudgetTitle => 'Grenzen die standhouden';

  @override
  String get welcomeBudgetBody =>
      'Geef elk deel van je uitgaven een maandplafond en hoor het vóór je eroverheen gaat, niet erna.';

  @override
  String get welcomeGoalsTitle => 'Sparen voor wat telt';

  @override
  String get welcomeGoalsBody =>
      'Geef een doel een naam, kies een bedrag en zie het vollopen. Een noodpotje bouw je makkelijker op als je het ziet.';

  @override
  String get welcomePrivacyTitle => 'Jouw geld blijft van jou';

  @override
  String get welcomePrivacyBody =>
      'Je cijfers zijn alleen van jou. Er wordt niets verkocht en niets gedeeld.';

  @override
  String stepOf(int step, int total) {
    return 'Stap $step van $total';
  }

  @override
  String get onboardingNameTitle => 'Hoe zullen we je noemen?';

  @override
  String get onboardingNameBody =>
      'Alleen om je te begroeten, nergens anders voor.';

  @override
  String get onboardingNameHint =>
      'Een voornaam is genoeg. Je kunt het later wijzigen.';

  @override
  String get onboardingCurrencyTitle => 'Welke valuta gebruik je?';

  @override
  String get onboardingCurrencyBody =>
      'Alle bedragen in de app worden in deze valuta getoond. Kiezen rekent niets om.';

  @override
  String get onboardingCurrencySearch => 'Alle valuta doorzoeken';

  @override
  String get onboardingAppearanceTitle => 'Maak het van jou';

  @override
  String get onboardingAppearanceBody =>
      'Kies een uiterlijk. Alles verandert terwijl je tikt, en je kunt altijd terugkomen.';

  @override
  String get onboardingNotificationsTitle => 'Houd het bij';

  @override
  String get onboardingNotificationsBody =>
      'Een rustig duwtje op het juiste moment maakt hier een gewoonte van.';

  @override
  String get onboardingNotifyReminders =>
      'Een vriendelijke herinnering om uitgaven vast te leggen';

  @override
  String get onboardingNotifyBudget => 'Een seintje voordat een budget op is';

  @override
  String get onboardingNotifySummary =>
      'Een weekoverzicht van waar je geld heen ging';

  @override
  String get onboardingNotifyEnable => 'Meldingen aanzetten';

  @override
  String get onboardingNotifyDone => 'Meldingsinstellingen opgeslagen';

  @override
  String get onboardingNotifyLater =>
      'Dit alles kun je later in Instellingen wijzigen, wanneer je maar wilt.';

  @override
  String get onboardingReadyTitle => 'Je bent er klaar voor';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Je bent er klaar voor, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Het instellen is klaar. Wil je een korte rondleiding door de app?';

  @override
  String get onboardingTakeTour => 'Laat maar zien';

  @override
  String get onboardingGoToApp => 'Naar de app';

  @override
  String get onboardingTourLater =>
      'Nu even niet? De gids blijft in Instellingen staan.';

  @override
  String get beginnersGuide => 'Beginnersgids';

  @override
  String get guideFinish => 'Voltooien';

  @override
  String chapterOf(int number, int total) {
    return 'Hoofdstuk $number van $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen openen';
  }

  @override
  String get guideDashboardTitle => 'Je startscherm';

  @override
  String get guideDashboardBody =>
      'Alles begint hier. De kaart bovenaan is wat je overhoudt; daaronder wat er deze periode binnenkwam en uitging, en daarna je uitgaven, budgetten en doelen.';

  @override
  String get guideDashboardTip1 =>
      'Trek het scherm omlaag om alles in één keer te verversen.';

  @override
  String get guideDashboardTip2 =>
      'Tik op de kaart met inkomsten of uitgaven om meteen naar die lijst te gaan.';

  @override
  String get guideDashboardTip3 =>
      'De ringen en inzichten werken bij zodra je iets vastlegt.';

  @override
  String get guideAddTitle => 'Geld vastleggen';

  @override
  String get guideAddBody =>
      'De knop in het midden van de balk is waar alles begint. Die opent een kort menu: uitgave, inkomsten, schuld, budget of spaardoel.';

  @override
  String get guideAddTip1 =>
      'Tik op de middelste knop om geld in of uit vast te leggen.';

  @override
  String get guideAddTip2 =>
      'Houd hem ingedrukt om het menu over te slaan en meteen een uitgave te maken.';

  @override
  String get guideAddTip3 =>
      'Kies altijd een categorie — daar draaien de grafieken en budgetten op.';

  @override
  String get guideCategoriesTitle => 'Categorieën';

  @override
  String get guideCategoriesBody =>
      'Categorieën bepalen hoe uitgaven gegroepeerd worden. De meegeleverde volstaan voor de meeste mensen, en je kunt ze hernoemen of eigen categorieën toevoegen.';

  @override
  String get guideCategoriesTip1 =>
      'Instellingen, dan Categorieën beheren, om iets te wijzigen of toe te voegen.';

  @override
  String get guideCategoriesTip2 =>
      'Alles zonder categorie belandt in «Overig», zodat de grafieken eerlijk blijven.';

  @override
  String get guideBudgetTitle => 'Budgetten';

  @override
  String get guideBudgetBody =>
      'Een budget is een maandplafond voor één categorie. De balk loopt vol terwijl je uitgeeft en verkleurt als het krap wordt, dus je weet het voordat je erdoorheen bent.';

  @override
  String get guideBudgetTip1 =>
      'Begin met twee of drie categorieën, niet met alles tegelijk.';

  @override
  String get guideBudgetTip2 =>
      'Zet de limiet iets boven wat je normaal uitgeeft en trek hem daarna aan.';

  @override
  String get guideBudgetTip3 =>
      'Laat budgetwaarschuwingen aan staan, dan meldt de app zich op tijd.';

  @override
  String get guideSavingsTitle => 'Spaardoelen';

  @override
  String get guideSavingsBody =>
      'Benoem waarvoor je spaart, kies een bedrag en een datum, en de app rekent uit wat je elke maand opzij moet zetten.';

  @override
  String get guideSavingsTip1 =>
      'Een doel met een naam houd je makkelijker vol dan een vaag voornemen om te sparen.';

  @override
  String get guideSavingsTip2 =>
      'Meerdere kleine doelen worden vaker gehaald dan één groot doel.';

  @override
  String get guideLoansTitle => 'Schulden en leningen';

  @override
  String get guideLoansBody =>
      'Leg vast wat je schuldig bent, wat het kost en wanneer de volgende termijn vervalt. Alles wat je aflost staat in één lijst met het openstaande bedrag.';

  @override
  String get guideLoansTip1 =>
      'Vul de vervaldatum in, dan houden de betalingsherinneringen het voor je bij.';

  @override
  String get guideLoansTip2 =>
      'Een achterstallige schuld staat rood op het startscherm tot hij betaald is.';

  @override
  String get guideReportsTitle => 'Rapporten';

  @override
  String get guideReportsBody =>
      'De diepere blik: inkomsten tegenover uitgaven, uitgaven per categorie, hoe je budgetten het hielden en welk deel van je inkomsten je overhield.';

  @override
  String get guideReportsTip1 =>
      'Wissel bovenaan het scherm tussen week, maand en kwartaal.';

  @override
  String get guideReportsTip2 =>
      'Exporteer of deel een PDF — die komt eruit in je eigen taal en leesrichting.';

  @override
  String get guideSettingsTitle => 'Instellingen';

  @override
  String get guideSettingsBody =>
      'Taal, valuta, kleuren en waarschuwingen staan hier allemaal, en niets daarvan ligt vast na het instellen — wijzig het wanneer je wilt.';

  @override
  String get guideSettingsTip1 =>
      'Veertig talen, en de hele indeling spiegelt bij talen die van rechts naar links lopen.';

  @override
  String get guideSettingsTip2 =>
      'Kies welke waarschuwingen je wilt en op welke uren ze mogen komen.';

  @override
  String get guideSettingsTip3 =>
      'Stille uren houden alles tegen tot de ochtend.';

  @override
  String get guideHabitTitle => 'Houd het vol';

  @override
  String get guideHabitBody =>
      'De app is zo goed als wat je erin stopt. Een minuut per dag verslaat een uur per maand, en na twee weken beginnen de cijfers je iets te vertellen.';

  @override
  String get guideHabitTip1 =>
      'Leg uitgaven vast op het moment zelf, niet aan het eind van de week.';

  @override
  String get guideHabitTip2 =>
      'Kijk één keer per dag op het startscherm. Tien seconden is genoeg.';

  @override
  String get guideHabitTip3 =>
      'Deze gids blijft in Instellingen staan — kom gerust terug.';

  @override
  String get appearance => 'Weergave';

  @override
  String get themeCaption => 'Licht, donker, of wat je telefoon doet.';

  @override
  String get accentColor => 'Accentkleur';

  @override
  String get accentColorCaption => 'Kleurt de knoppen, accenten en grafieken.';

  @override
  String get accentSemanticsNote =>
      'Geld erin en geld eruit houden in elk thema hun eigen kleur, dus een bedrag verandert nooit van betekenis omdat jij het accent hebt gewijzigd.';

  @override
  String get accentTeal => 'Turkoois';

  @override
  String get accentGreen => 'Groen';

  @override
  String get accentSky => 'Hemelsblauw';

  @override
  String get accentBlue => 'Blauw';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Roze';

  @override
  String get accentCrimson => 'Karmozijn';

  @override
  String get accentOrange => 'Oranje';

  @override
  String get accentSlate => 'Leigrijs';

  @override
  String get searchLanguages => 'Talen zoeken';

  @override
  String get suggestedLanguages => 'Voorgesteld';

  @override
  String get allLanguages => 'Alle talen';

  @override
  String get noLanguagesFound => 'Geen talen gevonden';

  @override
  String get noLanguagesFoundMessage =>
      'Probeer de Engelse naam of de tweeletterige code.';

  @override
  String get rightToLeft => 'Rechts naar links';

  @override
  String get replayGuide => 'Gids opnieuw bekijken';

  @override
  String get replaySetup => 'Instellen opnieuw doorlopen';

  @override
  String get replaySetupBody =>
      'Doorloop de eerste vragen nog een keer. Niets van wat je hebt vastgelegd wordt verwijderd.';

  @override
  String get rateTitle => 'Bevalt RainyPenny?';

  @override
  String get rateBody =>
      'Je bent er inmiddels een tijdje mee bezig. Een beoordeling kost een moment en helpt anderen de app te vinden.';

  @override
  String get rateAction => 'Beoordeel de app';

  @override
  String get rateLater => 'Misschien later';

  @override
  String get rateNever => 'Nee, bedankt';

  @override
  String get rateThanks => 'Bedankt';

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
}
