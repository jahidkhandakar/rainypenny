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
  String get appTagline => 'Mag-ipon para sa oras ng pangangailangan';

  @override
  String get navHome => 'Home';

  @override
  String get navTransactions => 'Mga Transaksyon';

  @override
  String get navAdd => 'Magdagdag';

  @override
  String get navReports => 'Mga Ulat';

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
  String get greetingSubtitle =>
      'Narito ang iyong pangkalahatang-ideya sa pananalapi';

  @override
  String get totalBalance => 'Kabuuang balanse';

  @override
  String get vsLastPeriod => 'kumpara noong nakaraang panahon';

  @override
  String get income => 'Kita';

  @override
  String get expenses => 'Mga Gastusin';

  @override
  String get netBalance => 'Netong balanse';

  @override
  String get lastThirtyDays => 'Huling 30 araw';

  @override
  String get quickActions => 'Mabilisang aksyon';

  @override
  String get addIncome => 'Magdagdag ng kita';

  @override
  String get addExpense => 'Magdagdag ng gastusin';

  @override
  String get spendingOverview => 'Pangkalahatang-ideya sa paggastos';

  @override
  String get recentTransactions => 'Mga kamakailang transaksyon';

  @override
  String get seeAll => 'Tingnan lahat';

  @override
  String get viewAll => 'Tingnan lahat';

  @override
  String get budgetProgress => 'Progreso ng badyet';

  @override
  String get savingsGoals => 'Mga layunin sa pag-iipon';

  @override
  String get financialInsight => 'Kaalamang pinansyal';

  @override
  String get financialHealth => 'Kalusugan ng pananalapi';

  @override
  String ofTotal(String total) {
    return 'ng $total';
  }

  @override
  String get searchTransactions => 'Maghanap ng mga transaksyon';

  @override
  String get filterAll => 'Lahat';

  @override
  String get filterIncome => 'Kita';

  @override
  String get filterExpenses => 'Mga Gastusin';

  @override
  String get today => 'Ngayong araw';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get noTransactionsTitle => 'Walang nahanap na transaksyon';

  @override
  String get noTransactionsBody =>
      'Subukan ang ibang paghahanap o filter upang makita ang higit pa sa iyong aktibidad.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na transaksyon',
      one: '1 transaksyon',
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
  String get noteHint => 'Opsyonal na tala';

  @override
  String get saveIncome => 'I-save ang kita';

  @override
  String get saveExpense => 'I-save ang gastusin';

  @override
  String get selectCategory => 'Pumili ng kategorya';

  @override
  String get transactionSaved => 'Na-save ang transaksyon';

  @override
  String get amountRequired => 'Maglagay ng halagang higit sa zero';

  @override
  String get titleRequired => 'Bigyan ng pangalan ang transaksyong ito';

  @override
  String get descriptionLabel => 'Deskripsyon';

  @override
  String get descriptionHint => 'hal. Mga Groseri';

  @override
  String get budget => 'Badyet';

  @override
  String get budgets => 'Mga Badyet';

  @override
  String get totalBudget => 'Kabuuang badyet';

  @override
  String get spent => 'Nagastos';

  @override
  String get remaining => 'Natitira';

  @override
  String budgetUsed(int percent) {
    return '$percent% ang nagamit';
  }

  @override
  String get onTrack => 'Nasa tamang landas';

  @override
  String get approachingLimit => 'Palapit na sa limitasyon';

  @override
  String get overBudget => 'Lampas sa badyet';

  @override
  String get savings => 'Mga Ipon';

  @override
  String get yourGoals => 'Iyong mga layunin';

  @override
  String get saved => 'Naipon';

  @override
  String get target => 'Target';

  @override
  String get monthlyContribution => 'Buwanan';

  @override
  String get addFunds => 'Magdagdag ng pondo';

  @override
  String get goalComplete => 'Naabot ang layunin';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na buwan na lang',
      one: '1 buwan na lang',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Mga pautang at utang';

  @override
  String get totalOutstanding => 'Kabuuang natitirang utang';

  @override
  String get monthlyPayment => 'Buwanan';

  @override
  String get nextPayment => 'Susunod na bayad';

  @override
  String paidOff(int percent) {
    return '$percent% ang nabayaran';
  }

  @override
  String get interestRate => 'Interes';

  @override
  String get upcomingPayments => 'Mga darating na bayarin';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kailangang bayaran sa loob ng $count araw',
      one: 'Kailangang bayaran bukas',
      zero: 'Kailangang bayaran ngayon',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Lampas na sa takdang araw';

  @override
  String get reports => 'Mga Ulat';

  @override
  String get week => 'Linggo';

  @override
  String get month => 'Buwan';

  @override
  String get quarter => 'Kwarter';

  @override
  String get incomeVsExpenses => 'Kita laban sa mga gastusin';

  @override
  String get spendingByCategory => 'Paggastos ayon sa kategorya';

  @override
  String get budgetPerformance => 'Pagganap ng badyet';

  @override
  String get insights => 'Mga Kaalaman';

  @override
  String get savingsRate => 'Bilis ng pag-iipon';

  @override
  String get profile => 'Profile';

  @override
  String get account => 'Account';

  @override
  String get personalInformation => 'Personal na impormasyon';

  @override
  String get changePassword => 'Palitan ang password';

  @override
  String get notifications => 'Mga Abiso';

  @override
  String get preferences => 'Mga Kagustuhan';

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
    return 'Miyembro mula noong $date';
  }

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get settings => 'Mga Setting';

  @override
  String get noNotificationsTitle => 'Wala kang bagong abiso';

  @override
  String get noNotificationsBody =>
      'Dito lilitaw ang mga bagong kaalaman at paalala.';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get save => 'I-save';

  @override
  String get done => 'Tapos na';

  @override
  String get retry => 'Subukang muli';

  @override
  String get close => 'Isara';

  @override
  String get somethingWentWrong => 'May nangyaring mali';

  @override
  String get comingSoon => 'Paparating na sa buong bersyon';

  @override
  String get edit => 'I-edit';

  @override
  String get delete => 'Tanggalin';

  @override
  String get undo => 'I-undo';

  @override
  String get add => 'Magdagdag';

  @override
  String get create => 'Gumawa';

  @override
  String get nameRequired => 'Ilagay ang iyong pangalan';

  @override
  String get amountAboveZero => 'Maglagay ng halagang higit sa zero';

  @override
  String get editTransaction => 'I-edit ang transaksyon';

  @override
  String get deleteTransaction => 'Tanggalin ang transaksyon?';

  @override
  String deleteTransactionBody(String title) {
    return 'Aalisin ang $title sa iyong talaan.';
  }

  @override
  String get transactionDeleted => 'Natanggal ang transaksyon';

  @override
  String get transactionUpdated => 'Na-update ang transaksyon';

  @override
  String get newBudget => 'Bagong badyet';

  @override
  String get editBudget => 'I-edit ang badyet';

  @override
  String get budgetLimit => 'Buwanang limitasyon';

  @override
  String get deleteBudget => 'Tanggalin ang badyet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Aalisin ang badyet para sa $category. Hindi maaapektuhan ang iyong mga transaksyon.';
  }

  @override
  String get budgetSaved => 'Na-save ang badyet';

  @override
  String get budgetDeleted => 'Natanggal ang badyet';

  @override
  String get allCategoriesBudgeted => 'Mayroon nang badyet ang bawat kategorya';

  @override
  String get noBudgetsTitle => 'Wala pang mga badyet';

  @override
  String get noBudgetsBody =>
      'Magtakda ng buwanang limitasyon sa isang kategorya upang simulan itong subaybayan.';

  @override
  String get newGoal => 'Bagong layunin';

  @override
  String get editGoal => 'I-edit ang layunin';

  @override
  String get goalName => 'Pangalan ng layunin';

  @override
  String get goalNameHint => 'hal. Emergency fund';

  @override
  String get targetAmount => 'Target na halaga';

  @override
  String get alreadySaved => 'Naipon na';

  @override
  String get deleteGoal => 'Tanggalin ang layunin?';

  @override
  String deleteGoalBody(String name) {
    return 'Aalisin ang $name at ang progreso nito.';
  }

  @override
  String get goalSaved => 'Na-save ang layunin';

  @override
  String get goalDeleted => 'Natanggal ang layunin';

  @override
  String get noGoalsTitle => 'Wala pang mga layunin sa pag-iipon';

  @override
  String get noGoalsBody =>
      'Magtakda ng target at susubaybayan ng RainyPenny ang iyong progreso.';

  @override
  String get fundsAdded => 'Naidagdag ang pondo';

  @override
  String get newDebt => 'Bagong pautang o card';

  @override
  String get editDebt => 'I-edit ang pautang';

  @override
  String get debtName => 'Pangalan';

  @override
  String get debtNameHint => 'hal. Pautang sa kotse';

  @override
  String get lender => 'Nagpautang';

  @override
  String get lenderHint => 'hal. Meridian Bank';

  @override
  String get originalAmount => 'Orihinal na halaga';

  @override
  String get creditLimit => 'Limitasyon sa credit';

  @override
  String get remainingBalance => 'Natitirang balanse';

  @override
  String get interestRatePercent => 'Rate ng interes (%)';

  @override
  String get kindLoan => 'Pautang';

  @override
  String get kindCreditCard => 'Credit card';

  @override
  String get recordPayment => 'Itala ang bayad';

  @override
  String get paymentRecorded => 'Naitala ang bayad';

  @override
  String get deleteDebt => 'Tanggalin ang utang na ito?';

  @override
  String deleteDebtBody(String name) {
    return 'Aalisin ang $name sa iyong mga utang.';
  }

  @override
  String get debtSaved => 'Na-save';

  @override
  String get debtDeleted => 'Natanggal';

  @override
  String get noDebtsTitle => 'Walang sinusubaybayang utang';

  @override
  String get noDebtsBody =>
      'Magdagdag ng pautang o credit card upang mabantayan ang mga pagbabayad.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Lumampas ang badyet sa $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Lumampas ka ng $amount sa iyong badyet para sa $subject sa panahong ito.';
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
    return 'Nagamit na ang $percent% ng iyong badyet sa $subject, at may $amount na natitira.';
  }

  @override
  String get insightOverIncomeTitle => 'Mas mataas ang gastusin kaysa sa kita';

  @override
  String get insightOverIncomeBody =>
      'Mas marami kang nagastos kaysa sa kinita sa panahong ito. Suriin ang iyong pinakamalalaking kategorya upang maibalik sa ayos ang gastusin.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Tumaas ang paggastos sa $subject';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Ang iyong paggastos sa $subject ay mas mataas ng $percent% kumpara sa nakaraang panahon.';
  }

  @override
  String get insightTrendDownTitle => 'Bumababa ang paggastos';

  @override
  String insightTrendDownBody(int percent) {
    return 'Ang pangkalahatang paggastos ay mas mababa ng $percent% kumpara sa nakaraang panahon.';
  }

  @override
  String get insightTrendUpTitle => 'Tumataas ang paggastos';

  @override
  String insightTrendUpBody(int percent) {
    return 'Ang pangkalahatang paggastos ay mas mataas ng $percent% kumpara sa nakaraang panahon.';
  }

  @override
  String get insightSavingsStrongTitle => 'Maganda ang naipon sa panahong ito';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Naitabi mo ang $percent% ng iyong kita — mas mataas kaysa sa target na $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Mababa ang ipon kaysa sa target';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Naitabi mo ang $percent% ng iyong kita sa panahong ito. Sikaping abutin ang $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'Halos mapondohan na ang $subject';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$amount na lang ang kulang upang maabot ang $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Nasa tamang landas para sa $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months na buwan',
      one: '1 buwan',
    );
    return 'Sa halagang $amount bawat buwan, maaabot mo ang layuning ito sa loob ng $_temp0.';
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
      other: '$days na araw',
      one: '1 araw',
    );
    return 'Ang bayad para sa $subject na nagkakahalagang $amount ay huli na nang $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Paparating na ang bayad sa $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sa loob ng $days araw',
      one: 'bukas',
      zero: 'ngayong araw',
    );
    return 'Ang $amount ay dapat bayaran $_temp0.';
  }

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get signUp => 'Gumawa ng account';

  @override
  String get signInSubtitle =>
      'Maligayang pagbabalik. Handa na ang iyong impormasyon sa pananalapi.';

  @override
  String get signUpSubtitle => 'Ilang detalye na lang at handa ka na.';

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
  String get fullNameHint => 'Juan Dela Cruz';

  @override
  String get forgotPassword => 'Nakalimutan ang password?';

  @override
  String get resetSent => 'Tingnan ang iyong inbox para sa link ng pag-reset';

  @override
  String get noAccountYet => 'Bago ka ba rito?';

  @override
  String get haveAccount => 'Mayroon ka na bang account?';

  @override
  String get emailInvalid => 'Maglagay ng wastong email address';

  @override
  String get passwordTooShort => 'Gumamit ng hindi bababa sa 8 karakter';

  @override
  String get signOutConfirm => 'Mag-sign out?';

  @override
  String get signOutBody =>
      'Kakailanganin mong mag-sign in muli upang makita ang iyong pananalapi.';

  @override
  String get dataSource => 'Pinagmulan ng datos';

  @override
  String get insightWeeklySummaryTitle => 'Ang iyong linggo sa pagsusuri';

  @override
  String get insightWeeklySummaryBody =>
      'Tingnan kung saan napunta ang iyong pera ngayong linggo at kung kumusta ang iyong mga badyet.';

  @override
  String get notificationSettings => 'Mga Abiso';

  @override
  String get alertsSection => 'Mga Alerto';

  @override
  String get budgetAlerts => 'Mga alerto sa badyet';

  @override
  String get budgetAlertsBody =>
      'Kapag ang badyet ay malapit na o lumampas na sa limitasyon nito';

  @override
  String get paymentReminders => 'Mga paalala sa pagbabayad';

  @override
  String get paymentRemindersBody =>
      'Ilang araw bago ang takdang petsa ng bayarin';

  @override
  String get savingsUpdates => 'Mga update sa ipon';

  @override
  String get savingsUpdatesBody => 'Progreso patungo sa iyong mga layunin';

  @override
  String get weeklySummaryLabel => 'Lingguhang buod';

  @override
  String get weeklySummaryBody => 'Mabilisang buod ng nakaraang linggo';

  @override
  String get scheduleSection => 'Oras';

  @override
  String get reminderTime => 'Oras ng paalala';

  @override
  String get quietHours => 'Mga oras ng katahimikan';

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
      'Pahintulutan ang mga abiso upang mabalaan ka ng RainyPenny bago lumampas ang isang badyet o bayarin.';

  @override
  String get allowNotifications => 'Pahintulutan ang mga abiso';

  @override
  String get permissionDenied =>
      'Naka-block ang mga abiso. Maaari mo itong i-on sa mga setting ng iyong device.';

  @override
  String get upcomingAlerts => 'Naka-iskedyul';

  @override
  String get noScheduledAlerts => 'Walang naka-iskedyul ngayon';

  @override
  String get noScheduledAlertsBody =>
      'Lilitaw ang mga alerto rito habang lumalapit ang iyong mga badyet at bayarin sa kanilang mga limitasyon.';

  @override
  String scheduledFor(String date) {
    return 'Naka-iskedyul para sa $date';
  }

  @override
  String get everyWeek => 'Bawat linggo';

  @override
  String get allNotificationsOff => 'Naka-off ang lahat ng abiso';

  @override
  String get needsAttention => 'Kailangan ng pansin';

  @override
  String get quickActionsTitle => 'Ano ang nais mong gawin?';

  @override
  String get createSection => 'Itala';

  @override
  String get jumpToSection => 'Pumunta sa';

  @override
  String get addLoanAction => 'Magdagdag ng pautang';

  @override
  String get addBudgetAction => 'Magdagdag ng badyet';

  @override
  String get addGoalAction => 'Magdagdag ng layunin';

  @override
  String get longPressHint =>
      'Tip: Pindutin nang matagal ang + para magtala agad ng gastusin';

  @override
  String get searchCurrencies => 'Maghanap ng mga pera';

  @override
  String get noCurrenciesFound => 'Walang nahanap na pera';

  @override
  String get noCurrenciesFoundMessage =>
      'Subukan ang ibang code, simbolo, o pangalan.';

  @override
  String get popularCurrencies => 'Sikat';

  @override
  String get allCurrencies => 'Lahat ng pera';

  @override
  String get totalLoanAmount => 'Kabuuang halaga ng pautang';

  @override
  String get installmentAmount => 'Halaga ng hulog';

  @override
  String get numberOfInstallments => 'Bilang ng hulog';

  @override
  String get paidInstallments => 'Mga bayad nang hulog';

  @override
  String get remainingInstallments => 'Mga natitirang hulog';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid sa $total ang bayad na';
  }

  @override
  String get finalPayment => 'Huling bayad';

  @override
  String get paymentDueDate => 'Petsa ng takdang bayad';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Ika-$day ng bawat buwan';
  }

  @override
  String get loanStatus => 'Katayuan';

  @override
  String get statusActive => 'Aktibo';

  @override
  String get statusDueSoon => 'Malapit nang bayaran';

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
  String get openEnded => 'Walang takdang katapusan';

  @override
  String get loanDetails => 'Mga detalye ng pautang';

  @override
  String get notSet => 'Hindi nakatakda';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'Kailangang bayaran ang $subject ngayon';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Ang iyong bayad na $amount ay dapat bayaran ngayon. Pindutin para magbayad sa tamang oras.';
  }

  @override
  String get remindMorningTitle => 'Magandang umaga ☀️';

  @override
  String get remindMorningBody =>
      'Simulan ang araw nang kontrolado ang iyong pera. May idaragdag ka ba mula kahapon?';

  @override
  String get remindNoonTitle => 'Pangtanghaling pagsusuri';

  @override
  String get remindNoonBody =>
      'Tanghalian, kape, o pamasahe? Itala ito sa loob ng ilang segundo.';

  @override
  String get remindAfternoonTitle => 'Mabilisang pag-update';

  @override
  String get remindAfternoonBody =>
      'Itala ang nagastos mo sa ngayon upang mapanatiling tumpak ang araw na ito.';

  @override
  String get remindEveningTitle => 'Pagtatapos ng araw';

  @override
  String get remindEveningBody =>
      'Dalawang minuto lang ngayon at kumpleto na ang mga tala ngayong araw.';

  @override
  String get happyWeekendTitle => 'Maligayang katapusan ng linggo! 🎉';

  @override
  String get happyWeekendBody =>
      'Masiyahan ka — at bantayan ang mga gastusin sa katapusan ng linggo.';

  @override
  String get dailyReminders => 'Araw-araw na paalala sa gastusin';

  @override
  String get dailyRemindersBody =>
      'Magiliw na mga paalala upang panatilihing napapanahon ang iyong mga gastusin';

  @override
  String get weekendGreeting => 'Pagbati sa Katapusan ng Linggo';

  @override
  String get weekendGreetingBody =>
      'Magiliw na pagbati sa simula ng iyong katapusan ng linggo';

  @override
  String get reminderTimesSection => 'Mga oras ng paalala';

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
  String get financialReport => 'Ulat sa Pananalapi';

  @override
  String get preparedFor => 'Inihanda para kay';

  @override
  String get generatedOn => 'Nilikha noong';

  @override
  String get reportDisclaimer =>
      'Nilikha ng RainyPenny mula sa iyong sariling mga talaan.';

  @override
  String pageOf(int page, int total) {
    return 'Pahina $page ng $total';
  }

  @override
  String get overview => 'Pangkalahatang-ideya';

  @override
  String get description => 'Deskripsyon';

  @override
  String get totalIncome => 'Kabuuang kita';

  @override
  String get totalExpenses => 'Kabuuang gastusin';

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
  String get paidOffShort => 'Bayad na';

  @override
  String get transactions => 'Mga Transaksyon';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'at $count pang transaksyon',
      one: 'at 1 pang transaksyon',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'I-export ang PDF';

  @override
  String get sharePdf => 'Ibahagi ang ulat';

  @override
  String get preparingReport => 'Inihahanda ang iyong ulat…';

  @override
  String get reportReady => 'Handa na ang ulat';

  @override
  String get reportFailed => 'Hindi nagawa ang ulat';

  @override
  String get categories => 'Mga Kategorya';

  @override
  String get categoriesIntro =>
      'Magdagdag ng sarili mong mga kategorya upang maiuri ang kita at mga gastusin sa paraang nais mo.';

  @override
  String get expenseCategories => 'Mga kategorya ng gastusin';

  @override
  String get incomeCategories => 'Mga kategorya ng kita';

  @override
  String get newCategory => 'Bagong kategorya';

  @override
  String get editCategory => 'I-edit ang kategorya';

  @override
  String get categoryName => 'Pangalan';

  @override
  String get categoryNameHint => 'hal. Pag-aalaga ng alagang hayop';

  @override
  String get icon => 'Icon';

  @override
  String get categorySaved => 'Na-save ang kategorya';

  @override
  String get categoryDeleted => 'Natanggal ang kategorya';

  @override
  String get deleteCategory => 'Tanggalin ang kategoryang ito?';

  @override
  String deleteCategoryBody(String name) {
    return 'Aalisin ang $name sa iyong mga kategorya.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na tala ang gumagamit pa rin ng kategoryang ito',
      one: '1 tala ang gumagamit pa rin ng kategoryang ito',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Wala pa rito.';

  @override
  String get builtIn => 'Built-in';

  @override
  String get manageCategories => 'Pamahalaan ang mga kategorya';

  @override
  String get expense => 'Gastusin';

  @override
  String get languageNote =>
      'Binabago ng Arabic, Urdu, Persian, at Hebrew ang buong interface sa kanan-pakaliwa, kabilang ang mga chart at ulat sa PDF.';

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
  String get passwordRequired => 'Ilagay ang iyong password';

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
  String get backToSignIn => 'Bumalik sa pag-sign in';

  @override
  String get alreadyHaveAccount => 'Mayroon na akong account';

  @override
  String get getStarted => 'Magsimula';

  @override
  String get acceptTerms =>
      'Sumasang-ayon ako sa Mga Tuntunin ng Serbisyo at Patakaran sa Privacy';

  @override
  String get acceptTermsRequired => 'Mangyaring tanggapin upang magpatuloy';

  @override
  String get passwordStrengthTooShort => 'Napakamaikli';

  @override
  String get passwordStrengthWeak => 'Mahina';

  @override
  String get passwordStrengthFair => 'Katamtaman';

  @override
  String get passwordStrengthGood => 'Mabuti';

  @override
  String get passwordStrengthStrong => 'Malakas';

  @override
  String get passwordAdvice =>
      'Ang mahabang parirala na maaalala mo ay mas mainam kaysa sa maikling puno ng mga simbolo. Iwasan ang anumang ginagamit mo na sa iba.';

  @override
  String get authInvalidCredentials =>
      'Hindi tugma ang email at password sa anumang account';

  @override
  String get authEmailNotConfirmed =>
      'Kumpirmahin ang iyong email address bago mag-sign in';

  @override
  String get authEmailAlreadyRegistered =>
      'May umiiral nang account gamit ang email na ito';

  @override
  String get authWeakPassword => 'Pumili ng mas mahabang password';

  @override
  String get authRateLimited =>
      'Masyadong maraming pagtatangka. Subukang muli sa loob ng ilang minuto';

  @override
  String get authNetworkError =>
      'Walang koneksyon. Suriin ang iyong network at subukang muli';

  @override
  String get authGenericError => 'May nangyaring mali. Mangyaring subukan muli';

  @override
  String get confirmEmailTitle => 'Suriin ang iyong email';

  @override
  String confirmEmailBody(String email) {
    return 'Nagpadala kami ng link ng kumpirmasyon sa $email. Buksan ito upang tapusin ang pag-set up ng iyong account.';
  }

  @override
  String get resendConfirmation => 'Ipadala muli ang email ng kumpirmasyon';

  @override
  String get confirmationResent => 'Naipadala na ang email ng kumpirmasyon';

  @override
  String get forgotPasswordTitle => 'I-reset ang iyong password';

  @override
  String get forgotPasswordSubtitle =>
      'Ilagay ang email na ginamit mo sa pag-sign up at magpapadala kami ng link upang makapili ka ng bagong password.';

  @override
  String get sendResetLink => 'Ipadala ang link ng pag-reset';

  @override
  String get resetLinkSentTitle => 'Naipadala na ang link ng pag-reset';

  @override
  String resetLinkSentBody(String email) {
    return 'Kung may account ang $email, papunta na ang link ng pag-reset.';
  }

  @override
  String get resetLinkSentHint =>
      'Mag-e-expire ang link sa loob ng isang oras. Kung hindi ito dumating, suriin ang iyong spam folder bago humingi muli.';

  @override
  String get tryAnotherEmail => 'Gumamit ng ibang email';

  @override
  String get resetPasswordTitle => 'Pumili ng bagong password';

  @override
  String get resetPasswordSubtitle =>
      'Pumili ng hindi mo pa nagamit sa account na ito dati.';

  @override
  String get passwordChangedTitle => 'Na-update ang password';

  @override
  String get passwordChangedBody =>
      'Na-save ang iyong bagong password. Naka-sign in ka na at handa nang magpatuloy.';

  @override
  String get demoModeHint => 'Bersyon ng demo — walang kinakailangang account';

  @override
  String get demoModeFill => 'Punan';

  @override
  String get welcomeTrackTitle => 'Tingnan kung saan napupunta ang iyong pera';

  @override
  String get welcomeTrackBody =>
      'Itala ang pumapasok at lumalabas. Ginagawa itong malinaw na larawan ng RainyPenny na madali mong maiintindihan.';

  @override
  String get welcomeBudgetTitle => 'Magtakda ng mga limitasyong maaasahan';

  @override
  String get welcomeBudgetBody =>
      'Bigyan ng buwanang limitasyon ang bawat bahagi ng iyong paggastos, at maabisuhan bago ito lumampas sa halip na pagkatapos.';

  @override
  String get welcomeGoalsTitle => 'Mag-ipon para sa mahahalagang bagay';

  @override
  String get welcomeGoalsBody =>
      'Pangalanan ang layunin, magtakda ng target, at panoorin itong mapuno. Mas madaling buuin ang emergency fund kapag nakikita mo ito.';

  @override
  String get welcomePrivacyTitle => 'Ang iyong pera ay mananatiling sa iyo';

  @override
  String get welcomePrivacyBody =>
      'Ang iyong mga numero ay para lamang sa iyo. Walang ibinebenta, at walang ibinabahagi sa kahit kanino.';

  @override
  String stepOf(int step, int total) {
    return 'Hakbang $step ng $total';
  }

  @override
  String get onboardingNameTitle => 'Ano ang dapat naming itawag sa iyo?';

  @override
  String get onboardingNameBody =>
      'Gagamitin lamang namin ito upang batiin ka, at wala nang iba pa.';

  @override
  String get onboardingNameHint =>
      'Sapat na ang unang pangalan. Maaari mo itong baguhin mamaya.';

  @override
  String get onboardingCurrencyTitle => 'Anong pera ang iyong ginagamit?';

  @override
  String get onboardingCurrencyBody =>
      'Ang bawat halaga sa app ay ipapakita sa perang ito. Hindi nagko-convert ng anuman ang pagpili rito.';

  @override
  String get onboardingCurrencySearch => 'Maghanap sa lahat ng pera';

  @override
  String get onboardingAppearanceTitle => 'Gawing sarili mong istilo';

  @override
  String get onboardingAppearanceBody =>
      'Pumili ng hitsura. Nagbabago ang lahat habang pumipindot ka, at maaari kang bumalik dito anumang oras.';

  @override
  String get onboardingNotificationsTitle => 'Manatiling updated';

  @override
  String get onboardingNotificationsBody =>
      'Ang tahimik na paalala sa tamang sandali ang nagpapaging ugali nito.';

  @override
  String get onboardingNotifyReminders =>
      'Magiliw na paalala upang itala ang iyong nagastos';

  @override
  String get onboardingNotifyBudget => 'Paunang abiso bago maubos ang badyet';

  @override
  String get onboardingNotifySummary =>
      'Lingguhang buod kung saan napunta ang iyong pera';

  @override
  String get onboardingNotifyEnable => 'I-on ang mga abiso';

  @override
  String get onboardingNotifyDone => 'Na-save ang mga setting ng abiso';

  @override
  String get onboardingNotifyLater =>
      'Maaari mong baguhin ang lahat ng ito sa Mga Setting anumang oras.';

  @override
  String get onboardingReadyTitle => 'Handa ka na';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Handa ka na, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Tapos na ang pag-set up. Nais mo ba ng mabilisang tour kung paano gumagana ang lahat?';

  @override
  String get onboardingTakeTour => 'Ilibot ako';

  @override
  String get onboardingGoToApp => 'Pumunta sa app';

  @override
  String get onboardingTourLater =>
      'Hindi muna ngayon? Mananatili ang gabay sa Mga Setting para sa tuwing kailangan mo ito.';

  @override
  String get beginnersGuide => 'Gabay para sa mga nagsisimula';

  @override
  String get guideFinish => 'Tapusin';

  @override
  String chapterOf(int number, int total) {
    return 'Kabanata $number ng $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Buksan ang $screen';
  }

  @override
  String get guideDashboardTitle => 'Iyong dashboard';

  @override
  String get guideDashboardBody =>
      'Dito nagbubukas ang lahat. Ang card sa itaas ang nagpapakita ng natitira sa iyo; sa ilalim nito naroroon ang pumasok at lumabas sa panahong ito, kasunod ang iyong mga gastusin, badyet, at layunin.';

  @override
  String get guideDashboardTip1 =>
      'Hilain pababa ang screen upang i-refresh ang lahat nang sabay-sabay.';

  @override
  String get guideDashboardTip2 =>
      'Pindutin ang card ng kita o mga gastusin upang pumunta sa listahang iyon.';

  @override
  String get guideDashboardTip3 =>
      'Agad na nag-a-update ang mga ring at kaalaman sa sandaling magtala ka ng anuman.';

  @override
  String get guideAddTitle => 'Pagtatala ng pera';

  @override
  String get guideAddBody =>
      'Ang button sa gitna ng bar ang simula ng lahat. Nagbubukas ito ng maikling menu: perang lumabas, perang pumasok, utang, badyet, o layunin sa pag-iipon.';

  @override
  String get guideAddTip1 =>
      'Pindutin ang gitnang button upang magtala ng perang pumasok o lumabas.';

  @override
  String get guideAddTip2 =>
      'Pindutin ito nang matagal upang dumiretso sa bagong gastusin at laktawan ang menu.';

  @override
  String get guideAddTip3 =>
      'Laging pumili ng kategorya — iyon ang nagpapagana sa mga chart at badyet.';

  @override
  String get guideCategoriesTitle => 'Mga Kategorya';

  @override
  String get guideCategoriesBody =>
      'Ang mga kategorya ang paraan ng pagpapangkat ng mga gastusin. Sinasaklaw ng mga kasama sa app ang karamihan sa mga tao, at maaari mo itong palitan ng pangalan o magdagdag ng sarili mo.';

  @override
  String get guideCategoriesTip1 =>
      'Pumunta sa Mga Setting, pagkatapos ay Pamahalaan ang mga kategorya, upang baguhin o magdagdag.';

  @override
  String get guideCategoriesTip2 =>
      'Anumang naiwang walang kategorya ay napupunta sa Iba pa, upang manatiling tumpak ang mga chart.';

  @override
  String get guideBudgetTitle => 'Mga Badyet';

  @override
  String get guideBudgetBody =>
      'Ang badyet ay buwanang limitasyon para sa isang kategorya. Napupuno ang bar habang gumagastos ka at nagbabago ng kulay kapag papalapit na, upang malaman mo bago ka lumampas.';

  @override
  String get guideBudgetTip1 =>
      'Magsimula sa dalawa o tatlong kategorya, hindi sa lahat nang sabay-sabay.';

  @override
  String get guideBudgetTip2 =>
      'Itakda ang limitasyon nang bahagyang mas mataas sa karaniwan mong ginagastos, pagkatapos ay higpitan ito.';

  @override
  String get guideBudgetTip3 =>
      'Iwanang naka-on ang mga alerto sa badyet at babalaan ka ng app habang papaubos na ito.';

  @override
  String get guideSavingsTitle => 'Mga layunin sa pag-iipon';

  @override
  String get guideSavingsBody =>
      'Pangalanan ang iyong iniipon, magtakda ng target at petsa, at kukuwentahin ng app kung magkano ang kailangan mong itabi bawat buwan upang makarating doon.';

  @override
  String get guideSavingsTip1 =>
      'Mas madaling panatilihin ang may pangalang layunin kaysa sa malabong intensyong mag-ipon.';

  @override
  String get guideSavingsTip2 =>
      'Mas madalas na natatapos ang ilang maliliit na layunin kaysa sa isang napakalaki.';

  @override
  String get guideLoansTitle => 'Mga utang at pautang';

  @override
  String get guideLoansBody =>
      'Itala ang iyong utang, kung magkano ang gastos, at kung kailan ang susunod na bayad. Lahat ng binabayaran mo ay nasa iisang listahan kasama ang kabuuang natitira.';

  @override
  String get guideLoansTip1 =>
      'Idagdag ang takdang petsa at ang mga paalala sa pagbabayad ang magpapaalala para sa iyo.';

  @override
  String get guideLoansTip2 =>
      'Ang utang na lampas na sa takdang petsa ay ipinapakita sa kulay pula sa dashboard hanggang sa ito ay mabayaran.';

  @override
  String get guideReportsTitle => 'Mga Ulat';

  @override
  String get guideReportsBody =>
      'Ang mas malalim na pagsusuri: kita laban sa mga gastusin, paggastos ayon sa kategorya, kung paano napanatili ang iyong mga badyet, at kung anong bahagi ng iyong kita ang naitabi mo.';

  @override
  String get guideReportsTip1 =>
      'Lumipat sa pagitan ng linggo, buwan, at kwarter sa itaas ng screen.';

  @override
  String get guideReportsTip2 =>
      'I-export o ibahagi ang PDF — lalabas ito sa sarili mong wika at direksyon.';

  @override
  String get guideSettingsTitle => 'Mga Setting';

  @override
  String get guideSettingsBody =>
      'Ang wika, pera, mga kulay, at mga alerto ay naririto lahat, at walang nakakandado mula sa pag-set up — baguhin ang alinman sa mga ito anumang oras mo naisin.';

  @override
  String get guideSettingsTip1 =>
      'Apatnapung wika, at ang buong layout ay sumasalamin para sa mga wikang kanan-pakaliwa.';

  @override
  String get guideSettingsTip2 =>
      'Pumili kung aling mga alerto ang nais mo at ang mga oras na maaari itong dumating.';

  @override
  String get guideSettingsTip3 =>
      'Pinipigilan ng mga oras ng katahimikan ang lahat hanggang sa umaga.';

  @override
  String get guideHabitTitle => 'Gawing nakagawian';

  @override
  String get guideHabitBody =>
      'Magiging kasing-galing lamang ang app ng iyong inilalagay dito. Ang isang minuto bawat araw ay mas mabuti kaysa sa isang oras minsan sa isang buwan, at pagkatapos ng dalawang linggo ay magsisimulang may sabihin sa iyo ang mga numero.';

  @override
  String get guideHabitTip1 =>
      'Itala ang iyong nagastos sa oras na mangyari ito, hindi sa katapusan ng linggo.';

  @override
  String get guideHabitTip2 =>
      'Sumulyap sa dashboard nang isang beses bawat araw. Sapat na ang sampung segundo.';

  @override
  String get guideHabitTip3 =>
      'Nananatili ang gabay na ito sa Mga Setting — bumalik dito anumang oras mo naisin.';

  @override
  String get appearance => 'Hitsura';

  @override
  String get themeCaption =>
      'Maliwanag, madilim, o anuman ang ginagawa ng iyong telepono.';

  @override
  String get accentColor => 'Kulay ng accent';

  @override
  String get accentColorCaption =>
      'Nagbibigay-kulay sa mga button, highlight, at chart.';

  @override
  String get accentSemanticsNote =>
      'Pinapanatili ng perang pumasok at perang lumabas ang sarili nilang mga kulay sa bawat tema, upang hindi magbago ang kahulugan ng numero dahil binago mo ang accent.';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Berde';

  @override
  String get accentSky => 'Sky';

  @override
  String get accentBlue => 'Asul';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Lila';

  @override
  String get accentPink => 'Rosas';

  @override
  String get accentCrimson => 'Crimson';

  @override
  String get accentOrange => 'Kahel';

  @override
  String get accentSlate => 'Slate';

  @override
  String get searchLanguages => 'Maghanap ng mga wika';

  @override
  String get suggestedLanguages => 'Iminungkahi';

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
  String get replayGuide => 'Panoorin muli ang gabay';

  @override
  String get replaySetup => 'Patakbuhin muli ang pag-set up';

  @override
  String get replaySetupBody =>
      'Sagutin muli ang mga unang tanong sa pag-set up. Walang matatanggal sa mga naitala mo na.';

  @override
  String get rateTitle => 'Nagugustuhan mo ba ang RainyPenny?';

  @override
  String get rateBody =>
      'Matagal-tagal mo na itong ginagamit. Sandali lang magbigay ng rating at nakatutulong ito sa iba na mahanap ang app.';

  @override
  String get rateAction => 'I-rate ang app';

  @override
  String get rateLater => 'Maaaring mamaya na lang';

  @override
  String get rateNever => 'Hindi, salamat';

  @override
  String get rateThanks => 'Maraming salamat';

  @override
  String get monthlySalary => 'Buwanang sahod';

  @override
  String get remainingAmount => 'Natitira';

  @override
  String get carriedForward => 'Dinala mula sa nakaraan';

  @override
  String get carriedForwardHint => 'Natira mula sa nakaraang cycle';

  @override
  String get totalSpending => 'Kabuuang nagastos';

  @override
  String get salaryCycle => 'Cycle ng sahod';

  @override
  String get payday => 'Araw ng sahod';

  @override
  String get paydayDescription =>
      'Ang araw ng pagdating ng iyong sahod. Tumatakbo ang iyong buwan sa pananalapi mula sa araw na ito hanggang sa araw bago ang susunod.';

  @override
  String get paydayUpdated => 'Na-update ang araw ng sahod';

  @override
  String paydayDayOfMonth(int day) {
    return 'Ika-$day na araw';
  }

  @override
  String get paydayShortMonthNote =>
      'Sa mas maiikling buwan, magsisimula ang cycle sa huling araw sa halip.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw bago ang sahod',
      one: '1 araw bago ang sahod',
      zero: 'Huling araw ng cycle',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Susunod na araw ng sahod';

  @override
  String get spentSoFar => 'Nagastos sa ngayon';

  @override
  String get dailyAllowance => 'Ligtas na gastusin araw-araw';

  @override
  String get overspentNotice =>
      'Mas marami kang nagastos kaysa sa pumasok sa cycle na ito.';

  @override
  String get backToThisMonth => 'Bumalik sa buwang ito';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'Wala pang naitalang sahod';

  @override
  String get addSalaryAction => 'Idagdag ang iyong sahod';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Napakahusay';

  @override
  String get healthGood => 'Mabuti';

  @override
  String get healthFair => 'Katamtaman';

  @override
  String get healthNeedsWork => 'Kailangan ng pagsasaayos';

  @override
  String get healthExcellentBody =>
      'Mahusay ang iyong pag-iipon at nananatili ka sa loob ng iyong mga badyet.';

  @override
  String get healthGoodBody =>
      'Nasa tamang landas ka sa iyong paggastos sa panahong ito.';

  @override
  String get healthFairBody =>
      'Medyo mataas ang ilang badyet. Makatutulong ang maliliit na pagbabago.';

  @override
  String get healthNeedsWorkBody =>
      'Mas mabilis ang paggastos kaysa sa iyong plano. Magsimula sa iyong pinakamalaking kategorya.';

  @override
  String get factorSavingsRate => 'Bilis ng pag-iipon';

  @override
  String get factorBudgetControl => 'Pagkontrol sa badyet';

  @override
  String get factorDebtLoad => 'Pasanin sa utang';

  @override
  String get factorSpendingTrend => 'Takbo ng paggastos';

  @override
  String factorKept(String percent) {
    return '$percent% ang naitabi';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% ang nagamit';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% ng kita';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Tumaas ng $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Bumaba ng $percent%';
  }

  @override
  String get howScoreWorks => 'Paano gumagana ang score na ito';

  @override
  String get healthScoreExplainer =>
      'Pinagsasama ng iyong score ang apat na bagay: kung magkano sa iyong kita ang naitatabi mo, kung gaano mo kahusay nasusunod ang iyong mga badyet, gaano kalaki ng iyong kita ang napupunta sa utang, at kung tumataas o bumababa ang iyong paggastos.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% ng score';
  }

  @override
  String get viewHealthDetails => 'Tingnan ang breakdown';

  @override
  String get saveChanges => 'I-save ang mga pagbabago';

  @override
  String get profileUpdated => 'Na-update ang profile';

  @override
  String get changePhoto => 'Palitan ang litrato';

  @override
  String get removePhoto => 'Alisin ang litrato';

  @override
  String get personalInformationIntro =>
      'Lilitaw ang iyong pangalan at litrato sa buong app. Ang iyong email ang address na ginagamit mo sa pag-sign in.';

  @override
  String get emailNotEditable =>
      'Makipag-ugnayan sa suporta upang palitan ang address na ginagamit mo sa pag-sign in.';

  @override
  String get pressBackAgainToExit => 'Pindutin muli ang back upang lumabas';

  @override
  String get categoryHousing => 'Pabahay';

  @override
  String get categoryFood => 'Pagkain at Kainan';

  @override
  String get categoryTransport => 'Transportasyon';

  @override
  String get categoryShopping => 'Pamimili';

  @override
  String get categoryBills => 'Mga Bayarin at Kagamitan';

  @override
  String get categoryEntertainment => 'Libangan';

  @override
  String get categoryHealth => 'Kalusugan at Fitness';

  @override
  String get categoryEducation => 'Edukasyon';

  @override
  String get categoryTravel => 'Paglalakbay';

  @override
  String get categorySalary => 'Sahod';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Mga Pamumuhunan';

  @override
  String get categoryGift => 'Regalo';

  @override
  String get categoryOther => 'Iba pa';

  @override
  String get categoryGroceries => 'Mga Groseri';

  @override
  String get categoryDining => 'Kainan sa labas';

  @override
  String get categoryCoffee => 'Kape';

  @override
  String get categoryUtilities => 'Mga Utility';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telepono';

  @override
  String get categoryInsurance => 'Seguro';

  @override
  String get categorySubscriptions => 'Mga Subskripsyon';

  @override
  String get categoryPersonalCare => 'Personal na pangangalaga';

  @override
  String get categoryClothing => 'Damit';

  @override
  String get categoryElectronics => 'Elektronika';

  @override
  String get categoryHomeSupplies => 'Mga gamit sa bahay';

  @override
  String get categoryPets => 'Mga Alagang Hayop';

  @override
  String get categoryChildcare => 'Pag-aalaga ng bata';

  @override
  String get categoryFamily => 'Pamilya';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Palakasan';

  @override
  String get categoryMedicine => 'Gamot';

  @override
  String get categoryMedical => 'Medikal';

  @override
  String get categoryCharity => 'Kawanggawa';

  @override
  String get categoryTaxes => 'Mga Buwis';

  @override
  String get categoryFees => 'Mga Bayarin';

  @override
  String get categoryDebt => 'Utang';

  @override
  String get categorySavings => 'Ipon';

  @override
  String get categoryRepairs => 'Mga Pagkukumpuni';

  @override
  String get categoryCarMaintenance => 'Pagpapanatili ng sasakyan';

  @override
  String get categoryFuel => 'Gasolina';

  @override
  String get categoryParking => 'Paradahan';

  @override
  String get categoryPublicTransport => 'Pampublikong transportasyon';

  @override
  String get categoryRent => 'Upa';

  @override
  String get categoryMortgage => 'Mortgage';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Komisyon';

  @override
  String get categoryPension => 'Pensiyon';

  @override
  String get categoryInterest => 'Interes';

  @override
  String get categoryDividends => 'Mga Dibidendo';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Refund';

  @override
  String get categoryRentalIncome => 'Kita sa paupahan';

  @override
  String get addCategory => 'Bagong kategorya';

  @override
  String get filterByCategory => 'I-filter ayon sa kategorya';

  @override
  String get allCategories => 'Lahat ng kategorya';

  @override
  String get clearFilters => 'Alisin ang mga filter';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Lahat ng panahon';

  @override
  String get customRange => 'Pasadyang panahon';

  @override
  String get selectDateRange => 'Pumili ng panahon';

  @override
  String rangeApplied(String start, String end) {
    return 'Ipinapakita ang $start – $end';
  }

  @override
  String get loans => 'Mga Pautang';

  @override
  String get debts => 'Mga Utang';

  @override
  String get noLoansTitle => 'Walang mga pautang';

  @override
  String get noLoansBody => 'Wala kang aktibong pautang.';

  @override
  String get emptyHealthTitle => 'Wala Pang Score sa Pananalapi';

  @override
  String get emptyHealthDescription =>
      'Kailangan namin ng kaunting aktibidad sa pananalapi bago kami makapagkuwenta ng tumpak na score sa kalusugan ng pananalapi.';

  @override
  String get emptyHealthAddTransactions =>
      'Magdagdag ng mga transaksyon sa kita o gastusin';

  @override
  String get emptyHealthSetBudgets => 'I-set up ang iyong buwanang mga badyet';

  @override
  String get emptyHealthTrackLoans =>
      'Subaybayan ang mga pautang o utang (opsyonal)';

  @override
  String get emptyHealthCardSubtitle =>
      'Magdagdag ng mga transaksyon upang makuwenta ang iyong score at makakuha ng mga kaalaman.';

  @override
  String get smartBudgetSplit => 'Smart na Paghati ng Badyet';

  @override
  String get smartBudgetSplitSubtitle =>
      'Ilagay ang iyong buwanang sahod upang makuwenta ang mga inirerekomendang limitasyon';

  @override
  String get monthlyNetSalary => 'Buwanang Netong Sahod';

  @override
  String get categoryAllocations => 'Mga Alokasyon ng Kategorya';

  @override
  String totalBudgeted(String amount) {
    return 'Kabuuan: $amount';
  }

  @override
  String get applyAllBudgets => 'Ilapat ang Lahat ng Badyet';

  @override
  String get applyingBudgets => 'Inilalapat ang mga badyet...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na badyet ng kategorya ang nagawa.',
      one: '1 badyet ng kategorya ang nagawa.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Bigo sa pag-save ng mga badyet.';

  @override
  String get recommendedBudget => 'Inirerekomendang badyet';
}
