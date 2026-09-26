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
  String get navTransactions => 'Transakce';

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
    return 'Dobré odpoledne, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Dobrý večer, $name';
  }

  @override
  String get greetingSubtitle => 'Zde je váš finanční přehled';

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
  String get recentTransactions => 'Poslední transakce';

  @override
  String get seeAll => 'Zobrazit vše';

  @override
  String get viewAll => 'Zobrazit vše';

  @override
  String get budgetProgress => 'Průběh rozpočtu';

  @override
  String get savingsGoals => 'Cíle spoření';

  @override
  String get financialInsight => 'Finanční přehled';

  @override
  String get financialHealth => 'Finanční kondice';

  @override
  String ofTotal(String total) {
    return 'z $total';
  }

  @override
  String get searchTransactions => 'Hledat transakce';

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
  String get noTransactionsTitle => 'Nebyly nalezeny žádné transakce';

  @override
  String get noTransactionsBody =>
      'Zkuste jiné vyhledávání nebo filtr a zobrazte více své aktivity.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transakce',
      many: '$count transakcí',
      few: '$count transakce',
      one: '1 transakce',
      zero: 'Žádné transakce',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Přidat transakci';

  @override
  String get amount => 'Částka';

  @override
  String get category => 'Kategorie';

  @override
  String get date => 'Datum';

  @override
  String get note => 'Poznámka';

  @override
  String get noteHint => 'Volitelná poznámka';

  @override
  String get saveIncome => 'Uložit příjem';

  @override
  String get saveExpense => 'Uložit výdaj';

  @override
  String get selectCategory => 'Vybrat kategorii';

  @override
  String get transactionSaved => 'Transakce uložena';

  @override
  String get amountRequired => 'Zadejte částku větší než nula';

  @override
  String get titleRequired => 'Pojmenujte tuto transakci';

  @override
  String get descriptionLabel => 'Popis';

  @override
  String get descriptionHint => 'např. Potraviny';

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
    return 'Využito $percent %';
  }

  @override
  String get onTrack => 'Podle plánu';

  @override
  String get approachingLimit => 'Blížíte se limitu';

  @override
  String get overBudget => 'Překročený rozpočet';

  @override
  String get savings => 'Úspory';

  @override
  String get yourGoals => 'Vaše cíle';

  @override
  String get saved => 'Ušetřeno';

  @override
  String get target => 'Cíl';

  @override
  String get monthlyContribution => 'Měsíčně';

  @override
  String get addFunds => 'Přidat prostředky';

  @override
  String get goalComplete => 'Cíl dosažen';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zbývá $count měsíců',
      many: 'zbývá $count měsíců',
      few: 'zbývají $count měsíce',
      one: 'zbývá 1 měsíc',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Půjčky a dluhy';

  @override
  String get totalOutstanding => 'Celkem nesplaceno';

  @override
  String get monthlyPayment => 'Měsíčně';

  @override
  String get nextPayment => 'Další splátka';

  @override
  String paidOff(int percent) {
    return 'Splaceno $percent %';
  }

  @override
  String get interestRate => 'Úrok';

  @override
  String get upcomingPayments => 'Nadcházející platby';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Splatnost za $count dní',
      many: 'Splatnost za $count dní',
      few: 'Splatnost za $count dny',
      one: 'Splatnost zítra',
      zero: 'Splatnost dnes',
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
  String get incomeVsExpenses => 'Příjmy vs. výdaje';

  @override
  String get spendingByCategory => 'Výdaje podle kategorií';

  @override
  String get budgetPerformance => 'Vývoj rozpočtu';

  @override
  String get insights => 'Přehledy';

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
  String get termsAndConditions => 'Obchodní podmínky';

  @override
  String get logOut => 'Odhlásit se';

  @override
  String memberSince(String date) {
    return 'Členem od $date';
  }

  @override
  String get themeSystem => 'Systémový';

  @override
  String get themeLight => 'Světlý';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get settings => 'Nastavení';

  @override
  String get noNotificationsTitle => 'Vše máte vyřízené';

  @override
  String get noNotificationsBody =>
      'Nové přehledy a připomínky se zobrazí zde.';

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
  String get comingSoon => 'Již brzy v plné verzi';

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
  String get nameRequired => 'Zadejte své jméno';

  @override
  String get amountAboveZero => 'Zadejte částku větší než nula';

  @override
  String get editTransaction => 'Upravit transakci';

  @override
  String get deleteTransaction => 'Smazat transakci?';

  @override
  String deleteTransactionBody(String title) {
    return '$title bude odstraněna z vašeho přehledu.';
  }

  @override
  String get transactionDeleted => 'Transakce smazána';

  @override
  String get transactionUpdated => 'Transakce aktualizována';

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
    return 'Rozpočet pro kategorii $category bude odstraněn. Vaše transakce zůstanou beze změny.';
  }

  @override
  String get budgetSaved => 'Rozpočet uložen';

  @override
  String get budgetDeleted => 'Rozpočet smazán';

  @override
  String get allCategoriesBudgeted => 'Každá kategorie již má rozpočet';

  @override
  String get noBudgetsTitle => 'Zatím žádné rozpočty';

  @override
  String get noBudgetsBody =>
      'Nastavte měsíční limit pro kategorii a začněte ji sledovat.';

  @override
  String get newGoal => 'Nový cíl';

  @override
  String get editGoal => 'Upravit cíl';

  @override
  String get goalName => 'Název cíle';

  @override
  String get goalNameHint => 'např. Rezervní fond';

  @override
  String get targetAmount => 'Cílová částka';

  @override
  String get alreadySaved => 'Již ušetřeno';

  @override
  String get deleteGoal => 'Smazat cíl?';

  @override
  String deleteGoalBody(String name) {
    return '$name a jeho průběh budou odstraněny.';
  }

  @override
  String get goalSaved => 'Cíl uložen';

  @override
  String get goalDeleted => 'Cíl smazán';

  @override
  String get noGoalsTitle => 'Zatím žádné cíle spoření';

  @override
  String get noGoalsBody =>
      'Nastavte si cíl a RainyPenny bude sledovat váš postup.';

  @override
  String get fundsAdded => 'Prostředky přidány';

  @override
  String get newDebt => 'Nová půjčka nebo karta';

  @override
  String get editDebt => 'Upravit půjčku';

  @override
  String get debtName => 'Název';

  @override
  String get debtNameHint => 'např. Půjčka na auto';

  @override
  String get lender => 'Věřitel';

  @override
  String get lenderHint => 'např. Meridian Bank';

  @override
  String get originalAmount => 'Původní částka';

  @override
  String get creditLimit => 'Úvěrový limit';

  @override
  String get remainingBalance => 'Zbývající zůstatek';

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
    return '$name bude odstraněn z vašich dluhů.';
  }

  @override
  String get debtSaved => 'Uloženo';

  @override
  String get debtDeleted => 'Smazáno';

  @override
  String get noDebtsTitle => 'Žádné sledované dluhy';

  @override
  String get noDebtsBody =>
      'Přidejte půjčku nebo kreditní kartu a mějte přehled o splácení.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Rozpočet pro $subject překročen';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'V tomto období jste $amount nad rozpočtem pro $subject.';
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
    return 'Rozpočet pro $subject je využit na $percent %, zbývá $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Výdaje převyšují příjmy';

  @override
  String get insightOverIncomeBody =>
      'V tomto období jste utratili více, než jste vydělali. Prohlédněte si největší kategorie a vraťte výdaje do rovnováhy.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Výdaje za $subject rostou';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Vaše výdaje za $subject jsou oproti předchozímu období o $percent % vyšší.';
  }

  @override
  String get insightTrendDownTitle => 'Výdaje klesají';

  @override
  String insightTrendDownBody(int percent) {
    return 'Celkové výdaje jsou oproti předchozímu období o $percent % nižší.';
  }

  @override
  String get insightTrendUpTitle => 'Výdaje rostou';

  @override
  String insightTrendUpBody(int percent) {
    return 'Celkové výdaje jsou oproti předchozímu období o $percent % vyšší.';
  }

  @override
  String get insightSavingsStrongTitle => 'Silné úspory za toto období';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Podařilo se vám ušetřit $percent % příjmů — výrazně více než cílových $target %.';
  }

  @override
  String get insightSavingsLowTitle => 'Míra úspor je pod cílem';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'V tomto období jste ušetřili $percent % příjmů. Usilujte o $target %.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject je téměř naspořen';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Do dosažení cíle $subject zbývá už jen $amount.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Cíl $subject je podle plánu';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months měsíců',
      many: '$months měsíců',
      few: '$months měsíce',
      one: '1 měsíc',
    );
    return 'Při spoření $amount měsíčně dosáhnete tohoto cíle za $_temp0.';
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
      many: '$days dní',
      few: '$days dny',
      one: '1 den',
    );
    return 'Splátka $subject ve výši $amount je $_temp0 po splatnosti.';
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
      many: 'za $days dní',
      few: 'za $days dny',
      one: 'zítra',
      zero: 'dnes',
    );
    return 'Částka $amount je splatná $_temp0.';
  }

  @override
  String get signIn => 'Přihlásit se';

  @override
  String get signUp => 'Vytvořit účet';

  @override
  String get signInSubtitle => 'Vítejte zpět. Vaše peníze čekají.';

  @override
  String get signUpSubtitle => 'Stačí pár údajů a můžete začít.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'vy@email.com';

  @override
  String get passwordLabel => 'Heslo';

  @override
  String get passwordHint => 'Alespoň 8 znaků';

  @override
  String get fullNameLabel => 'Celé jméno';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Zapomenuté heslo?';

  @override
  String get resetSent =>
      'Zkontrolujte schránku, kam jsme poslali odkaz pro obnovení';

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
      'Pro zobrazení svých financí se budete muset znovu přihlásit.';

  @override
  String get dataSource => 'Zdroj dat';

  @override
  String get insightWeeklySummaryTitle => 'Váš týden v kostce';

  @override
  String get insightWeeklySummaryBody =>
      'Podívejte se, kam tento týden šly vaše peníze a jak si vedou vaše rozpočty.';

  @override
  String get notificationSettings => 'Oznámení';

  @override
  String get alertsSection => 'Upozornění';

  @override
  String get budgetAlerts => 'Upozornění na rozpočet';

  @override
  String get budgetAlertsBody =>
      'Když se rozpočet blíží limitu nebo jej překročí';

  @override
  String get paymentReminders => 'Připomínky plateb';

  @override
  String get paymentRemindersBody => 'Několik dní před splatností platby';

  @override
  String get savingsUpdates => 'Aktualizace spoření';

  @override
  String get savingsUpdatesBody => 'Postup směrem k vašim cílům';

  @override
  String get weeklySummaryLabel => 'Týdenní přehled';

  @override
  String get weeklySummaryBody => 'Souhrn právě uplynulého týdne';

  @override
  String get scheduleSection => 'Časování';

  @override
  String get reminderTime => 'Čas připomínky';

  @override
  String get quietHours => 'Doba klidu';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Den přehledu';

  @override
  String get permissionRequired => 'Oznámení jsou vypnutá';

  @override
  String get permissionRequiredBody =>
      'Povolte oznámení, aby vás RainyPenny mohl upozornit dříve, než se rozpočet nebo platba vymkne kontrole.';

  @override
  String get allowNotifications => 'Povolit oznámení';

  @override
  String get permissionDenied =>
      'Oznámení jsou zablokovaná. Můžete je zapnout v nastavení zařízení.';

  @override
  String get upcomingAlerts => 'Naplánované';

  @override
  String get noScheduledAlerts => 'Momentálně nic naplánováno';

  @override
  String get noScheduledAlertsBody =>
      'Upozornění se zde zobrazí, když se vaše rozpočty a platby přiblíží svým limitům nebo termínům.';

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
  String get longPressHint =>
      'Tip: podržením tlačítka + rovnou zaznamenáte výdaj';

  @override
  String get searchCurrencies => 'Hledat měny';

  @override
  String get noCurrenciesFound => 'Měny nenalezeny';

  @override
  String get noCurrenciesFoundMessage => 'Zkuste jiný kód, symbol nebo název.';

  @override
  String get popularCurrencies => 'Oblíbené';

  @override
  String get allCurrencies => 'Všechny měny';

  @override
  String get totalLoanAmount => 'Celková částka půjčky';

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
    return 'Den $day každého měsíce';
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
  String get startDate => 'Datum zahájení';

  @override
  String get openEnded => 'Bez pevného konce';

  @override
  String get loanDetails => 'Podrobnosti půjčky';

  @override
  String get notSet => 'Nenastaveno';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject je splatný dnes';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Vaše splátka $amount je splatná dnes. Rychlé klepnutí ji udrží včas.';
  }

  @override
  String get remindMorningTitle => 'Dobré ráno ☀️';

  @override
  String get remindMorningBody =>
      'Začněte den s přehledem o svých penězích. Máte něco ze včerejška k zaznamenání?';

  @override
  String get remindNoonTitle => 'Polední kontrola';

  @override
  String get remindNoonBody =>
      'Oběd, káva, jízdné? Přidejte to během pár sekund.';

  @override
  String get remindAfternoonTitle => 'Rychlé doplnění';

  @override
  String get remindAfternoonBody =>
      'Zaznamenejte, co jste zatím utratili, a udržujte dnešní údaje přesné.';

  @override
  String get remindEveningTitle => 'Konec dne';

  @override
  String get remindEveningBody =>
      'Dvě minuty teď a dnešní čísla budou kompletní.';

  @override
  String get happyWeekendTitle => 'Hezký víkend! 🎉';

  @override
  String get happyWeekendBody =>
      'Užijte si ho — a mějte přehled o víkendových výdajích.';

  @override
  String get dailyReminders => 'Denní připomínky výdajů';

  @override
  String get dailyRemindersBody =>
      'Přátelské připomínky, které vám pomohou udržovat výdaje aktuální';

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
  String get generatedOn => 'Vygenerováno';

  @override
  String get reportDisclaimer =>
      'Vygenerováno aplikací RainyPenny z vašich vlastních záznamů.';

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
  String get totalSaved => 'Celkem ušetřeno';

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
  String get transactions => 'Transakce';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'a dalších $count transakcí',
      many: 'a dalších $count transakcí',
      few: 'a další $count transakce',
      one: 'a 1 další transakce',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportovat PDF';

  @override
  String get sharePdf => 'Sdílet přehled';

  @override
  String get preparingReport => 'Připravuje se váš přehled…';

  @override
  String get reportReady => 'Přehled je připraven';

  @override
  String get reportFailed => 'Přehled se nepodařilo vytvořit';

  @override
  String get categories => 'Kategorie';

  @override
  String get categoriesIntro =>
      'Přidejte vlastní kategorie pro třídění příjmů a výdajů přesně podle toho, jak o nich přemýšlíte.';

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
  String get categoryNameHint => 'např. Péče o mazlíčky';

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
    return '$name bude odstraněna z vašich kategorií.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count záznamů stále používá tuto kategorii',
      many: '$count záznamů stále používá tuto kategorii',
      few: '$count záznamy stále používají tuto kategorii',
      one: '1 záznam stále používá tuto kategorii',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Zatím zde nic není.';

  @override
  String get builtIn => 'Vestavěná';

  @override
  String get manageCategories => 'Spravovat kategorie';

  @override
  String get expense => 'Výdaj';

  @override
  String get languageNote =>
      'Arabština, urdština, perština a hebrejština přepnou celé rozhraní zprava doleva, včetně grafů a PDF přehledů.';

  @override
  String get next => 'Další';

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
  String get confirmPasswordLabel => 'Potvrdit heslo';

  @override
  String get passwordsDoNotMatch => 'Hesla se musí shodovat';

  @override
  String get showPassword => 'Zobrazit heslo';

  @override
  String get hidePassword => 'Skrýt heslo';

  @override
  String get savePassword => 'Uložit heslo';

  @override
  String get backToSignIn => 'Zpět k přihlášení';

  @override
  String get alreadyHaveAccount => 'Již mám účet';

  @override
  String get getStarted => 'Začít';

  @override
  String get acceptTerms =>
      'Souhlasím s Podmínkami služby a Zásadami ochrany osobních údajů';

  @override
  String get acceptTermsRequired => 'Pro pokračování přijměte podmínky';

  @override
  String get passwordStrengthTooShort => 'Příliš krátké';

  @override
  String get passwordStrengthWeak => 'Slabé';

  @override
  String get passwordStrengthFair => 'Přijatelné';

  @override
  String get passwordStrengthGood => 'Dobré';

  @override
  String get passwordStrengthStrong => 'Silné';

  @override
  String get passwordAdvice =>
      'Dlouhá fráze, kterou si zapamatujete, je lepší než krátké heslo plné symbolů. Vyhněte se čemukoli, co již používáte jinde.';

  @override
  String get authInvalidCredentials =>
      'Tento e-mail a heslo neodpovídají žádnému účtu';

  @override
  String get authEmailNotConfirmed =>
      'Před přihlášením potvrďte svou e-mailovou adresu';

  @override
  String get authEmailAlreadyRegistered => 'Účet s tímto e-mailem již existuje';

  @override
  String get authWeakPassword => 'Zvolte delší heslo';

  @override
  String get authRateLimited =>
      'Příliš mnoho pokusů. Zkuste to znovu za několik minut';

  @override
  String get authNetworkError =>
      'Žádné připojení. Zkontrolujte síť a zkuste to znovu';

  @override
  String get authGenericError => 'Něco se pokazilo. Zkuste to znovu';

  @override
  String get confirmEmailTitle => 'Zkontrolujte svůj e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Na adresu $email jsme poslali potvrzovací odkaz. Otevřete jej a dokončete nastavení účtu.';
  }

  @override
  String get resendConfirmation => 'Znovu odeslat potvrzovací e-mail';

  @override
  String get confirmationResent => 'Potvrzovací e-mail odeslán';

  @override
  String get forgotPasswordTitle => 'Obnovit heslo';

  @override
  String get forgotPasswordSubtitle =>
      'Zadejte e-mail, se kterým jste se zaregistrovali, a pošleme vám odkaz pro nastavení nového hesla.';

  @override
  String get sendResetLink => 'Odeslat odkaz pro obnovení';

  @override
  String get resetLinkSentTitle => 'Odkaz pro obnovení odeslán';

  @override
  String resetLinkSentBody(String email) {
    return 'Pokud má $email účet, odkaz pro obnovení je na cestě.';
  }

  @override
  String get resetLinkSentHint =>
      'Odkaz vyprší za hodinu. Pokud nedorazí, před žádostí o nový zkontrolujte složku se spamem.';

  @override
  String get tryAnotherEmail => 'Použít jiný e-mail';

  @override
  String get resetPasswordTitle => 'Zvolte nové heslo';

  @override
  String get resetPasswordSubtitle =>
      'Zvolte heslo, které jste na tomto účtu ještě nepoužili.';

  @override
  String get passwordChangedTitle => 'Heslo aktualizováno';

  @override
  String get passwordChangedBody =>
      'Vaše nové heslo je uloženo. Jste přihlášeni a můžete začít.';

  @override
  String get demoModeHint => 'Demo verze — účet není potřeba';

  @override
  String get demoModeFill => 'Vyplnit';

  @override
  String get welcomeTrackTitle => 'Zjistěte, kam vaše peníze míří';

  @override
  String get welcomeTrackBody =>
      'Zaznamenávejte příjmy a výdaje. RainyPenny je promění v přehled, kterému opravdu porozumíte.';

  @override
  String get welcomeBudgetTitle => 'Nastavte limity, které vydrží';

  @override
  String get welcomeBudgetBody =>
      'Dejte každé oblasti výdajů měsíční strop a nechte se upozornit dříve, než jej překročíte, nikoli až poté.';

  @override
  String get welcomeGoalsTitle => 'Šetřete na tom, na čem záleží';

  @override
  String get welcomeGoalsBody =>
      'Pojmenujte cíl, nastavte částku a sledujte, jak se plní. Rezervní fond se buduje snáz, když jeho růst vidíte.';

  @override
  String get welcomePrivacyTitle => 'Vaše peníze zůstávají vaše';

  @override
  String get welcomePrivacyBody =>
      'Vaše finanční údaje patří jen vám. Nic neprodáváme a s nikým nic nesdílíme.';

  @override
  String stepOf(int step, int total) {
    return 'Krok $step z $total';
  }

  @override
  String get onboardingNameTitle => 'Jak vám máme říkat?';

  @override
  String get onboardingNameBody => 'Použijeme to pro pozdravy a nikde jinde.';

  @override
  String get onboardingNameHint =>
      'Stačí křestní jméno. Později ho můžete změnit.';

  @override
  String get onboardingCurrencyTitle => 'Jakou měnu používáte?';

  @override
  String get onboardingCurrencyBody =>
      'Všechny částky v aplikaci se zobrazí v této měně. Jejím výběrem se nic nepřepočítává.';

  @override
  String get onboardingCurrencySearch => 'Hledat všechny měny';

  @override
  String get onboardingAppearanceTitle => 'Přizpůsobte si aplikaci';

  @override
  String get onboardingAppearanceBody =>
      'Vyberte si vzhled. Vše se změní podle vašeho výběru a kdykoli se k němu můžete vrátit.';

  @override
  String get onboardingNotificationsTitle => 'Mějte vše pod kontrolou';

  @override
  String get onboardingNotificationsBody =>
      'Tiché připomenutí ve správný okamžik pomůže vytvořit návyk.';

  @override
  String get onboardingNotifyReminders =>
      'Jemná připomínka, abyste zaznamenali, co jste utratili';

  @override
  String get onboardingNotifyBudget => 'Upozornění před vyčerpáním rozpočtu';

  @override
  String get onboardingNotifySummary =>
      'Týdenní přehled toho, kam vaše peníze šly';

  @override
  String get onboardingNotifyEnable => 'Zapnout oznámení';

  @override
  String get onboardingNotifyDone => 'Nastavení oznámení uloženo';

  @override
  String get onboardingNotifyLater => 'Vše můžete kdykoli změnit v Nastavení.';

  @override
  String get onboardingReadyTitle => 'Vše je připraveno';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Vše je připraveno, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Nastavení je hotové. Chcete si projít krátkou ukázku, jak vše funguje?';

  @override
  String get onboardingTakeTour => 'Prohlédnout aplikaci';

  @override
  String get onboardingGoToApp => 'Přejít do aplikace';

  @override
  String get onboardingTourLater =>
      'Teď ne? Průvodce zůstane v Nastavení, kdykoli se k němu budete chtít vrátit.';

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
    return 'Otevřít $screen';
  }

  @override
  String get guideDashboardTitle => 'Váš přehled';

  @override
  String get guideDashboardBody =>
      'Zde vše začíná. Karta nahoře ukazuje, kolik vám zbývá; pod ní jsou příjmy a výdaje za toto období, následované výdaji, rozpočty a cíli.';

  @override
  String get guideDashboardTip1 =>
      'Stažením obrazovky dolů vše najednou aktualizujete.';

  @override
  String get guideDashboardTip2 =>
      'Klepnutím na kartu příjmů nebo výdajů přejdete na příslušný seznam.';

  @override
  String get guideDashboardTip3 =>
      'Kruhové ukazatele a přehledy se aktualizují okamžitě po zaznamenání nové položky.';

  @override
  String get guideAddTitle => 'Zaznamenávání peněz';

  @override
  String get guideAddBody =>
      'Tlačítko uprostřed lišty je místem, kde vše začíná. Otevře krátkou nabídku: výdaj, příjem, dluh, rozpočet nebo cíl spoření.';

  @override
  String get guideAddTip1 =>
      'Klepnutím na prostřední tlačítko zaznamenáte příjem nebo výdaj.';

  @override
  String get guideAddTip2 =>
      'Podržením tlačítka přejdete rovnou na nový výdaj a přeskočíte nabídku.';

  @override
  String get guideAddTip3 =>
      'Vždy vyberte kategorii — díky ní fungují grafy a rozpočty.';

  @override
  String get guideCategoriesTitle => 'Kategorie';

  @override
  String get guideCategoriesBody =>
      'Kategorie určují, jak se výdaje seskupují. Ty, které jsou v aplikaci přednastavené, pokryjí většinu potřeb a můžete je přejmenovat nebo přidat vlastní.';

  @override
  String get guideCategoriesTip1 =>
      'Přejděte do Nastavení a poté na Spravovat kategorie, kde je můžete měnit nebo přidávat.';

  @override
  String get guideCategoriesTip2 =>
      'Vše, co zůstane bez kategorie, skončí v Ostatní, aby grafy zůstaly přesné.';

  @override
  String get guideBudgetTitle => 'Rozpočty';

  @override
  String get guideBudgetBody =>
      'Rozpočet je měsíční strop pro jednu kategorii. Lišta se při utrácení plní a při přiblížení k limitu se změní, takže se to dozvíte dříve, než limit překročíte.';

  @override
  String get guideBudgetTip1 =>
      'Začněte se dvěma nebo třemi kategoriemi, ne se všemi najednou.';

  @override
  String get guideBudgetTip2 =>
      'Nastavte limit trochu nad běžnou úroveň výdajů a pak jej postupně zpřísňujte.';

  @override
  String get guideBudgetTip3 =>
      'Nechte zapnutá upozornění na rozpočet a aplikace vás upozorní, když se některý rozpočet začne blížit vyčerpání.';

  @override
  String get guideSavingsTitle => 'Cíle spoření';

  @override
  String get guideSavingsBody =>
      'Pojmenujte, na co šetříte, nastavte cílovou částku a datum a aplikace vypočítá, kolik potřebujete měsíčně odkládat, abyste cíle dosáhli.';

  @override
  String get guideSavingsTip1 =>
      'Pojmenovaný cíl se dodržuje snáz než neurčitý záměr spořit.';

  @override
  String get guideSavingsTip2 =>
      'Několik menších cílů bývá dokončeno častěji než jeden velký.';

  @override
  String get guideLoansTitle => 'Dluhy a půjčky';

  @override
  String get guideLoansBody =>
      'Zaznamenejte, kolik dlužíte, kolik vás to stojí a kdy je splatná další platba. Vše, co splácíte, máte v jednom seznamu spolu s celkovou zbývající částkou.';

  @override
  String get guideLoansTip1 =>
      'Přidejte datum splatnosti a připomínky plateb vás na něj upozorní.';

  @override
  String get guideLoansTip2 =>
      'Dluh označený jako po splatnosti se na přehledu zobrazí červeně, dokud jej neuhradíte.';

  @override
  String get guideReportsTitle => 'Přehledy';

  @override
  String get guideReportsBody =>
      'Podrobnější pohled: příjmy oproti výdajům, výdaje podle kategorií, jak si vedly rozpočty a jakou část příjmů jste si ponechali.';

  @override
  String get guideReportsTip1 =>
      'Nahoře na obrazovce přepínejte mezi týdnem, měsícem a čtvrtletím.';

  @override
  String get guideReportsTip2 =>
      'Exportujte nebo sdílejte PDF — vytvoří se ve vašem jazyce a směru textu.';

  @override
  String get guideSettingsTitle => 'Nastavení';

  @override
  String get guideSettingsBody =>
      'Jazyk, měna, barvy a upozornění najdete zde a žádné z nich nejsou nastavením natrvalo uzamčené — kdykoli je můžete změnit.';

  @override
  String get guideSettingsTip1 =>
      'Čtyřicet jazyků a celé rozhraní se u jazyků psaných zprava doleva zrcadlově otočí.';

  @override
  String get guideSettingsTip2 =>
      'Vyberte si, která upozornění chcete dostávat a v jakých hodinách.';

  @override
  String get guideSettingsTip3 =>
      'Doba klidu všechna upozornění pozdrží až do rána.';

  @override
  String get guideHabitTitle => 'Vytvořte si návyk';

  @override
  String get guideHabitBody =>
      'Aplikace je jen tak dobrá, jako jsou údaje, které do ní zadáváte. Minuta denně je lepší než hodina jednou za měsíc a po dvou týdnech vám čísla začnou něco říkat.';

  @override
  String get guideHabitTip1 =>
      'Zaznamenávejte výdaje průběžně, ne až na konci týdne.';

  @override
  String get guideHabitTip2 =>
      'Jednou denně se podívejte na přehled. Stačí deset sekund.';

  @override
  String get guideHabitTip3 =>
      'Tento průvodce zůstává v Nastavení — vraťte se k němu, kdykoli budete chtít.';

  @override
  String get appearance => 'Vzhled';

  @override
  String get themeCaption => 'Světlý, tmavý nebo podle nastavení telefonu.';

  @override
  String get accentColor => 'Barva zvýraznění';

  @override
  String get accentColorCaption => 'Obarví tlačítka, zvýraznění a grafy.';

  @override
  String get accentSemanticsNote =>
      'Příjmy a výdaje mají ve všech motivech vlastní barvy, takže číslo nikdy nezmění význam kvůli změně barvy zvýraznění.';

  @override
  String get accentTeal => 'Tyrkysová';

  @override
  String get accentGreen => 'Zelená';

  @override
  String get accentSky => 'Nebeská modrá';

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
  String get noLanguagesFound => 'Jazyky nenalezeny';

  @override
  String get noLanguagesFoundMessage =>
      'Zkuste název v angličtině nebo dvoupísmenný kód.';

  @override
  String get rightToLeft => 'Zprava doleva';

  @override
  String get replayGuide => 'Spustit průvodce znovu';

  @override
  String get replaySetup => 'Spustit nastavení znovu';

  @override
  String get replaySetupBody =>
      'Projděte znovu otázky při prvním spuštění. Nic z toho, co jste zaznamenali, nebude smazáno.';

  @override
  String get rateTitle => 'Líbí se vám RainyPenny?';

  @override
  String get rateBody =>
      'Už nějakou dobu se o své finance staráte. Hodnocení zabere chvíli a pomůže ostatním aplikaci najít.';

  @override
  String get rateAction => 'Ohodnotit aplikaci';

  @override
  String get rateLater => 'Možná později';

  @override
  String get rateNever => 'Ne, děkuji';

  @override
  String get rateThanks => 'Děkujeme';

  @override
  String get monthlySalary => 'Měsíční mzda';

  @override
  String get remainingAmount => 'Zbývá';

  @override
  String get carriedForward => 'Převedeno';

  @override
  String get carriedForwardHint => 'Zůstatek z minulého cyklu';

  @override
  String get totalSpending => 'Celkové výdaje';

  @override
  String get salaryCycle => 'Mzdový cyklus';

  @override
  String get payday => 'Výplatní den';

  @override
  String get paydayDescription =>
      'Den, kdy vám chodí mzda. Váš finanční měsíc trvá od tohoto dne do dne před další výplatou.';

  @override
  String get paydayUpdated => 'Výplatní den aktualizován';

  @override
  String paydayDayOfMonth(int day) {
    return 'Den $day';
  }

  @override
  String get paydayShortMonthNote =>
      'V kratších měsících cyklus začíná místo toho posledním dnem.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní do výplaty',
      many: '$count dní do výplaty',
      few: '$count dny do výplaty',
      one: '1 den do výplaty',
      zero: 'Poslední den cyklu',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Další výplata';

  @override
  String get spentSoFar => 'Dosud utraceno';

  @override
  String get dailyAllowance => 'Bezpečná denní útrata';

  @override
  String get overspentNotice =>
      'V tomto cyklu jste utratili více, než kolik přišlo.';

  @override
  String get backToThisMonth => 'Zpět na tento měsíc';

  @override
  String get cycleRangeLabel => 'Cyklus';

  @override
  String get noSalaryRecorded => 'Zatím není zaznamenána žádná mzda';

  @override
  String get addSalaryAction => 'Přidat mzdu';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Výborná';

  @override
  String get healthGood => 'Dobrá';

  @override
  String get healthFair => 'Přijatelná';

  @override
  String get healthNeedsWork => 'Vyžaduje zlepšení';

  @override
  String get healthExcellentBody =>
      'Dobře spoříte a držíte se v rámci svých rozpočtů.';

  @override
  String get healthGoodBody => 'Vaše výdaje jsou za toto období podle plánu.';

  @override
  String get healthFairBody =>
      'Několik rozpočtů je napjatých. Pomohou malé změny.';

  @override
  String get healthNeedsWorkBody =>
      'Výdaje převyšují váš plán. Začněte největší kategorií.';

  @override
  String get factorSavingsRate => 'Míra úspor';

  @override
  String get factorBudgetControl => 'Kontrola rozpočtu';

  @override
  String get factorDebtLoad => 'Dluhové zatížení';

  @override
  String get factorSpendingTrend => 'Trend výdajů';

  @override
  String factorKept(String percent) {
    return 'Ušetřeno $percent %';
  }

  @override
  String factorUsed(String percent) {
    return 'Využito $percent %';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent % příjmů';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Nahoru o $percent %';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Dolů o $percent %';
  }

  @override
  String get howScoreWorks => 'Jak toto skóre funguje';

  @override
  String get healthScoreExplainer =>
      'Vaše skóre kombinuje čtyři faktory: kolik příjmů si ponecháte, jak dobře se držíte svých rozpočtů, jak velká část příjmů jde na dluhy a zda vaše výdaje rostou, nebo klesají.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent % skóre';
  }

  @override
  String get viewHealthDetails => 'Zobrazit podrobnosti';

  @override
  String get saveChanges => 'Uložit změny';

  @override
  String get profileUpdated => 'Profil aktualizován';

  @override
  String get changePhoto => 'Změnit fotografii';

  @override
  String get removePhoto => 'Odstranit fotografii';

  @override
  String get personalInformationIntro =>
      'Vaše jméno a fotografie se zobrazují v celé aplikaci. Váš e-mail je adresa, kterou používáte k přihlášení.';

  @override
  String get emailNotEditable =>
      'Pro změnu adresy, kterou používáte k přihlášení, kontaktujte podporu.';

  @override
  String get pressBackAgainToExit =>
      'Dalším stisknutím tlačítka Zpět aplikaci ukončíte';

  @override
  String get categoryHousing => 'Bydlení';

  @override
  String get categoryFood => 'Jídlo a stravování';

  @override
  String get categoryTransport => 'Doprava';

  @override
  String get categoryShopping => 'Nákupy';

  @override
  String get categoryBills => 'Účty a služby';

  @override
  String get categoryEntertainment => 'Zábava';

  @override
  String get categoryHealth => 'Zdraví a fitness';

  @override
  String get categoryEducation => 'Vzdělávání';

  @override
  String get categoryTravel => 'Cestování';

  @override
  String get categorySalary => 'Mzda';

  @override
  String get categoryFreelance => 'Práce na volné noze';

  @override
  String get categoryInvestments => 'Investice';

  @override
  String get categoryGift => 'Dar';

  @override
  String get categoryOther => 'Ostatní';

  @override
  String get categoryGroceries => 'Potraviny';

  @override
  String get categoryDining => 'Stravování';

  @override
  String get categoryCoffee => 'Káva';

  @override
  String get categoryUtilities => 'Služby';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Pojištění';

  @override
  String get categorySubscriptions => 'Předplatné';

  @override
  String get categoryPersonalCare => 'Osobní péče';

  @override
  String get categoryClothing => 'Oblečení';

  @override
  String get categoryElectronics => 'Elektronika';

  @override
  String get categoryHomeSupplies => 'Potřeby do domácnosti';

  @override
  String get categoryPets => 'Mazlíčci';

  @override
  String get categoryChildcare => 'Péče o děti';

  @override
  String get categoryFamily => 'Rodina';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Léky';

  @override
  String get categoryMedical => 'Zdravotní péče';

  @override
  String get categoryCharity => 'Charita';

  @override
  String get categoryTaxes => 'Daně';

  @override
  String get categoryFees => 'Poplatky';

  @override
  String get categoryDebt => 'Dluh';

  @override
  String get categorySavings => 'Úspory';

  @override
  String get categoryRepairs => 'Opravy';

  @override
  String get categoryCarMaintenance => 'Údržba auta';

  @override
  String get categoryFuel => 'Palivo';

  @override
  String get categoryParking => 'Parkování';

  @override
  String get categoryPublicTransport => 'Veřejná doprava';

  @override
  String get categoryRent => 'Nájem';

  @override
  String get categoryMortgage => 'Hypotéka';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provize';

  @override
  String get categoryPension => 'Důchod';

  @override
  String get categoryInterest => 'Úrok';

  @override
  String get categoryDividends => 'Dividendy';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Vrácení peněz';

  @override
  String get categoryRentalIncome => 'Příjem z pronájmu';

  @override
  String get addCategory => 'Nová kategorie';

  @override
  String get filterByCategory => 'Filtrovat podle kategorie';

  @override
  String get allCategories => 'Všechny kategorie';

  @override
  String get clearFilters => 'Vymazat filtry';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Celé období';

  @override
  String get customRange => 'Vlastní';

  @override
  String get selectDateRange => 'Vyberte období';

  @override
  String rangeApplied(String start, String end) {
    return 'Zobrazeno $start – $end';
  }

  @override
  String get loans => 'Půjčky';

  @override
  String get debts => 'Dluhy';

  @override
  String get noLoansTitle => 'Žádné půjčky';

  @override
  String get noLoansBody => 'Nemáte žádné aktivní půjčky.';

  @override
  String get emptyHealthTitle => 'Zatím žádné finanční skóre';

  @override
  String get emptyHealthDescription =>
      'Potřebujeme trochu finanční aktivity, abychom mohli vypočítat přesné skóre finanční kondice.';

  @override
  String get emptyHealthAddTransactions =>
      'Přidejte příjmové nebo výdajové transakce';

  @override
  String get emptyHealthSetBudgets => 'Nastavte své měsíční rozpočty';

  @override
  String get emptyHealthTrackLoans => 'Sledujte půjčky nebo dluhy (volitelné)';

  @override
  String get emptyHealthCardSubtitle =>
      'Přidejte transakce a vypočítejte své skóre a získejte přehledy.';

  @override
  String get smartBudgetSplit => 'Chytré rozdělení rozpočtu';

  @override
  String get smartBudgetSplitSubtitle =>
      'Zadejte svou měsíční mzdu a vypočítejte doporučené limity';

  @override
  String get monthlyNetSalary => 'Čistá měsíční mzda';

  @override
  String get categoryAllocations => 'Rozdělení podle kategorií';

  @override
  String totalBudgeted(String amount) {
    return 'Celkem: $amount';
  }

  @override
  String get applyAllBudgets => 'Použít všechny rozpočty';

  @override
  String get applyingBudgets => 'Používání rozpočtů...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vytvořeno $count rozpočtů kategorií.',
      many: 'Vytvořeno $count rozpočtů kategorií.',
      few: 'Vytvořeny $count rozpočty kategorií.',
      one: 'Vytvořen 1 rozpočet kategorie.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Rozpočty se nepodařilo uložit.';

  @override
  String get recommendedBudget => 'Doporučený rozpočet';
}
