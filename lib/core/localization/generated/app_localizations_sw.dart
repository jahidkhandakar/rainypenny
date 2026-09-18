// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppL10nSw extends AppL10n {
  AppL10nSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Weka akiba kwa siku ya mvua';

  @override
  String get navHome => 'Mwanzo';

  @override
  String get navTransactions => 'Miamala';

  @override
  String get navAdd => 'Ongeza';

  @override
  String get navReports => 'Ripoti';

  @override
  String get navProfile => 'Wasifu';

  @override
  String greetingMorning(String name) {
    return 'Habari za asubuhi, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Habari za mchana, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Habari za jioni, $name';
  }

  @override
  String get greetingSubtitle => 'Huu ndio mwonekano wa fedha zako';

  @override
  String get totalBalance => 'Salio jumla';

  @override
  String get vsLastPeriod => 'ikilinganishwa na kipindi kilichopita';

  @override
  String get income => 'Mapato';

  @override
  String get expenses => 'Matumizi';

  @override
  String get netBalance => 'Salio halisi';

  @override
  String get lastThirtyDays => 'Siku 30 zilizopita';

  @override
  String get quickActions => 'Vitendo vya haraka';

  @override
  String get addIncome => 'Ongeza mapato';

  @override
  String get addExpense => 'Ongeza matumizi';

  @override
  String get spendingOverview => 'Muhtasari wa matumizi';

  @override
  String get recentTransactions => 'Miamala ya karibuni';

  @override
  String get seeAll => 'Ona yote';

  @override
  String get viewAll => 'Onyesha yote';

  @override
  String get budgetProgress => 'Maendeleo ya bajeti';

  @override
  String get savingsGoals => 'Malengo ya akiba';

  @override
  String get financialInsight => 'Ufahamu wa kifedha';

  @override
  String get financialHealth => 'Afya ya kifedha';

  @override
  String ofTotal(String total) {
    return 'kati ya $total';
  }

  @override
  String get searchTransactions => 'Tafuta miamala';

  @override
  String get filterAll => 'Zote';

  @override
  String get filterIncome => 'Mapato';

  @override
  String get filterExpenses => 'Matumizi';

  @override
  String get today => 'Leo';

  @override
  String get yesterday => 'Jana';

  @override
  String get noTransactionsTitle => 'Hakuna miamala iliyopatikana';

  @override
  String get noTransactionsBody =>
      'Jaribu utafutaji au kichujio kingine ili kuona rekodi zaidi.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'miamala $count',
      one: 'muamala $count',
      zero: 'Hakuna miamala',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Ongeza muamala';

  @override
  String get amount => 'Kiasi';

  @override
  String get category => 'Kategoria';

  @override
  String get date => 'Tarehe';

  @override
  String get note => 'Dokezo';

  @override
  String get noteHint => 'Dokezo (si lazima)';

  @override
  String get saveIncome => 'Hifadhi mapato';

  @override
  String get saveExpense => 'Hifadhi matumizi';

  @override
  String get selectCategory => 'Chagua kategoria';

  @override
  String get transactionSaved => 'Muamala umehifadhiwa';

  @override
  String get amountRequired => 'Weka kiasi kikubwa kuliko sifuri';

  @override
  String get titleRequired => 'Ipe muamala huu jina';

  @override
  String get descriptionLabel => 'Maelezo';

  @override
  String get descriptionHint => 'mfano: manunuzi ya nyumbani';

  @override
  String get budget => 'Bajeti';

  @override
  String get budgets => 'Bajeti';

  @override
  String get totalBudget => 'Bajeti jumla';

  @override
  String get spent => 'Kimetumika';

  @override
  String get remaining => 'Kimebaki';

  @override
  String budgetUsed(int percent) {
    return '$percent% imetumika';
  }

  @override
  String get onTrack => 'Kwenye mstari';

  @override
  String get approachingLimit => 'Karibu na kikomo';

  @override
  String get overBudget => 'Zaidi ya bajeti';

  @override
  String get savings => 'Akiba';

  @override
  String get yourGoals => 'Malengo yako';

  @override
  String get saved => 'Kimewekwa akiba';

  @override
  String get target => 'Lengo';

  @override
  String get monthlyContribution => 'Kwa mwezi';

  @override
  String get addFunds => 'Ongeza fedha';

  @override
  String get goalComplete => 'Lengo limefikiwa';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'miezi $count imebaki',
      one: 'mwezi $count umebaki',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Mikopo na madeni';

  @override
  String get totalOutstanding => 'Deni lote lililobaki';

  @override
  String get monthlyPayment => 'Kwa mwezi';

  @override
  String get nextPayment => 'Malipo yajayo';

  @override
  String paidOff(int percent) {
    return '$percent% imelipwa';
  }

  @override
  String get interestRate => 'Riba';

  @override
  String get upcomingPayments => 'Malipo yanayokuja';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baada ya siku $count',
      one: 'Baada ya siku $count',
      zero: 'Inaisha leo',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Imepitwa na muda';

  @override
  String get reports => 'Ripoti';

  @override
  String get week => 'Wiki';

  @override
  String get month => 'Mwezi';

  @override
  String get quarter => 'Robo mwaka';

  @override
  String get incomeVsExpenses => 'Mapato dhidi ya matumizi';

  @override
  String get spendingByCategory => 'Matumizi kwa kategoria';

  @override
  String get budgetPerformance => 'Utendaji wa bajeti';

  @override
  String get insights => 'Ufahamu';

  @override
  String get savingsRate => 'Kiwango cha akiba';

  @override
  String get profile => 'Wasifu';

  @override
  String get account => 'Akaunti';

  @override
  String get personalInformation => 'Taarifa binafsi';

  @override
  String get changePassword => 'Badilisha nenosiri';

  @override
  String get notifications => 'Arifa';

  @override
  String get preferences => 'Mapendeleo';

  @override
  String get language => 'Lugha';

  @override
  String get currency => 'Sarafu';

  @override
  String get theme => 'Mandhari';

  @override
  String get security => 'Usalama';

  @override
  String get privacyAndSecurity => 'Faragha na usalama';

  @override
  String get help => 'Msaada';

  @override
  String get helpAndSupport => 'Msaada na usaidizi';

  @override
  String get termsAndConditions => 'Sheria na masharti';

  @override
  String get logOut => 'Toka';

  @override
  String memberSince(String date) {
    return 'Mwanachama tangu $date';
  }

  @override
  String get themeSystem => 'Fuata mfumo';

  @override
  String get themeLight => 'Nuru';

  @override
  String get themeDark => 'Giza';

  @override
  String get settings => 'Mipangilio';

  @override
  String get noNotificationsTitle => 'Umesoma kila kitu';

  @override
  String get noNotificationsBody =>
      'Ufahamu na vikumbusho vipya vitaonekana hapa.';

  @override
  String get cancel => 'Ghairi';

  @override
  String get save => 'Hifadhi';

  @override
  String get done => 'Imekamilika';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get close => 'Funga';

  @override
  String get somethingWentWrong => 'Kuna kitu kimeenda vibaya';

  @override
  String get comingSoon => 'Inakuja katika toleo kamili';

  @override
  String get edit => 'Hariri';

  @override
  String get delete => 'Futa';

  @override
  String get undo => 'Tendua';

  @override
  String get add => 'Ongeza';

  @override
  String get create => 'Unda';

  @override
  String get nameRequired => 'Ipe hii jina';

  @override
  String get amountAboveZero => 'Weka kiasi kikubwa kuliko sifuri';

  @override
  String get editTransaction => 'Hariri muamala';

  @override
  String get deleteTransaction => 'Futa muamala?';

  @override
  String deleteTransactionBody(String title) {
    return '$title itaondolewa kwenye rekodi zako.';
  }

  @override
  String get transactionDeleted => 'Muamala umefutwa';

  @override
  String get transactionUpdated => 'Muamala umesasishwa';

  @override
  String get newBudget => 'Bajeti mpya';

  @override
  String get editBudget => 'Hariri bajeti';

  @override
  String get budgetLimit => 'Kikomo cha mwezi';

  @override
  String get deleteBudget => 'Futa bajeti?';

  @override
  String deleteBudgetBody(String category) {
    return 'Bajeti ya $category itaondolewa. Miamala yako haitaguswa.';
  }

  @override
  String get budgetSaved => 'Bajeti imehifadhiwa';

  @override
  String get budgetDeleted => 'Bajeti imefutwa';

  @override
  String get allCategoriesBudgeted => 'Kila kategoria tayari ina bajeti';

  @override
  String get noBudgetsTitle => 'Bado hakuna bajeti';

  @override
  String get noBudgetsBody =>
      'Weka kikomo cha mwezi kwenye kategoria ili kuanza kuifuatilia.';

  @override
  String get newGoal => 'Lengo jipya';

  @override
  String get editGoal => 'Hariri lengo';

  @override
  String get goalName => 'Jina la lengo';

  @override
  String get goalNameHint => 'mfano: hazina ya dharura';

  @override
  String get targetAmount => 'Kiasi lengwa';

  @override
  String get alreadySaved => 'Kimeshawekwa';

  @override
  String get deleteGoal => 'Futa lengo?';

  @override
  String deleteGoalBody(String name) {
    return '$name na maendeleo yake vitaondolewa.';
  }

  @override
  String get goalSaved => 'Lengo limehifadhiwa';

  @override
  String get goalDeleted => 'Lengo limefutwa';

  @override
  String get noGoalsTitle => 'Bado hakuna malengo ya akiba';

  @override
  String get noGoalsBody =>
      'Weka lengo na RainyPenny itafuatilia maendeleo yako.';

  @override
  String get fundsAdded => 'Fedha zimeongezwa';

  @override
  String get newDebt => 'Mkopo au kadi mpya';

  @override
  String get editDebt => 'Hariri mkopo';

  @override
  String get debtName => 'Jina';

  @override
  String get debtNameHint => 'mfano: mkopo wa gari';

  @override
  String get lender => 'Mkopeshaji';

  @override
  String get lenderHint => 'mfano: CRDB Bank';

  @override
  String get originalAmount => 'Kiasi cha awali';

  @override
  String get creditLimit => 'Kikomo cha mkopo';

  @override
  String get remainingBalance => 'Salio lililobaki';

  @override
  String get interestRatePercent => 'Kiwango cha riba (%)';

  @override
  String get kindLoan => 'Mkopo';

  @override
  String get kindCreditCard => 'Kadi ya mkopo';

  @override
  String get recordPayment => 'Rekodi malipo';

  @override
  String get paymentRecorded => 'Malipo yamerekodiwa';

  @override
  String get deleteDebt => 'Futa deni hili?';

  @override
  String deleteDebtBody(String name) {
    return '$name litaondolewa kwenye madeni yako.';
  }

  @override
  String get debtSaved => 'Imehifadhiwa';

  @override
  String get debtDeleted => 'Imefutwa';

  @override
  String get noDebtsTitle => 'Hakuna deni linalofuatiliwa';

  @override
  String get noDebtsBody =>
      'Ongeza mkopo au kadi ya mkopo ili kufuatilia marejesho.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Bajeti ya $subject imezidi';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Umezidi bajeti yako ya $subject kwa $amount katika kipindi hiki.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject inakaribia kikomo';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Bajeti yako ya $subject imetumika $percent%, zimebaki $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Matumizi yamezidi mapato';

  @override
  String get insightOverIncomeBody =>
      'Katika kipindi hiki umetumia zaidi ya ulichopata. Pitia kategoria kubwa zaidi ili kurudisha mambo sawa.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Matumizi ya $subject yameongezeka';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Matumizi yako ya $subject ni $percent% zaidi ya kipindi kilichopita.';
  }

  @override
  String get insightTrendDownTitle => 'Matumizi yanapungua';

  @override
  String insightTrendDownBody(int percent) {
    return 'Matumizi yote ni $percent% chini ya kipindi kilichopita.';
  }

  @override
  String get insightTrendUpTitle => 'Matumizi yanaongezeka';

  @override
  String insightTrendUpBody(int percent) {
    return 'Matumizi yote ni $percent% zaidi ya kipindi kilichopita.';
  }

  @override
  String get insightSavingsStrongTitle => 'Akiba nzuri kipindi hiki';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Umebakiza $percent% ya mapato yako — juu sana ya lengo la $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Kiwango cha akiba ni chini ya lengo';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Kipindi hiki umebakiza $percent% ya mapato yako. Lenga $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject inakaribia kukamilika';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Zimebaki $amount tu kufikia $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject iko kwenye mstari';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: 'miezi $months',
      one: 'mwezi $months',
    );
    return 'Kwa $amount kila mwezi, utafikia lengo hili baada ya $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Malipo ya $subject yamepitwa na muda';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'siku $days',
      one: 'siku $days',
    );
    return 'Malipo ya $amount ya $subject yamechelewa kwa $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Malipo ya $subject yanakaribia';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'baada ya siku $days',
      one: 'baada ya siku $days',
      zero: 'leo',
    );
    return '$amount inatakiwa $_temp0.';
  }

  @override
  String get signIn => 'Ingia';

  @override
  String get signUp => 'Fungua akaunti';

  @override
  String get signInSubtitle => 'Karibu tena. Fedha zako zinakusubiri.';

  @override
  String get signUpSubtitle => 'Taarifa chache tu na uko tayari.';

  @override
  String get emailLabel => 'Barua pepe';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Nenosiri';

  @override
  String get passwordHint => 'Angalau herufi 8';

  @override
  String get fullNameLabel => 'Jina kamili';

  @override
  String get fullNameHint => 'Amina Juma';

  @override
  String get forgotPassword => 'Umesahau nenosiri?';

  @override
  String get resetSent => 'Angalia barua pepe yako kwa kiungo cha kuweka upya';

  @override
  String get noAccountYet => 'Ni mara yako ya kwanza?';

  @override
  String get haveAccount => 'Tayari una akaunti?';

  @override
  String get emailInvalid => 'Weka anwani sahihi ya barua pepe';

  @override
  String get passwordTooShort => 'Tumia angalau herufi 8';

  @override
  String get signOutConfirm => 'Utoke?';

  @override
  String get signOutBody => 'Utahitaji kuingia tena ili kuona fedha zako.';

  @override
  String get dataSource => 'Chanzo cha data';

  @override
  String get insightWeeklySummaryTitle => 'Wiki yako kwa muhtasari';

  @override
  String get insightWeeklySummaryBody =>
      'Ona fedha zako zilikoenda wiki hii na jinsi bajeti zako zinavyoshikilia.';

  @override
  String get notificationSettings => 'Arifa';

  @override
  String get alertsSection => 'Tahadhari';

  @override
  String get budgetAlerts => 'Tahadhari za bajeti';

  @override
  String get budgetAlertsBody => 'Bajeti inapokaribia au kuvuka kikomo chake';

  @override
  String get paymentReminders => 'Vikumbusho vya malipo';

  @override
  String get paymentRemindersBody => 'Siku chache kabla malipo hayajafika';

  @override
  String get savingsUpdates => 'Habari za akiba';

  @override
  String get savingsUpdatesBody => 'Maendeleo kuelekea malengo yako';

  @override
  String get weeklySummaryLabel => 'Muhtasari wa wiki';

  @override
  String get weeklySummaryBody => 'Muhtasari wa wiki iliyopita';

  @override
  String get scheduleSection => 'Muda';

  @override
  String get reminderTime => 'Saa ya kikumbusho';

  @override
  String get quietHours => 'Saa za utulivu';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Siku ya muhtasari';

  @override
  String get permissionRequired => 'Arifa zimezimwa';

  @override
  String get permissionRequiredBody =>
      'Ruhusu arifa ili RainyPenny ikuonye kabla bajeti au malipo hayajakutoka mkononi.';

  @override
  String get allowNotifications => 'Ruhusu arifa';

  @override
  String get permissionDenied =>
      'Arifa zimezuiwa. Unaweza kuziwasha kwenye mipangilio ya kifaa chako.';

  @override
  String get upcomingAlerts => 'Zimepangwa';

  @override
  String get noScheduledAlerts => 'Hakuna kilichopangwa kwa sasa';

  @override
  String get noScheduledAlertsBody =>
      'Tahadhari zitaonekana hapa bajeti na malipo yako yanapokaribia mipaka yake.';

  @override
  String scheduledFor(String date) {
    return 'Imepangwa $date';
  }

  @override
  String get everyWeek => 'Kila wiki';

  @override
  String get allNotificationsOff => 'Arifa zote zimezimwa';

  @override
  String get needsAttention => 'Inahitaji uangalizi';

  @override
  String get quickActionsTitle => 'Ungependa kufanya nini?';

  @override
  String get createSection => 'Rekodi';

  @override
  String get jumpToSection => 'Nenda kwenye';

  @override
  String get addLoanAction => 'Ongeza mkopo';

  @override
  String get addBudgetAction => 'Ongeza bajeti';

  @override
  String get addGoalAction => 'Ongeza lengo';

  @override
  String get longPressHint =>
      'Kidokezo: shikilia + ili kurekodi matumizi moja kwa moja';

  @override
  String get searchCurrencies => 'Tafuta sarafu';

  @override
  String get noCurrenciesFound => 'Hakuna sarafu iliyopatikana';

  @override
  String get noCurrenciesFoundMessage =>
      'Jaribu msimbo, alama au jina lingine.';

  @override
  String get popularCurrencies => 'Maarufu';

  @override
  String get allCurrencies => 'Sarafu zote';

  @override
  String get totalLoanAmount => 'Kiasi chote cha mkopo';

  @override
  String get installmentAmount => 'Kiasi cha awamu';

  @override
  String get numberOfInstallments => 'Idadi ya awamu';

  @override
  String get paidInstallments => 'Awamu zilizolipwa';

  @override
  String get remainingInstallments => 'Awamu zilizobaki';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid kati ya $total zimelipwa';
  }

  @override
  String get finalPayment => 'Malipo ya mwisho';

  @override
  String get paymentDueDate => 'Tarehe ya malipo';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Tarehe $day ya kila mwezi';
  }

  @override
  String get loanStatus => 'Hali';

  @override
  String get statusActive => 'Kwenye mstari';

  @override
  String get statusDueSoon => 'Yanakaribia';

  @override
  String get statusOverdue => 'Yamepitwa na muda';

  @override
  String get statusCompleted => 'Yamelipwa yote';

  @override
  String get repaymentProgress => 'Maendeleo ya marejesho';

  @override
  String get byAmount => 'Kwa kiasi';

  @override
  String get byInstallments => 'Kwa awamu';

  @override
  String get startDate => 'Tarehe ya kuanza';

  @override
  String get openEnded => 'Bila ukomo';

  @override
  String get loanDetails => 'Maelezo ya mkopo';

  @override
  String get notSet => 'Haijawekwa';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject inatakiwa leo';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Malipo yako ya $amount yanatakiwa leo. Gusa mara moja na yatakuwa kwa wakati.';
  }

  @override
  String get remindMorningTitle => 'Habari za asubuhi ☀️';

  @override
  String get remindMorningBody =>
      'Anza siku ukiwa na fedha zako mkononi. Kuna kitu cha jana cha kuongeza?';

  @override
  String get remindNoonTitle => 'Ukaguzi wa mchana';

  @override
  String get remindNoonBody =>
      'Chakula cha mchana, kahawa, nauli? Rekodi kwa sekunde chache.';

  @override
  String get remindAfternoonTitle => 'Kufidia haraka';

  @override
  String get remindAfternoonBody =>
      'Rekodi ulichotumia hadi sasa ili namba za leo ziwe sahihi.';

  @override
  String get remindEveningTitle => 'Tunafunga siku';

  @override
  String get remindEveningBody =>
      'Dakika mbili sasa na rekodi za leo zitakuwa kamili.';

  @override
  String get happyWeekendTitle => 'Wikendi njema! 🎉';

  @override
  String get happyWeekendBody =>
      'Ifurahie — na uangalie kidogo matumizi ya wikendi.';

  @override
  String get dailyReminders => 'Vikumbusho vya matumizi ya kila siku';

  @override
  String get dailyRemindersBody =>
      'Misukumo ya upole ili matumizi yako yawe ya sasa';

  @override
  String get weekendGreeting => 'Salamu za wikendi';

  @override
  String get weekendGreetingBody =>
      'Salamu ya kirafiki mwanzoni mwa wikendi yako';

  @override
  String get reminderTimesSection => 'Nyakati za vikumbusho';

  @override
  String get slotMorning => 'Asubuhi';

  @override
  String get slotNoon => 'Adhuhuri';

  @override
  String get slotAfternoon => 'Alasiri';

  @override
  String get slotEvening => 'Jioni';

  @override
  String get everyDay => 'Kila siku';

  @override
  String get financialReport => 'Ripoti ya fedha';

  @override
  String get preparedFor => 'Imeandaliwa kwa ajili ya';

  @override
  String get generatedOn => 'Imetengenezwa';

  @override
  String get reportDisclaimer =>
      'Imetengenezwa na RainyPenny kutokana na rekodi zako mwenyewe.';

  @override
  String pageOf(int page, int total) {
    return 'Ukurasa $page kati ya $total';
  }

  @override
  String get overview => 'Muhtasari';

  @override
  String get description => 'Maelezo';

  @override
  String get totalIncome => 'Mapato yote';

  @override
  String get totalExpenses => 'Matumizi yote';

  @override
  String get totalSaved => 'Akiba yote';

  @override
  String get shareOfTotal => 'Sehemu';

  @override
  String get used => 'Imetumika';

  @override
  String get goal => 'Lengo';

  @override
  String get targetDate => 'Tarehe lengwa';

  @override
  String get progress => 'Maendeleo';

  @override
  String get paidOffShort => 'Imelipwa';

  @override
  String get transactions => 'Miamala';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'na miamala $count zaidi',
      one: 'na muamala $count zaidi',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Hamisha PDF';

  @override
  String get sharePdf => 'Shiriki ripoti';

  @override
  String get preparingReport => 'Tunaandaa ripoti yako…';

  @override
  String get reportReady => 'Ripoti iko tayari';

  @override
  String get reportFailed => 'Ripoti haikuweza kutengenezwa';

  @override
  String get categories => 'Kategoria';

  @override
  String get categoriesIntro =>
      'Ongeza kategoria zako mwenyewe ili kupanga mapato na matumizi jinsi unavyoyafikiria.';

  @override
  String get expenseCategories => 'Kategoria za matumizi';

  @override
  String get incomeCategories => 'Kategoria za mapato';

  @override
  String get newCategory => 'Kategoria mpya';

  @override
  String get editCategory => 'Hariri kategoria';

  @override
  String get categoryName => 'Jina';

  @override
  String get categoryNameHint => 'mfano: wanyama wa nyumbani';

  @override
  String get icon => 'Aikoni';

  @override
  String get categorySaved => 'Kategoria imehifadhiwa';

  @override
  String get categoryDeleted => 'Kategoria imefutwa';

  @override
  String get deleteCategory => 'Futa kategoria hii?';

  @override
  String deleteCategoryBody(String name) {
    return '$name itaondolewa kwenye kategoria zako.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rekodi $count bado zinatumia kategoria hii',
      one: 'rekodi $count bado inatumia kategoria hii',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Bado hakuna kitu hapa.';

  @override
  String get builtIn => 'Ya asili';

  @override
  String get manageCategories => 'Simamia kategoria';

  @override
  String get expense => 'Matumizi';

  @override
  String get languageNote =>
      'Kiarabu, Kiurdu, Kiajemi na Kiebrania hubadilisha kiolesura chote kuwa kulia-kwenda-kushoto, pamoja na chati na ripoti za PDF.';

  @override
  String get next => 'Endelea';

  @override
  String get back => 'Rudi';

  @override
  String get skip => 'Ruka';

  @override
  String get continueLabel => 'Endelea';

  @override
  String get selected => 'Imechaguliwa';

  @override
  String get passwordRequired => 'Weka nenosiri lako';

  @override
  String get newPasswordLabel => 'Nenosiri jipya';

  @override
  String get confirmPasswordLabel => 'Thibitisha nenosiri';

  @override
  String get passwordsDoNotMatch => 'Manenosiri yote mawili lazima yafanane';

  @override
  String get showPassword => 'Onyesha nenosiri';

  @override
  String get hidePassword => 'Ficha nenosiri';

  @override
  String get savePassword => 'Hifadhi nenosiri';

  @override
  String get backToSignIn => 'Rudi kuingia';

  @override
  String get alreadyHaveAccount => 'Tayari nina akaunti';

  @override
  String get getStarted => 'Anza';

  @override
  String get acceptTerms => 'Nakubali Sheria za Huduma na Sera ya Faragha';

  @override
  String get acceptTermsRequired => 'Tafadhali kubali ili kuendelea';

  @override
  String get passwordStrengthTooShort => 'Fupi mno';

  @override
  String get passwordStrengthWeak => 'Dhaifu';

  @override
  String get passwordStrengthFair => 'Wastani';

  @override
  String get passwordStrengthGood => 'Nzuri';

  @override
  String get passwordStrengthStrong => 'Imara';

  @override
  String get passwordAdvice =>
      'Sentensi ndefu unayoikumbuka ni bora kuliko nenosiri fupi lenye alama nyingi. Epuka lolote unalotumia mahali pengine.';

  @override
  String get authInvalidCredentials =>
      'Barua pepe na nenosiri hilo halilingani na akaunti yoyote';

  @override
  String get authEmailNotConfirmed =>
      'Thibitisha anwani yako ya barua pepe kabla ya kuingia';

  @override
  String get authEmailAlreadyRegistered =>
      'Akaunti yenye barua pepe hii tayari ipo';

  @override
  String get authWeakPassword => 'Chagua nenosiri refu zaidi';

  @override
  String get authRateLimited =>
      'Majaribio mengi mno. Jaribu tena baada ya dakika chache';

  @override
  String get authNetworkError =>
      'Hakuna muunganisho. Angalia mtandao wako kisha ujaribu tena';

  @override
  String get authGenericError =>
      'Kuna kitu kimeenda vibaya. Tafadhali jaribu tena';

  @override
  String get confirmEmailTitle => 'Angalia barua pepe yako';

  @override
  String confirmEmailBody(String email) {
    return 'Tumetuma kiungo cha uthibitisho kwa $email. Kifungue ili kumalizia kuweka akaunti yako.';
  }

  @override
  String get resendConfirmation => 'Tuma tena barua pepe ya uthibitisho';

  @override
  String get confirmationResent => 'Barua pepe ya uthibitisho imetumwa';

  @override
  String get forgotPasswordTitle => 'Weka upya nenosiri lako';

  @override
  String get forgotPasswordSubtitle =>
      'Weka barua pepe uliyojisajili nayo nasi tutakutumia kiungo cha kuchagua nenosiri jipya.';

  @override
  String get sendResetLink => 'Tuma kiungo';

  @override
  String get resetLinkSentTitle => 'Kiungo kimetumwa';

  @override
  String resetLinkSentBody(String email) {
    return 'Ikiwa $email ina akaunti, kiungo cha kuweka upya kiko njiani.';
  }

  @override
  String get resetLinkSentHint =>
      'Kiungo huisha baada ya saa moja. Kisipofika, angalia folda ya taka kabla ya kuomba kingine.';

  @override
  String get tryAnotherEmail => 'Tumia barua pepe nyingine';

  @override
  String get resetPasswordTitle => 'Chagua nenosiri jipya';

  @override
  String get resetPasswordSubtitle =>
      'Chagua kitu ambacho hujawahi kutumia kwenye akaunti hii.';

  @override
  String get passwordChangedTitle => 'Nenosiri limesasishwa';

  @override
  String get passwordChangedBody =>
      'Nenosiri lako jipya limehifadhiwa. Umeingia na uko tayari kuendelea.';

  @override
  String get demoModeHint =>
      'Toleo la majaribio — hakuna akaunti inayohitajika';

  @override
  String get demoModeFill => 'Jaza';

  @override
  String get welcomeTrackTitle => 'Ona fedha zako zinakoenda';

  @override
  String get welcomeTrackBody =>
      'Rekodi kinachoingia na kinachotoka. RainyPenny hukigeuza kuwa picha unayoweza kuisoma kweli.';

  @override
  String get welcomeBudgetTitle => 'Mipaka inayoshikilia';

  @override
  String get welcomeBudgetBody =>
      'Ipe kila sehemu ya matumizi yako kikomo cha mwezi, na ujue kabla hujakivuka, si baada ya hapo.';

  @override
  String get welcomeGoalsTitle => 'Weka akiba kwa kile kinachohesabika';

  @override
  String get welcomeGoalsBody =>
      'Lipe lengo jina, weka kiasi, kisha uangalie likijaa. Hazina ya dharura ni rahisi kuijenga unapoiona.';

  @override
  String get welcomePrivacyTitle => 'Fedha zako zinabaki zako';

  @override
  String get welcomePrivacyBody =>
      'Namba zako ni zako peke yako. Hakuna kinachouzwa wala kushirikiwa na mtu yeyote.';

  @override
  String stepOf(int step, int total) {
    return 'Hatua $step kati ya $total';
  }

  @override
  String get onboardingNameTitle => 'Tukuite nani?';

  @override
  String get onboardingNameBody =>
      'Tutalitumia kukusalimu tu, si mahali pengine.';

  @override
  String get onboardingNameHint =>
      'Jina la kwanza linatosha. Unaweza kulibadilisha baadaye.';

  @override
  String get onboardingCurrencyTitle => 'Unatumia sarafu gani?';

  @override
  String get onboardingCurrencyBody =>
      'Kila kiasi kwenye programu kitaonyeshwa kwa sarafu hii. Kuichagua hakubadilishi thamani yoyote.';

  @override
  String get onboardingCurrencySearch => 'Tafuta sarafu zote';

  @override
  String get onboardingAppearanceTitle => 'Ifanye iwe yako';

  @override
  String get onboardingAppearanceBody =>
      'Chagua mwonekano. Kila kitu hubadilika unapogusa, na unaweza kurudi wakati wowote.';

  @override
  String get onboardingNotificationsTitle => 'Endelea kuwa juu ya mambo';

  @override
  String get onboardingNotificationsBody =>
      'Kikumbusho kidogo kwa wakati sahihi ndicho kinachogeuza hili kuwa mazoea.';

  @override
  String get onboardingNotifyReminders =>
      'Kikumbusho cha upole cha kurekodi ulichotumia';

  @override
  String get onboardingNotifyBudget => 'Taarifa kabla bajeti haijaisha';

  @override
  String get onboardingNotifySummary =>
      'Muhtasari wa wiki wa fedha zako zilikoenda';

  @override
  String get onboardingNotifyEnable => 'Washa arifa';

  @override
  String get onboardingNotifyDone => 'Mipangilio ya arifa imehifadhiwa';

  @override
  String get onboardingNotifyLater =>
      'Unaweza kubadilisha yote haya kwenye Mipangilio, wakati wowote.';

  @override
  String get onboardingReadyTitle => 'Uko tayari';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Uko tayari, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Uwekaji umekamilika. Ungependa ziara fupi ya jinsi kila kitu kinavyofanya kazi?';

  @override
  String get onboardingTakeTour => 'Nionyeshe';

  @override
  String get onboardingGoToApp => 'Nipeleke kwenye programu';

  @override
  String get onboardingTourLater =>
      'Si sasa? Mwongozo unabaki kwenye Mipangilio, wakati wowote unapouhitaji.';

  @override
  String get beginnersGuide => 'Mwongozo wa wanaoanza';

  @override
  String get guideFinish => 'Maliza';

  @override
  String chapterOf(int number, int total) {
    return 'Sura $number kati ya $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Fungua $screen';
  }

  @override
  String get guideDashboardTitle => 'Ukurasa wako wa mwanzo';

  @override
  String get guideDashboardBody =>
      'Kila kitu huanzia hapa. Kadi ya juu ni kile kilichokubakia; chini yake ni kilichoingia na kilichotoka kipindi hiki, kisha matumizi, bajeti na malengo yako.';

  @override
  String get guideDashboardTip1 =>
      'Vuta skrini chini ili kuonyesha upya kila kitu kwa mara moja.';

  @override
  String get guideDashboardTip2 =>
      'Gusa kadi ya mapato au matumizi ili kwenda moja kwa moja kwenye orodha hiyo.';

  @override
  String get guideDashboardTip3 =>
      'Pete na ufahamu husasishwa mara tu unaporekodi kitu.';

  @override
  String get guideAddTitle => 'Kurekodi fedha';

  @override
  String get guideAddBody =>
      'Kitufe kilicho katikati ya upau ndicho mwanzo wa kila kitu. Kinafungua menyu fupi: matumizi, mapato, deni, bajeti au lengo la akiba.';

  @override
  String get guideAddTip1 =>
      'Gusa kitufe cha katikati ili kurekodi fedha zinazoingia au kutoka.';

  @override
  String get guideAddTip2 =>
      'Kishikilie ili kwenda moja kwa moja kwenye matumizi mapya bila menyu.';

  @override
  String get guideAddTip3 =>
      'Chagua kategoria kila wakati — ndicho kinachofanya chati na bajeti zifanye kazi.';

  @override
  String get guideCategoriesTitle => 'Kategoria';

  @override
  String get guideCategoriesBody =>
      'Kategoria ndizo zinazopanga matumizi katika makundi. Zile zinazokuja na programu zinatosha watu wengi, na unaweza kuzibadilisha majina au kuongeza zako.';

  @override
  String get guideCategoriesTip1 =>
      'Mipangilio, kisha Simamia kategoria, ili kubadilisha au kuongeza.';

  @override
  String get guideCategoriesTip2 =>
      'Chochote kisicho na kategoria huingia «Nyingine», ili chati zibaki za kweli.';

  @override
  String get guideBudgetTitle => 'Bajeti';

  @override
  String get guideBudgetBody =>
      'Bajeti ni kikomo cha mwezi kwa kategoria moja. Upau hujaa unapotumia na hubadilika rangi unapokaribia, hivyo unajua kabla hujavuka.';

  @override
  String get guideBudgetTip1 =>
      'Anza na kategoria mbili au tatu, si zote kwa mara moja.';

  @override
  String get guideBudgetTip2 =>
      'Weka kikomo juu kidogo ya matumizi yako ya kawaida, kisha ukibane.';

  @override
  String get guideBudgetTip3 =>
      'Acha tahadhari za bajeti zikiwa zimewashwa nayo programu itakuonya bajeti inapokwisha.';

  @override
  String get guideSavingsTitle => 'Malengo ya akiba';

  @override
  String get guideSavingsBody =>
      'Taja unachowekea akiba, weka kiasi na tarehe, nayo programu itahesabu unachohitaji kutenga kila mwezi.';

  @override
  String get guideSavingsTip1 =>
      'Lengo lenye jina ni rahisi kulishikilia kuliko nia isiyoeleweka ya kuweka akiba.';

  @override
  String get guideSavingsTip2 =>
      'Malengo kadhaa madogo hukamilika mara nyingi zaidi kuliko lengo moja kubwa.';

  @override
  String get guideLoansTitle => 'Madeni na mikopo';

  @override
  String get guideLoansBody =>
      'Rekodi unachodaiwa, gharama yake na wakati malipo yajayo yanapofika. Kila unachokilipa kiko kwenye orodha moja pamoja na kilichobaki.';

  @override
  String get guideLoansTip1 =>
      'Ongeza tarehe ya malipo nayo vikumbusho vitakufuatilia.';

  @override
  String get guideLoansTip2 =>
      'Deni lililopitwa na muda huonekana jekundu kwenye ukurasa wa mwanzo hadi lilipwe.';

  @override
  String get guideReportsTitle => 'Ripoti';

  @override
  String get guideReportsBody =>
      'Mtazamo wa kina: mapato dhidi ya matumizi, matumizi kwa kategoria, jinsi bajeti zako zilivyoshikilia, na sehemu ipi ya mapato yako uliyoibakiza.';

  @override
  String get guideReportsTip1 =>
      'Badilisha kati ya wiki, mwezi na robo mwaka juu ya skrini.';

  @override
  String get guideReportsTip2 =>
      'Hamisha au shiriki PDF — hutoka kwa lugha yako na mwelekeo wake.';

  @override
  String get guideSettingsTitle => 'Mipangilio';

  @override
  String get guideSettingsBody =>
      'Lugha, sarafu, rangi na tahadhari zote ziko hapa, na hakuna hata moja iliyofungwa na uwekaji wa mwanzo — badilisha wakati wowote.';

  @override
  String get guideSettingsTip1 =>
      'Lugha arobaini, na mpangilio wote hugeuzwa kwa zile za kulia-kwenda-kushoto.';

  @override
  String get guideSettingsTip2 =>
      'Chagua tahadhari unazotaka na saa ambazo zinaweza kufika.';

  @override
  String get guideSettingsTip3 =>
      'Saa za utulivu huzuia kila kitu hadi asubuhi.';

  @override
  String get guideHabitTitle => 'Ifanye iwe mazoea';

  @override
  String get guideHabitBody =>
      'Programu ni nzuri kwa kadiri ya unachoweka ndani yake. Dakika moja kwa siku ni bora kuliko saa moja kwa mwezi, na baada ya wiki mbili namba huanza kukuambia kitu.';

  @override
  String get guideHabitTip1 =>
      'Rekodi matumizi yanapotokea, si mwishoni mwa wiki.';

  @override
  String get guideHabitTip2 =>
      'Tazama ukurasa wa mwanzo mara moja kwa siku. Sekunde kumi zinatosha.';

  @override
  String get guideHabitTip3 =>
      'Mwongozo huu unabaki kwenye Mipangilio — rudi wakati wowote.';

  @override
  String get appearance => 'Mwonekano';

  @override
  String get themeCaption => 'Nuru, giza, au kile simu yako inachofanya.';

  @override
  String get accentColor => 'Rangi kuu';

  @override
  String get accentColorCaption => 'Hupaka rangi vitufe, vivutio na chati.';

  @override
  String get accentSemanticsNote =>
      'Fedha zinazoingia na zinazotoka hubaki na rangi zao katika kila mandhari, hivyo namba haibadiliki maana kwa sababu tu umebadilisha rangi kuu.';

  @override
  String get accentTeal => 'Kijani-buluu';

  @override
  String get accentGreen => 'Kijani';

  @override
  String get accentSky => 'Buluu ya anga';

  @override
  String get accentBlue => 'Buluu';

  @override
  String get accentIndigo => 'Nili';

  @override
  String get accentViolet => 'Zambarau';

  @override
  String get accentPink => 'Waridi';

  @override
  String get accentCrimson => 'Nyekundu iliyokolea';

  @override
  String get accentOrange => 'Chungwa';

  @override
  String get accentSlate => 'Kijivu cha mawe';

  @override
  String get searchLanguages => 'Tafuta lugha';

  @override
  String get suggestedLanguages => 'Zinazopendekezwa';

  @override
  String get allLanguages => 'Lugha zote';

  @override
  String get noLanguagesFound => 'Hakuna lugha iliyopatikana';

  @override
  String get noLanguagesFoundMessage =>
      'Jaribu jina kwa Kiingereza, au msimbo wa herufi mbili.';

  @override
  String get rightToLeft => 'Kulia kwenda kushoto';

  @override
  String get replayGuide => 'Rudia mwongozo';

  @override
  String get replaySetup => 'Rudia uwekaji';

  @override
  String get replaySetupBody =>
      'Pitia tena maswali ya mwanzo. Hakuna ulichokirekodi kinachofutwa.';

  @override
  String get rateTitle => 'Unafurahia RainyPenny?';

  @override
  String get rateBody =>
      'Umekuwa ukiitumia kwa muda sasa. Kutoa ukadiriaji huchukua muda mfupi na huwasaidia wengine kuipata programu hii.';

  @override
  String get rateAction => 'Kadiria programu';

  @override
  String get rateLater => 'Labda baadaye';

  @override
  String get rateNever => 'Hapana, asante';

  @override
  String get rateThanks => 'Asante';

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
