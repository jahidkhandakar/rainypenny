// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppL10nHu extends AppL10n {
  AppL10nHu([String locale = 'hu']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Tegyen félre a nehezebb napokra';

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navTransactions => 'Tételek';

  @override
  String get navAdd => 'Hozzáadás';

  @override
  String get navReports => 'Kimutatások';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Jó reggelt, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Jó napot, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Jó estét, $name';
  }

  @override
  String get greetingSubtitle => 'Így áll a pénzügyi helyzete';

  @override
  String get totalBalance => 'Teljes egyenleg';

  @override
  String get vsLastPeriod => 'az előző időszakhoz képest';

  @override
  String get income => 'Bevétel';

  @override
  String get expenses => 'Kiadás';

  @override
  String get netBalance => 'Nettó egyenleg';

  @override
  String get lastThirtyDays => 'Elmúlt 30 nap';

  @override
  String get quickActions => 'Gyors műveletek';

  @override
  String get addIncome => 'Bevétel hozzáadása';

  @override
  String get addExpense => 'Kiadás hozzáadása';

  @override
  String get spendingOverview => 'Kiadások áttekintése';

  @override
  String get recentTransactions => 'Legutóbbi tételek';

  @override
  String get seeAll => 'Összes megtekintése';

  @override
  String get viewAll => 'Mind megjelenítése';

  @override
  String get budgetProgress => 'Keretek állása';

  @override
  String get savingsGoals => 'Megtakarítási célok';

  @override
  String get financialInsight => 'Pénzügyi észrevétel';

  @override
  String get financialHealth => 'Pénzügyi egészség';

  @override
  String ofTotal(String total) {
    return 'ebből: $total';
  }

  @override
  String get searchTransactions => 'Tételek keresése';

  @override
  String get filterAll => 'Összes';

  @override
  String get filterIncome => 'Bevétel';

  @override
  String get filterExpenses => 'Kiadás';

  @override
  String get today => 'Ma';

  @override
  String get yesterday => 'Tegnap';

  @override
  String get noTransactionsTitle => 'Nincs találat';

  @override
  String get noTransactionsBody =>
      'Próbáljon másik keresést vagy szűrőt, hogy több bejegyzést lásson.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tétel',
      zero: 'Nincs tétel',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Tétel hozzáadása';

  @override
  String get amount => 'Összeg';

  @override
  String get category => 'Kategória';

  @override
  String get date => 'Dátum';

  @override
  String get note => 'Megjegyzés';

  @override
  String get noteHint => 'Megjegyzés (nem kötelező)';

  @override
  String get saveIncome => 'Bevétel mentése';

  @override
  String get saveExpense => 'Kiadás mentése';

  @override
  String get selectCategory => 'Kategória választása';

  @override
  String get transactionSaved => 'A tétel mentve';

  @override
  String get amountRequired => 'Adjon meg nullánál nagyobb összeget';

  @override
  String get titleRequired => 'Adjon nevet ennek a tételnek';

  @override
  String get descriptionLabel => 'Leírás';

  @override
  String get descriptionHint => 'pl. bevásárlás';

  @override
  String get budget => 'Keret';

  @override
  String get budgets => 'Keretek';

  @override
  String get totalBudget => 'Teljes keret';

  @override
  String get spent => 'Elköltve';

  @override
  String get remaining => 'Maradt';

  @override
  String budgetUsed(int percent) {
    return '$percent% felhasználva';
  }

  @override
  String get onTrack => 'Jó úton';

  @override
  String get approachingLimit => 'Közel a határhoz';

  @override
  String get overBudget => 'Kereten felül';

  @override
  String get savings => 'Megtakarítás';

  @override
  String get yourGoals => 'Az Ön céljai';

  @override
  String get saved => 'Megtakarítva';

  @override
  String get target => 'Cél';

  @override
  String get monthlyContribution => 'Havonta';

  @override
  String get addFunds => 'Befizetés';

  @override
  String get goalComplete => 'A cél teljesült';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'még $count hónap',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Hitelek és tartozások';

  @override
  String get totalOutstanding => 'Fennálló tartozás';

  @override
  String get monthlyPayment => 'Havonta';

  @override
  String get nextPayment => 'Következő részlet';

  @override
  String paidOff(int percent) {
    return '$percent% törlesztve';
  }

  @override
  String get interestRate => 'Kamat';

  @override
  String get upcomingPayments => 'Közelgő részletek';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap múlva',
      zero: 'Ma esedékes',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Lejárt';

  @override
  String get reports => 'Kimutatások';

  @override
  String get week => 'Hét';

  @override
  String get month => 'Hónap';

  @override
  String get quarter => 'Negyedév';

  @override
  String get incomeVsExpenses => 'Bevétel és kiadás';

  @override
  String get spendingByCategory => 'Kiadás kategóriánként';

  @override
  String get budgetPerformance => 'Keretek teljesülése';

  @override
  String get insights => 'Észrevételek';

  @override
  String get savingsRate => 'Megtakarítási ráta';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Fiók';

  @override
  String get personalInformation => 'Személyes adatok';

  @override
  String get changePassword => 'Jelszó módosítása';

  @override
  String get notifications => 'Értesítések';

  @override
  String get preferences => 'Beállítások';

  @override
  String get language => 'Nyelv';

  @override
  String get currency => 'Pénznem';

  @override
  String get theme => 'Téma';

  @override
  String get security => 'Biztonság';

  @override
  String get privacyAndSecurity => 'Adatvédelem és biztonság';

  @override
  String get help => 'Súgó';

  @override
  String get helpAndSupport => 'Súgó és támogatás';

  @override
  String get termsAndConditions => 'Felhasználási feltételek';

  @override
  String get logOut => 'Kijelentkezés';

  @override
  String memberSince(String date) {
    return 'Tag $date óta';
  }

  @override
  String get themeSystem => 'Rendszer szerint';

  @override
  String get themeLight => 'Világos';

  @override
  String get themeDark => 'Sötét';

  @override
  String get settings => 'Beállítások';

  @override
  String get noNotificationsTitle => 'Mindent látott';

  @override
  String get noNotificationsBody =>
      'Az új észrevételek és emlékeztetők itt jelennek meg.';

  @override
  String get cancel => 'Mégse';

  @override
  String get save => 'Mentés';

  @override
  String get done => 'Kész';

  @override
  String get retry => 'Újra';

  @override
  String get close => 'Bezárás';

  @override
  String get somethingWentWrong => 'Valami hiba történt';

  @override
  String get comingSoon => 'A teljes verzióban érkezik';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get delete => 'Törlés';

  @override
  String get undo => 'Visszavonás';

  @override
  String get add => 'Hozzáadás';

  @override
  String get create => 'Létrehozás';

  @override
  String get nameRequired => 'Adjon neki nevet';

  @override
  String get amountAboveZero => 'Adjon meg nullánál nagyobb összeget';

  @override
  String get editTransaction => 'Tétel szerkesztése';

  @override
  String get deleteTransaction => 'Törli a tételt?';

  @override
  String deleteTransactionBody(String title) {
    return 'A(z) $title kikerül a nyilvántartásából.';
  }

  @override
  String get transactionDeleted => 'A tétel törölve';

  @override
  String get transactionUpdated => 'A tétel frissítve';

  @override
  String get newBudget => 'Új keret';

  @override
  String get editBudget => 'Keret szerkesztése';

  @override
  String get budgetLimit => 'Havi felső határ';

  @override
  String get deleteBudget => 'Törli a keretet?';

  @override
  String deleteBudgetBody(String category) {
    return 'A(z) $category keret törlődik. A tételeit ez nem érinti.';
  }

  @override
  String get budgetSaved => 'A keret mentve';

  @override
  String get budgetDeleted => 'A keret törölve';

  @override
  String get allCategoriesBudgeted => 'Minden kategóriának van már kerete';

  @override
  String get noBudgetsTitle => 'Még nincs keret';

  @override
  String get noBudgetsBody =>
      'Adjon havi felső határt egy kategóriának, és elindul a követése.';

  @override
  String get newGoal => 'Új cél';

  @override
  String get editGoal => 'Cél szerkesztése';

  @override
  String get goalName => 'A cél neve';

  @override
  String get goalNameHint => 'pl. vésztartalék';

  @override
  String get targetAmount => 'Célösszeg';

  @override
  String get alreadySaved => 'Már megtakarítva';

  @override
  String get deleteGoal => 'Törli a célt?';

  @override
  String deleteGoalBody(String name) {
    return 'A(z) $name és a hozzá tartozó haladás törlődik.';
  }

  @override
  String get goalSaved => 'A cél mentve';

  @override
  String get goalDeleted => 'A cél törölve';

  @override
  String get noGoalsTitle => 'Még nincs megtakarítási cél';

  @override
  String get noGoalsBody =>
      'Tűzzön ki célt, és a RainyPenny követi a haladását.';

  @override
  String get fundsAdded => 'Az összeg hozzáadva';

  @override
  String get newDebt => 'Új hitel vagy kártya';

  @override
  String get editDebt => 'Hitel szerkesztése';

  @override
  String get debtName => 'Név';

  @override
  String get debtNameHint => 'pl. autóhitel';

  @override
  String get lender => 'Hitelező';

  @override
  String get lenderHint => 'pl. OTP Bank';

  @override
  String get originalAmount => 'Eredeti összeg';

  @override
  String get creditLimit => 'Hitelkeret';

  @override
  String get remainingBalance => 'Fennmaradó tartozás';

  @override
  String get interestRatePercent => 'Kamatláb (%)';

  @override
  String get kindLoan => 'Hitel';

  @override
  String get kindCreditCard => 'Hitelkártya';

  @override
  String get recordPayment => 'Törlesztés rögzítése';

  @override
  String get paymentRecorded => 'A törlesztés rögzítve';

  @override
  String get deleteDebt => 'Törli ezt a tartozást?';

  @override
  String deleteDebtBody(String name) {
    return 'A(z) $name kikerül a tartozásai közül.';
  }

  @override
  String get debtSaved => 'Mentve';

  @override
  String get debtDeleted => 'Törölve';

  @override
  String get noDebtsTitle => 'Nincs követett tartozás';

  @override
  String get noDebtsBody =>
      'Vegyen fel hitelt vagy hitelkártyát, hogy szemmel tarthassa a törlesztéseket.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'A(z) $subject keret túllépve';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Ebben az időszakban $amount összeggel lépte túl a(z) $subject keretet.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'A(z) $subject közelít a határhoz';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'A(z) $subject keret $percent%-a elfogyott, $amount maradt.';
  }

  @override
  String get insightOverIncomeTitle => 'A kiadás meghaladja a bevételt';

  @override
  String get insightOverIncomeBody =>
      'Ebben az időszakban többet költött, mint amennyit keresett. Nézze át a legnagyobb kategóriákat, hogy helyreálljon az egyensúly.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'A(z) $subject kiadás nőtt';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'A(z) $subject kiadása $percent%-kal magasabb az előző időszakhoz képest.';
  }

  @override
  String get insightTrendDownTitle => 'A kiadások csökkennek';

  @override
  String insightTrendDownBody(int percent) {
    return 'Az összes kiadás $percent%-kal alacsonyabb az előző időszakhoz képest.';
  }

  @override
  String get insightTrendUpTitle => 'A kiadások nőnek';

  @override
  String insightTrendUpBody(int percent) {
    return 'Az összes kiadás $percent%-kal magasabb az előző időszakhoz képest.';
  }

  @override
  String get insightSavingsStrongTitle =>
      'Erős megtakarítás ebben az időszakban';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Bevételének $percent%-át megtartotta — jóval a $target%-os cél felett.';
  }

  @override
  String get insightSavingsLowTitle => 'A megtakarítási ráta a cél alatt van';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Ebben az időszakban bevételének $percent%-át tartotta meg. A cél $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'A(z) $subject majdnem összegyűlt';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Már csak $amount hiányzik a(z) $subject eléréséhez.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'A(z) $subject jó úton halad';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months hónap',
    );
    return 'Havi $amount mellett $_temp0 alatt éri el ezt a célt.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'A(z) $subject törlesztése lejárt';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days napja',
    );
    return 'A(z) $subject $amount összegű törlesztése $_temp0 késik.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Közeleg a(z) $subject törlesztése';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap múlva',
      zero: 'ma',
    );
    return '$amount esedékes $_temp0.';
  }

  @override
  String get signIn => 'Bejelentkezés';

  @override
  String get signUp => 'Fiók létrehozása';

  @override
  String get signInSubtitle => 'Üdv újra. A pénze várja.';

  @override
  String get signUpSubtitle => 'Néhány adat, és készen is van.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'te@email.com';

  @override
  String get passwordLabel => 'Jelszó';

  @override
  String get passwordHint => 'Legalább 8 karakter';

  @override
  String get fullNameLabel => 'Teljes név';

  @override
  String get fullNameHint => 'Kovács Anna';

  @override
  String get forgotPassword => 'Elfelejtette a jelszavát?';

  @override
  String get resetSent =>
      'Nézze meg a postaládáját a visszaállító hivatkozásért';

  @override
  String get noAccountYet => 'Először jár itt?';

  @override
  String get haveAccount => 'Már van fiókja?';

  @override
  String get emailInvalid => 'Adjon meg érvényes e-mail-címet';

  @override
  String get passwordTooShort => 'Használjon legalább 8 karaktert';

  @override
  String get signOutConfirm => 'Kijelentkezik?';

  @override
  String get signOutBody =>
      'Újra be kell jelentkeznie, hogy lássa a pénzügyeit.';

  @override
  String get dataSource => 'Adatforrás';

  @override
  String get insightWeeklySummaryTitle => 'A hete egy pillantásra';

  @override
  String get insightWeeklySummaryBody =>
      'Nézze meg, hová ment a pénze a héten, és hogyan tartanak a keretei.';

  @override
  String get notificationSettings => 'Értesítések';

  @override
  String get alertsSection => 'Riasztások';

  @override
  String get budgetAlerts => 'Keretriasztások';

  @override
  String get budgetAlertsBody =>
      'Amikor egy keret közelít a határhoz vagy túllépi azt';

  @override
  String get paymentReminders => 'Fizetési emlékeztetők';

  @override
  String get paymentRemindersBody => 'Néhány nappal az esedékesség előtt';

  @override
  String get savingsUpdates => 'Megtakarítási hírek';

  @override
  String get savingsUpdatesBody => 'Haladás a céljai felé';

  @override
  String get weeklySummaryLabel => 'Heti összefoglaló';

  @override
  String get weeklySummaryBody => 'Az elmúlt hét összegzése';

  @override
  String get scheduleSection => 'Időzítés';

  @override
  String get reminderTime => 'Emlékeztető időpontja';

  @override
  String get quietHours => 'Csendes órák';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Az összefoglaló napja';

  @override
  String get permissionRequired => 'Az értesítések ki vannak kapcsolva';

  @override
  String get permissionRequiredBody =>
      'Engedélyezze az értesítéseket, hogy a RainyPenny szólhasson, mielőtt egy keret vagy egy részlet kicsúszna a kezéből.';

  @override
  String get allowNotifications => 'Értesítések engedélyezése';

  @override
  String get permissionDenied =>
      'Az értesítések le vannak tiltva. A készülék beállításaiban kapcsolhatja be őket.';

  @override
  String get upcomingAlerts => 'Ütemezve';

  @override
  String get noScheduledAlerts => 'Jelenleg nincs ütemezve semmi';

  @override
  String get noScheduledAlertsBody =>
      'A riasztások itt jelennek meg, ahogy a keretek és a részletek közelítenek a határukhoz.';

  @override
  String scheduledFor(String date) {
    return 'Ütemezve: $date';
  }

  @override
  String get everyWeek => 'Minden héten';

  @override
  String get allNotificationsOff => 'Minden értesítés ki van kapcsolva';

  @override
  String get needsAttention => 'Figyelmet igényel';

  @override
  String get quickActionsTitle => 'Mit szeretne csinálni?';

  @override
  String get createSection => 'Rögzítés';

  @override
  String get jumpToSection => 'Ugrás ide';

  @override
  String get addLoanAction => 'Hitel hozzáadása';

  @override
  String get addBudgetAction => 'Keret hozzáadása';

  @override
  String get addGoalAction => 'Cél hozzáadása';

  @override
  String get longPressHint =>
      'Tipp: tartsa nyomva a + gombot a kiadás azonnali rögzítéséhez';

  @override
  String get searchCurrencies => 'Pénznemek keresése';

  @override
  String get noCurrenciesFound => 'Nincs találat';

  @override
  String get noCurrenciesFoundMessage =>
      'Próbáljon másik kódot, jelet vagy nevet.';

  @override
  String get popularCurrencies => 'Népszerű';

  @override
  String get allCurrencies => 'Összes pénznem';

  @override
  String get totalLoanAmount => 'Teljes hitelösszeg';

  @override
  String get installmentAmount => 'Részlet összege';

  @override
  String get numberOfInstallments => 'Részletek száma';

  @override
  String get paidInstallments => 'Kifizetett részletek';

  @override
  String get remainingInstallments => 'Hátralévő részletek';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total részletből $paid kifizetve';
  }

  @override
  String get finalPayment => 'Utolsó részlet';

  @override
  String get paymentDueDate => 'Esedékesség napja';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Minden hónap $day. napján';
  }

  @override
  String get loanStatus => 'Állapot';

  @override
  String get statusActive => 'Jó úton';

  @override
  String get statusDueSoon => 'Hamarosan esedékes';

  @override
  String get statusOverdue => 'Lejárt';

  @override
  String get statusCompleted => 'Kifizetve';

  @override
  String get repaymentProgress => 'Törlesztés állása';

  @override
  String get byAmount => 'Összeg szerint';

  @override
  String get byInstallments => 'Részletek szerint';

  @override
  String get startDate => 'Kezdő dátum';

  @override
  String get openEnded => 'Határidő nélkül';

  @override
  String get loanDetails => 'A hitel adatai';

  @override
  String get notSet => 'Nincs megadva';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'A(z) $subject ma esedékes';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'A(z) $amount összegű törlesztés ma esedékes. Egy koppintás, és időben megvan.';
  }

  @override
  String get remindMorningTitle => 'Jó reggelt ☀️';

  @override
  String get remindMorningBody =>
      'Kezdje a napot a pénzügyei felett tartva a kezét. Van még tegnapról rögzítenivaló?';

  @override
  String get remindNoonTitle => 'Déli ellenőrzés';

  @override
  String get remindNoonBody =>
      'Ebéd, kávé, jegy? Pár másodperc alatt rögzíthető.';

  @override
  String get remindAfternoonTitle => 'Gyors pótlás';

  @override
  String get remindAfternoonBody =>
      'Rögzítse, amit eddig költött, hogy a mai számok pontosak legyenek.';

  @override
  String get remindEveningTitle => 'A nap lezárása';

  @override
  String get remindEveningBody =>
      'Két perc most, és a mai bejegyzései teljesek.';

  @override
  String get happyWeekendTitle => 'Szép hétvégét! 🎉';

  @override
  String get happyWeekendBody =>
      'Élvezze — és tartsa fél szemmel a hétvégi költéseket is.';

  @override
  String get dailyReminders => 'Napi kiadás-emlékeztetők';

  @override
  String get dailyRemindersBody =>
      'Finom emlékeztetők, hogy a kiadásai naprakészek maradjanak';

  @override
  String get weekendGreeting => 'Hétvégi köszöntés';

  @override
  String get weekendGreetingBody => 'Egy barátságos köszöntés a hétvége elején';

  @override
  String get reminderTimesSection => 'Emlékeztetők időpontjai';

  @override
  String get slotMorning => 'Reggel';

  @override
  String get slotNoon => 'Dél';

  @override
  String get slotAfternoon => 'Délután';

  @override
  String get slotEvening => 'Este';

  @override
  String get everyDay => 'Minden nap';

  @override
  String get financialReport => 'Pénzügyi kimutatás';

  @override
  String get preparedFor => 'Készült';

  @override
  String get generatedOn => 'Létrehozva';

  @override
  String get reportDisclaimer =>
      'A RainyPenny készítette az Ön saját bejegyzéseiből.';

  @override
  String pageOf(int page, int total) {
    return '$page. oldal, összesen $total';
  }

  @override
  String get overview => 'Áttekintés';

  @override
  String get description => 'Leírás';

  @override
  String get totalIncome => 'Összes bevétel';

  @override
  String get totalExpenses => 'Összes kiadás';

  @override
  String get totalSaved => 'Összes megtakarítás';

  @override
  String get shareOfTotal => 'Arány';

  @override
  String get used => 'Felhasználva';

  @override
  String get goal => 'Cél';

  @override
  String get targetDate => 'Céldátum';

  @override
  String get progress => 'Haladás';

  @override
  String get paidOffShort => 'Törlesztve';

  @override
  String get transactions => 'Tételek';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'és további $count tétel',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF exportálása';

  @override
  String get sharePdf => 'Kimutatás megosztása';

  @override
  String get preparingReport => 'Készül a kimutatása…';

  @override
  String get reportReady => 'A kimutatás elkészült';

  @override
  String get reportFailed => 'A kimutatást nem sikerült elkészíteni';

  @override
  String get categories => 'Kategóriák';

  @override
  String get categoriesIntro =>
      'Vegyen fel saját kategóriákat, hogy a bevételei és kiadásai pontosan úgy álljanak, ahogy Ön gondol rájuk.';

  @override
  String get expenseCategories => 'Kiadási kategóriák';

  @override
  String get incomeCategories => 'Bevételi kategóriák';

  @override
  String get newCategory => 'Új kategória';

  @override
  String get editCategory => 'Kategória szerkesztése';

  @override
  String get categoryName => 'Név';

  @override
  String get categoryNameHint => 'pl. háziállat';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'A kategória mentve';

  @override
  String get categoryDeleted => 'A kategória törölve';

  @override
  String get deleteCategory => 'Törli ezt a kategóriát?';

  @override
  String deleteCategoryBody(String name) {
    return 'A(z) $name kikerül a kategóriái közül.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bejegyzés még ezt a kategóriát használja',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Itt még nincs semmi.';

  @override
  String get builtIn => 'Beépített';

  @override
  String get manageCategories => 'Kategóriák kezelése';

  @override
  String get expense => 'Kiadás';

  @override
  String get languageNote =>
      'Az arab, az urdu, a perzsa és a héber a teljes felületet jobbról balra fordítja, a diagramokkal és a PDF-kimutatásokkal együtt.';

  @override
  String get next => 'Tovább';

  @override
  String get back => 'Vissza';

  @override
  String get skip => 'Kihagyás';

  @override
  String get continueLabel => 'Folytatás';

  @override
  String get selected => 'Kiválasztva';

  @override
  String get passwordRequired => 'Adja meg a jelszavát';

  @override
  String get newPasswordLabel => 'Új jelszó';

  @override
  String get confirmPasswordLabel => 'Jelszó megerősítése';

  @override
  String get passwordsDoNotMatch => 'A két jelszónak egyeznie kell';

  @override
  String get showPassword => 'Jelszó megjelenítése';

  @override
  String get hidePassword => 'Jelszó elrejtése';

  @override
  String get savePassword => 'Jelszó mentése';

  @override
  String get backToSignIn => 'Vissza a bejelentkezéshez';

  @override
  String get alreadyHaveAccount => 'Már van fiókom';

  @override
  String get getStarted => 'Kezdjük';

  @override
  String get acceptTerms =>
      'Elfogadom a felhasználási feltételeket és az adatvédelmi tájékoztatót';

  @override
  String get acceptTermsRequired => 'A folytatáshoz fogadja el';

  @override
  String get passwordStrengthTooShort => 'Túl rövid';

  @override
  String get passwordStrengthWeak => 'Gyenge';

  @override
  String get passwordStrengthFair => 'Megfelelő';

  @override
  String get passwordStrengthGood => 'Jó';

  @override
  String get passwordStrengthStrong => 'Erős';

  @override
  String get passwordAdvice =>
      'Egy hosszú mondat, amit megjegyez, jobb egy rövid, jelekkel teli jelszónál. Kerülje azt, amit már máshol is használ.';

  @override
  String get authInvalidCredentials =>
      'Ez az e-mail-cím és jelszó egyetlen fiókhoz sem tartozik';

  @override
  String get authEmailNotConfirmed =>
      'Bejelentkezés előtt erősítse meg az e-mail-címét';

  @override
  String get authEmailAlreadyRegistered =>
      'Ezzel az e-mail-címmel már létezik fiók';

  @override
  String get authWeakPassword => 'Válasszon hosszabb jelszót';

  @override
  String get authRateLimited =>
      'Túl sok próbálkozás. Néhány perc múlva próbálja újra';

  @override
  String get authNetworkError =>
      'Nincs kapcsolat. Ellenőrizze a hálózatot, majd próbálja újra';

  @override
  String get authGenericError => 'Valami hiba történt. Kérjük, próbálja újra';

  @override
  String get confirmEmailTitle => 'Nézze meg a postaládáját';

  @override
  String confirmEmailBody(String email) {
    return 'Megerősítő hivatkozást küldtünk a következő címre: $email. Nyissa meg a fiók befejezéséhez.';
  }

  @override
  String get resendConfirmation => 'Megerősítő e-mail újraküldése';

  @override
  String get confirmationResent => 'A megerősítő e-mail elküldve';

  @override
  String get forgotPasswordTitle => 'Jelszó visszaállítása';

  @override
  String get forgotPasswordSubtitle =>
      'Adja meg az e-mail-címet, amellyel regisztrált, és küldünk egy hivatkozást új jelszó megadásához.';

  @override
  String get sendResetLink => 'Hivatkozás küldése';

  @override
  String get resetLinkSentTitle => 'A hivatkozás elküldve';

  @override
  String resetLinkSentBody(String email) {
    return 'Ha a(z) $email címhez tartozik fiók, a hivatkozás már úton van.';
  }

  @override
  String get resetLinkSentHint =>
      'A hivatkozás egy óra alatt lejár. Ha nem érkezik meg, nézze meg a levélszemét mappát, mielőtt újat kérne.';

  @override
  String get tryAnotherEmail => 'Másik e-mail-cím';

  @override
  String get resetPasswordTitle => 'Válasszon új jelszót';

  @override
  String get resetPasswordSubtitle =>
      'Olyat válasszon, amit ennél a fióknál még nem használt.';

  @override
  String get passwordChangedTitle => 'A jelszó frissítve';

  @override
  String get passwordChangedBody =>
      'Az új jelszava elmentve. Be van jelentkezve, mehet tovább.';

  @override
  String get demoModeHint => 'Bemutató verzió — nem kell fiók';

  @override
  String get demoModeFill => 'Kitöltés';

  @override
  String get welcomeTrackTitle => 'Lássa, hová megy a pénze';

  @override
  String get welcomeTrackBody =>
      'Rögzítse, mi jön be és mi megy ki. A RainyPenny olyan képet csinál belőle, amit tényleg el lehet olvasni.';

  @override
  String get welcomeBudgetTitle => 'Határok, amik tartanak';

  @override
  String get welcomeBudgetBody =>
      'Adjon minden kiadási területnek havi felső határt, és még azelőtt tudja meg, hogy átlépné — ne utána.';

  @override
  String get welcomeGoalsTitle => 'Tegyen félre arra, ami számít';

  @override
  String get welcomeGoalsBody =>
      'Nevezzen el egy célt, adjon meg összeget, és nézze, ahogy megtelik. A vésztartalékot könnyebb felépíteni, ha látja is.';

  @override
  String get welcomePrivacyTitle => 'A pénze az Öné marad';

  @override
  String get welcomePrivacyBody =>
      'A számai csak Önhöz tartoznak. Semmit nem adunk el és senkivel nem osztunk meg.';

  @override
  String stepOf(int step, int total) {
    return '$total lépésből a(z) $step.';
  }

  @override
  String get onboardingNameTitle => 'Hogy szólíthatjuk?';

  @override
  String get onboardingNameBody => 'Csak köszöntésre használjuk, máshol sehol.';

  @override
  String get onboardingNameHint =>
      'A keresztnév bőven elég. Később módosíthatja.';

  @override
  String get onboardingCurrencyTitle => 'Milyen pénznemet használ?';

  @override
  String get onboardingCurrencyBody =>
      'Az alkalmazásban minden összeg ebben a pénznemben jelenik meg. A választás semmit nem vált át.';

  @override
  String get onboardingCurrencySearch => 'Keresés az összes pénznem között';

  @override
  String get onboardingAppearanceTitle => 'Alakítsa a magáévá';

  @override
  String get onboardingAppearanceBody =>
      'Válasszon kinézetet. Minden azonnal változik, és bármikor visszatérhet ide.';

  @override
  String get onboardingNotificationsTitle => 'Tartsa kézben';

  @override
  String get onboardingNotificationsBody =>
      'Egy csendes emlékeztető a megfelelő pillanatban — ettől lesz ebből szokás.';

  @override
  String get onboardingNotifyReminders =>
      'Finom emlékeztető, hogy rögzítse, amit költött';

  @override
  String get onboardingNotifyBudget => 'Jelzés, mielőtt elfogyna egy keret';

  @override
  String get onboardingNotifySummary =>
      'Heti összegzés arról, hová ment a pénze';

  @override
  String get onboardingNotifyEnable => 'Értesítések bekapcsolása';

  @override
  String get onboardingNotifyDone => 'Az értesítési beállítások mentve';

  @override
  String get onboardingNotifyLater =>
      'Mindezt bármikor módosíthatja a Beállításokban.';

  @override
  String get onboardingReadyTitle => 'Minden készen áll';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Minden készen áll, $name';
  }

  @override
  String get onboardingReadyBody =>
      'A beállítás kész. Szeretne egy gyors körutat arról, hogyan működik?';

  @override
  String get onboardingTakeTour => 'Mutassa meg';

  @override
  String get onboardingGoToApp => 'Irány az alkalmazás';

  @override
  String get onboardingTourLater =>
      'Most nem? Az útmutató a Beállításokban marad, amikor csak kell.';

  @override
  String get beginnersGuide => 'Kezdő útmutató';

  @override
  String get guideFinish => 'Befejezés';

  @override
  String chapterOf(int number, int total) {
    return '$total fejezetből a(z) $number.';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen megnyitása';
  }

  @override
  String get guideDashboardTitle => 'A kezdőlapja';

  @override
  String get guideDashboardBody =>
      'Minden itt kezdődik. A felső kártya azt mutatja, mennyi maradt; alatta az időszak bevétele és kiadása, majd a költései, keretei és céljai.';

  @override
  String get guideDashboardTip1 =>
      'Húzza le a képernyőt, hogy minden egyszerre frissüljön.';

  @override
  String get guideDashboardTip2 =>
      'Koppintson a bevételi vagy kiadási kártyára, hogy egyenesen arra a listára jusson.';

  @override
  String get guideDashboardTip3 =>
      'A gyűrűk és az észrevételek abban a pillanatban frissülnek, ahogy rögzít valamit.';

  @override
  String get guideAddTitle => 'Pénz rögzítése';

  @override
  String get guideAddBody =>
      'A sáv közepén lévő gomb minden kiindulópontja. Rövid menüt nyit: kiadás, bevétel, tartozás, keret vagy megtakarítási cél.';

  @override
  String get guideAddTip1 =>
      'Koppintson a középső gombra bevétel vagy kiadás rögzítéséhez.';

  @override
  String get guideAddTip2 =>
      'Tartsa nyomva, hogy a menüt kihagyva egyenesen új kiadáshoz jusson.';

  @override
  String get guideAddTip3 =>
      'Mindig válasszon kategóriát — ezen múlnak a diagramok és a keretek.';

  @override
  String get guideCategoriesTitle => 'Kategóriák';

  @override
  String get guideCategoriesBody =>
      'A kategóriák csoportosítják a kiadásokat. Az alapból meglévők a legtöbb embernek elegendők, de átnevezheti őket, vagy vehet fel sajátot.';

  @override
  String get guideCategoriesTip1 =>
      'Beállítások, majd Kategóriák kezelése a módosításhoz vagy hozzáadáshoz.';

  @override
  String get guideCategoriesTip2 =>
      'Ami kategória nélkül marad, az „Egyéb” alá kerül, így a diagramok őszinték maradnak.';

  @override
  String get guideBudgetTitle => 'Keretek';

  @override
  String get guideBudgetBody =>
      'A keret egy kategória havi felső határa. A sáv telik, ahogy költ, és színt vált, amikor közeledik — így még azelőtt megtudja, hogy átlépné.';

  @override
  String get guideBudgetTip1 =>
      'Kezdje két-három kategóriával, ne mindegyikkel egyszerre.';

  @override
  String get guideBudgetTip2 =>
      'A határt tegye kicsit a szokásos költése fölé, aztán szorítsa meg.';

  @override
  String get guideBudgetTip3 =>
      'Hagyja bekapcsolva a keretriasztásokat, és az alkalmazás szól, amikor fogytán van.';

  @override
  String get guideSavingsTitle => 'Megtakarítási célok';

  @override
  String get guideSavingsBody =>
      'Nevezze meg, mire gyűjt, adjon meg összeget és dátumot, az alkalmazás pedig kiszámolja, mennyit kell havonta félretennie.';

  @override
  String get guideSavingsTip1 =>
      'Egy nevesített célt könnyebb tartani, mint azt a homályos szándékot, hogy „félre kéne tenni”.';

  @override
  String get guideSavingsTip2 =>
      'Több kis cél gyakrabban ér célba, mint egyetlen nagy.';

  @override
  String get guideLoansTitle => 'Tartozások és hitelek';

  @override
  String get guideLoansBody =>
      'Rögzítse, mennyivel tartozik, mennyibe kerül, és mikor esedékes a következő részlet. Amit törleszt, mind egy listában van a hátralékkal együtt.';

  @override
  String get guideLoansTip1 =>
      'Adja meg az esedékesség napját, és az emlékeztetők Ön helyett figyelnek rá.';

  @override
  String get guideLoansTip2 =>
      'A lejárt tartozás pirosan látszik a kezdőlapon, amíg ki nem fizeti.';

  @override
  String get guideReportsTitle => 'Kimutatások';

  @override
  String get guideReportsBody =>
      'A mélyebb kép: bevétel a kiadással szemben, kiadás kategóriánként, hogyan tartottak a keretei, és jövedelmének mekkora része maradt meg.';

  @override
  String get guideReportsTip1 =>
      'A képernyő tetején váltson hét, hónap és negyedév között.';

  @override
  String get guideReportsTip2 =>
      'Exportáljon vagy osszon meg PDF-et — az Ön nyelvén és írásirányában készül.';

  @override
  String get guideSettingsTitle => 'Beállítások';

  @override
  String get guideSettingsBody =>
      'A nyelv, a pénznem, a színek és a riasztások mind itt vannak, és a kezdeti beállítás egyiket sem rögzíti véglegesen — módosítsa, amikor csak akarja.';

  @override
  String get guideSettingsTip1 =>
      'Negyven nyelv, és a teljes elrendezés tükröződik a jobbról balra írt nyelveknél.';

  @override
  String get guideSettingsTip2 =>
      'Válassza ki, mely riasztásokat kéri, és mikor érkezhetnek.';

  @override
  String get guideSettingsTip3 =>
      'A csendes órák reggelig visszatartanak mindent.';

  @override
  String get guideHabitTitle => 'Váljon szokássá';

  @override
  String get guideHabitBody =>
      'Az alkalmazás annyit ér, amennyit beletesz. Napi egy perc többet ér, mint havi egy óra, és két hét után a számok elkezdenek mondani valamit.';

  @override
  String get guideHabitTip1 =>
      'A kiadást akkor rögzítse, amikor történik, ne a hét végén.';

  @override
  String get guideHabitTip2 =>
      'Naponta egyszer pillantson a kezdőlapra. Tíz másodperc elég.';

  @override
  String get guideHabitTip3 =>
      'Ez az útmutató a Beállításokban marad — térjen vissza bármikor.';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get themeCaption => 'Világos, sötét, vagy ahogy a telefonja áll.';

  @override
  String get accentColor => 'Kiemelőszín';

  @override
  String get accentColorCaption => 'A gombok, kiemelések és diagramok színe.';

  @override
  String get accentSemanticsNote =>
      'A bejövő és kimenő pénz minden témában megtartja a saját színét, így egy szám sosem változtat jelentést csak azért, mert kiemelőszínt váltott.';

  @override
  String get accentTeal => 'Türkiz';

  @override
  String get accentGreen => 'Zöld';

  @override
  String get accentSky => 'Égszínkék';

  @override
  String get accentBlue => 'Kék';

  @override
  String get accentIndigo => 'Indigó';

  @override
  String get accentViolet => 'Ibolya';

  @override
  String get accentPink => 'Rózsaszín';

  @override
  String get accentCrimson => 'Bíbor';

  @override
  String get accentOrange => 'Narancs';

  @override
  String get accentSlate => 'Palaszürke';

  @override
  String get searchLanguages => 'Nyelvek keresése';

  @override
  String get suggestedLanguages => 'Javasolt';

  @override
  String get allLanguages => 'Összes nyelv';

  @override
  String get noLanguagesFound => 'Nincs találat';

  @override
  String get noLanguagesFoundMessage =>
      'Próbálja az angol nevet vagy a kétbetűs kódot.';

  @override
  String get rightToLeft => 'Jobbról balra';

  @override
  String get replayGuide => 'Útmutató újranézése';

  @override
  String get replaySetup => 'Beállítás újrafuttatása';

  @override
  String get replaySetupBody =>
      'Menjen végig újra a kezdeti kérdéseken. Semmi nem törlődik abból, amit rögzített.';

  @override
  String get rateTitle => 'Tetszik a RainyPenny?';

  @override
  String get rateBody =>
      'Már egy ideje kitart mellette. Az értékelés egy pillanat, és segít másoknak megtalálni az alkalmazást.';

  @override
  String get rateAction => 'Alkalmazás értékelése';

  @override
  String get rateLater => 'Talán később';

  @override
  String get rateNever => 'Köszönöm, nem';

  @override
  String get rateThanks => 'Köszönjük';

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
