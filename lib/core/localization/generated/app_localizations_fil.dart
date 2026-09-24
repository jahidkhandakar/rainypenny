// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppL10nFil extends AppL10n {
  AppL10nFil([String locale = 'fil']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Mag-ipon para sa maulan na araw';

  @override
  String get navHome => 'Home';

  @override
  String get navTransactions => 'Transaksyon';

  @override
  String get navAdd => 'Magdagdag';

  @override
  String get navReports => 'Ulat';

  @override
  String get navProfile => 'Profile';

  @override
  String greetingMorning(String name) {
    return 'Magandang umaga, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Magandang hapon, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Magandang gabi, $name';
  }

  @override
  String get greetingSubtitle => 'Ito ang buod ng pera mo';

  @override
  String get totalBalance => 'Kabuuang balanse';

  @override
  String get vsLastPeriod => 'kumpara sa nakaraan';

  @override
  String get income => 'Kita';

  @override
  String get expenses => 'Gastos';

  @override
  String get netBalance => 'Netong balanse';

  @override
  String get lastThirtyDays => 'Huling 30 araw';

  @override
  String get quickActions => 'Mabilisang aksyon';

  @override
  String get addIncome => 'Magdagdag ng kita';

  @override
  String get addExpense => 'Magdagdag ng gastos';

  @override
  String get spendingOverview => 'Buod ng paggastos';

  @override
  String get recentTransactions => 'Mga huling transaksyon';

  @override
  String get seeAll => 'Tingnan lahat';

  @override
  String get viewAll => 'Ipakita lahat';

  @override
  String get budgetProgress => 'Takbo ng badyet';

  @override
  String get savingsGoals => 'Layunin sa ipon';

  @override
  String get financialInsight => 'Pananaw sa pera';

  @override
  String get financialHealth => 'Kalusugan ng pananalapi';

  @override
  String ofTotal(String total) {
    return 'sa $total';
  }

  @override
  String get searchTransactions => 'Maghanap ng transaksyon';

  @override
  String get filterAll => 'Lahat';

  @override
  String get filterIncome => 'Kita';

  @override
  String get filterExpenses => 'Gastos';

  @override
  String get today => 'Ngayon';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get noTransactionsTitle => 'Walang nahanap na transaksyon';

  @override
  String get noTransactionsBody =>
      'Subukan ang ibang hanap o filter para makakita pa ng mga tala.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na transaksyon',
      one: '$count transaksyon',
      zero: 'Walang transaksyon',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Magdagdag ng transaksyon';

  @override
  String get amount => 'Halaga';

  @override
  String get category => 'Kategorya';

  @override
  String get date => 'Petsa';

  @override
  String get note => 'Tala';

  @override
  String get noteHint => 'Tala (opsyonal)';

  @override
  String get saveIncome => 'I-save ang kita';

  @override
  String get saveExpense => 'I-save ang gastos';

  @override
  String get selectCategory => 'Pumili ng kategorya';

  @override
  String get transactionSaved => 'Na-save ang transaksyon';

  @override
  String get amountRequired => 'Maglagay ng halagang mas malaki sa zero';

  @override
  String get titleRequired => 'Bigyan ng pangalan ang transaksyong ito';

  @override
  String get descriptionLabel => 'Paglalarawan';

  @override
  String get descriptionHint => 'hal. groseri';

  @override
  String get budget => 'Badyet';

  @override
  String get budgets => 'Mga badyet';

  @override
  String get totalBudget => 'Kabuuang badyet';

  @override
  String get spent => 'Nagastos';

  @override
  String get remaining => 'Natitira';

  @override
  String budgetUsed(int percent) {
    return '$percent% nagamit';
  }

  @override
  String get onTrack => 'Nasa tamang landas';

  @override
  String get approachingLimit => 'Malapit na sa limitasyon';

  @override
  String get overBudget => 'Lampas sa badyet';

  @override
  String get savings => 'Ipon';

  @override
  String get yourGoals => 'Mga layunin mo';

  @override
  String get saved => 'Naipon';

  @override
  String get target => 'Target';

  @override
  String get monthlyContribution => 'Kada buwan';

  @override
  String get addFunds => 'Magdagdag ng pondo';

  @override
  String get goalComplete => 'Naabot ang layunin';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count buwan na lang',
      one: '$count buwan na lang',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Utang at pautang';

  @override
  String get totalOutstanding => 'Kabuuang natitirang utang';

  @override
  String get monthlyPayment => 'Kada buwan';

  @override
  String get nextPayment => 'Susunod na bayad';

  @override
  String paidOff(int percent) {
    return '$percent% nabayaran';
  }

  @override
  String get interestRate => 'Interes';

  @override
  String get upcomingPayments => 'Paparating na bayad';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Due sa $count araw',
      one: 'Due sa $count araw',
      zero: 'Due ngayon',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Lampas na sa takdang araw';

  @override
  String get reports => 'Ulat';

  @override
  String get week => 'Linggo';

  @override
  String get month => 'Buwan';

  @override
  String get quarter => 'Kwarter';

  @override
  String get incomeVsExpenses => 'Kita kontra gastos';

  @override
  String get spendingByCategory => 'Gastos ayon sa kategorya';

  @override
  String get budgetPerformance => 'Takbo ng mga badyet';

  @override
  String get insights => 'Mga pananaw';

  @override
  String get savingsRate => 'Rate ng ipon';

  @override
  String get profile => 'Profile';

  @override
  String get account => 'Account';

  @override
  String get personalInformation => 'Personal na impormasyon';

  @override
  String get changePassword => 'Palitan ang password';

  @override
  String get notifications => 'Mga abiso';

  @override
  String get preferences => 'Kagustuhan';

  @override
  String get language => 'Wika';

  @override
  String get currency => 'Pera';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Seguridad';

  @override
  String get privacyAndSecurity => 'Privacy at seguridad';

  @override
  String get help => 'Tulong';

  @override
  String get helpAndSupport => 'Tulong at suporta';

  @override
  String get termsAndConditions => 'Mga tuntunin at kundisyon';

  @override
  String get logOut => 'Mag-log out';

  @override
  String memberSince(String date) {
    return 'Miyembro mula $date';
  }

  @override
  String get themeSystem => 'Sundin ang sistema';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get settings => 'Mga setting';

  @override
  String get noNotificationsTitle => 'Wala nang bago';

  @override
  String get noNotificationsBody =>
      'Lilitaw dito ang mga bagong pananaw at paalala.';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get save => 'I-save';

  @override
  String get done => 'Tapos';

  @override
  String get retry => 'Subukan ulit';

  @override
  String get close => 'Isara';

  @override
  String get somethingWentWrong => 'May nangyaring mali';

  @override
  String get comingSoon => 'Darating sa buong bersyon';

  @override
  String get edit => 'I-edit';

  @override
  String get delete => 'Burahin';

  @override
  String get undo => 'Ibalik';

  @override
  String get add => 'Idagdag';

  @override
  String get create => 'Gumawa';

  @override
  String get nameRequired => 'Bigyan ito ng pangalan';

  @override
  String get amountAboveZero => 'Maglagay ng halagang mas malaki sa zero';

  @override
  String get editTransaction => 'I-edit ang transaksyon';

  @override
  String get deleteTransaction => 'Burahin ang transaksyon?';

  @override
  String deleteTransactionBody(String title) {
    return 'Aalisin ang $title sa iyong talaan.';
  }

  @override
  String get transactionDeleted => 'Nabura ang transaksyon';

  @override
  String get transactionUpdated => 'Na-update ang transaksyon';

  @override
  String get newBudget => 'Bagong badyet';

  @override
  String get editBudget => 'I-edit ang badyet';

  @override
  String get budgetLimit => 'Limitasyon kada buwan';

  @override
  String get deleteBudget => 'Burahin ang badyet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Aalisin ang badyet na $category. Hindi maaapektuhan ang mga transaksyon mo.';
  }

  @override
  String get budgetSaved => 'Na-save ang badyet';

  @override
  String get budgetDeleted => 'Nabura ang badyet';

  @override
  String get allCategoriesBudgeted => 'May badyet na ang bawat kategorya';

  @override
  String get noBudgetsTitle => 'Wala pang badyet';

  @override
  String get noBudgetsBody =>
      'Maglagay ng buwanang limitasyon sa isang kategorya para masimulan itong subaybayan.';

  @override
  String get newGoal => 'Bagong layunin';

  @override
  String get editGoal => 'I-edit ang layunin';

  @override
  String get goalName => 'Pangalan ng layunin';

  @override
  String get goalNameHint => 'hal. pang-emerhensiya';

  @override
  String get targetAmount => 'Target na halaga';

  @override
  String get alreadySaved => 'Naipon na';

  @override
  String get deleteGoal => 'Burahin ang layunin?';

  @override
  String deleteGoalBody(String name) {
    return 'Aalisin ang $name at ang progreso nito.';
  }

  @override
  String get goalSaved => 'Na-save ang layunin';

  @override
  String get goalDeleted => 'Nabura ang layunin';

  @override
  String get noGoalsTitle => 'Wala pang layunin sa ipon';

  @override
  String get noGoalsBody =>
      'Maglagay ng target at susubaybayan ng RainyPenny ang progreso mo.';

  @override
  String get fundsAdded => 'Naidagdag ang pondo';

  @override
  String get newDebt => 'Bagong utang o card';

  @override
  String get editDebt => 'I-edit ang utang';

  @override
  String get debtName => 'Pangalan';

  @override
  String get debtNameHint => 'hal. car loan';

  @override
  String get lender => 'Pinagkakautangan';

  @override
  String get lenderHint => 'hal. BDO';

  @override
  String get originalAmount => 'Orihinal na halaga';

  @override
  String get creditLimit => 'Limitasyon ng credit';

  @override
  String get remainingBalance => 'Natitirang balanse';

  @override
  String get interestRatePercent => 'Interes (%)';

  @override
  String get kindLoan => 'Utang';

  @override
  String get kindCreditCard => 'Credit card';

  @override
  String get recordPayment => 'Itala ang bayad';

  @override
  String get paymentRecorded => 'Naitala ang bayad';

  @override
  String get deleteDebt => 'Burahin ang utang na ito?';

  @override
  String deleteDebtBody(String name) {
    return 'Aalisin ang $name sa listahan ng mga utang mo.';
  }

  @override
  String get debtSaved => 'Na-save';

  @override
  String get debtDeleted => 'Nabura';

  @override
  String get noDebtsTitle => 'Walang sinusubaybayang utang';

  @override
  String get noDebtsBody =>
      'Magdagdag ng utang o credit card para mabantayan ang mga hulog.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Lampas na ang badyet sa $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Lampas ka ng $amount sa badyet mo para sa $subject ngayong panahon.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'Malapit na sa limitasyon ang $subject';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$percent% na ang nagamit sa badyet mo para sa $subject, $amount na lang ang natitira.';
  }

  @override
  String get insightOverIncomeTitle => 'Mas mataas ang gastos kaysa kita';

  @override
  String get insightOverIncomeBody =>
      'Mas malaki ang nagastos mo kaysa kinita mo ngayong panahon. Tingnan ang pinakamalalaking kategorya para makabalik sa ayos.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Tumaas ang gastos sa $subject';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Ang gastos mo sa $subject ay $percent% na mas mataas kaysa nakaraang panahon.';
  }

  @override
  String get insightTrendDownTitle => 'Bumababa ang paggastos';

  @override
  String insightTrendDownBody(int percent) {
    return 'Ang kabuuang gastos ay $percent% na mas mababa kaysa nakaraang panahon.';
  }

  @override
  String get insightTrendUpTitle => 'Tumataas ang paggastos';

  @override
  String insightTrendUpBody(int percent) {
    return 'Ang kabuuang gastos ay $percent% na mas mataas kaysa nakaraang panahon.';
  }

  @override
  String get insightSavingsStrongTitle => 'Malakas ang ipon ngayong panahon';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Naitabi mo ang $percent% ng kita mo — mataas nang mataas sa target na $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Mas mababa sa target ang rate ng ipon';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Naitabi mo ang $percent% ng kita mo ngayong panahon. Tumutok sa $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'Malapit nang mabuo ang $subject';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$amount na lang ang kulang para sa $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Nasa tamang landas ang $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months buwan',
      one: '$months buwan',
    );
    return 'Sa $amount kada buwan, maaabot mo ang layuning ito sa loob ng $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Lampas na sa takdang araw ang bayad sa $subject';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days araw',
      one: '$days araw',
    );
    return 'Ang $amount na bayad para sa $subject ay $_temp0 nang huli.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Papalapit na ang bayad sa $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sa loob ng $days araw',
      one: 'sa loob ng $days araw',
      zero: 'ngayon',
    );
    return 'Due ang $amount $_temp0.';
  }

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get signUp => 'Gumawa ng account';

  @override
  String get signInSubtitle =>
      'Maligayang pagbabalik. Naghihintay ang pera mo.';

  @override
  String get signUpSubtitle => 'Ilang detalye lang at handa ka na.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'ikaw@email.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Hindi bababa sa 8 karakter';

  @override
  String get fullNameLabel => 'Buong pangalan';

  @override
  String get fullNameHint => 'Juan dela Cruz';

  @override
  String get forgotPassword => 'Nakalimutan ang password?';

  @override
  String get resetSent => 'Tingnan ang inbox mo para sa reset link';

  @override
  String get noAccountYet => 'Bago ka rito?';

  @override
  String get haveAccount => 'May account ka na?';

  @override
  String get emailInvalid => 'Maglagay ng tamang email address';

  @override
  String get passwordTooShort => 'Gumamit ng hindi bababa sa 8 karakter';

  @override
  String get signOutConfirm => 'Mag-sign out?';

  @override
  String get signOutBody =>
      'Kailangan mong mag-sign in ulit para makita ang pera mo.';

  @override
  String get dataSource => 'Pinagmulan ng data';

  @override
  String get insightWeeklySummaryTitle => 'Balik-tanaw sa linggo mo';

  @override
  String get insightWeeklySummaryBody =>
      'Tingnan kung saan napunta ang pera mo ngayong linggo at kumusta ang mga badyet mo.';

  @override
  String get notificationSettings => 'Mga abiso';

  @override
  String get alertsSection => 'Mga alerto';

  @override
  String get budgetAlerts => 'Alerto sa badyet';

  @override
  String get budgetAlertsBody =>
      'Kapag malapit na o lampas na ang badyet sa limitasyon';

  @override
  String get paymentReminders => 'Paalala sa bayad';

  @override
  String get paymentRemindersBody => 'Ilang araw bago ang takdang bayad';

  @override
  String get savingsUpdates => 'Balita sa ipon';

  @override
  String get savingsUpdatesBody => 'Progreso patungo sa mga layunin mo';

  @override
  String get weeklySummaryLabel => 'Lingguhang buod';

  @override
  String get weeklySummaryBody => 'Buod ng linggong lumipas';

  @override
  String get scheduleSection => 'Oras';

  @override
  String get reminderTime => 'Oras ng paalala';

  @override
  String get quietHours => 'Tahimik na oras';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Araw ng buod';

  @override
  String get permissionRequired => 'Naka-off ang mga abiso';

  @override
  String get permissionRequiredBody =>
      'Payagan ang mga abiso para mabalaan ka ng RainyPenny bago tuluyang lumampas ang badyet o bayad.';

  @override
  String get allowNotifications => 'Payagan ang mga abiso';

  @override
  String get permissionDenied =>
      'Naka-block ang mga abiso. Maaari mo itong i-on sa settings ng device mo.';

  @override
  String get upcomingAlerts => 'Nakatakda';

  @override
  String get noScheduledAlerts => 'Wala pang nakatakda ngayon';

  @override
  String get noScheduledAlertsBody =>
      'Lilitaw dito ang mga alerto kapag papalapit na sa hangganan ang mga badyet at bayad mo.';

  @override
  String scheduledFor(String date) {
    return 'Nakatakda sa $date';
  }

  @override
  String get everyWeek => 'Kada linggo';

  @override
  String get allNotificationsOff => 'Naka-off ang lahat ng abiso';

  @override
  String get needsAttention => 'Kailangan ng pansin';

  @override
  String get quickActionsTitle => 'Ano ang gusto mong gawin?';

  @override
  String get createSection => 'Itala';

  @override
  String get jumpToSection => 'Pumunta sa';

  @override
  String get addLoanAction => 'Magdagdag ng utang';

  @override
  String get addBudgetAction => 'Magdagdag ng badyet';

  @override
  String get addGoalAction => 'Magdagdag ng layunin';

  @override
  String get longPressHint =>
      'Tip: pindutin nang matagal ang + para agad makapagtala ng gastos';

  @override
  String get searchCurrencies => 'Maghanap ng pera';

  @override
  String get noCurrenciesFound => 'Walang nahanap na pera';

  @override
  String get noCurrenciesFoundMessage =>
      'Subukan ang ibang code, simbolo o pangalan.';

  @override
  String get popularCurrencies => 'Madalas gamitin';

  @override
  String get allCurrencies => 'Lahat ng pera';

  @override
  String get totalLoanAmount => 'Kabuuang halaga ng utang';

  @override
  String get installmentAmount => 'Halaga kada hulog';

  @override
  String get numberOfInstallments => 'Bilang ng hulog';

  @override
  String get paidInstallments => 'Nabayarang hulog';

  @override
  String get remainingInstallments => 'Natitirang hulog';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid sa $total ang nabayaran';
  }

  @override
  String get finalPayment => 'Huling hulog';

  @override
  String get paymentDueDate => 'Takdang araw ng bayad';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Ika-$day ng bawat buwan';
  }

  @override
  String get loanStatus => 'Katayuan';

  @override
  String get statusActive => 'Nasa tamang landas';

  @override
  String get statusDueSoon => 'Malapit nang mag-due';

  @override
  String get statusOverdue => 'Lampas na sa takdang araw';

  @override
  String get statusCompleted => 'Bayad na';

  @override
  String get repaymentProgress => 'Progreso ng pagbabayad';

  @override
  String get byAmount => 'Ayon sa halaga';

  @override
  String get byInstallments => 'Ayon sa hulog';

  @override
  String get startDate => 'Petsa ng simula';

  @override
  String get openEnded => 'Walang takdang wakas';

  @override
  String get loanDetails => 'Detalye ng utang';

  @override
  String get notSet => 'Wala pang nakatakda';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'Due ngayon ang $subject';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Due ngayon ang bayad mong $amount. Isang pindot lang at on time ka pa rin.';
  }

  @override
  String get remindMorningTitle => 'Magandang umaga ☀️';

  @override
  String get remindMorningBody =>
      'Simulan ang araw nang kontrolado ang pera. May idadagdag pa ba mula kahapon?';

  @override
  String get remindNoonTitle => 'Tsek sa tanghali';

  @override
  String get remindNoonBody =>
      'Tanghalian, kape, pamasahe? Ilang segundo lang ang pagtatala.';

  @override
  String get remindAfternoonTitle => 'Mabilis na habol';

  @override
  String get remindAfternoonBody =>
      'Itala ang nagastos mo hanggang ngayon para tumpak ang bilang ngayong araw.';

  @override
  String get remindEveningTitle => 'Pagtatapos ng araw';

  @override
  String get remindEveningBody =>
      'Dalawang minuto ngayon at kumpleto na ang bilang para sa araw na ito.';

  @override
  String get happyWeekendTitle => 'Masayang weekend! 🎉';

  @override
  String get happyWeekendBody =>
      'Mag-enjoy ka — at bantayan lang nang kaunti ang gastos sa weekend.';

  @override
  String get dailyReminders => 'Araw-araw na paalala sa gastos';

  @override
  String get dailyRemindersBody =>
      'Banayad na paalala para laging updated ang gastos mo';

  @override
  String get weekendGreeting => 'Bati sa weekend';

  @override
  String get weekendGreetingBody =>
      'Isang magiliw na bati sa simula ng weekend mo';

  @override
  String get reminderTimesSection => 'Oras ng mga paalala';

  @override
  String get slotMorning => 'Umaga';

  @override
  String get slotNoon => 'Tanghali';

  @override
  String get slotAfternoon => 'Hapon';

  @override
  String get slotEvening => 'Gabi';

  @override
  String get everyDay => 'Araw-araw';

  @override
  String get financialReport => 'Ulat sa pananalapi';

  @override
  String get preparedFor => 'Inihanda para kay';

  @override
  String get generatedOn => 'Ginawa noong';

  @override
  String get reportDisclaimer =>
      'Ginawa ng RainyPenny mula sa sarili mong mga tala.';

  @override
  String pageOf(int page, int total) {
    return 'Pahina $page sa $total';
  }

  @override
  String get overview => 'Buod';

  @override
  String get description => 'Paglalarawan';

  @override
  String get totalIncome => 'Kabuuang kita';

  @override
  String get totalExpenses => 'Kabuuang gastos';

  @override
  String get totalSaved => 'Kabuuang naipon';

  @override
  String get shareOfTotal => 'Bahagi';

  @override
  String get used => 'Nagamit';

  @override
  String get goal => 'Layunin';

  @override
  String get targetDate => 'Target na petsa';

  @override
  String get progress => 'Progreso';

  @override
  String get paidOffShort => 'Bayad';

  @override
  String get transactions => 'Mga transaksyon';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'at $count pang transaksyon',
      one: 'at $count pang transaksyon',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'I-export bilang PDF';

  @override
  String get sharePdf => 'Ibahagi ang ulat';

  @override
  String get preparingReport => 'Inihahanda ang ulat mo…';

  @override
  String get reportReady => 'Handa na ang ulat';

  @override
  String get reportFailed => 'Hindi nagawa ang ulat';

  @override
  String get categories => 'Mga kategorya';

  @override
  String get categoriesIntro =>
      'Magdagdag ng sarili mong kategorya para maisaayos ang kita at gastos ayon mismo sa iniisip mo.';

  @override
  String get expenseCategories => 'Kategorya ng gastos';

  @override
  String get incomeCategories => 'Kategorya ng kita';

  @override
  String get newCategory => 'Bagong kategorya';

  @override
  String get editCategory => 'I-edit ang kategorya';

  @override
  String get categoryName => 'Pangalan';

  @override
  String get categoryNameHint => 'hal. alagang hayop';

  @override
  String get icon => 'Icon';

  @override
  String get categorySaved => 'Na-save ang kategorya';

  @override
  String get categoryDeleted => 'Nabura ang kategorya';

  @override
  String get deleteCategory => 'Burahin ang kategoryang ito?';

  @override
  String deleteCategoryBody(String name) {
    return 'Aalisin ang $name sa mga kategorya mo.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tala ang gumagamit pa rin ng kategoryang ito',
      one: '$count tala ang gumagamit pa rin ng kategoryang ito',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Wala pa rito.';

  @override
  String get builtIn => 'Nakapaloob na';

  @override
  String get manageCategories => 'Pamahalaan ang mga kategorya';

  @override
  String get expense => 'Gastos';

  @override
  String get languageNote =>
      'Ang Arabic, Urdu, Persian at Hebrew ay nagpapalit ng buong interface sa kanan-pakaliwa, pati na ang mga chart at ulat na PDF.';

  @override
  String get next => 'Susunod';

  @override
  String get back => 'Bumalik';

  @override
  String get skip => 'Laktawan';

  @override
  String get continueLabel => 'Magpatuloy';

  @override
  String get selected => 'Napili';

  @override
  String get passwordRequired => 'Ilagay ang password mo';

  @override
  String get newPasswordLabel => 'Bagong password';

  @override
  String get confirmPasswordLabel => 'Kumpirmahin ang password';

  @override
  String get passwordsDoNotMatch => 'Dapat magkatugma ang dalawang password';

  @override
  String get showPassword => 'Ipakita ang password';

  @override
  String get hidePassword => 'Itago ang password';

  @override
  String get savePassword => 'I-save ang password';

  @override
  String get backToSignIn => 'Balik sa sign in';

  @override
  String get alreadyHaveAccount => 'May account na ako';

  @override
  String get getStarted => 'Magsimula';

  @override
  String get acceptTerms =>
      'Sang-ayon ako sa Mga Tuntunin ng Serbisyo at Patakaran sa Privacy';

  @override
  String get acceptTermsRequired => 'Sumang-ayon muna para makapagpatuloy';

  @override
  String get passwordStrengthTooShort => 'Masyadong maikli';

  @override
  String get passwordStrengthWeak => 'Mahina';

  @override
  String get passwordStrengthFair => 'Katamtaman';

  @override
  String get passwordStrengthGood => 'Maganda';

  @override
  String get passwordStrengthStrong => 'Malakas';

  @override
  String get passwordAdvice =>
      'Mas mainam ang mahabang pariralang matatandaan mo kaysa maikling password na puno ng simbolo. Iwasan ang kahit anong ginagamit mo na sa ibang lugar.';

  @override
  String get authInvalidCredentials =>
      'Walang account na tumutugma sa email at password na iyan';

  @override
  String get authEmailNotConfirmed =>
      'Kumpirmahin muna ang email address mo bago mag-sign in';

  @override
  String get authEmailAlreadyRegistered =>
      'May account nang gumagamit ng email na ito';

  @override
  String get authWeakPassword => 'Pumili ng mas mahabang password';

  @override
  String get authRateLimited =>
      'Masyadong maraming pagsubok. Subukan ulit makalipas ang ilang minuto';

  @override
  String get authNetworkError =>
      'Walang koneksyon. Tingnan ang network mo at subukan ulit';

  @override
  String get authGenericError => 'May nangyaring mali. Pakisubukan ulit';

  @override
  String get confirmEmailTitle => 'Tingnan ang email mo';

  @override
  String confirmEmailBody(String email) {
    return 'Nagpadala kami ng confirmation link sa $email. Buksan ito para matapos ang pag-set up ng account mo.';
  }

  @override
  String get resendConfirmation => 'Ipadala ulit ang confirmation email';

  @override
  String get confirmationResent => 'Naipadala ang confirmation email';

  @override
  String get forgotPasswordTitle => 'I-reset ang password';

  @override
  String get forgotPasswordSubtitle =>
      'Ilagay ang email na ginamit mo sa pag-sign up at padadalhan ka namin ng link para pumili ng bagong password.';

  @override
  String get sendResetLink => 'Ipadala ang reset link';

  @override
  String get resetLinkSentTitle => 'Naipadala ang link';

  @override
  String resetLinkSentBody(String email) {
    return 'Kung may account ang $email, papunta na ang reset link.';
  }

  @override
  String get resetLinkSentHint =>
      'Mag-e-expire ang link sa loob ng isang oras. Kung hindi ito dumating, tingnan ang spam folder bago humingi ng bago.';

  @override
  String get tryAnotherEmail => 'Gumamit ng ibang email';

  @override
  String get resetPasswordTitle => 'Pumili ng bagong password';

  @override
  String get resetPasswordSubtitle =>
      'Pumili ng hindi mo pa nagamit sa account na ito.';

  @override
  String get passwordChangedTitle => 'Na-update ang password';

  @override
  String get passwordChangedBody =>
      'Na-save ang bagong password mo. Naka-sign in ka na at handa nang magpatuloy.';

  @override
  String get demoModeHint => 'Demo build — hindi kailangan ng account';

  @override
  String get demoModeFill => 'Punan';

  @override
  String get welcomeTrackTitle => 'Tingnan kung saan napupunta ang pera mo';

  @override
  String get welcomeTrackBody =>
      'Itala kung ano ang pumapasok at ano ang lumalabas. Ginagawa itong larawan ng RainyPenny na kayang-kaya mong basahin.';

  @override
  String get welcomeBudgetTitle => 'Mga hangganang kayang panindigan';

  @override
  String get welcomeBudgetBody =>
      'Bigyan ng buwanang hangganan ang bawat bahagi ng gastos mo, at malaman bago ka lumampas — hindi pagkatapos.';

  @override
  String get welcomeGoalsTitle => 'Mag-ipon para sa mahalaga';

  @override
  String get welcomeGoalsBody =>
      'Pangalanan ang layunin, magtakda ng halaga, at panoorin itong mapuno. Mas madaling itayo ang pang-emerhensiyang pondo kapag nakikita mo ito.';

  @override
  String get welcomePrivacyTitle => 'Sa iyo pa rin ang pera mo';

  @override
  String get welcomePrivacyBody =>
      'Sa iyo lang ang mga numero mo. Walang ibinebenta at walang ibinabahagi kaninuman.';

  @override
  String stepOf(int step, int total) {
    return 'Hakbang $step sa $total';
  }

  @override
  String get onboardingNameTitle => 'Ano ang itatawag namin sa iyo?';

  @override
  String get onboardingNameBody =>
      'Gagamitin lang namin ito sa pagbati, at wala nang iba.';

  @override
  String get onboardingNameHint =>
      'Sapat na ang unang pangalan. Mababago mo rin ito mamaya.';

  @override
  String get onboardingCurrencyTitle => 'Anong pera ang ginagamit mo?';

  @override
  String get onboardingCurrencyBody =>
      'Lahat ng halaga sa app ay ipapakita sa perang ito. Walang kino-convert kapag pumili ka.';

  @override
  String get onboardingCurrencySearch => 'Hanapin sa lahat ng pera';

  @override
  String get onboardingAppearanceTitle => 'Gawin itong sa iyo';

  @override
  String get onboardingAppearanceBody =>
      'Pumili ng hitsura. Nagbabago ang lahat habang pinipindot mo, at makakabalik ka rito anumang oras.';

  @override
  String get onboardingNotificationsTitle => 'Manatiling nakasubaybay';

  @override
  String get onboardingNotificationsBody =>
      'Ang tahimik na paalala sa tamang sandali ang gumagawa nitong ugali.';

  @override
  String get onboardingNotifyReminders =>
      'Banayad na paalala para maitala ang nagastos mo';

  @override
  String get onboardingNotifyBudget => 'Abiso bago maubos ang badyet';

  @override
  String get onboardingNotifySummary =>
      'Lingguhang buod kung saan napunta ang pera mo';

  @override
  String get onboardingNotifyEnable => 'I-on ang mga abiso';

  @override
  String get onboardingNotifyDone => 'Na-save ang setting ng mga abiso';

  @override
  String get onboardingNotifyLater =>
      'Mababago mo lahat ito sa Settings, kahit kailan mo gusto.';

  @override
  String get onboardingReadyTitle => 'Handa ka na';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Handa ka na, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Tapos na ang pag-set up. Gusto mo ba ng mabilisang libot sa kung paano ito gumagana?';

  @override
  String get onboardingTakeTour => 'Ipakita mo sa akin';

  @override
  String get onboardingGoToApp => 'Dalhin mo ako sa app';

  @override
  String get onboardingTourLater =>
      'Hindi muna ngayon? Nasa Settings pa rin ang gabay kahit kailan mo kailanganin.';

  @override
  String get beginnersGuide => 'Gabay para sa nagsisimula';

  @override
  String get guideFinish => 'Tapusin';

  @override
  String chapterOf(int number, int total) {
    return 'Kabanata $number sa $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Buksan ang $screen';
  }

  @override
  String get guideDashboardTitle => 'Ang home mo';

  @override
  String get guideDashboardBody =>
      'Dito nagsisimula ang lahat. Ang card sa itaas ay kung magkano pa ang natitira sa iyo; sa ilalim nito ang pumasok at lumabas ngayong panahon, tapos ang gastos, badyet at mga layunin mo.';

  @override
  String get guideDashboardTip1 =>
      'Hilahin pababa ang screen para ma-refresh lahat nang sabay-sabay.';

  @override
  String get guideDashboardTip2 =>
      'Pindutin ang card ng kita o gastos para dumiretso sa listahang iyon.';

  @override
  String get guideDashboardTip3 =>
      'Nag-a-update agad ang mga singsing at pananaw sa sandaling may itala ka.';

  @override
  String get guideAddTitle => 'Pagtatala ng pera';

  @override
  String get guideAddBody =>
      'Ang button sa gitna ng bar ang simula ng lahat. Nagbubukas ito ng maikling menu: gastos, kita, utang, badyet o layunin sa ipon.';

  @override
  String get guideAddTip1 =>
      'Pindutin ang gitnang button para magtala ng papasok o palabas na pera.';

  @override
  String get guideAddTip2 =>
      'Pindutin nang matagal para dumiretso sa bagong gastos at laktawan ang menu.';

  @override
  String get guideAddTip3 =>
      'Palaging pumili ng kategorya — iyon ang nagpapagana sa mga chart at badyet.';

  @override
  String get guideCategoriesTitle => 'Mga kategorya';

  @override
  String get guideCategoriesBody =>
      'Ang mga kategorya ang nagsasama-sama ng gastos. Sapat na sa karamihan ang kasama na sa app, at puwede mong palitan ang pangalan o magdagdag ng sarili mo.';

  @override
  String get guideCategoriesTip1 =>
      'Settings, tapos Pamahalaan ang mga kategorya, para magbago o magdagdag.';

  @override
  String get guideCategoriesTip2 =>
      'Napupunta sa «Iba pa» ang walang kategorya, kaya nananatiling tapat ang mga chart.';

  @override
  String get guideBudgetTitle => 'Mga badyet';

  @override
  String get guideBudgetBody =>
      'Ang badyet ay buwanang hangganan para sa isang kategorya. Napupuno ang bar habang gumagastos ka at nagbabago ang kulay kapag papalapit na, kaya malalaman mo bago ka lumampas.';

  @override
  String get guideBudgetTip1 =>
      'Magsimula sa dalawa o tatlong kategorya, hindi sa lahat nang sabay.';

  @override
  String get guideBudgetTip2 =>
      'Ilagay ang limitasyon nang bahagyang mas mataas sa dati mong gastos, tapos higpitan.';

  @override
  String get guideBudgetTip3 =>
      'Iwanang naka-on ang mga alerto at babalaan ka ng app kapag paubos na ang badyet.';

  @override
  String get guideSavingsTitle => 'Mga layunin sa ipon';

  @override
  String get guideSavingsBody =>
      'Pangalanan kung para saan ka nag-iipon, magtakda ng halaga at petsa, at kakalkulahin ng app kung magkano ang kailangan mong itabi kada buwan.';

  @override
  String get guideSavingsTip1 =>
      'Mas madaling panatilihin ang layuning may pangalan kaysa malabong balak na mag-ipon.';

  @override
  String get guideSavingsTip2 =>
      'Mas madalas natatapos ang ilang maliliit na layunin kaysa iisang malaki.';

  @override
  String get guideLoansTitle => 'Utang at pautang';

  @override
  String get guideLoansBody =>
      'Itala kung magkano ang utang mo, magkano ang halaga nito, at kailan ang susunod na hulog. Nasa isang listahan ang lahat ng binabayaran mo kasama ang natitira.';

  @override
  String get guideLoansTip1 =>
      'Ilagay ang takdang araw at ang mga paalala na ang bahalang humabol para sa iyo.';

  @override
  String get guideLoansTip2 =>
      'Pula sa home ang utang na lampas na sa takdang araw hangga\'t hindi nababayaran.';

  @override
  String get guideReportsTitle => 'Mga ulat';

  @override
  String get guideReportsBody =>
      'Ang mas malalim na tingin: kita kontra gastos, gastos ayon sa kategorya, kumusta ang mga badyet mo, at kung anong bahagi ng kita ang naitabi mo.';

  @override
  String get guideReportsTip1 =>
      'Magpalit ng linggo, buwan at kwarter sa itaas ng screen.';

  @override
  String get guideReportsTip2 =>
      'I-export o ibahagi bilang PDF — lalabas ito sa sarili mong wika at direksyon.';

  @override
  String get guideSettingsTitle => 'Mga setting';

  @override
  String get guideSettingsBody =>
      'Nandito lahat ang wika, pera, kulay at alerto, at wala sa mga ito ang na-lock ng unang pag-set up — palitan mo kahit kailan.';

  @override
  String get guideSettingsTip1 =>
      'Apatnapung wika, at nagsasalamin ang buong layout para sa mga wikang kanan-pakaliwa.';

  @override
  String get guideSettingsTip2 =>
      'Piliin kung anong alerto ang gusto mo at anong oras puwedeng dumating.';

  @override
  String get guideSettingsTip3 =>
      'Pinipigil ng tahimik na oras ang lahat hanggang umaga.';

  @override
  String get guideHabitTitle => 'Panatilihin itong ugali';

  @override
  String get guideHabitBody =>
      'Kasing-ganda lang ng inilalagay mo ang app na ito. Mas mainam ang isang minuto kada araw kaysa isang oras kada buwan, at pagkalipas ng dalawang linggo may sinasabi na sa iyo ang mga numero.';

  @override
  String get guideHabitTip1 =>
      'Itala ang gastos habang nangyayari, hindi sa katapusan ng linggo.';

  @override
  String get guideHabitTip2 =>
      'Sulyapan ang home minsan sa isang araw. Sapat na ang sampung segundo.';

  @override
  String get guideHabitTip3 =>
      'Nananatili sa Settings ang gabay na ito — bumalik ka kahit kailan.';

  @override
  String get appearance => 'Hitsura';

  @override
  String get themeCaption =>
      'Maliwanag, madilim, o kung ano ang ginagawa ng telepono mo.';

  @override
  String get accentColor => 'Accent na kulay';

  @override
  String get accentColorCaption =>
      'Kinukulayan ang mga button, highlight at chart.';

  @override
  String get accentSemanticsNote =>
      'Pinapanatili ng papasok at palabas na pera ang sarili nilang kulay sa bawat tema, kaya hindi nagbabago ang kahulugan ng isang numero dahil lang pinalitan mo ang accent.';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Berde';

  @override
  String get accentSky => 'Asul-langit';

  @override
  String get accentBlue => 'Asul';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Lila';

  @override
  String get accentPink => 'Rosas';

  @override
  String get accentCrimson => 'Pulang-pula';

  @override
  String get accentOrange => 'Kahel';

  @override
  String get accentSlate => 'Abuhing bato';

  @override
  String get searchLanguages => 'Maghanap ng wika';

  @override
  String get suggestedLanguages => 'Iminumungkahi';

  @override
  String get allLanguages => 'Lahat ng wika';

  @override
  String get noLanguagesFound => 'Walang nahanap na wika';

  @override
  String get noLanguagesFoundMessage =>
      'Subukan ang pangalan sa Ingles, o ang dalawang letrang code.';

  @override
  String get rightToLeft => 'Kanan pakaliwa';

  @override
  String get replayGuide => 'Ulitin ang gabay';

  @override
  String get replaySetup => 'Ulitin ang pag-set up';

  @override
  String get replaySetupBody =>
      'Dumaan ulit sa mga unang tanong. Walang mabubura sa mga naitala mo.';

  @override
  String get rateTitle => 'Nagugustuhan mo ba ang RainyPenny?';

  @override
  String get rateBody =>
      'Matagal-tagal ka na ring gumagamit nito. Sandali lang ang pag-rate at nakakatulong ito sa iba na matuklasan ang app.';

  @override
  String get rateAction => 'I-rate ang app';

  @override
  String get rateLater => 'Sa susunod na lang';

  @override
  String get rateNever => 'Salamat na lang';

  @override
  String get rateThanks => 'Salamat';

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
