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
  String get appTagline => 'Tegyél félre a nehezebb napokra';

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navTransactions => 'Tranzakciók';

  @override
  String get navAdd => 'Hozzáadás';

  @override
  String get navReports => 'Jelentések';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Jó reggelt, $name!';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Szép napot, $name!';
  }

  @override
  String greetingEvening(String name) {
    return 'Jó estét, $name!';
  }

  @override
  String get greetingSubtitle => 'Itt van a pénzügyi áttekintésed';

  @override
  String get totalBalance => 'Teljes egyenleg';

  @override
  String get vsLastPeriod => 'az előző időszakhoz képest';

  @override
  String get income => 'Bevétel';

  @override
  String get expenses => 'Kiadások';

  @override
  String get netBalance => 'Nettó egyenleg';

  @override
  String get lastThirtyDays => 'Elmúlt 30 nap';

  @override
  String get quickActions => 'Gyorsműveletek';

  @override
  String get addIncome => 'Bevétel hozzáadása';

  @override
  String get addExpense => 'Kiadás hozzáadása';

  @override
  String get spendingOverview => 'Költési áttekintés';

  @override
  String get recentTransactions => 'Legutóbbi tranzakciók';

  @override
  String get seeAll => 'Összes megtekintése';

  @override
  String get viewAll => 'Összes megtekintése';

  @override
  String get budgetProgress => 'Költségkeret állása';

  @override
  String get savingsGoals => 'Megtakarítási célok';

  @override
  String get financialInsight => 'Pénzügyi betekintés';

  @override
  String get financialHealth => 'Pénzügyi egészség';

  @override
  String ofTotal(String total) {
    return '/ $total';
  }

  @override
  String get searchTransactions => 'Tranzakciók keresése';

  @override
  String get filterAll => 'Összes';

  @override
  String get filterIncome => 'Bevétel';

  @override
  String get filterExpenses => 'Kiadások';

  @override
  String get today => 'Ma';

  @override
  String get yesterday => 'Tegnap';

  @override
  String get noTransactionsTitle => 'Nem találhatók tranzakciók';

  @override
  String get noTransactionsBody =>
      'Próbálkozz más kereséssel vagy szűrővel a korábbi tételek megtekintéséhez.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tranzakció',
      one: '1 tranzakció',
      zero: 'Nincs tranzakció',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Tranzakció hozzáadása';

  @override
  String get amount => 'Összeg';

  @override
  String get category => 'Kategória';

  @override
  String get date => 'Dátum';

  @override
  String get note => 'Megjegyzés';

  @override
  String get noteHint => 'Opcionális megjegyzés';

  @override
  String get saveIncome => 'Bevétel mentése';

  @override
  String get saveExpense => 'Kiadás mentése';

  @override
  String get selectCategory => 'Kategória kiválasztása';

  @override
  String get transactionSaved => 'Tranzakció mentve';

  @override
  String get amountRequired => 'Adj meg nullánál nagyobb összeget';

  @override
  String get titleRequired => 'Adj nevet ennek a tranzakciónak';

  @override
  String get descriptionLabel => 'Leírás';

  @override
  String get descriptionHint => 'pl. Élelmiszer';

  @override
  String get budget => 'Költségkeret';

  @override
  String get budgets => 'Költségkeretek';

  @override
  String get totalBudget => 'Teljes költségkeret';

  @override
  String get spent => 'Elköltve';

  @override
  String get remaining => 'Fennmaradó';

  @override
  String budgetUsed(int percent) {
    return '$percent% felhasználva';
  }

  @override
  String get onTrack => 'Megfelelő';

  @override
  String get approachingLimit => 'Közelít a limithez';

  @override
  String get overBudget => 'Keret túllépve';

  @override
  String get savings => 'Megtakarítások';

  @override
  String get yourGoals => 'Céljaid';

  @override
  String get saved => 'Megtakarítva';

  @override
  String get target => 'Célösszeg';

  @override
  String get monthlyContribution => 'Havonta';

  @override
  String get addFunds => 'Összeg hozzáadása';

  @override
  String get goalComplete => 'Cél elérve';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hónap van hátra',
      one: '1 hónap van hátra',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Hitelek és tartozások';

  @override
  String get totalOutstanding => 'Fennmaradó teljes tartozás';

  @override
  String get monthlyPayment => 'Havonta';

  @override
  String get nextPayment => 'Következő törlesztés';

  @override
  String paidOff(int percent) {
    return '$percent% visszafizetve';
  }

  @override
  String get interestRate => 'Kamat';

  @override
  String get upcomingPayments => 'Közelgő fizetések';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap múlva esedékes',
      one: 'Holnap esedékes',
      zero: 'Ma esedékes',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Késedelmes';

  @override
  String get reports => 'Jelentések';

  @override
  String get week => 'Hét';

  @override
  String get month => 'Hónap';

  @override
  String get quarter => 'Negyedév';

  @override
  String get incomeVsExpenses => 'Bevételek és kiadások';

  @override
  String get spendingByCategory => 'Költés kategóriák szerint';

  @override
  String get budgetPerformance => 'Költségkeret teljesítése';

  @override
  String get insights => 'Elemzések';

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
    return 'Tagság kezdete: $date';
  }

  @override
  String get themeSystem => 'Rendszer';

  @override
  String get themeLight => 'Világos';

  @override
  String get themeDark => 'Sötét';

  @override
  String get settings => 'Beállítások';

  @override
  String get noNotificationsTitle => 'Nincsenek új értesítéseid';

  @override
  String get noNotificationsBody =>
      'Az új betekintések és emlékeztetők itt fognak megjelenni.';

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
  String get comingSoon => 'Hamarosan elérhető a teljes verzióban';

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
  String get nameRequired => 'Add meg a neved';

  @override
  String get amountAboveZero => 'Adj meg nullánál nagyobb összeget';

  @override
  String get editTransaction => 'Tranzakció szerkesztése';

  @override
  String get deleteTransaction => 'Törlöd a tranzakciót?';

  @override
  String deleteTransactionBody(String title) {
    return 'A(z) „$title” törlődik a nyilvántartásodból.';
  }

  @override
  String get transactionDeleted => 'Tranzakció törölve';

  @override
  String get transactionUpdated => 'Tranzakció frissítve';

  @override
  String get newBudget => 'Új költségkeret';

  @override
  String get editBudget => 'Költségkeret szerkesztése';

  @override
  String get budgetLimit => 'Havi limit';

  @override
  String get deleteBudget => 'Törlöd a költségkeretet?';

  @override
  String deleteBudgetBody(String category) {
    return 'A(z) „$category” kategória költségkerete törlődik. A tranzakcióidat ez nem érinti.';
  }

  @override
  String get budgetSaved => 'Költségkeret mentve';

  @override
  String get budgetDeleted => 'Költségkeret törölve';

  @override
  String get allCategoriesBudgeted =>
      'Minden kategóriához tartozik már költségkeret';

  @override
  String get noBudgetsTitle => 'Még nincsenek költségkeretek';

  @override
  String get noBudgetsBody =>
      'Állíts be egy havi limitet valamelyik kategóriához a nyomon követés megkezdéséhez.';

  @override
  String get newGoal => 'Új cél';

  @override
  String get editGoal => 'Cél szerkesztése';

  @override
  String get goalName => 'Cél neve';

  @override
  String get goalNameHint => 'pl. Vészalap';

  @override
  String get targetAmount => 'Célösszeg';

  @override
  String get alreadySaved => 'Már megtakarítva';

  @override
  String get deleteGoal => 'Törlöd a célt?';

  @override
  String deleteGoalBody(String name) {
    return 'A(z) „$name” cél és az eddigi haladás törlődik.';
  }

  @override
  String get goalSaved => 'Cél mentve';

  @override
  String get goalDeleted => 'Cél törölve';

  @override
  String get noGoalsTitle => 'Még nincsenek megtakarítási célok';

  @override
  String get noGoalsBody =>
      'Tűzz ki egy célt, és a RainyPenny segít nyomon követni az előrehaladásodat.';

  @override
  String get fundsAdded => 'Összeg hozzáadva';

  @override
  String get newDebt => 'Új hitel vagy kártya';

  @override
  String get editDebt => 'Hitel szerkesztése';

  @override
  String get debtName => 'Név';

  @override
  String get debtNameHint => 'pl. Autóhitel';

  @override
  String get lender => 'Hitelező';

  @override
  String get lenderHint => 'pl. OTP Bank';

  @override
  String get originalAmount => 'Eredeti összeg';

  @override
  String get creditLimit => 'Hitellimit';

  @override
  String get remainingBalance => 'Fennmaradó egyenleg';

  @override
  String get interestRatePercent => 'Kamatláb (%)';

  @override
  String get kindLoan => 'Hitel';

  @override
  String get kindCreditCard => 'Hitelkártya';

  @override
  String get recordPayment => 'Törlesztés rögzítése';

  @override
  String get paymentRecorded => 'Törlesztés rögzítve';

  @override
  String get deleteDebt => 'Törlöd ezt a tartozást?';

  @override
  String deleteDebtBody(String name) {
    return 'A(z) „$name” törlődik a tartozásaid közül.';
  }

  @override
  String get debtSaved => 'Mentve';

  @override
  String get debtDeleted => 'Törölve';

  @override
  String get noDebtsTitle => 'Nincsenek nyomon követett tartozások';

  @override
  String get noDebtsBody =>
      'Adj hozzá egy hitelt vagy hitelkártyát a törlesztések figyeléséhez.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Túllépted a(z) $subject költségkeretet';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '$amount összeggel lépted túl a(z) $subject költségkeretedet ebben az időszakban.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'A(z) $subject keret a végéhez közeledik';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'A(z) $subject kereted $percent%-a fogyott el, még $amount maradt.';
  }

  @override
  String get insightOverIncomeTitle => 'A kiadások meghaladják a bevételeket';

  @override
  String get insightOverIncomeBody =>
      'Többet költöttél ebben az időszakban, mint amennyit kerestél. Nézd át a legnagyobb kategóriáidat az egyensúly visszaállításához.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Megnőttek a(z) $subject kiadásaid';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'A(z) $subject kategóriára fordított összeg $percent%-kal magasabb, mint az előző időszakban.';
  }

  @override
  String get insightTrendDownTitle =>
      'A kiadásaid csökkenő tendenciát mutatnak';

  @override
  String insightTrendDownBody(int percent) {
    return 'Az összes kiadásod $percent%-kal alacsonyabb, mint az előző időszakban.';
  }

  @override
  String get insightTrendUpTitle => 'A kiadásaid növekvő tendenciát mutatnak';

  @override
  String insightTrendUpBody(int percent) {
    return 'Az összes kiadásod $percent%-kal magasabb, mint az előző időszakban.';
  }

  @override
  String get insightSavingsStrongTitle =>
      'Kiváló megtakarítás ebben az időszakban';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'A bevételed $percent%-át sikerült félretenned — ami jóval a kitűzött $target% felett van.';
  }

  @override
  String get insightSavingsLowTitle =>
      'A megtakarítási ráta a cél alatt maradt';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'A bevételed $percent%-át tetted félre ebben az időszakban. Célozd meg a $target%-ot.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'A(z) „$subject” cél majdnem teljesült';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Már csak $amount hiányzik a(z) „$subject” cél eléréséhez.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Jó úton jársz a(z) „$subject” cél felé';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months hónap',
      one: '1 hónap',
    );
    return 'Havi $amount összeggel $_temp0 múlva éred el ezt a célt.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'A(z) $subject törlesztése késedelmes';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days napja',
      one: '1 napja',
    );
    return 'A(z) $subject $amount összegű fizetése $_temp0 késik.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'A(z) $subject fizetése hamarosan esedékes';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap múlva',
      one: 'holnap',
      zero: 'ma',
    );
    return '$amount fizetendő $_temp0.';
  }

  @override
  String get signIn => 'Bejelentkezés';

  @override
  String get signUp => 'Fiók létrehozása';

  @override
  String get signInSubtitle => 'Üdv újra itt! Pénzügyeid kéznél vannak.';

  @override
  String get signUpSubtitle => 'Pár adat megadása, és már készen is vagy.';

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
  String get forgotPassword => 'Elfelejtetted a jelszavad?';

  @override
  String get resetSent => 'Nézd meg a postafiókod a visszaállító linkért';

  @override
  String get noAccountYet => 'Új vagy itt?';

  @override
  String get haveAccount => 'Már van fiókod?';

  @override
  String get emailInvalid => 'Érvényes e-mail-címet adj meg';

  @override
  String get passwordTooShort => 'Legalább 8 karaktert használj';

  @override
  String get signOutConfirm => 'Kijelentkezel?';

  @override
  String get signOutBody =>
      'A pénzügyeid megtekintéséhez újra be kell jelentkezned.';

  @override
  String get dataSource => 'Adatforrás';

  @override
  String get insightWeeklySummaryTitle => 'A heted áttekintése';

  @override
  String get insightWeeklySummaryBody =>
      'Nézd meg, mire ment el a pénzed a héten, és hogyan állnak a költségkereteid.';

  @override
  String get notificationSettings => 'Értesítések';

  @override
  String get alertsSection => 'Figyelmeztetések';

  @override
  String get budgetAlerts => 'Költségkeret-értesítések';

  @override
  String get budgetAlertsBody =>
      'Ha a költségkeret a limithez közelít vagy átlépi azt';

  @override
  String get paymentReminders => 'Fizetési emlékeztetők';

  @override
  String get paymentRemindersBody => 'Néhány nappal az esedékesség előtt';

  @override
  String get savingsUpdates => 'Megtakarítási frissítések';

  @override
  String get savingsUpdatesBody => 'Előrehaladás a céljaid felé';

  @override
  String get weeklySummaryLabel => 'Heti összefoglaló';

  @override
  String get weeklySummaryBody => 'Áttekintés az elmúlt hétről';

  @override
  String get scheduleSection => 'Időzítés';

  @override
  String get reminderTime => 'Emlékeztető időpontja';

  @override
  String get quietHours => 'Csendes időszak';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Összefoglaló napja';

  @override
  String get permissionRequired => 'Az értesítések ki vannak kapcsolva';

  @override
  String get permissionRequiredBody =>
      'Engedélyezd az értesítéseket, hogy a RainyPenny időben figyelmeztethessen a túllépésekre és a fizetési határidőkre.';

  @override
  String get allowNotifications => 'Értesítések engedélyezése';

  @override
  String get permissionDenied =>
      'Az értesítések le vannak tiltva. Az eszköz beállításaiban tudod bekapcsolni őket.';

  @override
  String get upcomingAlerts => 'Ütemezett';

  @override
  String get noScheduledAlerts => 'Jelenleg nincs ütemezett értesítés';

  @override
  String get noScheduledAlertsBody =>
      'Az értesítések itt jelennek meg, amint a költségkeretek vagy a számlák határideje közeledik.';

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
  String get quickActionsTitle => 'Mit szeretnél csinálni?';

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
      'Tipp: tartsd lenyomva a + gombot kiadás azonnali rögzítéséhez';

  @override
  String get searchCurrencies => 'Pénznemek keresése';

  @override
  String get noCurrenciesFound => 'Nem található pénznem';

  @override
  String get noCurrenciesFoundMessage =>
      'Próbálkozz más kóddal, szimbólummal vagy névvel.';

  @override
  String get popularCurrencies => 'Népszerű';

  @override
  String get allCurrencies => 'Összes pénznem';

  @override
  String get totalLoanAmount => 'Teljes hitelösszeg';

  @override
  String get installmentAmount => 'Törlesztőrészlet összege';

  @override
  String get numberOfInstallments => 'Részletek száma';

  @override
  String get paidInstallments => 'Kifizetett részletek';

  @override
  String get remainingInstallments => 'Fennmaradó részletek';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid / $total kifizetve';
  }

  @override
  String get finalPayment => 'Utolsó törlesztés';

  @override
  String get paymentDueDate => 'Esedékesség napja';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Minden hónap $day. napján';
  }

  @override
  String get loanStatus => 'Állapot';

  @override
  String get statusActive => 'Megfelelő';

  @override
  String get statusDueSoon => 'Hamarosan esedékes';

  @override
  String get statusOverdue => 'Késedelmes';

  @override
  String get statusCompleted => 'Visszafizetve';

  @override
  String get repaymentProgress => 'Visszafizetés állása';

  @override
  String get byAmount => 'Összeg szerint';

  @override
  String get byInstallments => 'Részletek szerint';

  @override
  String get startDate => 'Kezdés dátuma';

  @override
  String get openEnded => 'Határozatlan idejű';

  @override
  String get loanDetails => 'Hitel részletei';

  @override
  String get notSet => 'Nincs megadva';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'A(z) $subject fizetése ma esedékes';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'A(z) $amount összegű törlesztésed ma esedékes. Rögzítsd egyszerűen időben.';
  }

  @override
  String get remindMorningTitle => 'Jó reggelt! ☀️';

  @override
  String get remindMorningBody =>
      'Indítsd a napot átlátva a pénzügyeidet. Van valami feljegyeznivaló tegnapról?';

  @override
  String get remindNoonTitle => 'Napközbeni ellenőrzés';

  @override
  String get remindNoonBody =>
      'Ebéd, kávé vagy utazás? Rögzítsd pár másodperc alatt.';

  @override
  String get remindAfternoonTitle => 'Gyors összesítés';

  @override
  String get remindAfternoonBody =>
      'Jegyezd fel az eddigi kiadásaidat a nap pontos zárásához.';

  @override
  String get remindEveningTitle => 'Nap zárása';

  @override
  String get remindEveningBody =>
      'Csak két perc, és a mai számok a helyükre kerülnek.';

  @override
  String get happyWeekendTitle => 'Kellemes hétvégét! 🎉';

  @override
  String get happyWeekendBody =>
      'Kapcsolódj ki — de tartsd szemmel a hétvégi költéseket is.';

  @override
  String get dailyReminders => 'Napi kiadás-emlékeztetők';

  @override
  String get dailyRemindersBody =>
      'Barátságos emlékeztetők a kiadások naprakészen tartásához';

  @override
  String get weekendGreeting => 'Hétvégi köszöntés';

  @override
  String get weekendGreetingBody => 'Kedves üdvözlet a hétvégéd kezdetén';

  @override
  String get reminderTimesSection => 'Emlékeztetők időpontjai';

  @override
  String get slotMorning => 'Reggel';

  @override
  String get slotNoon => 'Délben';

  @override
  String get slotAfternoon => 'Délután';

  @override
  String get slotEvening => 'Este';

  @override
  String get everyDay => 'Minden nap';

  @override
  String get financialReport => 'Pénzügyi jelentés';

  @override
  String get preparedFor => 'Készült:';

  @override
  String get generatedOn => 'Létrehozva:';

  @override
  String get reportDisclaimer =>
      'A RainyPenny által, a saját bejegyzéseid alapján készítve.';

  @override
  String pageOf(int page, int total) {
    return '$page / $total oldal';
  }

  @override
  String get overview => 'Áttekintés';

  @override
  String get description => 'Leírás';

  @override
  String get totalIncome => 'Teljes bevétel';

  @override
  String get totalExpenses => 'Teljes kiadás';

  @override
  String get totalSaved => 'Összes megtakarítás';

  @override
  String get shareOfTotal => 'Arány';

  @override
  String get used => 'Kihasználtság';

  @override
  String get goal => 'Cél';

  @override
  String get targetDate => 'Céldátum';

  @override
  String get progress => 'Haladás';

  @override
  String get paidOffShort => 'Törlesztve';

  @override
  String get transactions => 'Tranzakciók';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'és még $count tranzakció',
      one: 'és még 1 tranzakció',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF exportálása';

  @override
  String get sharePdf => 'Jelentés megosztása';

  @override
  String get preparingReport => 'Jelentés elkészítése…';

  @override
  String get reportReady => 'A jelentés elkészült';

  @override
  String get reportFailed => 'Nem sikerült elkészíteni a jelentést';

  @override
  String get categories => 'Kategóriák';

  @override
  String get categoriesIntro =>
      'Hozz létre saját kategóriákat, hogy a bevételeket és kiadásokat pontosan a számodra megfelelő módon csoportosíthasd.';

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
  String get categoryNameHint => 'pl. Kisállat';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategória mentve';

  @override
  String get categoryDeleted => 'Kategória törölve';

  @override
  String get deleteCategory => 'Törlöd ezt a kategóriát?';

  @override
  String deleteCategoryBody(String name) {
    return 'A(z) „$name” törlődik a kategóriáid közül.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tétel még mindig használja ezt a kategóriát',
      one: '1 tétel még mindig használja ezt a kategóriát',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Itt még nincsen semmi.';

  @override
  String get builtIn => 'Beépített';

  @override
  String get manageCategories => 'Kategóriák kezelése';

  @override
  String get expense => 'Kiadás';

  @override
  String get languageNote =>
      'Az arab, az urdu, a perzsa és a héber nyelv jobbról balra rendezi a teljes felületet, a diagramokat és a PDF-jelentéseket is beleértve.';

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
  String get passwordRequired => 'Add meg a jelszavad';

  @override
  String get newPasswordLabel => 'Új jelszó';

  @override
  String get confirmPasswordLabel => 'Jelszó megerősítése';

  @override
  String get passwordsDoNotMatch => 'A jelszavaknak meg kell egyezniük';

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
  String get getStarted => 'Kezdés';

  @override
  String get acceptTerms =>
      'Elfogadom a Szolgáltatási feltételeket és az Adatvédelmi szabályzatot';

  @override
  String get acceptTermsRequired => 'Kérjük, fogadd el a folytatáshoz';

  @override
  String get passwordStrengthTooShort => 'Túl rövid';

  @override
  String get passwordStrengthWeak => 'Gyenge';

  @override
  String get passwordStrengthFair => 'Közepes';

  @override
  String get passwordStrengthGood => 'Jó';

  @override
  String get passwordStrengthStrong => 'Erős';

  @override
  String get passwordAdvice =>
      'Egy hosszú, könnyen megjegyezhető kifejezés jobb, mint egy szimbólumokkal teli rövid. Kerüld azokat, amelyeket máshol már használsz.';

  @override
  String get authInvalidCredentials =>
      'Az e-mail-cím vagy a jelszó nem egyezik';

  @override
  String get authEmailNotConfirmed =>
      'Bejelentkezés előtt erősítsd meg az e-mail-címedet';

  @override
  String get authEmailAlreadyRegistered =>
      'Ezzel az e-mail-címmel már létezik fiók';

  @override
  String get authWeakPassword => 'Válassz hosszabb jelszót';

  @override
  String get authRateLimited =>
      'Túl sok próbálkozás. Próbáld újra néhány perc múlva';

  @override
  String get authNetworkError =>
      'Nincs kapcsolat. Ellenőrizd a hálózatot, és próbáld újra';

  @override
  String get authGenericError => 'Valami hiba történt. Kérjük, próbáld újra';

  @override
  String get confirmEmailTitle => 'Ellenőrizd az e-mailjeidet';

  @override
  String confirmEmailBody(String email) {
    return 'Megerősítő linket küldtünk a(z) $email címre. Nyisd meg a fiók beállításának befejezéséhez.';
  }

  @override
  String get resendConfirmation => 'Megerősítő e-mail újraküldése';

  @override
  String get confirmationResent => 'Megerősítő e-mail elküldve';

  @override
  String get forgotPasswordTitle => 'Jelszó visszaállítása';

  @override
  String get forgotPasswordSubtitle =>
      'Add meg a regisztrációhoz használt e-mail-címedet, és küldünk egy linket az új jelszó megadásához.';

  @override
  String get sendResetLink => 'Visszaállító link küldése';

  @override
  String get resetLinkSentTitle => 'Visszaállító link elküldve';

  @override
  String resetLinkSentBody(String email) {
    return 'Ha a(z) $email címhez tartozik fiók, a visszaállító link már úton van.';
  }

  @override
  String get resetLinkSentHint =>
      'A link egy órán belül lejár. Ha nem érkezik meg, nézd meg a spam mappádat is, mielőtt újat kérnél.';

  @override
  String get tryAnotherEmail => 'Másik e-mail megadása';

  @override
  String get resetPasswordTitle => 'Új jelszó megadása';

  @override
  String get resetPasswordSubtitle =>
      'Válassz olyat, amelyet korábban még nem használtál ennél a fióknál.';

  @override
  String get passwordChangedTitle => 'Jelszó frissítve';

  @override
  String get passwordChangedBody =>
      'Az új jelszavadat elmentettük. Bejelentkeztél, és készen állsz a folytatásra.';

  @override
  String get demoModeHint => 'Demó verzió — fiók nem szükséges';

  @override
  String get demoModeFill => 'Kitöltés';

  @override
  String get welcomeTrackTitle => 'Lásd át, hova megy a pénzed';

  @override
  String get welcomeTrackBody =>
      'Rögzítsd a bevételeidet és kiadásaidat. A RainyPenny könnyen értelmezhető képpé formálja a számaidat.';

  @override
  String get welcomeBudgetTitle => 'Állíts be tartható kereteket';

  @override
  String get welcomeBudgetBody =>
      'Adj minden kiadási területnek havi plafont, és értesülj róla, mielőtt túllépnéd, nem pedig utána.';

  @override
  String get welcomeGoalsTitle => 'Gyűjts arra, ami igazán számít';

  @override
  String get welcomeGoalsBody =>
      'Nevezz meg egy célt, tűzz ki egy összeget, és kövesd figyelemmel a gyarapodását. A vészalapot könnyebb felépíteni, ha látod a haladást.';

  @override
  String get welcomePrivacyTitle => 'A pénzed a tiéd marad';

  @override
  String get welcomePrivacyBody =>
      'A számaid kizárólag rád tartoznak. Semmit sem adunk el, és semmit sem osztunk meg senkivel.';

  @override
  String stepOf(int step, int total) {
    return '$step. / $total lépés';
  }

  @override
  String get onboardingNameTitle => 'Hogyan szólíthatunk?';

  @override
  String get onboardingNameBody =>
      'Kizárólag az üdvözlésedre fogjuk használni, sehol máshol.';

  @override
  String get onboardingNameHint =>
      'Egy keresztnév bőven elég. Később bármikor módosíthatod.';

  @override
  String get onboardingCurrencyTitle => 'Milyen pénznemet használsz?';

  @override
  String get onboardingCurrencyBody =>
      'Az alkalmazás minden összeget ebben a pénznemben jelenít meg. A kiválasztása nem vált át semmit.';

  @override
  String get onboardingCurrencySearch => 'Keresés az összes pénznem között';

  @override
  String get onboardingAppearanceTitle => 'Tedd egyedivé';

  @override
  String get onboardingAppearanceBody =>
      'Válassz egy stílust. Koppintás közben minden azonnal átvált, és később is bármikor visszatérhetsz ide.';

  @override
  String get onboardingNotificationsTitle => 'Maradj mindig naprakész';

  @override
  String get onboardingNotificationsBody =>
      'Egy diszkrét emlékeztető a megfelelő pillanatban segít, hogy ez igazi szokássá váljon.';

  @override
  String get onboardingNotifyReminders =>
      'Finom emlékeztető a kiadásaid rögzítésére';

  @override
  String get onboardingNotifyBudget =>
      'Időben figyelmeztet, mielőtt a kereted elfogyna';

  @override
  String get onboardingNotifySummary =>
      'Heti összefoglaló arról, hová ment a pénzed';

  @override
  String get onboardingNotifyEnable => 'Értesítések bekapcsolása';

  @override
  String get onboardingNotifyDone => 'Értesítési beállítások mentve';

  @override
  String get onboardingNotifyLater =>
      'Mindezt a Beállításokban bármikor később is módosíthatod.';

  @override
  String get onboardingReadyTitle => 'Minden készen áll';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Minden készen áll, $name!';
  }

  @override
  String get onboardingReadyBody =>
      'A beállítás kész. Szeretnél egy gyors bemutatót arról, hogyan működik az alkalmazás?';

  @override
  String get onboardingTakeTour => 'Körbevezetés kérése';

  @override
  String get onboardingGoToApp => 'Ugrás az alkalmazásba';

  @override
  String get onboardingTourLater =>
      'Most nem? Az útmutató a Beállításokban bármikor elérhető marad.';

  @override
  String get beginnersGuide => 'Kezdők útmutatója';

  @override
  String get guideFinish => 'Befejezés';

  @override
  String chapterOf(int number, int total) {
    return '$number. / $total fejezet';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen megnyitása';
  }

  @override
  String get guideDashboardTitle => 'Az irányítópultod';

  @override
  String get guideDashboardBody =>
      'Minden innen indul. A felső kártya mutatja a fennmaradó összeget; alatta a bevételek és kiadások láthatók, majd a költéseid, kereteid és céljaid.';

  @override
  String get guideDashboardTip1 =>
      'Húzd lefelé a képernyőt mindennek az azonnali frissítéséhez.';

  @override
  String get guideDashboardTip2 =>
      'Koppints a bevétel vagy kiadás kártyára a listához való ugráshoz.';

  @override
  String get guideDashboardTip3 =>
      'A kördiagramok és az elemzések a rögzítés pillanatában frissülnek.';

  @override
  String get guideAddTitle => 'Pénz rögzítése';

  @override
  String get guideAddBody =>
      'Az alsó sáv közepén lévő gomb a kiindulópont. Egy rövid menüt nyit meg: kiadás, bevétel, hitel, keret vagy megtakarítási cél.';

  @override
  String get guideAddTip1 =>
      'Koppints a középső gombra bevétel vagy kiadás rögzítéséhez.';

  @override
  String get guideAddTip2 =>
      'Tartsd hosszan lenyomva a menü kihagyásához és azonnali új kiadáshoz.';

  @override
  String get guideAddTip3 =>
      'Mindig válassz kategóriát — ez teszi működőképessé a diagramokat és kereteket.';

  @override
  String get guideCategoriesTitle => 'Kategóriák';

  @override
  String get guideCategoriesBody =>
      'A kategóriák segítségével csoportosíthatók a kiadások. Az alapértelmezettek a legtöbb igényt lefedik, de átnevezheted őket vagy újakat is hozzáadhatsz.';

  @override
  String get guideCategoriesTip1 =>
      'Beállítások, majd Kategóriák kezelése a módosításhoz vagy létrehozáshoz.';

  @override
  String get guideCategoriesTip2 =>
      'Bármi, ami kategória nélkül marad, az Egyéb alá kerül, így a kimutatások pontosak maradnak.';

  @override
  String get guideBudgetTitle => 'Költségkeretek';

  @override
  String get guideBudgetBody =>
      'A költségkeret egy kategóriára vonatkozó havi limit. A sáv feltöltődik költés közben, és színt vált, ha közeledsz a plafonhoz.';

  @override
  String get guideBudgetTip1 =>
      'Kezdd két vagy három kategóriával, ne az összessel egyszerre.';

  @override
  String get guideBudgetTip2 =>
      'Állítsd a limitet kicsivel a szokásos költésed fölé, majd fokozatosan szűkítsd.';

  @override
  String get guideBudgetTip3 =>
      'Hagyd bekapcsolva a keretriasztásokat, hogy az app időben figyelmeztessen.';

  @override
  String get guideSavingsTitle => 'Megtakarítási célok';

  @override
  String get guideSavingsBody =>
      'Nevezd meg, mire gyűjtesz, határozz meg egy célösszeget és dátumot, az alkalmazás pedig kiszámolja a szükséges havi összeget.';

  @override
  String get guideSavingsTip1 =>
      'Egy konkrét célhoz könnyebb ragaszkodni, mint egy általános megtakarítási szándékhoz.';

  @override
  String get guideSavingsTip2 =>
      'Több kisebb célt gyakrabban sikerül elérni, mint egyetlen hatalmasat.';

  @override
  String get guideLoansTitle => 'Hitelek és tartozások';

  @override
  String get guideLoansBody =>
      'Rögzítsd, mivel tartozol, mennyibe kerül, és mikor esedékes a következő fizetés. Minden törlesztés egy helyen látható a fennmaradó összeggel.';

  @override
  String get guideLoansTip1 =>
      'Add meg az esedékesség napját, és a fizetési emlékeztetők szólni fognak helyetted.';

  @override
  String get guideLoansTip2 =>
      'A késedelmes tartozás pirossal jelenik meg a kezdőlapon, amíg ki nem fizeted.';

  @override
  String get guideReportsTitle => 'Jelentések';

  @override
  String get guideReportsBody =>
      'Részletes betekintés: bevételek és kiadások aránya, kategóriánkénti bontás, a költségkeretek betartása és a megtakarított jövedelemrész.';

  @override
  String get guideReportsTip1 =>
      'Válts a heti, havi és negyedéves nézetek között a képernyő tetején.';

  @override
  String get guideReportsTip2 =>
      'Exportálj vagy ossz meg PDF-et — a saját nyelveden és olvasási irányodban készül el.';

  @override
  String get guideSettingsTitle => 'Beállítások';

  @override
  String get guideSettingsBody =>
      'A nyelv, pénznem, színek és értesítések mind itt találhatók, és semmi sincs kőbe vésve — bármikor módosíthatod őket.';

  @override
  String get guideSettingsTip1 =>
      'Negyven nyelv támogatott, és a teljes elrendezés tükröződik a jobbról balra író nyelvekhez.';

  @override
  String get guideSettingsTip2 =>
      'Válaszd ki, milyen értesítéseket szeretnél és mikor érkezhetnek.';

  @override
  String get guideSettingsTip3 =>
      'A csendes időszak minden értesítést visszatart reggelig.';

  @override
  String get guideHabitTitle => 'Alakíts ki szokást';

  @override
  String get guideHabitBody =>
      'Az alkalmazás csak annyira hasznos, amennyi adatot rögzítesz benne. Napi egy perc többet ér, mint havonta egy óra, és két hét után a számok kezdenek valódi képet mutatni.';

  @override
  String get guideHabitTip1 =>
      'Rögzítsd a költéseidet azonnal, ne a hét végén halmozd fel őket.';

  @override
  String get guideHabitTip2 =>
      'Naponta egyszer nézz rá az irányítópultra. Tíz másodperc elegendő.';

  @override
  String get guideHabitTip3 =>
      'Ez az útmutató a Beállításokban marad — bármikor visszatérhetsz hozzá.';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get themeCaption =>
      'Világos, sötét vagy a telefonod beállításait követő.';

  @override
  String get accentColor => 'Kiemelő szín';

  @override
  String get accentColorCaption => 'A gombok, kiemelések és diagramok színe.';

  @override
  String get accentSemanticsNote =>
      'A bevételek és kiadások minden témában megőrzik saját színeiket, így egy összeg jelentése soha nem változik meg a kiemelő szín módosításakor.';

  @override
  String get accentTeal => 'Pávakék';

  @override
  String get accentGreen => 'Zöld';

  @override
  String get accentSky => 'Égszínkék';

  @override
  String get accentBlue => 'Kék';

  @override
  String get accentIndigo => 'Indigókék';

  @override
  String get accentViolet => 'Ibolyalila';

  @override
  String get accentPink => 'Rózsaszín';

  @override
  String get accentCrimson => 'Karmazsinvörös';

  @override
  String get accentOrange => 'Narancssárga';

  @override
  String get accentSlate => 'Palaszürke';

  @override
  String get searchLanguages => 'Nyelvek keresése';

  @override
  String get suggestedLanguages => 'Javasolt';

  @override
  String get allLanguages => 'Összes nyelv';

  @override
  String get noLanguagesFound => 'Nem található nyelv';

  @override
  String get noLanguagesFoundMessage =>
      'Próbáld meg az angol nevet vagy a kétbetűs kódot.';

  @override
  String get rightToLeft => 'Jobbról balra';

  @override
  String get replayGuide => 'Útmutató újrajátszása';

  @override
  String get replaySetup => 'Kezdeti beállítás újrafuttatása';

  @override
  String get replaySetupBody =>
      'Válaszold meg újra a kezdeti kérdéseket. Egyetlen korábban rögzített adatod sem fog törlődni.';

  @override
  String get rateTitle => 'Tetszik a RainyPenny?';

  @override
  String get rateBody =>
      'Már egy ideje használod az alkalmazást. Egy értékelés csak egy pillanatot vesz igénybe, és segít másoknak rátalálni az appra.';

  @override
  String get rateAction => 'Alkalmazás értékelése';

  @override
  String get rateLater => 'Talán később';

  @override
  String get rateNever => 'Nem, köszönöm';

  @override
  String get rateThanks => 'Köszönjük szépen!';

  @override
  String get monthlySalary => 'Havi fizetés';

  @override
  String get remainingAmount => 'Fennmaradó';

  @override
  String get carriedForward => 'Áthozott összeg';

  @override
  String get carriedForwardHint => 'Előző ciklusból megmaradt összeg';

  @override
  String get totalSpending => 'Teljes költés';

  @override
  String get salaryCycle => 'Fizetési ciklus';

  @override
  String get payday => 'Fizetésnap';

  @override
  String get paydayDescription =>
      'A nap, amikor a fizetésed megérkezik. A pénzügyi hónapod ettől a naptól a következő előtti napig tart.';

  @override
  String get paydayUpdated => 'Fizetésnap frissítve';

  @override
  String paydayDayOfMonth(int day) {
    return 'A hónap $day. napja';
  }

  @override
  String get paydayShortMonthNote =>
      'Rövidebb hónapokban a ciklus a hónap utolsó napján indul.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap van a fizetésig',
      one: '1 nap van a fizetésig',
      zero: 'A ciklus utolsó napja',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Következő fizetésnap';

  @override
  String get spentSoFar => 'Eddig elköltve';

  @override
  String get dailyAllowance => 'Biztonságos napi költési keret';

  @override
  String get overspentNotice =>
      'Többet költöttél, mint amennyi ebben a ciklusban befolyt.';

  @override
  String get backToThisMonth => 'Vissza az aktuális hónaphoz';

  @override
  String get cycleRangeLabel => 'Ciklus';

  @override
  String get noSalaryRecorded => 'Még nincs rögzítve fizetés';

  @override
  String get addSalaryAction => 'Fizetés megadása';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Kiváló';

  @override
  String get healthGood => 'Jó';

  @override
  String get healthFair => 'Közepes';

  @override
  String get healthNeedsWork => 'Javításra szorul';

  @override
  String get healthExcellentBody =>
      'Remekül megtakarítasz, és a kereteiden belül maradsz.';

  @override
  String get healthGoodBody =>
      'Jó úton haladsz a költéseiddel ebben az időszakban.';

  @override
  String get healthFairBody =>
      'Néhány keret a határhoz közelít. Kisebb változtatások segíteni fognak.';

  @override
  String get healthNeedsWorkBody =>
      'A kiadásaid meghaladják a tervedet. Kezd a legnagyobb kategóriáddal.';

  @override
  String get factorSavingsRate => 'Megtakarítási ráta';

  @override
  String get factorBudgetControl => 'Keretkontroll';

  @override
  String get factorDebtLoad => 'Adósságteher';

  @override
  String get factorSpendingTrend => 'Költési tendencia';

  @override
  String factorKept(String percent) {
    return '$percent% megtartva';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% felhasználva';
  }

  @override
  String factorOfIncome(String percent) {
    return 'a bevétel $percent%-a';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent%-os növekedés';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent%-os csökkenés';
  }

  @override
  String get howScoreWorks => 'Hogyan működik ez a pontszám?';

  @override
  String get healthScoreExplainer =>
      'A pontszámod négy tényezőből áll össze: a bevételed mekkora részét tartod meg, mennyire tartod a költségkereteidet, a jövedelmed mekkora része megy törlesztésre, és hogy a költéseid növekednek vagy csökkennek-e.';

  @override
  String scoreWeightLabel(int percent) {
    return 'A pontszám $percent%-a';
  }

  @override
  String get viewHealthDetails => 'Részletek megtekintése';

  @override
  String get saveChanges => 'Módosítások mentése';

  @override
  String get profileUpdated => 'Profil frissítve';

  @override
  String get changePhoto => 'Fotó módosítása';

  @override
  String get removePhoto => 'Fotó eltávolítása';

  @override
  String get personalInformationIntro =>
      'A neved és a fotód az egész alkalmazásban megjelenik. Az e-mail-címed az, amellyel bejelentkezel.';

  @override
  String get emailNotEditable =>
      'A bejelentkezési e-mail-cím módosításához lépj kapcsolatba az ügyfélszolgálattal.';

  @override
  String get pressBackAgainToExit =>
      'Nyomd meg újra a vissza gombot a kilépéshez';

  @override
  String get categoryHousing => 'Lakhatás';

  @override
  String get categoryFood => 'Étel és étkezés';

  @override
  String get categoryTransport => 'Közlekedés';

  @override
  String get categoryShopping => 'Vásárlás';

  @override
  String get categoryBills => 'Számlák és rezsi';

  @override
  String get categoryEntertainment => 'Szórakozás';

  @override
  String get categoryHealth => 'Egészség és fitnesz';

  @override
  String get categoryEducation => 'Oktatás';

  @override
  String get categoryTravel => 'Utazás';

  @override
  String get categorySalary => 'Fizetés';

  @override
  String get categoryFreelance => 'Szabadúszó munka';

  @override
  String get categoryInvestments => 'Befektetések';

  @override
  String get categoryGift => 'Ajándék';

  @override
  String get categoryOther => 'Egyéb';

  @override
  String get categoryGroceries => 'Élelmiszer';

  @override
  String get categoryDining => 'Étterem';

  @override
  String get categoryCoffee => 'Kávé';

  @override
  String get categoryUtilities => 'Közművek';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Biztosítás';

  @override
  String get categorySubscriptions => 'Előfizetések';

  @override
  String get categoryPersonalCare => 'Testápolás';

  @override
  String get categoryClothing => 'Ruházat';

  @override
  String get categoryElectronics => 'Elektronika';

  @override
  String get categoryHomeSupplies => 'Háztartási cikkek';

  @override
  String get categoryPets => 'Háziállatok';

  @override
  String get categoryChildcare => 'Gyermekgondozás';

  @override
  String get categoryFamily => 'Család';

  @override
  String get categoryFitness => 'Fitnesz';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryMedicine => 'Gyógyszer';

  @override
  String get categoryMedical => 'Orvosi ellátás';

  @override
  String get categoryCharity => 'Jótékonyság';

  @override
  String get categoryTaxes => 'Adók';

  @override
  String get categoryFees => 'Díjak és jutalékok';

  @override
  String get categoryDebt => 'Tartozás';

  @override
  String get categorySavings => 'Megtakarítás';

  @override
  String get categoryRepairs => 'Javítások';

  @override
  String get categoryCarMaintenance => 'Autókarbantartás';

  @override
  String get categoryFuel => 'Üzemanyag';

  @override
  String get categoryParking => 'Parkolás';

  @override
  String get categoryPublicTransport => 'Tömegközlekedés';

  @override
  String get categoryRent => 'Lakbér';

  @override
  String get categoryMortgage => 'Jelzáloghitel';

  @override
  String get categoryBonus => 'Bónusz';

  @override
  String get categoryCommission => 'Jutalék';

  @override
  String get categoryPension => 'Nyugdíj';

  @override
  String get categoryInterest => 'Kamatbevétel';

  @override
  String get categoryDividends => 'Osztalék';

  @override
  String get categoryCashback => 'Pénzvisszafizetés';

  @override
  String get categoryRefund => 'Visszatérítés';

  @override
  String get categoryRentalIncome => 'Bérbeadásból származó jövedelem';

  @override
  String get addCategory => 'Új kategória';

  @override
  String get filterByCategory => 'Szűrés kategória szerint';

  @override
  String get allCategories => 'Összes kategória';

  @override
  String get clearFilters => 'Szűrők törlése';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Kezdetektől';

  @override
  String get customRange => 'Egyéni';

  @override
  String get selectDateRange => 'Időszak kiválasztása';

  @override
  String rangeApplied(String start, String end) {
    return 'Megjelenítve: $start – $end';
  }

  @override
  String get loans => 'Hitelek';

  @override
  String get debts => 'Tartozások';

  @override
  String get noLoansTitle => 'Nincsenek hitelek';

  @override
  String get noLoansBody => 'Nincsenek aktív hiteleid.';

  @override
  String get emptyHealthTitle => 'Még nincs pénzügyi pontszám';

  @override
  String get emptyHealthDescription =>
      'Szükségünk van egy kis pénzügyi aktivitásra a pontos pontszám kiszámításához.';

  @override
  String get emptyHealthAddTransactions =>
      'Adj hozzá bevételi vagy kiadási tranzakciókat';

  @override
  String get emptyHealthSetBudgets => 'Állítsd be a havi költségkereteidet';

  @override
  String get emptyHealthTrackLoans =>
      'Kövesd nyomon a hiteleket vagy tartozásokat (opcionális)';

  @override
  String get emptyHealthCardSubtitle =>
      'Adj hozzá tranzakciókat a pontszámod kiszámításához és az elemzésekhez.';

  @override
  String get smartBudgetSplit => 'Okos költségkeret-elosztás';

  @override
  String get smartBudgetSplitSubtitle =>
      'Add meg a havi fizetésed az ajánlott keretek kiszámításához';

  @override
  String get monthlyNetSalary => 'Havi nettó fizetés';

  @override
  String get categoryAllocations => 'Kategória-elosztások';

  @override
  String totalBudgeted(String amount) {
    return 'Összesen: $amount';
  }

  @override
  String get applyAllBudgets => 'Összes keret alkalmazása';

  @override
  String get applyingBudgets => 'Keretek alkalmazása folyamatban...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kategória költségkerete létrehozva.',
      one: '1 kategória költségkerete létrehozva.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets =>
      'Nem sikerült elmenteni a költségkereteket.';

  @override
  String get recommendedBudget => 'Ajánlott költségkeret';
}
