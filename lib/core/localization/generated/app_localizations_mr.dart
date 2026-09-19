// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppL10nMr extends AppL10n {
  AppL10nMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'अडचणीच्या दिवसासाठी बचत करा';

  @override
  String get navHome => 'मुख्यपृष्ठ';

  @override
  String get navTransactions => 'व्यवहार';

  @override
  String get navAdd => 'जोडा';

  @override
  String get navReports => 'अहवाल';

  @override
  String get navProfile => 'प्रोफाइल';

  @override
  String greetingMorning(String name) {
    return 'सुप्रभात, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'शुभ संध्याकाळ, $name';
  }

  @override
  String get greetingSubtitle => 'हे तुमचं आर्थिक चित्र';

  @override
  String get totalBalance => 'एकूण शिल्लक';

  @override
  String get vsLastPeriod => 'मागील कालावधीच्या तुलनेत';

  @override
  String get income => 'उत्पन्न';

  @override
  String get expenses => 'खर्च';

  @override
  String get netBalance => 'निव्वळ शिल्लक';

  @override
  String get lastThirtyDays => 'गेले 30 दिवस';

  @override
  String get quickActions => 'झटपट कृती';

  @override
  String get addIncome => 'उत्पन्न जोडा';

  @override
  String get addExpense => 'खर्च जोडा';

  @override
  String get spendingOverview => 'खर्चाचा आढावा';

  @override
  String get recentTransactions => 'अलीकडचे व्यवहार';

  @override
  String get seeAll => 'सर्व पाहा';

  @override
  String get viewAll => 'सगळं दाखवा';

  @override
  String get budgetProgress => 'अर्थसंकल्पाची प्रगती';

  @override
  String get savingsGoals => 'बचतीची ध्येयं';

  @override
  String get financialInsight => 'आर्थिक निरीक्षण';

  @override
  String get financialHealth => 'आर्थिक आरोग्य';

  @override
  String ofTotal(String total) {
    return '$total पैकी';
  }

  @override
  String get searchTransactions => 'व्यवहार शोधा';

  @override
  String get filterAll => 'सर्व';

  @override
  String get filterIncome => 'उत्पन्न';

  @override
  String get filterExpenses => 'खर्च';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'काल';

  @override
  String get noTransactionsTitle => 'कोणतेही व्यवहार सापडले नाहीत';

  @override
  String get noTransactionsBody =>
      'आणखी नोंदी पाहण्यासाठी वेगळा शोध किंवा फिल्टर वापरून पाहा.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यवहार',
      one: '$count व्यवहार',
      zero: 'व्यवहार नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'व्यवहार जोडा';

  @override
  String get amount => 'रक्कम';

  @override
  String get category => 'प्रवर्ग';

  @override
  String get date => 'दिनांक';

  @override
  String get note => 'टीप';

  @override
  String get noteHint => 'टीप (ऐच्छिक)';

  @override
  String get saveIncome => 'उत्पन्न जतन करा';

  @override
  String get saveExpense => 'खर्च जतन करा';

  @override
  String get selectCategory => 'प्रवर्ग निवडा';

  @override
  String get transactionSaved => 'व्यवहार जतन झाला';

  @override
  String get amountRequired => 'शून्यापेक्षा मोठी रक्कम भरा';

  @override
  String get titleRequired => 'या व्यवहाराला नाव द्या';

  @override
  String get descriptionLabel => 'वर्णन';

  @override
  String get descriptionHint => 'उदा. किराणा';

  @override
  String get budget => 'अर्थसंकल्प';

  @override
  String get budgets => 'अर्थसंकल्प';

  @override
  String get totalBudget => 'एकूण अर्थसंकल्प';

  @override
  String get spent => 'खर्च झाला';

  @override
  String get remaining => 'शिल्लक';

  @override
  String budgetUsed(int percent) {
    return '$percent% वापरला';
  }

  @override
  String get onTrack => 'मार्गावर';

  @override
  String get approachingLimit => 'मर्यादेजवळ';

  @override
  String get overBudget => 'अर्थसंकल्पापेक्षा जास्त';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'तुमची ध्येयं';

  @override
  String get saved => 'जमा झाले';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'दरमहा';

  @override
  String get addFunds => 'रक्कम भरा';

  @override
  String get goalComplete => 'ध्येय गाठलं';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अजून $count महिने',
      one: 'अजून $count महिना',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'कर्जे आणि देणी';

  @override
  String get totalOutstanding => 'एकूण थकबाकी';

  @override
  String get monthlyPayment => 'दरमहा';

  @override
  String get nextPayment => 'पुढील हप्ता';

  @override
  String paidOff(int percent) {
    return '$percent% फेडलं';
  }

  @override
  String get interestRate => 'व्याज';

  @override
  String get upcomingPayments => 'येणारे हप्ते';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांत',
      one: '$count दिवसात',
      zero: 'आज देय',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'मुदत उलटली';

  @override
  String get reports => 'अहवाल';

  @override
  String get week => 'आठवडा';

  @override
  String get month => 'महिना';

  @override
  String get quarter => 'तिमाही';

  @override
  String get incomeVsExpenses => 'उत्पन्न विरुद्ध खर्च';

  @override
  String get spendingByCategory => 'प्रवर्गानुसार खर्च';

  @override
  String get budgetPerformance => 'अर्थसंकल्पाची कामगिरी';

  @override
  String get insights => 'निरीक्षणं';

  @override
  String get savingsRate => 'बचतीचा दर';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get account => 'खातं';

  @override
  String get personalInformation => 'वैयक्तिक माहिती';

  @override
  String get changePassword => 'पासवर्ड बदला';

  @override
  String get notifications => 'सूचना';

  @override
  String get preferences => 'प्राधान्यं';

  @override
  String get language => 'भाषा';

  @override
  String get currency => 'चलन';

  @override
  String get theme => 'थीम';

  @override
  String get security => 'सुरक्षा';

  @override
  String get privacyAndSecurity => 'गोपनीयता आणि सुरक्षा';

  @override
  String get help => 'मदत';

  @override
  String get helpAndSupport => 'मदत आणि सहाय्य';

  @override
  String get termsAndConditions => 'अटी व शर्ती';

  @override
  String get logOut => 'बाहेर पडा';

  @override
  String memberSince(String date) {
    return '$date पासून सदस्य';
  }

  @override
  String get themeSystem => 'प्रणालीनुसार';

  @override
  String get themeLight => 'उजळ';

  @override
  String get themeDark => 'गडद';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get noNotificationsTitle => 'सगळं पाहून झालं';

  @override
  String get noNotificationsBody => 'नवी निरीक्षणं आणि आठवणी इथे दिसतील.';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get save => 'जतन करा';

  @override
  String get done => 'झालं';

  @override
  String get retry => 'पुन्हा प्रयत्न';

  @override
  String get close => 'बंद करा';

  @override
  String get somethingWentWrong => 'काहीतरी चुकलं';

  @override
  String get comingSoon => 'पूर्ण आवृत्तीत येत आहे';

  @override
  String get edit => 'संपादित करा';

  @override
  String get delete => 'हटवा';

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String get add => 'जोडा';

  @override
  String get create => 'तयार करा';

  @override
  String get nameRequired => 'याला नाव द्या';

  @override
  String get amountAboveZero => 'शून्यापेक्षा मोठी रक्कम भरा';

  @override
  String get editTransaction => 'व्यवहार संपादित करा';

  @override
  String get deleteTransaction => 'व्यवहार हटवायचा?';

  @override
  String deleteTransactionBody(String title) {
    return '$title तुमच्या नोंदींमधून काढून टाकला जाईल.';
  }

  @override
  String get transactionDeleted => 'व्यवहार हटवला';

  @override
  String get transactionUpdated => 'व्यवहार अद्ययावत झाला';

  @override
  String get newBudget => 'नवा अर्थसंकल्प';

  @override
  String get editBudget => 'अर्थसंकल्प संपादित करा';

  @override
  String get budgetLimit => 'मासिक मर्यादा';

  @override
  String get deleteBudget => 'अर्थसंकल्प हटवायचा?';

  @override
  String deleteBudgetBody(String category) {
    return '$category चा अर्थसंकल्प काढून टाकला जाईल. तुमच्या व्यवहारांवर परिणाम होणार नाही.';
  }

  @override
  String get budgetSaved => 'अर्थसंकल्प जतन झाला';

  @override
  String get budgetDeleted => 'अर्थसंकल्प हटवला';

  @override
  String get allCategoriesBudgeted => 'प्रत्येक प्रवर्गाला आधीच अर्थसंकल्प आहे';

  @override
  String get noBudgetsTitle => 'अजून अर्थसंकल्प नाही';

  @override
  String get noBudgetsBody =>
      'एखाद्या प्रवर्गावर मासिक मर्यादा ठेवा, म्हणजे त्याचा हिशेब सुरू होईल.';

  @override
  String get newGoal => 'नवं ध्येय';

  @override
  String get editGoal => 'ध्येय संपादित करा';

  @override
  String get goalName => 'ध्येयाचं नाव';

  @override
  String get goalNameHint => 'उदा. आपत्कालीन निधी';

  @override
  String get targetAmount => 'लक्ष्य रक्कम';

  @override
  String get alreadySaved => 'आधीच जमा';

  @override
  String get deleteGoal => 'ध्येय हटवायचं?';

  @override
  String deleteGoalBody(String name) {
    return '$name आणि त्याची प्रगती काढून टाकली जाईल.';
  }

  @override
  String get goalSaved => 'ध्येय जतन झालं';

  @override
  String get goalDeleted => 'ध्येय हटवलं';

  @override
  String get noGoalsTitle => 'अजून बचतीची ध्येयं नाहीत';

  @override
  String get noGoalsBody =>
      'एक ध्येय ठेवा, RainyPenny तुमची प्रगती पाहत राहील.';

  @override
  String get fundsAdded => 'रक्कम जमा झाली';

  @override
  String get newDebt => 'नवं कर्ज किंवा कार्ड';

  @override
  String get editDebt => 'कर्ज संपादित करा';

  @override
  String get debtName => 'नाव';

  @override
  String get debtNameHint => 'उदा. कार कर्ज';

  @override
  String get lender => 'कर्जदाता';

  @override
  String get lenderHint => 'उदा. बँक ऑफ महाराष्ट्र';

  @override
  String get originalAmount => 'मूळ रक्कम';

  @override
  String get creditLimit => 'क्रेडिट मर्यादा';

  @override
  String get remainingBalance => 'उरलेली शिल्लक';

  @override
  String get interestRatePercent => 'व्याजदर (%)';

  @override
  String get kindLoan => 'कर्ज';

  @override
  String get kindCreditCard => 'क्रेडिट कार्ड';

  @override
  String get recordPayment => 'हप्ता नोंदवा';

  @override
  String get paymentRecorded => 'हप्ता नोंदवला';

  @override
  String get deleteDebt => 'हे देणं हटवायचं?';

  @override
  String deleteDebtBody(String name) {
    return '$name तुमच्या देण्यांमधून काढून टाकलं जाईल.';
  }

  @override
  String get debtSaved => 'जतन झालं';

  @override
  String get debtDeleted => 'हटवलं';

  @override
  String get noDebtsTitle => 'कोणतंही देणं नोंदवलेलं नाही';

  @override
  String get noDebtsBody =>
      'हप्त्यांवर लक्ष ठेवण्यासाठी कर्ज किंवा क्रेडिट कार्ड जोडा.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject चा अर्थसंकल्प ओलांडला';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'या कालावधीत तुम्ही $subject च्या अर्थसंकल्पापेक्षा $amount जास्त खर्च केला.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject मर्यादेजवळ आहे';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'तुमचा $subject अर्थसंकल्प $percent% वापरला गेला आहे, $amount शिल्लक.';
  }

  @override
  String get insightOverIncomeTitle => 'खर्च उत्पन्नापेक्षा जास्त';

  @override
  String get insightOverIncomeBody =>
      'या कालावधीत तुम्ही कमावलं त्यापेक्षा जास्त खर्च केलं. सर्वात मोठे प्रवर्ग पाहून ताळमेळ बसवा.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject वरचा खर्च वाढला';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'तुमचा $subject वरचा खर्च मागील कालावधीपेक्षा $percent% जास्त आहे.';
  }

  @override
  String get insightTrendDownTitle => 'खर्च कमी होत आहे';

  @override
  String insightTrendDownBody(int percent) {
    return 'एकूण खर्च मागील कालावधीपेक्षा $percent% कमी आहे.';
  }

  @override
  String get insightTrendUpTitle => 'खर्च वाढत आहे';

  @override
  String insightTrendUpBody(int percent) {
    return 'एकूण खर्च मागील कालावधीपेक्षा $percent% जास्त आहे.';
  }

  @override
  String get insightSavingsStrongTitle => 'या कालावधीत बचत उत्तम';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'तुम्ही उत्पन्नाच्या $percent% राखलंत — $target% च्या लक्ष्यापेक्षा कितीतरी अधिक.';
  }

  @override
  String get insightSavingsLowTitle => 'बचतीचा दर लक्ष्यापेक्षा कमी';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'या कालावधीत तुम्ही उत्पन्नाच्या $percent% राखलंत. लक्ष्य $target% आहे.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject जवळपास पूर्ण';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject गाठायला फक्त $amount शिल्लक.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject मार्गावर';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months महिन्यांत',
      one: '$months महिन्यात',
    );
    return 'दरमहा $amount प्रमाणे तुम्ही हे ध्येय $_temp0 गाठाल.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject चा हप्ता थकला';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवस',
      one: '$days दिवस',
    );
    return '$subject चा $amount चा हप्ता $_temp0 थकला आहे.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject चा हप्ता जवळ येतोय';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवसांत',
      one: '$days दिवसात',
      zero: 'आज',
    );
    return '$amount $_temp0 भरायचे आहेत.';
  }

  @override
  String get signIn => 'साइन इन';

  @override
  String get signUp => 'खातं तयार करा';

  @override
  String get signInSubtitle => 'पुन्हा स्वागत. तुमचे पैसे वाट पाहताहेत.';

  @override
  String get signUpSubtitle => 'थोडेच तपशील आणि तयार.';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get passwordHint => 'किमान 8 अक्षरं';

  @override
  String get fullNameLabel => 'पूर्ण नाव';

  @override
  String get fullNameHint => 'अमोल देशपांडे';

  @override
  String get forgotPassword => 'पासवर्ड विसरलात?';

  @override
  String get resetSent => 'रीसेट लिंकसाठी तुमचा इनबॉक्स पाहा';

  @override
  String get noAccountYet => 'इथे नवीन आहात?';

  @override
  String get haveAccount => 'आधीच खातं आहे?';

  @override
  String get emailInvalid => 'वैध ईमेल पत्ता भरा';

  @override
  String get passwordTooShort => 'किमान 8 अक्षरं वापरा';

  @override
  String get signOutConfirm => 'बाहेर पडायचं?';

  @override
  String get signOutBody =>
      'तुमचा हिशेब पुन्हा पाहण्यासाठी पुन्हा साइन इन करावं लागेल.';

  @override
  String get dataSource => 'डेटा स्रोत';

  @override
  String get insightWeeklySummaryTitle => 'तुमच्या आठवड्याचा आढावा';

  @override
  String get insightWeeklySummaryBody =>
      'या आठवड्यात पैसे कुठे गेले आणि अर्थसंकल्प कसे टिकले ते पाहा.';

  @override
  String get notificationSettings => 'सूचना';

  @override
  String get alertsSection => 'इशारे';

  @override
  String get budgetAlerts => 'अर्थसंकल्पाचे इशारे';

  @override
  String get budgetAlertsBody =>
      'अर्थसंकल्प मर्यादेजवळ आल्यावर किंवा ओलांडल्यावर';

  @override
  String get paymentReminders => 'हप्त्याच्या आठवणी';

  @override
  String get paymentRemindersBody => 'हप्त्याच्या तारखेच्या काही दिवस आधी';

  @override
  String get savingsUpdates => 'बचतीच्या बातम्या';

  @override
  String get savingsUpdatesBody => 'तुमच्या ध्येयांकडची वाटचाल';

  @override
  String get weeklySummaryLabel => 'साप्ताहिक सारांश';

  @override
  String get weeklySummaryBody => 'गेल्या आठवड्याचा गोषवारा';

  @override
  String get scheduleSection => 'वेळ';

  @override
  String get reminderTime => 'आठवणीची वेळ';

  @override
  String get quietHours => 'शांत तास';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'सारांशाचा दिवस';

  @override
  String get permissionRequired => 'सूचना बंद आहेत';

  @override
  String get permissionRequiredBody =>
      'अर्थसंकल्प किंवा हप्ता हाताबाहेर जाण्याआधी RainyPenny इशारा देऊ शकेल यासाठी सूचनांना परवानगी द्या.';

  @override
  String get allowNotifications => 'सूचनांना परवानगी द्या';

  @override
  String get permissionDenied =>
      'सूचना अडवल्या आहेत. तुम्ही त्या उपकरणाच्या सेटिंग्जमधून चालू करू शकता.';

  @override
  String get upcomingAlerts => 'नियोजित';

  @override
  String get noScheduledAlerts => 'सध्या काहीही नियोजित नाही';

  @override
  String get noScheduledAlertsBody =>
      'अर्थसंकल्प आणि हप्ते त्यांच्या मर्यादेजवळ आले की इशारे इथे दिसतील.';

  @override
  String scheduledFor(String date) {
    return '$date साठी नियोजित';
  }

  @override
  String get everyWeek => 'दर आठवड्याला';

  @override
  String get allNotificationsOff => 'सर्व सूचना बंद आहेत';

  @override
  String get needsAttention => 'लक्ष हवं';

  @override
  String get quickActionsTitle => 'तुम्हाला काय करायचंय?';

  @override
  String get createSection => 'नोंदवा';

  @override
  String get jumpToSection => 'इथे जा';

  @override
  String get addLoanAction => 'कर्ज जोडा';

  @override
  String get addBudgetAction => 'अर्थसंकल्प जोडा';

  @override
  String get addGoalAction => 'ध्येय जोडा';

  @override
  String get longPressHint => 'टीप: थेट खर्च नोंदवण्यासाठी + दाबून धरा';

  @override
  String get searchCurrencies => 'चलनं शोधा';

  @override
  String get noCurrenciesFound => 'कोणतंही चलन सापडलं नाही';

  @override
  String get noCurrenciesFoundMessage =>
      'वेगळा कोड, चिन्ह किंवा नाव वापरून पाहा.';

  @override
  String get popularCurrencies => 'लोकप्रिय';

  @override
  String get allCurrencies => 'सर्व चलनं';

  @override
  String get totalLoanAmount => 'एकूण कर्ज रक्कम';

  @override
  String get installmentAmount => 'हप्त्याची रक्कम';

  @override
  String get numberOfInstallments => 'हप्त्यांची संख्या';

  @override
  String get paidInstallments => 'भरलेले हप्ते';

  @override
  String get remainingInstallments => 'उरलेले हप्ते';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total पैकी $paid भरले';
  }

  @override
  String get finalPayment => 'शेवटचा हप्ता';

  @override
  String get paymentDueDate => 'हप्त्याची तारीख';

  @override
  String dueOnDayOfMonth(int day) {
    return 'दर महिन्याच्या $day तारखेला';
  }

  @override
  String get loanStatus => 'स्थिती';

  @override
  String get statusActive => 'मार्गावर';

  @override
  String get statusDueSoon => 'लवकरच देय';

  @override
  String get statusOverdue => 'मुदत उलटली';

  @override
  String get statusCompleted => 'पूर्ण फेडलं';

  @override
  String get repaymentProgress => 'परतफेडीची प्रगती';

  @override
  String get byAmount => 'रकमेनुसार';

  @override
  String get byInstallments => 'हप्त्यांनुसार';

  @override
  String get startDate => 'सुरुवातीची तारीख';

  @override
  String get openEnded => 'मुदत नाही';

  @override
  String get loanDetails => 'कर्जाचे तपशील';

  @override
  String get notSet => 'ठरवलेलं नाही';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject आज देय आहे';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'तुमचा $amount चा हप्ता आज देय आहे. एका टॅपमध्ये वेळेत होईल.';
  }

  @override
  String get remindMorningTitle => 'सुप्रभात ☀️';

  @override
  String get remindMorningBody =>
      'पैशांवर पकड ठेवून दिवसाची सुरुवात करा. कालचं काही नोंदवायचं राहिलंय का?';

  @override
  String get remindNoonTitle => 'दुपारची तपासणी';

  @override
  String get remindNoonBody => 'जेवण, चहा, प्रवास? काही सेकंदांत नोंदवता येईल.';

  @override
  String get remindAfternoonTitle => 'पटकन भरून काढा';

  @override
  String get remindAfternoonBody =>
      'आतापर्यंतचा खर्च नोंदवा, म्हणजे आजचा हिशेब अचूक राहील.';

  @override
  String get remindEveningTitle => 'दिवस आटोपताना';

  @override
  String get remindEveningBody => 'आता दोन मिनिटं आणि आजचा हिशेब पूर्ण.';

  @override
  String get happyWeekendTitle => 'सुट्टी छान जावो! 🎉';

  @override
  String get happyWeekendBody =>
      'मजा करा — आणि सुट्टीतल्या खर्चावरही थोडं लक्ष ठेवा.';

  @override
  String get dailyReminders => 'रोजच्या खर्चाच्या आठवणी';

  @override
  String get dailyRemindersBody => 'खर्च ताजा राहावा यासाठी हलक्या आठवणी';

  @override
  String get weekendGreeting => 'सुट्टीच्या शुभेच्छा';

  @override
  String get weekendGreetingBody => 'तुमची सुट्टी सुरू होताना एक आपुलकीची हाक';

  @override
  String get reminderTimesSection => 'आठवणीच्या वेळा';

  @override
  String get slotMorning => 'सकाळ';

  @override
  String get slotNoon => 'दुपार';

  @override
  String get slotAfternoon => 'तिसरा प्रहर';

  @override
  String get slotEvening => 'संध्याकाळ';

  @override
  String get everyDay => 'दररोज';

  @override
  String get financialReport => 'आर्थिक अहवाल';

  @override
  String get preparedFor => 'कोणासाठी तयार केला';

  @override
  String get generatedOn => 'तयार झाल्याची तारीख';

  @override
  String get reportDisclaimer => 'तुमच्याच नोंदींवरून RainyPenny ने तयार केला.';

  @override
  String pageOf(int page, int total) {
    return 'पान $page / $total';
  }

  @override
  String get overview => 'आढावा';

  @override
  String get description => 'वर्णन';

  @override
  String get totalIncome => 'एकूण उत्पन्न';

  @override
  String get totalExpenses => 'एकूण खर्च';

  @override
  String get totalSaved => 'एकूण बचत';

  @override
  String get shareOfTotal => 'वाटा';

  @override
  String get used => 'वापरलं';

  @override
  String get goal => 'ध्येय';

  @override
  String get targetDate => 'लक्ष्य तारीख';

  @override
  String get progress => 'प्रगती';

  @override
  String get paidOffShort => 'फेडलं';

  @override
  String get transactions => 'व्यवहार';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आणि आणखी $count व्यवहार',
      one: 'आणि आणखी $count व्यवहार',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF निर्यात करा';

  @override
  String get sharePdf => 'अहवाल सामायिक करा';

  @override
  String get preparingReport => 'तुमचा अहवाल तयार होतोय…';

  @override
  String get reportReady => 'अहवाल तयार';

  @override
  String get reportFailed => 'अहवाल तयार करता आला नाही';

  @override
  String get categories => 'प्रवर्ग';

  @override
  String get categoriesIntro =>
      'स्वतःचे प्रवर्ग जोडा, म्हणजे उत्पन्न आणि खर्च तुम्ही जसा विचार करता तसेच लावले जातील.';

  @override
  String get expenseCategories => 'खर्चाचे प्रवर्ग';

  @override
  String get incomeCategories => 'उत्पन्नाचे प्रवर्ग';

  @override
  String get newCategory => 'नवा प्रवर्ग';

  @override
  String get editCategory => 'प्रवर्ग संपादित करा';

  @override
  String get categoryName => 'नाव';

  @override
  String get categoryNameHint => 'उदा. पाळीव प्राणी';

  @override
  String get icon => 'चिन्ह';

  @override
  String get categorySaved => 'प्रवर्ग जतन झाला';

  @override
  String get categoryDeleted => 'प्रवर्ग हटवला';

  @override
  String get deleteCategory => 'हा प्रवर्ग हटवायचा?';

  @override
  String deleteCategoryBody(String name) {
    return '$name तुमच्या प्रवर्गांमधून काढून टाकला जाईल.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नोंदी अजूनही हा प्रवर्ग वापरतात',
      one: '$count नोंद अजूनही हा प्रवर्ग वापरते',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'इथे अजून काहीच नाही.';

  @override
  String get builtIn => 'अंतर्भूत';

  @override
  String get manageCategories => 'प्रवर्ग व्यवस्थापित करा';

  @override
  String get expense => 'खर्च';

  @override
  String get languageNote =>
      'अरबी, उर्दू, फारसी आणि हिब्रू संपूर्ण इंटरफेस उजवीकडून डावीकडे करतात — तक्ते आणि PDF अहवालांसह.';

  @override
  String get next => 'पुढे';

  @override
  String get back => 'मागे';

  @override
  String get skip => 'वगळा';

  @override
  String get continueLabel => 'पुढे चला';

  @override
  String get selected => 'निवडलेलं';

  @override
  String get passwordRequired => 'तुमचा पासवर्ड भरा';

  @override
  String get newPasswordLabel => 'नवा पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्डची खात्री करा';

  @override
  String get passwordsDoNotMatch => 'दोन्ही पासवर्ड सारखे हवेत';

  @override
  String get showPassword => 'पासवर्ड दाखवा';

  @override
  String get hidePassword => 'पासवर्ड लपवा';

  @override
  String get savePassword => 'पासवर्ड जतन करा';

  @override
  String get backToSignIn => 'साइन इनकडे परत';

  @override
  String get alreadyHaveAccount => 'माझं आधीच खातं आहे';

  @override
  String get getStarted => 'सुरुवात करा';

  @override
  String get acceptTerms => 'मी सेवा अटी आणि गोपनीयता धोरणाला संमती देतो';

  @override
  String get acceptTermsRequired => 'पुढे जाण्यासाठी संमती द्या';

  @override
  String get passwordStrengthTooShort => 'फारच लहान';

  @override
  String get passwordStrengthWeak => 'कमकुवत';

  @override
  String get passwordStrengthFair => 'ठीक';

  @override
  String get passwordStrengthGood => 'चांगला';

  @override
  String get passwordStrengthStrong => 'मजबूत';

  @override
  String get passwordAdvice =>
      'लक्षात राहणारं लांब वाक्य, चिन्हांनी भरलेल्या छोट्या पासवर्डपेक्षा चांगलं. दुसरीकडे वापरत असलेलं काहीही निवडू नका.';

  @override
  String get authInvalidCredentials =>
      'हा ईमेल आणि पासवर्ड कोणत्याही खात्याशी जुळत नाही';

  @override
  String get authEmailNotConfirmed =>
      'साइन इन करण्याआधी तुमचा ईमेल पत्ता निश्चित करा';

  @override
  String get authEmailAlreadyRegistered => 'या ईमेलचं खातं आधीच अस्तित्वात आहे';

  @override
  String get authWeakPassword => 'अधिक लांब पासवर्ड निवडा';

  @override
  String get authRateLimited =>
      'खूप वेळा प्रयत्न झाले. काही मिनिटांनी पुन्हा प्रयत्न करा';

  @override
  String get authNetworkError =>
      'जोडणी नाही. नेटवर्क तपासून पुन्हा प्रयत्न करा';

  @override
  String get authGenericError => 'काहीतरी चुकलं. कृपया पुन्हा प्रयत्न करा';

  @override
  String get confirmEmailTitle => 'तुमचा ईमेल पाहा';

  @override
  String confirmEmailBody(String email) {
    return 'आम्ही $email वर खात्रीची लिंक पाठवली आहे. खातं पूर्ण करण्यासाठी ती उघडा.';
  }

  @override
  String get resendConfirmation => 'खात्रीचा ईमेल पुन्हा पाठवा';

  @override
  String get confirmationResent => 'खात्रीचा ईमेल पाठवला';

  @override
  String get forgotPasswordTitle => 'पासवर्ड रीसेट करा';

  @override
  String get forgotPasswordSubtitle =>
      'ज्या ईमेलने नोंदणी केली तो भरा, नवा पासवर्ड निवडण्याची लिंक आम्ही पाठवू.';

  @override
  String get sendResetLink => 'रीसेट लिंक पाठवा';

  @override
  String get resetLinkSentTitle => 'लिंक पाठवली';

  @override
  String resetLinkSentBody(String email) {
    return '$email चं खातं असेल, तर रीसेट लिंक मार्गावर आहे.';
  }

  @override
  String get resetLinkSentHint =>
      'लिंक एका तासात संपते. आली नाही तर नवी मागण्याआधी स्पॅम फोल्डर पाहा.';

  @override
  String get tryAnotherEmail => 'दुसरा ईमेल वापरा';

  @override
  String get resetPasswordTitle => 'नवा पासवर्ड निवडा';

  @override
  String get resetPasswordSubtitle =>
      'या खात्यावर आधी न वापरलेलं काहीतरी निवडा.';

  @override
  String get passwordChangedTitle => 'पासवर्ड अद्ययावत झाला';

  @override
  String get passwordChangedBody =>
      'तुमचा नवा पासवर्ड जतन झाला. तुम्ही साइन इन आहात आणि तयार आहात.';

  @override
  String get demoModeHint => 'डेमो आवृत्ती — खात्याची गरज नाही';

  @override
  String get demoModeFill => 'भरून द्या';

  @override
  String get welcomeTrackTitle => 'तुमचे पैसे कुठे जातात ते पाहा';

  @override
  String get welcomeTrackBody =>
      'काय येतं आणि काय जातं ते नोंदवा. RainyPenny त्याचं खरोखर वाचता येईल असं चित्र बनवतं.';

  @override
  String get welcomeBudgetTitle => 'टिकणाऱ्या मर्यादा';

  @override
  String get welcomeBudgetBody =>
      'तुमच्या खर्चाच्या प्रत्येक भागाला मासिक कमाल मर्यादा द्या, आणि ती ओलांडल्यावर नव्हे — ओलांडण्याआधी कळू द्या.';

  @override
  String get welcomeGoalsTitle => 'महत्त्वाच्या गोष्टीसाठी बचत करा';

  @override
  String get welcomeGoalsBody =>
      'ध्येयाला नाव द्या, रक्कम ठरवा आणि ते भरताना पाहा. डोळ्यांसमोर दिसत असेल तर आपत्कालीन निधी सहज उभा राहतो.';

  @override
  String get welcomePrivacyTitle => 'तुमचे पैसे तुमचेच राहतात';

  @override
  String get welcomePrivacyBody =>
      'तुमचे आकडे फक्त तुमचे. काहीही विकलं जात नाही, कोणाशीही वाटलं जात नाही.';

  @override
  String stepOf(int step, int total) {
    return 'पायरी $step / $total';
  }

  @override
  String get onboardingNameTitle => 'तुम्हाला काय हाक मारू?';

  @override
  String get onboardingNameBody =>
      'फक्त स्वागतासाठी वापरू, दुसरीकडे कुठेही नाही.';

  @override
  String get onboardingNameHint => 'पहिलं नाव पुरे. नंतर बदलता येईल.';

  @override
  String get onboardingCurrencyTitle => 'तुम्ही कोणतं चलन वापरता?';

  @override
  String get onboardingCurrencyBody =>
      'अ‍ॅपमधली प्रत्येक रक्कम याच चलनात दिसेल. हे निवडल्याने काहीही रूपांतर होत नाही.';

  @override
  String get onboardingCurrencySearch => 'सर्व चलनांमध्ये शोधा';

  @override
  String get onboardingAppearanceTitle => 'तुमच्या पसंतीचं करा';

  @override
  String get onboardingAppearanceBody =>
      'एक रूप निवडा. स्पर्श करताच सगळं बदलतं, आणि तुम्ही कधीही परत येऊ शकता.';

  @override
  String get onboardingNotificationsTitle => 'लक्ष ठेवून राहा';

  @override
  String get onboardingNotificationsBody =>
      'योग्य क्षणी येणारी हलकीशी आठवणच याचं सवयीत रूपांतर करते.';

  @override
  String get onboardingNotifyReminders => 'खर्च नोंदवण्याची सौम्य आठवण';

  @override
  String get onboardingNotifyBudget => 'अर्थसंकल्प संपण्याआधी एक सूचना';

  @override
  String get onboardingNotifySummary => 'पैसे कुठे गेले याचा साप्ताहिक सारांश';

  @override
  String get onboardingNotifyEnable => 'सूचना चालू करा';

  @override
  String get onboardingNotifyDone => 'सूचनांच्या सेटिंग्ज जतन झाल्या';

  @override
  String get onboardingNotifyLater =>
      'हे सगळं तुम्ही सेटिंग्जमध्ये कधीही बदलू शकता.';

  @override
  String get onboardingReadyTitle => 'सगळं तयार आहे';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'सगळं तयार आहे, $name';
  }

  @override
  String get onboardingReadyBody =>
      'सेटअप झालं. सगळं कसं चालतं याची झटपट फेरी घ्यायची?';

  @override
  String get onboardingTakeTour => 'मला दाखवा';

  @override
  String get onboardingGoToApp => 'अ‍ॅपकडे न्या';

  @override
  String get onboardingTourLater =>
      'आत्ता नको? मार्गदर्शिका सेटिंग्जमध्ये राहील, हवी तेव्हा पाहा.';

  @override
  String get beginnersGuide => 'नवशिक्यांसाठी मार्गदर्शिका';

  @override
  String get guideFinish => 'पूर्ण';

  @override
  String chapterOf(int number, int total) {
    return 'प्रकरण $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen उघडा';
  }

  @override
  String get guideDashboardTitle => 'तुमचं मुख्यपृष्ठ';

  @override
  String get guideDashboardBody =>
      'सगळं इथूनच सुरू होतं. वरचं कार्ड तुमच्याकडे काय शिल्लक आहे ते सांगतं; त्याखाली या कालावधीतलं उत्पन्न आणि खर्च, मग तुमचा खर्च, अर्थसंकल्प आणि ध्येयं.';

  @override
  String get guideDashboardTip1 =>
      'सगळं एकाच वेळी ताजं करण्यासाठी स्क्रीन खाली ओढा.';

  @override
  String get guideDashboardTip2 =>
      'त्या यादीवर थेट जाण्यासाठी उत्पन्न किंवा खर्चाच्या कार्डला स्पर्श करा.';

  @override
  String get guideDashboardTip3 =>
      'तुम्ही काही नोंदवताच वर्तुळं आणि निरीक्षणं अद्ययावत होतात.';

  @override
  String get guideAddTitle => 'पैसे नोंदवणं';

  @override
  String get guideAddBody =>
      'पट्टीच्या मधलं बटण हीच सगळ्याची सुरुवात. ते एक छोटी यादी उघडतं: खर्च, उत्पन्न, देणं, अर्थसंकल्प किंवा बचतीचं ध्येय.';

  @override
  String get guideAddTip1 => 'उत्पन्न किंवा खर्च नोंदवण्यासाठी मधलं बटण दाबा.';

  @override
  String get guideAddTip2 =>
      'यादी वगळून थेट नव्या खर्चावर जाण्यासाठी ते दाबून धरा.';

  @override
  String get guideAddTip3 =>
      'नेहमी प्रवर्ग निवडा — तक्ते आणि अर्थसंकल्प त्यावरच चालतात.';

  @override
  String get guideCategoriesTitle => 'प्रवर्ग';

  @override
  String get guideCategoriesBody =>
      'प्रवर्गच खर्चाचे गट पाडतात. अ‍ॅपसोबत येणारे बहुतेकांना पुरतात, आणि तुम्ही त्यांची नावं बदलू शकता किंवा स्वतःचे जोडू शकता.';

  @override
  String get guideCategoriesTip1 =>
      'बदलण्यासाठी किंवा जोडण्यासाठी सेटिंग्ज, मग प्रवर्ग व्यवस्थापित करा.';

  @override
  String get guideCategoriesTip2 =>
      'प्रवर्गाशिवाय राहिलेलं सगळं «इतर» मध्ये जातं, त्यामुळे तक्ते प्रामाणिक राहतात.';

  @override
  String get guideBudgetTitle => 'अर्थसंकल्प';

  @override
  String get guideBudgetBody =>
      'अर्थसंकल्प म्हणजे एका प्रवर्गाची मासिक कमाल मर्यादा. खर्च होताच पट्टी भरत जाते आणि मर्यादा जवळ आली की रंग बदलतो, त्यामुळे ओलांडण्याआधीच कळतं.';

  @override
  String get guideBudgetTip1 =>
      'एकदम सगळे नको — दोन-तीन प्रवर्गांपासून सुरुवात करा.';

  @override
  String get guideBudgetTip2 =>
      'मर्यादा नेहमीच्या खर्चापेक्षा थोडी वर ठेवा, मग हळूहळू आवळा.';

  @override
  String get guideBudgetTip3 =>
      'अर्थसंकल्पाचे इशारे चालू ठेवा, संपत आल्यावर अ‍ॅप सांगेल.';

  @override
  String get guideSavingsTitle => 'बचतीची ध्येयं';

  @override
  String get guideSavingsBody =>
      'कशासाठी बचत करताय त्याला नाव द्या, रक्कम आणि तारीख ठरवा — दरमहा किती बाजूला ठेवायचं ते अ‍ॅप काढून देईल.';

  @override
  String get guideSavingsTip1 =>
      'नाव असलेलं ध्येय, बचतीच्या धूसर इच्छेपेक्षा सहज टिकतं.';

  @override
  String get guideSavingsTip2 =>
      'एका मोठ्या ध्येयापेक्षा काही छोटी ध्येयं अधिक वेळा पूर्ण होतात.';

  @override
  String get guideLoansTitle => 'देणी आणि कर्जे';

  @override
  String get guideLoansBody =>
      'किती देणं आहे, त्याचा खर्च किती आणि पुढचा हप्ता कधी ते नोंदवा. तुम्ही फेडत असलेलं सगळं उरलेल्या रकमेसह एकाच यादीत राहतं.';

  @override
  String get guideLoansTip1 =>
      'देय तारीख भरा, हप्त्याच्या आठवणी तुमच्यावतीने पाठपुरावा करतील.';

  @override
  String get guideLoansTip2 =>
      'मुदत उलटलेलं देणं फेडेपर्यंत मुख्यपृष्ठावर लाल दिसतं.';

  @override
  String get guideReportsTitle => 'अहवाल';

  @override
  String get guideReportsBody =>
      'अधिक खोल नजर: उत्पन्न विरुद्ध खर्च, प्रवर्गानुसार खर्च, अर्थसंकल्प किती टिकले आणि उत्पन्नाचा किती वाटा तुमच्याकडे राहिला.';

  @override
  String get guideReportsTip1 =>
      'स्क्रीनच्या वर आठवडा, महिना आणि तिमाही यांमध्ये बदला.';

  @override
  String get guideReportsTip2 =>
      'PDF निर्यात करा किंवा सामायिक करा — तो तुमच्या भाषेत आणि दिशेतच तयार होतो.';

  @override
  String get guideSettingsTitle => 'सेटिंग्ज';

  @override
  String get guideSettingsBody =>
      'भाषा, चलन, रंग आणि इशारे सगळे इथेच आहेत, आणि सुरुवातीच्या सेटअपने काहीही पक्कं होत नाही — हवं तेव्हा बदला.';

  @override
  String get guideSettingsTip1 =>
      'चाळीस भाषा, आणि उजवीकडून डावीकडे वाचल्या जाणाऱ्या भाषांसाठी संपूर्ण मांडणी उलटते.';

  @override
  String get guideSettingsTip2 =>
      'कोणते इशारे हवेत आणि ते कोणत्या तासांत येऊ शकतात ते निवडा.';

  @override
  String get guideSettingsTip3 => 'शांत तास सगळं सकाळपर्यंत थांबवून ठेवतात.';

  @override
  String get guideHabitTitle => 'सवय लावून घ्या';

  @override
  String get guideHabitBody =>
      'तुम्ही जेवढं यात टाकाल तेवढंच अ‍ॅप उपयोगी. महिन्यातल्या एका तासापेक्षा रोजचं एक मिनिट बरं, आणि दोन आठवड्यांनी आकडे काहीतरी सांगू लागतात.';

  @override
  String get guideHabitTip1 => 'आठवड्याच्या शेवटी नव्हे, खर्च होताच नोंदवा.';

  @override
  String get guideHabitTip2 =>
      'दिवसातून एकदा मुख्यपृष्ठ पाहा. दहा सेकंद पुरेत.';

  @override
  String get guideHabitTip3 =>
      'ही मार्गदर्शिका सेटिंग्जमध्येच राहते — हवं तेव्हा परत या.';

  @override
  String get appearance => 'स्वरूप';

  @override
  String get themeCaption => 'उजळ, गडद, किंवा तुमचा फोन जे करतोय ते.';

  @override
  String get accentColor => 'मुख्य रंग';

  @override
  String get accentColorCaption => 'बटणं, ठळक भाग आणि तक्त्यांना रंग देतो.';

  @override
  String get accentSemanticsNote =>
      'उत्पन्न आणि खर्च प्रत्येक थीममध्ये आपले रंग टिकवून ठेवतात, त्यामुळे मुख्य रंग बदलल्याने कोणत्याही आकड्याचा अर्थ बदलत नाही.';

  @override
  String get accentTeal => 'फिरोजी';

  @override
  String get accentGreen => 'हिरवा';

  @override
  String get accentSky => 'आकाशी';

  @override
  String get accentBlue => 'निळा';

  @override
  String get accentIndigo => 'गडद निळा';

  @override
  String get accentViolet => 'जांभळा';

  @override
  String get accentPink => 'गुलाबी';

  @override
  String get accentCrimson => 'किरमिजी';

  @override
  String get accentOrange => 'नारिंगी';

  @override
  String get accentSlate => 'करडा';

  @override
  String get searchLanguages => 'भाषा शोधा';

  @override
  String get suggestedLanguages => 'सुचवलेल्या';

  @override
  String get allLanguages => 'सर्व भाषा';

  @override
  String get noLanguagesFound => 'कोणतीही भाषा सापडली नाही';

  @override
  String get noLanguagesFoundMessage =>
      'इंग्रजी नाव किंवा दोन अक्षरी कोड वापरून पाहा.';

  @override
  String get rightToLeft => 'उजवीकडून डावीकडे';

  @override
  String get replayGuide => 'मार्गदर्शिका पुन्हा पाहा';

  @override
  String get replaySetup => 'सेटअप पुन्हा करा';

  @override
  String get replaySetupBody =>
      'सुरुवातीच्या प्रश्नांमधून पुन्हा जा. तुम्ही नोंदवलेलं काहीही हटवलं जाणार नाही.';

  @override
  String get rateTitle => 'RainyPenny आवडतंय?';

  @override
  String get rateBody =>
      'तुम्ही बऱ्याच दिवसांपासून हे वापरत आहात. रेटिंग द्यायला क्षणभर लागतो आणि त्यामुळे इतरांना अ‍ॅप सापडायला मदत होते.';

  @override
  String get rateAction => 'अ‍ॅपला रेट करा';

  @override
  String get rateLater => 'कदाचित नंतर';

  @override
  String get rateNever => 'नको, धन्यवाद';

  @override
  String get rateThanks => 'धन्यवाद';

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
}
