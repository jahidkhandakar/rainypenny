// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppL10nCs extends AppL10n {
  AppL10nCs([String locale = 'cs']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Šetřete na horší časy';

  @override
  String get navHome => 'Domů';

  @override
  String get navTransactions => 'Pohyby';

  @override
  String get navAdd => 'Přidat';

  @override
  String get navReports => 'Přehledy';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Dobré ráno, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Dobrý den, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Dobrý večer, $name';
  }

  @override
  String get greetingSubtitle => 'Tady je vaše finanční situace';

  @override
  String get totalBalance => 'Celkový zůstatek';

  @override
  String get vsLastPeriod => 'oproti minulému období';

  @override
  String get income => 'Příjmy';

  @override
  String get expenses => 'Výdaje';

  @override
  String get netBalance => 'Čistý zůstatek';

  @override
  String get lastThirtyDays => 'Posledních 30 dní';

  @override
  String get quickActions => 'Rychlé akce';

  @override
  String get addIncome => 'Přidat příjem';

  @override
  String get addExpense => 'Přidat výdaj';

  @override
  String get spendingOverview => 'Přehled výdajů';

  @override
  String get recentTransactions => 'Poslední pohyby';

  @override
  String get seeAll => 'Zobrazit vše';

  @override
  String get viewAll => 'Ukázat všechny';

  @override
  String get budgetProgress => 'Plnění rozpočtů';

  @override
  String get savingsGoals => 'Spořicí cíle';

  @override
  String get financialInsight => 'Postřeh';

  @override
  String get financialHealth => 'Finanční zdraví';

  @override
  String ofTotal(String total) {
    return 'z $total';
  }

  @override
  String get searchTransactions => 'Hledat pohyby';

  @override
  String get filterAll => 'Vše';

  @override
  String get filterIncome => 'Příjmy';

  @override
  String get filterExpenses => 'Výdaje';

  @override
  String get today => 'Dnes';

  @override
  String get yesterday => 'Včera';

  @override
  String get noTransactionsTitle => 'Žádné pohyby nenalezeny';

  @override
  String get noTransactionsBody =>
      'Zkuste jiné hledání nebo filtr, ať uvidíte více záznamů.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pohybů',
      many: '$count pohybu',
      few: '$count pohyby',
      one: '$count pohyb',
      zero: 'Žádné pohyby',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Přidat pohyb';

  @override
  String get amount => 'Částka';

  @override
  String get category => 'Kategorie';

  @override
  String get date => 'Datum';

  @override
  String get note => 'Poznámka';

  @override
  String get noteHint => 'Poznámka (nepovinné)';

  @override
  String get saveIncome => 'Uložit příjem';

  @override
  String get saveExpense => 'Uložit výdaj';

  @override
  String get selectCategory => 'Vyberte kategorii';

  @override
  String get transactionSaved => 'Pohyb uložen';

  @override
  String get amountRequired => 'Zadejte částku větší než nula';

  @override
  String get titleRequired => 'Pojmenujte tento pohyb';

  @override
  String get descriptionLabel => 'Popis';

  @override
  String get descriptionHint => 'např. nákup potravin';

  @override
  String get budget => 'Rozpočet';

  @override
  String get budgets => 'Rozpočty';

  @override
  String get totalBudget => 'Celkový rozpočet';

  @override
  String get spent => 'Utraceno';

  @override
  String get remaining => 'Zbývá';

  @override
  String budgetUsed(int percent) {
    return 'Využito $percent%';
  }

  @override
  String get onTrack => 'Podle plánu';

  @override
  String get approachingLimit => 'Blízko limitu';

  @override
  String get overBudget => 'Nad rozpočet';

  @override
  String get savings => 'Úspory';

  @override
  String get yourGoals => 'Vaše cíle';

  @override
  String get saved => 'Naspořeno';

  @override
  String get target => 'Cíl';

  @override
  String get monthlyContribution => 'Měsíčně';

  @override
  String get addFunds => 'Vložit peníze';

  @override
  String get goalComplete => 'Cíl splněn';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zbývá $count měsíců',
      many: 'zbývá $count měsíce',
      few: 'zbývají $count měsíce',
      one: 'zbývá $count měsíc',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Půjčky a dluhy';

  @override
  String get totalOutstanding => 'Celkem k doplacení';

  @override
  String get monthlyPayment => 'Měsíčně';

  @override
  String get nextPayment => 'Další splátka';

  @override
  String paidOff(int percent) {
    return 'Splaceno $percent%';
  }

  @override
  String get interestRate => 'Úrok';

  @override
  String get upcomingPayments => 'Nadcházející splátky';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Za $count dní',
      many: 'Za $count dne',
      few: 'Za $count dny',
      one: 'Za $count den',
      zero: 'Splatné dnes',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Po splatnosti';

  @override
  String get reports => 'Přehledy';

  @override
  String get week => 'Týden';

  @override
  String get month => 'Měsíc';

  @override
  String get quarter => 'Čtvrtletí';

  @override
  String get incomeVsExpenses => 'Příjmy a výdaje';

  @override
  String get spendingByCategory => 'Výdaje podle kategorií';

  @override
  String get budgetPerformance => 'Plnění rozpočtů';

  @override
  String get insights => 'Postřehy';

  @override
  String get savingsRate => 'Míra úspor';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Účet';

  @override
  String get personalInformation => 'Osobní údaje';

  @override
  String get changePassword => 'Změnit heslo';

  @override
  String get notifications => 'Oznámení';

  @override
  String get preferences => 'Předvolby';

  @override
  String get language => 'Jazyk';

  @override
  String get currency => 'Měna';

  @override
  String get theme => 'Motiv';

  @override
  String get security => 'Zabezpečení';

  @override
  String get privacyAndSecurity => 'Soukromí a zabezpečení';

  @override
  String get help => 'Nápověda';

  @override
  String get helpAndSupport => 'Nápověda a podpora';

  @override
  String get termsAndConditions => 'Podmínky použití';

  @override
  String get logOut => 'Odhlásit se';

  @override
  String memberSince(String date) {
    return 'Členem od $date';
  }

  @override
  String get themeSystem => 'Podle systému';

  @override
  String get themeLight => 'Světlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settings => 'Nastavení';

  @override
  String get noNotificationsTitle => 'Máte vše přečtené';

  @override
  String get noNotificationsBody =>
      'Nové postřehy a připomínky se objeví tady.';

  @override
  String get cancel => 'Zrušit';

  @override
  String get save => 'Uložit';

  @override
  String get done => 'Hotovo';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get close => 'Zavřít';

  @override
  String get somethingWentWrong => 'Něco se pokazilo';

  @override
  String get comingSoon => 'Přijde v plné verzi';

  @override
  String get edit => 'Upravit';

  @override
  String get delete => 'Smazat';

  @override
  String get undo => 'Vrátit zpět';

  @override
  String get add => 'Přidat';

  @override
  String get create => 'Vytvořit';

  @override
  String get nameRequired => 'Dejte tomu název';

  @override
  String get amountAboveZero => 'Zadejte částku větší než nula';

  @override
  String get editTransaction => 'Upravit pohyb';

  @override
  String get deleteTransaction => 'Smazat pohyb?';

  @override
  String deleteTransactionBody(String title) {
    return 'Pohyb $title zmizí z vašich záznamů.';
  }

  @override
  String get transactionDeleted => 'Pohyb smazán';

  @override
  String get transactionUpdated => 'Pohyb upraven';

  @override
  String get newBudget => 'Nový rozpočet';

  @override
  String get editBudget => 'Upravit rozpočet';

  @override
  String get budgetLimit => 'Měsíční limit';

  @override
  String get deleteBudget => 'Smazat rozpočet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Rozpočet $category bude odstraněn. Vašich pohybů se to nedotkne.';
  }

  @override
  String get budgetSaved => 'Rozpočet uložen';

  @override
  String get budgetDeleted => 'Rozpočet smazán';

  @override
  String get allCategoriesBudgeted => 'Každá kategorie už rozpočet má';

  @override
  String get noBudgetsTitle => 'Zatím žádné rozpočty';

  @override
  String get noBudgetsBody =>
      'Nastavte kategorii měsíční limit a začneme ji sledovat.';

  @override
  String get newGoal => 'Nový cíl';

  @override
  String get editGoal => 'Upravit cíl';

  @override
  String get goalName => 'Název cíle';

  @override
  String get goalNameHint => 'např. rezerva';

  @override
  String get targetAmount => 'Cílová částka';

  @override
  String get alreadySaved => 'Již naspořeno';

  @override
  String get deleteGoal => 'Smazat cíl?';

  @override
  String deleteGoalBody(String name) {
    return 'Cíl $name i jeho průběh budou odstraněny.';
  }

  @override
  String get goalSaved => 'Cíl uložen';

  @override
  String get goalDeleted => 'Cíl smazán';

  @override
  String get noGoalsTitle => 'Zatím žádné spořicí cíle';

  @override
  String get noGoalsBody =>
      'Nastavte si cíl a RainyPenny bude sledovat váš postup.';

  @override
  String get fundsAdded => 'Peníze přidány';

  @override
  String get newDebt => 'Nová půjčka nebo karta';

  @override
  String get editDebt => 'Upravit půjčku';

  @override
  String get debtName => 'Název';

  @override
  String get debtNameHint => 'např. půjčka na auto';

  @override
  String get lender => 'Věřitel';

  @override
  String get lenderHint => 'např. Česká spořitelna';

  @override
  String get originalAmount => 'Původní částka';

  @override
  String get creditLimit => 'Úvěrový limit';

  @override
  String get remainingBalance => 'Zbývá splatit';

  @override
  String get interestRatePercent => 'Úroková sazba (%)';

  @override
  String get kindLoan => 'Půjčka';

  @override
  String get kindCreditCard => 'Kreditní karta';

  @override
  String get recordPayment => 'Zaznamenat splátku';

  @override
  String get paymentRecorded => 'Splátka zaznamenána';

  @override
  String get deleteDebt => 'Smazat tento dluh?';

  @override
  String deleteDebtBody(String name) {
    return 'Dluh $name zmizí z vašeho seznamu.';
  }

  @override
  String get debtSaved => 'Uloženo';

  @override
  String get debtDeleted => 'Smazáno';

  @override
  String get noDebtsTitle => 'Žádné sledované dluhy';

  @override
  String get noDebtsBody =>
      'Přidejte půjčku nebo kreditní kartu, ať máte splátky na očích.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Rozpočet $subject překročen';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'V tomto období jste rozpočet $subject překročili o $amount.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject se blíží limitu';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Rozpočet $subject je využitý na $percent%, zbývá $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Výdaje převyšují příjmy';

  @override
  String get insightOverIncomeBody =>
      'V tomto období jste utratili víc, než jste vydělali. Projděte největší kategorie a srovnejte to.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Výdaje na $subject vzrostly';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Vaše výdaje na $subject jsou o $percent% vyšší než v minulém období.';
  }

  @override
  String get insightTrendDownTitle => 'Výdaje klesají';

  @override
  String insightTrendDownBody(int percent) {
    return 'Celkové výdaje jsou o $percent% nižší než v minulém období.';
  }

  @override
  String get insightTrendUpTitle => 'Výdaje rostou';

  @override
  String insightTrendUpBody(int percent) {
    return 'Celkové výdaje jsou o $percent% vyšší než v minulém období.';
  }

  @override
  String get insightSavingsStrongTitle => 'Skvělé úspory v tomto období';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Nechali jste si $percent% příjmu — výrazně nad cílem $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Míra úspor je pod cílem';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'V tomto období jste si nechali $percent% příjmu. Miřte na $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject je téměř naspořeno';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Na cíl $subject zbývá už jen $amount.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject jde podle plánu';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months měsíců',
      many: '$months měsíce',
      few: '$months měsíce',
      one: '$months měsíc',
    );
    return 'Při $amount měsíčně dosáhnete tohoto cíle za $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Splátka $subject je po splatnosti';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dní',
      many: '$days dne',
      few: '$days dny',
      one: '$days den',
    );
    return 'Splátka $amount za $subject je $_temp0 po splatnosti.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Blíží se splátka $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'za $days dní',
      many: 'za $days dne',
      few: 'za $days dny',
      one: 'za $days den',
      zero: 'dnes',
    );
    return '$amount je splatných $_temp0.';
  }

  @override
  String get signIn => 'Přihlásit se';

  @override
  String get signUp => 'Vytvořit účet';

  @override
  String get signInSubtitle => 'Vítejte zpět. Vaše peníze čekají.';

  @override
  String get signUpSubtitle => 'Pár údajů a je hotovo.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'ty@email.com';

  @override
  String get passwordLabel => 'Heslo';

  @override
  String get passwordHint => 'Nejméně 8 znaků';

  @override
  String get fullNameLabel => 'Celé jméno';

  @override
  String get fullNameHint => 'Jan Novák';

  @override
  String get forgotPassword => 'Zapomněli jste heslo?';

  @override
  String get resetSent => 'Odkaz pro obnovení najdete ve své schránce';

  @override
  String get noAccountYet => 'Jste tu poprvé?';

  @override
  String get haveAccount => 'Už máte účet?';

  @override
  String get emailInvalid => 'Zadejte platnou e-mailovou adresu';

  @override
  String get passwordTooShort => 'Použijte alespoň 8 znaků';

  @override
  String get signOutConfirm => 'Odhlásit se?';

  @override
  String get signOutBody =>
      'Abyste své finance viděli znovu, budete se muset přihlásit.';

  @override
  String get dataSource => 'Zdroj dat';

  @override
  String get insightWeeklySummaryTitle => 'Váš týden ve zkratce';

  @override
  String get insightWeeklySummaryBody =>
      'Podívejte se, kam tento týden šly peníze a jak drží vaše rozpočty.';

  @override
  String get notificationSettings => 'Oznámení';

  @override
  String get alertsSection => 'Upozornění';

  @override
  String get budgetAlerts => 'Upozornění na rozpočet';

  @override
  String get budgetAlertsBody =>
      'Když se rozpočet blíží limitu nebo ho překročí';

  @override
  String get paymentReminders => 'Připomínky splátek';

  @override
  String get paymentRemindersBody => 'Pár dní před splatností';

  @override
  String get savingsUpdates => 'Novinky ze spoření';

  @override
  String get savingsUpdatesBody => 'Postup k vašim cílům';

  @override
  String get weeklySummaryLabel => 'Týdenní souhrn';

  @override
  String get weeklySummaryBody => 'Shrnutí uplynulého týdne';

  @override
  String get scheduleSection => 'Načasování';

  @override
  String get reminderTime => 'Čas připomínky';

  @override
  String get quietHours => 'Tiché hodiny';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Den souhrnu';

  @override
  String get permissionRequired => 'Oznámení jsou vypnutá';

  @override
  String get permissionRequiredBody =>
      'Povolte oznámení, aby vás RainyPenny varoval dřív, než se rozpočet nebo splátka vymkne z rukou.';

  @override
  String get allowNotifications => 'Povolit oznámení';

  @override
  String get permissionDenied =>
      'Oznámení jsou blokovaná. Zapnout je můžete v nastavení zařízení.';

  @override
  String get upcomingAlerts => 'Naplánováno';

  @override
  String get noScheduledAlerts => 'Momentálně není nic naplánováno';

  @override
  String get noScheduledAlertsBody =>
      'Upozornění se tu objeví, jak se rozpočty a splátky budou blížit svým hranicím.';

  @override
  String scheduledFor(String date) {
    return 'Naplánováno na $date';
  }

  @override
  String get everyWeek => 'Každý týden';

  @override
  String get allNotificationsOff => 'Všechna oznámení jsou vypnutá';

  @override
  String get needsAttention => 'Vyžaduje pozornost';

  @override
  String get quickActionsTitle => 'Co chcete udělat?';

  @override
  String get createSection => 'Zaznamenat';

  @override
  String get jumpToSection => 'Přejít na';

  @override
  String get addLoanAction => 'Přidat půjčku';

  @override
  String get addBudgetAction => 'Přidat rozpočet';

  @override
  String get addGoalAction => 'Přidat cíl';

  @override
  String get longPressHint => 'Tip: podržte +, ať rovnou zapíšete výdaj';

  @override
  String get searchCurrencies => 'Hledat měny';

  @override
  String get noCurrenciesFound => 'Žádné měny nenalezeny';

  @override
  String get noCurrenciesFoundMessage => 'Zkuste jiný kód, symbol nebo název.';

  @override
  String get popularCurrencies => 'Oblíbené';

  @override
  String get allCurrencies => 'Všechny měny';

  @override
  String get totalLoanAmount => 'Celková výše půjčky';

  @override
  String get installmentAmount => 'Výše splátky';

  @override
  String get numberOfInstallments => 'Počet splátek';

  @override
  String get paidInstallments => 'Zaplacené splátky';

  @override
  String get remainingInstallments => 'Zbývající splátky';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Zaplaceno $paid z $total';
  }

  @override
  String get finalPayment => 'Poslední splátka';

  @override
  String get paymentDueDate => 'Datum splatnosti';

  @override
  String dueOnDayOfMonth(int day) {
    return '$day. den každého měsíce';
  }

  @override
  String get loanStatus => 'Stav';

  @override
  String get statusActive => 'Podle plánu';

  @override
  String get statusDueSoon => 'Brzy splatné';

  @override
  String get statusOverdue => 'Po splatnosti';

  @override
  String get statusCompleted => 'Splaceno';

  @override
  String get repaymentProgress => 'Průběh splácení';

  @override
  String get byAmount => 'Podle částky';

  @override
  String get byInstallments => 'Podle splátek';

  @override
  String get startDate => 'Datum začátku';

  @override
  String get openEnded => 'Bez konce';

  @override
  String get loanDetails => 'Detaily půjčky';

  @override
  String get notSet => 'Nenastaveno';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject je splatné dnes';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Splátka $amount je splatná dnes. Jedno klepnutí a je to včas.';
  }

  @override
  String get remindMorningTitle => 'Dobré ráno ☀️';

  @override
  String get remindMorningBody =>
      'Začněte den s penězi pod kontrolou. Zbylo něco ze včerejška?';

  @override
  String get remindNoonTitle => 'Polední kontrola';

  @override
  String get remindNoonBody =>
      'Oběd, káva, jízdenka? Zapíšete to za pár vteřin.';

  @override
  String get remindAfternoonTitle => 'Rychlé doplnění';

  @override
  String get remindAfternoonBody =>
      'Zapište, co jste zatím utratili, ať dnešní čísla sedí.';

  @override
  String get remindEveningTitle => 'Uzavíráme den';

  @override
  String get remindEveningBody =>
      'Dvě minuty teď a dnešní záznamy jsou kompletní.';

  @override
  String get happyWeekendTitle => 'Hezký víkend! 🎉';

  @override
  String get happyWeekendBody =>
      'Užijte si ho — a mějte oko i na víkendových výdajích.';

  @override
  String get dailyReminders => 'Denní připomínky výdajů';

  @override
  String get dailyRemindersBody =>
      'Jemná pošťouchnutí, ať jsou výdaje pořád aktuální';

  @override
  String get weekendGreeting => 'Víkendový pozdrav';

  @override
  String get weekendGreetingBody => 'Přátelský pozdrav na začátku víkendu';

  @override
  String get reminderTimesSection => 'Časy připomínek';

  @override
  String get slotMorning => 'Ráno';

  @override
  String get slotNoon => 'Poledne';

  @override
  String get slotAfternoon => 'Odpoledne';

  @override
  String get slotEvening => 'Večer';

  @override
  String get everyDay => 'Každý den';

  @override
  String get financialReport => 'Finanční přehled';

  @override
  String get preparedFor => 'Připraveno pro';

  @override
  String get generatedOn => 'Vytvořeno';

  @override
  String get reportDisclaimer =>
      'Vytvořil RainyPenny z vašich vlastních záznamů.';

  @override
  String pageOf(int page, int total) {
    return 'Strana $page z $total';
  }

  @override
  String get overview => 'Přehled';

  @override
  String get description => 'Popis';

  @override
  String get totalIncome => 'Celkové příjmy';

  @override
  String get totalExpenses => 'Celkové výdaje';

  @override
  String get totalSaved => 'Celkem naspořeno';

  @override
  String get shareOfTotal => 'Podíl';

  @override
  String get used => 'Využito';

  @override
  String get goal => 'Cíl';

  @override
  String get targetDate => 'Cílové datum';

  @override
  String get progress => 'Průběh';

  @override
  String get paidOffShort => 'Splaceno';

  @override
  String get transactions => 'Pohyby';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'a ještě $count pohybů',
      many: 'a ještě $count pohybu',
      few: 'a ještě $count pohyby',
      one: 'a ještě $count pohyb',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportovat PDF';

  @override
  String get sharePdf => 'Sdílet přehled';

  @override
  String get preparingReport => 'Připravujeme váš přehled…';

  @override
  String get reportReady => 'Přehled je hotový';

  @override
  String get reportFailed => 'Přehled se nepodařilo vytvořit';

  @override
  String get categories => 'Kategorie';

  @override
  String get categoriesIntro =>
      'Přidejte si vlastní kategorie, ať jsou příjmy a výdaje rozdělené přesně tak, jak o nich přemýšlíte.';

  @override
  String get expenseCategories => 'Kategorie výdajů';

  @override
  String get incomeCategories => 'Kategorie příjmů';

  @override
  String get newCategory => 'Nová kategorie';

  @override
  String get editCategory => 'Upravit kategorii';

  @override
  String get categoryName => 'Název';

  @override
  String get categoryNameHint => 'např. domácí mazlíček';

  @override
  String get icon => 'Ikona';

  @override
  String get categorySaved => 'Kategorie uložena';

  @override
  String get categoryDeleted => 'Kategorie smazána';

  @override
  String get deleteCategory => 'Smazat tuto kategorii?';

  @override
  String deleteCategoryBody(String name) {
    return 'Kategorie $name zmizí z vašeho seznamu.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count záznamů tuto kategorii stále používá',
      many: '$count záznamu tuto kategorii stále používá',
      few: '$count záznamy tuto kategorii stále používají',
      one: '$count záznam tuto kategorii stále používá',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Zatím tu nic není.';

  @override
  String get builtIn => 'Vestavěná';

  @override
  String get manageCategories => 'Správa kategorií';

  @override
  String get expense => 'Výdaj';

  @override
  String get languageNote =>
      'Arabština, urdština, perština a hebrejština překlopí celé rozhraní zprava doleva, včetně grafů a PDF přehledů.';

  @override
  String get next => 'Dále';

  @override
  String get back => 'Zpět';

  @override
  String get skip => 'Přeskočit';

  @override
  String get continueLabel => 'Pokračovat';

  @override
  String get selected => 'Vybráno';

  @override
  String get passwordRequired => 'Zadejte své heslo';

  @override
  String get newPasswordLabel => 'Nové heslo';

  @override
  String get confirmPasswordLabel => 'Potvrďte heslo';

  @override
  String get passwordsDoNotMatch => 'Obě hesla se musí shodovat';

  @override
  String get showPassword => 'Zobrazit heslo';

  @override
  String get hidePassword => 'Skrýt heslo';

  @override
  String get savePassword => 'Uložit heslo';

  @override
  String get backToSignIn => 'Zpět na přihlášení';

  @override
  String get alreadyHaveAccount => 'Už mám účet';

  @override
  String get getStarted => 'Pojďme na to';

  @override
  String get acceptTerms =>
      'Souhlasím s podmínkami použití a zásadami ochrany soukromí';

  @override
  String get acceptTermsRequired => 'Pro pokračování prosím souhlaste';

  @override
  String get passwordStrengthTooShort => 'Příliš krátké';

  @override
  String get passwordStrengthWeak => 'Slabé';

  @override
  String get passwordStrengthFair => 'Ucházející';

  @override
  String get passwordStrengthGood => 'Dobré';

  @override
  String get passwordStrengthStrong => 'Silné';

  @override
  String get passwordAdvice =>
      'Dlouhá věta, kterou si zapamatujete, je lepší než krátké heslo plné znaků. Vyhněte se čemukoli, co už používáte jinde.';

  @override
  String get authInvalidCredentials =>
      'Tento e-mail a heslo neodpovídají žádnému účtu';

  @override
  String get authEmailNotConfirmed =>
      'Před přihlášením potvrďte svou e-mailovou adresu';

  @override
  String get authEmailAlreadyRegistered => 'Účet s tímto e-mailem už existuje';

  @override
  String get authWeakPassword => 'Zvolte delší heslo';

  @override
  String get authRateLimited => 'Příliš mnoho pokusů. Zkuste to za pár minut';

  @override
  String get authNetworkError =>
      'Žádné připojení. Zkontrolujte síť a zkuste to znovu';

  @override
  String get authGenericError => 'Něco se pokazilo. Zkuste to prosím znovu';

  @override
  String get confirmEmailTitle => 'Zkontrolujte e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Poslali jsme potvrzovací odkaz na $email. Otevřete jej a dokončete založení účtu.';
  }

  @override
  String get resendConfirmation => 'Znovu poslat potvrzovací e-mail';

  @override
  String get confirmationResent => 'Potvrzovací e-mail odeslán';

  @override
  String get forgotPasswordTitle => 'Obnovení hesla';

  @override
  String get forgotPasswordSubtitle =>
      'Zadejte e-mail, se kterým jste se registrovali, a pošleme vám odkaz pro nastavení nového hesla.';

  @override
  String get sendResetLink => 'Poslat odkaz';

  @override
  String get resetLinkSentTitle => 'Odkaz odeslán';

  @override
  String resetLinkSentBody(String email) {
    return 'Pokud k $email existuje účet, odkaz už je na cestě.';
  }

  @override
  String get resetLinkSentHint =>
      'Odkaz vyprší za hodinu. Pokud nedorazí, mrkněte do spamu, než si vyžádáte nový.';

  @override
  String get tryAnotherEmail => 'Použít jiný e-mail';

  @override
  String get resetPasswordTitle => 'Zvolte nové heslo';

  @override
  String get resetPasswordSubtitle =>
      'Vyberte něco, co jste u tohoto účtu ještě nepoužili.';

  @override
  String get passwordChangedTitle => 'Heslo aktualizováno';

  @override
  String get passwordChangedBody =>
      'Vaše nové heslo je uložené. Jste přihlášeni a můžete pokračovat.';

  @override
  String get demoModeHint => 'Ukázková verze — účet není potřeba';

  @override
  String get demoModeFill => 'Vyplnit';

  @override
  String get welcomeTrackTitle => 'Uvidíte, kam jdou vaše peníze';

  @override
  String get welcomeTrackBody =>
      'Zapisujte, co přijde a co odejde. RainyPenny z toho udělá obrázek, který se dá opravdu číst.';

  @override
  String get welcomeBudgetTitle => 'Hranice, které vydrží';

  @override
  String get welcomeBudgetBody =>
      'Dejte každé části svých výdajů měsíční strop a zjistěte to dřív, než ho překročíte, ne až potom.';

  @override
  String get welcomeGoalsTitle => 'Spořte na to, na čem záleží';

  @override
  String get welcomeGoalsBody =>
      'Pojmenujte cíl, nastavte částku a sledujte, jak se plní. Rezervu se buduje snáz, když ji vidíte.';

  @override
  String get welcomePrivacyTitle => 'Vaše peníze zůstávají vaše';

  @override
  String get welcomePrivacyBody =>
      'Vaše čísla patří jen vám. Nic se neprodává a nic se s nikým nesdílí.';

  @override
  String stepOf(int step, int total) {
    return 'Krok $step z $total';
  }

  @override
  String get onboardingNameTitle => 'Jak vám máme říkat?';

  @override
  String get onboardingNameBody => 'Použijeme to jen k pozdravu, nikde jinde.';

  @override
  String get onboardingNameHint =>
      'Křestní jméno stačí. Později ho můžete změnit.';

  @override
  String get onboardingCurrencyTitle => 'Jakou měnu používáte?';

  @override
  String get onboardingCurrencyBody =>
      'Všechny částky v aplikaci se zobrazují v této měně. Volba nic nepřevádí.';

  @override
  String get onboardingCurrencySearch => 'Hledat mezi všemi měnami';

  @override
  String get onboardingAppearanceTitle => 'Udělejte si to po svém';

  @override
  String get onboardingAppearanceBody =>
      'Vyberte si vzhled. Všechno se mění hned při ťuknutí a kdykoli se sem můžete vrátit.';

  @override
  String get onboardingNotificationsTitle => 'Mějte to pod kontrolou';

  @override
  String get onboardingNotificationsBody =>
      'Tiché pošťouchnutí ve správnou chvíli je to, co z toho udělá zvyk.';

  @override
  String get onboardingNotifyReminders =>
      'Jemná připomínka, ať si zapíšete, co jste utratili';

  @override
  String get onboardingNotifyBudget => 'Upozornění dřív, než dojde rozpočet';

  @override
  String get onboardingNotifySummary => 'Týdenní souhrn, kam šly vaše peníze';

  @override
  String get onboardingNotifyEnable => 'Zapnout oznámení';

  @override
  String get onboardingNotifyDone => 'Nastavení oznámení uloženo';

  @override
  String get onboardingNotifyLater =>
      'Všechno tohle můžete kdykoli změnit v Nastavení.';

  @override
  String get onboardingReadyTitle => 'Vše je připraveno';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Vše je připraveno, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Nastavení je hotové. Chcete rychlou prohlídku, jak to všechno funguje?';

  @override
  String get onboardingTakeTour => 'Ukažte mi to';

  @override
  String get onboardingGoToApp => 'Vezměte mě do aplikace';

  @override
  String get onboardingTourLater =>
      'Teď ne? Průvodce zůstává v Nastavení, kdykoli budete chtít.';

  @override
  String get beginnersGuide => 'Průvodce pro začátečníky';

  @override
  String get guideFinish => 'Dokončit';

  @override
  String chapterOf(int number, int total) {
    return 'Kapitola $number z $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Otevřít: $screen';
  }

  @override
  String get guideDashboardTitle => 'Vaše domovská obrazovka';

  @override
  String get guideDashboardBody =>
      'Všechno začíná tady. Karta nahoře ukazuje, co vám zbývá; pod ní je, co v tomto období přišlo a odešlo, a dál vaše výdaje, rozpočty a cíle.';

  @override
  String get guideDashboardTip1 =>
      'Stáhněte obrazovku dolů, ať se všechno naráz obnoví.';

  @override
  String get guideDashboardTip2 =>
      'Klepněte na kartu příjmů nebo výdajů a skočíte rovnou na ten seznam.';

  @override
  String get guideDashboardTip3 =>
      'Kroužky i postřehy se obnoví ve chvíli, kdy něco zapíšete.';

  @override
  String get guideAddTitle => 'Zapisování peněz';

  @override
  String get guideAddBody =>
      'Tlačítko uprostřed lišty je začátek všeho. Otevře krátkou nabídku: výdaj, příjem, dluh, rozpočet nebo spořicí cíl.';

  @override
  String get guideAddTip1 =>
      'Klepněte na prostřední tlačítko a zapište příjem nebo výdaj.';

  @override
  String get guideAddTip2 =>
      'Podržte ho a přejdete rovnou k novému výdaji bez nabídky.';

  @override
  String get guideAddTip3 =>
      'Vždy vyberte kategorii — na ní stojí grafy i rozpočty.';

  @override
  String get guideCategoriesTitle => 'Kategorie';

  @override
  String get guideCategoriesBody =>
      'Kategorie seskupují výdaje. Ty vestavěné většině lidí stačí, ale můžete je přejmenovat nebo si přidat vlastní.';

  @override
  String get guideCategoriesTip1 =>
      'Nastavení, pak Správa kategorií — tam se upravuje i přidává.';

  @override
  String get guideCategoriesTip2 =>
      'Co zůstane bez kategorie, spadne do „Ostatní“, aby grafy zůstaly poctivé.';

  @override
  String get guideBudgetTitle => 'Rozpočty';

  @override
  String get guideBudgetBody =>
      'Rozpočet je měsíční strop pro jednu kategorii. Pruh se plní, jak utrácíte, a u hranice mění barvu, takže to zjistíte dřív, než ho překročíte.';

  @override
  String get guideBudgetTip1 =>
      'Začněte dvěma třemi kategoriemi, ne všemi najednou.';

  @override
  String get guideBudgetTip2 =>
      'Nastavte limit kousek nad své obvyklé výdaje a pak ho utahujte.';

  @override
  String get guideBudgetTip3 =>
      'Nechte upozornění zapnutá a aplikace se ozve, až bude rozpočet docházet.';

  @override
  String get guideSavingsTitle => 'Spořicí cíle';

  @override
  String get guideSavingsBody =>
      'Pojmenujte, na co spoříte, nastavte částku a datum, a aplikace spočítá, kolik je potřeba měsíčně odkládat.';

  @override
  String get guideSavingsTip1 =>
      'Pojmenovaný cíl se drží líp než mlhavý úmysl něco ušetřit.';

  @override
  String get guideSavingsTip2 =>
      'Několik malých cílů se dotáhne do konce častěji než jeden velký.';

  @override
  String get guideLoansTitle => 'Dluhy a půjčky';

  @override
  String get guideLoansBody =>
      'Zapište, kolik dlužíte, kolik to stojí a kdy je další splátka. Všechno, co splácíte, je v jednom seznamu i se zbývající částkou.';

  @override
  String get guideLoansTip1 =>
      'Doplňte datum splatnosti a připomínky ho pohlídají za vás.';

  @override
  String get guideLoansTip2 =>
      'Dluh po splatnosti svítí na domovské obrazovce červeně, dokud ho nezaplatíte.';

  @override
  String get guideReportsTitle => 'Přehledy';

  @override
  String get guideReportsBody =>
      'Pohled do hloubky: příjmy proti výdajům, výdaje podle kategorií, jak držely rozpočty a jaká část příjmu vám zůstala.';

  @override
  String get guideReportsTip1 =>
      'Nahoře přepínáte mezi týdnem, měsícem a čtvrtletím.';

  @override
  String get guideReportsTip2 =>
      'Vyexportujte nebo sdílejte PDF — vyjde ve vašem jazyce a jeho směru psaní.';

  @override
  String get guideSettingsTitle => 'Nastavení';

  @override
  String get guideSettingsBody =>
      'Jazyk, měna, barvy i upozornění jsou tady a úvodní nastavení nic z toho nezamyká — měňte, co chcete a kdy chcete.';

  @override
  String get guideSettingsTip1 =>
      'Čtyřicet jazyků a celé rozvržení se u těch psaných zprava doleva zrcadlí.';

  @override
  String get guideSettingsTip2 =>
      'Vyberte, jaká upozornění chcete a v jakých hodinách smí chodit.';

  @override
  String get guideSettingsTip3 => 'Tiché hodiny zadrží všechno až do rána.';

  @override
  String get guideHabitTitle => 'Ať to vydrží';

  @override
  String get guideHabitBody =>
      'Aplikace je tak dobrá, kolik do ní vložíte. Minuta denně je lepší než hodina měsíčně a po dvou týdnech vám čísla začnou něco říkat.';

  @override
  String get guideHabitTip1 => 'Zapisujte výdaje hned, ne až na konci týdne.';

  @override
  String get guideHabitTip2 =>
      'Mrkněte na domovskou obrazovku jednou denně. Deset vteřin stačí.';

  @override
  String get guideHabitTip3 =>
      'Tento průvodce zůstává v Nastavení — vraťte se kdykoli.';

  @override
  String get appearance => 'Vzhled';

  @override
  String get themeCaption => 'Světlý, tmavý, nebo jak to má telefon.';

  @override
  String get accentColor => 'Barva zvýraznění';

  @override
  String get accentColorCaption => 'Barví tlačítka, zvýraznění a grafy.';

  @override
  String get accentSemanticsNote =>
      'Příchozí i odchozí peníze si v každém motivu drží vlastní barvu, takže číslo nikdy nezmění význam jen proto, že jste změnili zvýraznění.';

  @override
  String get accentTeal => 'Tyrkysová';

  @override
  String get accentGreen => 'Zelená';

  @override
  String get accentSky => 'Blankytná';

  @override
  String get accentBlue => 'Modrá';

  @override
  String get accentIndigo => 'Indigová';

  @override
  String get accentViolet => 'Fialová';

  @override
  String get accentPink => 'Růžová';

  @override
  String get accentCrimson => 'Karmínová';

  @override
  String get accentOrange => 'Oranžová';

  @override
  String get accentSlate => 'Břidlicová';

  @override
  String get searchLanguages => 'Hledat jazyky';

  @override
  String get suggestedLanguages => 'Doporučené';

  @override
  String get allLanguages => 'Všechny jazyky';

  @override
  String get noLanguagesFound => 'Žádné jazyky nenalezeny';

  @override
  String get noLanguagesFoundMessage =>
      'Zkuste název anglicky nebo dvoupísmenný kód.';

  @override
  String get rightToLeft => 'Zprava doleva';

  @override
  String get replayGuide => 'Znovu si projít průvodce';

  @override
  String get replaySetup => 'Spustit nastavení znovu';

  @override
  String get replaySetupBody =>
      'Projděte úvodní otázky ještě jednou. Nic z toho, co jste zapsali, se nesmaže.';

  @override
  String get rateTitle => 'Líbí se vám RainyPenny?';

  @override
  String get rateBody =>
      'Už nějakou dobu u toho vydržíte. Hodnocení zabere chvilku a pomůže ostatním aplikaci najít.';

  @override
  String get rateAction => 'Ohodnotit aplikaci';

  @override
  String get rateLater => 'Možná později';

  @override
  String get rateNever => 'Ne, děkuji';

  @override
  String get rateThanks => 'Děkujeme';

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
}
