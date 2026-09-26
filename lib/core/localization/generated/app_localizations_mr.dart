// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppL10nMr extends AppL10n {
  AppL10nMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'रेनीपेनी';

  @override
  String get appTagline => 'पावसाळ्याच्या दिवसासाठी बचत करा';

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
    return 'शुभ प्रभात, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'शुभ दुपार, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'शुभ संध्याकाळ, $name';
  }

  @override
  String get greetingSubtitle => 'तुमचा आर्थिक आढावा येथे आहे';

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
  String get lastThirtyDays => 'मागील ३० दिवस';

  @override
  String get quickActions => 'जलद कृती';

  @override
  String get addIncome => 'उत्पन्न जोडा';

  @override
  String get addExpense => 'खर्च जोडा';

  @override
  String get spendingOverview => 'खर्चाचा आढावा';

  @override
  String get recentTransactions => 'अलीकडील व्यवहार';

  @override
  String get seeAll => 'सर्व पहा';

  @override
  String get viewAll => 'सर्व पहा';

  @override
  String get budgetProgress => 'अर्थसंकल्पाची प्रगती';

  @override
  String get savingsGoals => 'बचतीची उद्दिष्टे';

  @override
  String get financialInsight => 'आर्थिक अंतर्दृष्टी';

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
      'तुमच्या अधिक व्यवहारांसाठी वेगळा शोध किंवा फिल्टर वापरून पहा.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यवहार',
      one: '१ व्यवहार',
      zero: 'कोणतेही व्यवहार नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'व्यवहार जोडा';

  @override
  String get amount => 'रक्कम';

  @override
  String get category => 'श्रेणी';

  @override
  String get date => 'तारीख';

  @override
  String get note => 'नोंद';

  @override
  String get noteHint => 'ऐच्छिक नोंद';

  @override
  String get saveIncome => 'उत्पन्न जतन करा';

  @override
  String get saveExpense => 'खर्च जतन करा';

  @override
  String get selectCategory => 'श्रेणी निवडा';

  @override
  String get transactionSaved => 'व्यवहार जतन केला';

  @override
  String get amountRequired => 'शून्यापेक्षा जास्त रक्कम भरा';

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
  String get spent => 'खर्च झाले';

  @override
  String get remaining => 'उर्वरित';

  @override
  String budgetUsed(int percent) {
    return '$percent% वापरले';
  }

  @override
  String get onTrack => 'योग्य मार्गावर';

  @override
  String get approachingLimit => 'मर्यादेच्या जवळ';

  @override
  String get overBudget => 'अर्थसंकल्पापेक्षा जास्त';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'तुमची उद्दिष्टे';

  @override
  String get saved => 'जतन केले';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'मासिक';

  @override
  String get addFunds => 'रक्कम जोडा';

  @override
  String get goalComplete => 'उद्दिष्ट पूर्ण झाले';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महिने बाकी',
      one: '१ महिना बाकी',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'कर्जे व देणी';

  @override
  String get totalOutstanding => 'एकूण थकबाकी';

  @override
  String get monthlyPayment => 'मासिक';

  @override
  String get nextPayment => 'पुढील देयक';

  @override
  String paidOff(int percent) {
    return '$percent% फेडले';
  }

  @override
  String get interestRate => 'व्याज';

  @override
  String get upcomingPayments => 'आगामी देयके';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांत देय',
      one: 'उद्या देय',
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
  String get spendingByCategory => 'श्रेणीनुसार खर्च';

  @override
  String get budgetPerformance => 'अर्थसंकल्पाची कामगिरी';

  @override
  String get insights => 'अंतर्दृष्टी';

  @override
  String get savingsRate => 'बचत दर';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get account => 'खाते';

  @override
  String get personalInformation => 'वैयक्तिक माहिती';

  @override
  String get changePassword => 'पासवर्ड बदला';

  @override
  String get notifications => 'सूचना';

  @override
  String get preferences => 'प्राधान्ये';

  @override
  String get language => 'भाषा';

  @override
  String get currency => 'चलन';

  @override
  String get theme => 'थीम';

  @override
  String get security => 'सुरक्षा';

  @override
  String get privacyAndSecurity => 'गोपनीयता व सुरक्षा';

  @override
  String get help => 'मदत';

  @override
  String get helpAndSupport => 'मदत व समर्थन';

  @override
  String get termsAndConditions => 'अटी व शर्ती';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String memberSince(String date) {
    return '$date पासून सदस्य';
  }

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'फिकट';

  @override
  String get themeDark => 'गडद';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get noNotificationsTitle => 'तुम्ही सर्व सूचना पाहिल्या आहेत';

  @override
  String get noNotificationsBody =>
      'नवीन अंतर्दृष्टी आणि स्मरणपत्रे येथे दिसतील.';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get save => 'जतन करा';

  @override
  String get done => 'पूर्ण';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get close => 'बंद करा';

  @override
  String get somethingWentWrong => 'काहीतरी चूक झाली';

  @override
  String get comingSoon => 'पूर्ण आवृत्तीत लवकरच उपलब्ध';

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
  String get nameRequired => 'तुमचे नाव भरा';

  @override
  String get amountAboveZero => 'शून्यापेक्षा जास्त रक्कम भरा';

  @override
  String get editTransaction => 'व्यवहार संपादित करा';

  @override
  String get deleteTransaction => 'व्यवहार हटवायचा?';

  @override
  String deleteTransactionBody(String title) {
    return '$title तुमच्या नोंदवहीतून काढला जाईल.';
  }

  @override
  String get transactionDeleted => 'व्यवहार हटवला';

  @override
  String get transactionUpdated => 'व्यवहार अद्यतनित केला';

  @override
  String get newBudget => 'नवीन अर्थसंकल्प';

  @override
  String get editBudget => 'अर्थसंकल्प संपादित करा';

  @override
  String get budgetLimit => 'मासिक मर्यादा';

  @override
  String get deleteBudget => 'अर्थसंकल्प हटवायचा?';

  @override
  String deleteBudgetBody(String category) {
    return '$category चा अर्थसंकल्प काढला जाईल. तुमच्या व्यवहारांवर परिणाम होणार नाही.';
  }

  @override
  String get budgetSaved => 'अर्थसंकल्प जतन केला';

  @override
  String get budgetDeleted => 'अर्थसंकल्प हटवला';

  @override
  String get allCategoriesBudgeted => 'प्रत्येक श्रेणीसाठी आधीच अर्थसंकल्प आहे';

  @override
  String get noBudgetsTitle => 'अजून कोणतेही अर्थसंकल्प नाहीत';

  @override
  String get noBudgetsBody =>
      'त्याचा मागोवा घेण्यासाठी एखाद्या श्रेणीवर मासिक मर्यादा ठरवा.';

  @override
  String get newGoal => 'नवीन उद्दिष्ट';

  @override
  String get editGoal => 'उद्दिष्ट संपादित करा';

  @override
  String get goalName => 'उद्दिष्टाचे नाव';

  @override
  String get goalNameHint => 'उदा. आपत्कालीन निधी';

  @override
  String get targetAmount => 'लक्ष्य रक्कम';

  @override
  String get alreadySaved => 'आधीच बचत केलेली';

  @override
  String get deleteGoal => 'उद्दिष्ट हटवायचे?';

  @override
  String deleteGoalBody(String name) {
    return '$name आणि त्याची प्रगती काढून टाकली जाईल.';
  }

  @override
  String get goalSaved => 'उद्दिष्ट जतन केले';

  @override
  String get goalDeleted => 'उद्दिष्ट हटवले';

  @override
  String get noGoalsTitle => 'अजून कोणतीही बचतीची उद्दिष्टे नाहीत';

  @override
  String get noGoalsBody =>
      'लक्ष्य ठरवा आणि RainyPenny तुमच्या प्रगतीचा मागोवा घेईल.';

  @override
  String get fundsAdded => 'रक्कम जोडली';

  @override
  String get newDebt => 'नवीन कर्ज किंवा कार्ड';

  @override
  String get editDebt => 'कर्ज संपादित करा';

  @override
  String get debtName => 'नाव';

  @override
  String get debtNameHint => 'उदा. कार कर्ज';

  @override
  String get lender => 'कर्जदाता';

  @override
  String get lenderHint => 'उदा. मेरिडियन बँक';

  @override
  String get originalAmount => 'मूळ रक्कम';

  @override
  String get creditLimit => 'क्रेडिट मर्यादा';

  @override
  String get remainingBalance => 'उर्वरित शिल्लक';

  @override
  String get interestRatePercent => 'व्याज दर (%)';

  @override
  String get kindLoan => 'कर्ज';

  @override
  String get kindCreditCard => 'क्रेडिट कार्ड';

  @override
  String get recordPayment => 'देयक नोंदवा';

  @override
  String get paymentRecorded => 'देयक नोंदवले';

  @override
  String get deleteDebt => 'हे कर्ज हटवायचे?';

  @override
  String deleteDebtBody(String name) {
    return '$name तुमच्या कर्जांच्या यादीतून काढले जाईल.';
  }

  @override
  String get debtSaved => 'जतन केले';

  @override
  String get debtDeleted => 'हटवले';

  @override
  String get noDebtsTitle => 'कोणतीही देणी नोंदवलेली नाहीत';

  @override
  String get noDebtsBody =>
      'परतफेडीवर लक्ष ठेवण्यासाठी कर्ज किंवा क्रेडिट कार्ड जोडा.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject चा अर्थसंकल्प ओलांडला';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'या कालावधीसाठी तुम्ही $subject च्या अर्थसंकल्पापेक्षा $amount जास्त खर्च केले आहेत.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject मर्यादेच्या जवळ आहे';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'तुमचा $subject अर्थसंकल्प $percent% वापरला आहे आणि $amount शिल्लक आहे.';
  }

  @override
  String get insightOverIncomeTitle => 'खर्च उत्पन्नापेक्षा जास्त आहे';

  @override
  String get insightOverIncomeBody =>
      'या कालावधीत तुम्ही कमावलेल्या रकमेपेक्षा जास्त खर्च केला. सर्वात मोठ्या श्रेणींचा आढावा घेऊन खर्च पुन्हा नियंत्रणात आणा.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject वरील खर्च वाढला';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'मागील कालावधीच्या तुलनेत तुमचा $subject वरील खर्च $percent% जास्त आहे.';
  }

  @override
  String get insightTrendDownTitle => 'खर्च कमी होत आहे';

  @override
  String insightTrendDownBody(int percent) {
    return 'मागील कालावधीच्या तुलनेत एकूण खर्च $percent% कमी आहे.';
  }

  @override
  String get insightTrendUpTitle => 'खर्च वाढत आहे';

  @override
  String insightTrendUpBody(int percent) {
    return 'मागील कालावधीच्या तुलनेत एकूण खर्च $percent% जास्त आहे.';
  }

  @override
  String get insightSavingsStrongTitle => 'या कालावधीत चांगली बचत';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'तुम्ही तुमच्या उत्पन्नापैकी $percent% बचत केली — $target% च्या लक्ष्यापेक्षा लक्षणीय जास्त.';
  }

  @override
  String get insightSavingsLowTitle => 'बचत दर लक्ष्यापेक्षा कमी आहे';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'या कालावधीत तुम्ही तुमच्या उत्पन्नापैकी $percent% बचत केली. $target% चे लक्ष्य ठेवा.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject जवळजवळ पूर्ण निधी मिळाले आहे';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject गाठण्यासाठी फक्त $amount बाकी आहे.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject साठी तुम्ही योग्य मार्गावर आहात';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months महिन्यांत',
      one: '१ महिन्यात',
    );
    return 'दर महिन्याला $amount जमा केल्यास तुम्ही हे उद्दिष्ट $_temp0 गाठाल.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject चे देयक मुदतबाह्य झाले';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवस',
      one: '१ दिवस',
    );
    return '$subject चे $amount देयक $_temp0 मुदतबाह्य झाले आहे.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject चे देयक लवकरच आहे';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवसांत',
      one: 'उद्या',
      zero: 'आज',
    );
    return '$amount $_temp0 देय आहे.';
  }

  @override
  String get signIn => 'साइन इन';

  @override
  String get signUp => 'खाते तयार करा';

  @override
  String get signInSubtitle =>
      'पुन्हा स्वागत आहे. तुमचे पैसे तुमची वाट पाहत आहेत.';

  @override
  String get signUpSubtitle => 'काही माहिती द्या आणि तुमचे सेटअप पूर्ण होईल.';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get passwordHint => 'किमान ८ अक्षरे';

  @override
  String get fullNameLabel => 'पूर्ण नाव';

  @override
  String get fullNameHint => 'अॅलेक्स मॉर्गन';

  @override
  String get forgotPassword => 'पासवर्ड विसरलात?';

  @override
  String get resetSent => 'पासवर्ड रीसेट करण्यासाठी तुमचा इनबॉक्स तपासा';

  @override
  String get noAccountYet => 'नवीन आहात?';

  @override
  String get haveAccount => 'आधीच खाते आहे?';

  @override
  String get emailInvalid => 'वैध ईमेल पत्ता भरा';

  @override
  String get passwordTooShort => 'किमान ८ अक्षरे वापरा';

  @override
  String get signOutConfirm => 'साइन आउट करायचे?';

  @override
  String get signOutBody =>
      'तुमचे आर्थिक तपशील पाहण्यासाठी तुम्हाला पुन्हा साइन इन करावे लागेल.';

  @override
  String get dataSource => 'डेटा स्रोत';

  @override
  String get insightWeeklySummaryTitle => 'तुमच्या आठवड्याचा आढावा';

  @override
  String get insightWeeklySummaryBody =>
      'या आठवड्यात तुमचे पैसे कुठे गेले आणि तुमचे अर्थसंकल्प कसे चालले आहेत ते पहा.';

  @override
  String get notificationSettings => 'सूचना';

  @override
  String get alertsSection => 'इशारे';

  @override
  String get budgetAlerts => 'अर्थसंकल्पाचे इशारे';

  @override
  String get budgetAlertsBody =>
      'अर्थसंकल्पाची मर्यादा जवळ आल्यावर किंवा ओलांडल्यावर';

  @override
  String get paymentReminders => 'देयक स्मरणपत्रे';

  @override
  String get paymentRemindersBody => 'देयकाची तारीख येण्याच्या काही दिवस आधी';

  @override
  String get savingsUpdates => 'बचत अद्यतने';

  @override
  String get savingsUpdatesBody => 'तुमच्या उद्दिष्टांच्या प्रगतीसाठी';

  @override
  String get weeklySummaryLabel => 'साप्ताहिक आढावा';

  @override
  String get weeklySummaryBody => 'नुकत्याच संपलेल्या आठवड्याचा सारांश';

  @override
  String get scheduleSection => 'वेळ';

  @override
  String get reminderTime => 'स्मरणपत्राची वेळ';

  @override
  String get quietHours => 'शांत वेळ';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'आढाव्याचा दिवस';

  @override
  String get permissionRequired => 'सूचना बंद आहेत';

  @override
  String get permissionRequiredBody =>
      'अर्थसंकल्प किंवा देयक हाताबाहेर जाण्यापूर्वी RainyPenny तुम्हाला सावध करू शकेल यासाठी सूचना परवानगी द्या.';

  @override
  String get allowNotifications => 'सूचनांना परवानगी द्या';

  @override
  String get permissionDenied =>
      'सूचना अवरोधित आहेत. त्या तुमच्या डिव्हाइसच्या सेटिंग्जमध्ये सुरू करू शकता.';

  @override
  String get upcomingAlerts => 'नियोजित';

  @override
  String get noScheduledAlerts => 'सध्या काहीही नियोजित नाही';

  @override
  String get noScheduledAlertsBody =>
      'तुमचे अर्थसंकल्प आणि देयके त्यांच्या मर्यादेच्या जवळ आल्यावर येथे इशारे दिसतील.';

  @override
  String scheduledFor(String date) {
    return '$date साठी नियोजित';
  }

  @override
  String get everyWeek => 'दर आठवड्याला';

  @override
  String get allNotificationsOff => 'सर्व सूचना बंद आहेत';

  @override
  String get needsAttention => 'लक्ष देणे आवश्यक';

  @override
  String get quickActionsTitle => 'तुम्हाला काय करायचे आहे?';

  @override
  String get createSection => 'नोंद करा';

  @override
  String get jumpToSection => 'येथे जा';

  @override
  String get addLoanAction => 'कर्ज जोडा';

  @override
  String get addBudgetAction => 'अर्थसंकल्प जोडा';

  @override
  String get addGoalAction => 'उद्दिष्ट जोडा';

  @override
  String get longPressHint => 'टीप: खर्च लगेच नोंदवण्यासाठी + दाबून ठेवा';

  @override
  String get searchCurrencies => 'चलने शोधा';

  @override
  String get noCurrenciesFound => 'कोणतेही चलन सापडले नाही';

  @override
  String get noCurrenciesFoundMessage =>
      'वेगळा कोड, चिन्ह किंवा नाव वापरून पहा.';

  @override
  String get popularCurrencies => 'लोकप्रिय';

  @override
  String get allCurrencies => 'सर्व चलने';

  @override
  String get totalLoanAmount => 'एकूण कर्ज रक्कम';

  @override
  String get installmentAmount => 'हप्त्याची रक्कम';

  @override
  String get numberOfInstallments => 'हप्त्यांची संख्या';

  @override
  String get paidInstallments => 'भरलेले हप्ते';

  @override
  String get remainingInstallments => 'उर्वरित हप्ते';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid पैकी $total भरले';
  }

  @override
  String get finalPayment => 'अंतिम देयक';

  @override
  String get paymentDueDate => 'देयकाची तारीख';

  @override
  String dueOnDayOfMonth(int day) {
    return 'प्रत्येक महिन्याच्या $day तारखेला';
  }

  @override
  String get loanStatus => 'स्थिती';

  @override
  String get statusActive => 'योग्य मार्गावर';

  @override
  String get statusDueSoon => 'लवकरच देय';

  @override
  String get statusOverdue => 'मुदतबाह्य';

  @override
  String get statusCompleted => 'पूर्ण फेडले';

  @override
  String get repaymentProgress => 'परतफेडीची प्रगती';

  @override
  String get byAmount => 'रकमेप्रमाणे';

  @override
  String get byInstallments => 'हप्त्यांप्रमाणे';

  @override
  String get startDate => 'सुरुवातीची तारीख';

  @override
  String get openEnded => 'अनिश्चित कालावधी';

  @override
  String get loanDetails => 'कर्ज तपशील';

  @override
  String get notSet => 'सेट केलेले नाही';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject आज देय आहे';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'तुमचे $amount देयक आज भरायचे आहे. एका झटपट टॅपने ते वेळेवर भरा.';
  }

  @override
  String get remindMorningTitle => 'शुभ प्रभात ☀️';

  @override
  String get remindMorningBody =>
      'तुमच्या पैशांवर लक्ष ठेवून दिवस सुरू करा. कालचा काही खर्च नोंदवायचा आहे का?';

  @override
  String get remindNoonTitle => 'दुपारची तपासणी';

  @override
  String get remindNoonBody =>
      'जेवण, कॉफी किंवा प्रवासाचे भाडे? काही सेकंदांत नोंदवा.';

  @override
  String get remindAfternoonTitle => 'झटपट नोंद';

  @override
  String get remindAfternoonBody =>
      'आतापर्यंत केलेला खर्च नोंदवा आणि आजची माहिती अचूक ठेवा.';

  @override
  String get remindEveningTitle => 'दिवसाची सांगता';

  @override
  String get remindEveningBody =>
      'आता दोन मिनिटे दिली तर आजची आकडेवारी पूर्ण होईल.';

  @override
  String get happyWeekendTitle => 'आठवड्याच्या शेवटासाठी शुभेच्छा! 🎉';

  @override
  String get happyWeekendBody =>
      'आनंद घ्या — आणि आठवड्याच्या शेवटच्या खर्चावरही लक्ष ठेवा.';

  @override
  String get dailyReminders => 'दैनंदिन खर्च स्मरणपत्रे';

  @override
  String get dailyRemindersBody =>
      'तुमचे खर्च अद्ययावत ठेवण्यासाठी मैत्रीपूर्ण स्मरणपत्रे';

  @override
  String get weekendGreeting => 'आठवड्याच्या शेवटच्या शुभेच्छा';

  @override
  String get weekendGreetingBody =>
      'आठवड्याच्या सुरुवातीला एक मैत्रीपूर्ण शुभेच्छा';

  @override
  String get reminderTimesSection => 'स्मरणपत्रांच्या वेळा';

  @override
  String get slotMorning => 'सकाळ';

  @override
  String get slotNoon => 'दुपार';

  @override
  String get slotAfternoon => 'दुपारनंतर';

  @override
  String get slotEvening => 'संध्याकाळ';

  @override
  String get everyDay => 'दररोज';

  @override
  String get financialReport => 'आर्थिक अहवाल';

  @override
  String get preparedFor => 'यांच्यासाठी तयार केले';

  @override
  String get generatedOn => 'तयार केल्याची तारीख';

  @override
  String get reportDisclaimer =>
      'तुमच्या स्वतःच्या नोंदींमधून RainyPenny ने तयार केले.';

  @override
  String pageOf(int page, int total) {
    return 'पृष्ठ $page पैकी $total';
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
  String get shareOfTotal => 'हिस्सा';

  @override
  String get used => 'वापरले';

  @override
  String get goal => 'उद्दिष्ट';

  @override
  String get targetDate => 'लक्ष्य तारीख';

  @override
  String get progress => 'प्रगती';

  @override
  String get paidOffShort => 'फेडले';

  @override
  String get transactions => 'व्यवहार';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आणि आणखी $count व्यवहार',
      one: 'आणि आणखी १ व्यवहार',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF निर्यात करा';

  @override
  String get sharePdf => 'अहवाल शेअर करा';

  @override
  String get preparingReport => 'तुमचा अहवाल तयार करत आहे…';

  @override
  String get reportReady => 'अहवाल तयार आहे';

  @override
  String get reportFailed => 'अहवाल तयार करता आला नाही';

  @override
  String get categories => 'श्रेणी';

  @override
  String get categoriesIntro =>
      'तुमच्या उत्पन्नाची आणि खर्चाची नोंद तुम्ही ज्या पद्धतीने विचार करता त्याच पद्धतीने करण्यासाठी स्वतःच्या श्रेणी जोडा.';

  @override
  String get expenseCategories => 'खर्चाच्या श्रेणी';

  @override
  String get incomeCategories => 'उत्पन्नाच्या श्रेणी';

  @override
  String get newCategory => 'नवीन श्रेणी';

  @override
  String get editCategory => 'श्रेणी संपादित करा';

  @override
  String get categoryName => 'नाव';

  @override
  String get categoryNameHint => 'उदा. पाळीव प्राण्यांची देखभाल';

  @override
  String get icon => 'चिन्ह';

  @override
  String get categorySaved => 'श्रेणी जतन केली';

  @override
  String get categoryDeleted => 'श्रेणी हटवली';

  @override
  String get deleteCategory => 'ही श्रेणी हटवायची?';

  @override
  String deleteCategoryBody(String name) {
    return '$name तुमच्या श्रेणींमधून काढली जाईल.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नोंदी अजूनही ही श्रेणी वापरतात',
      one: '१ नोंद अजूनही ही श्रेणी वापरते',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'अजून येथे काहीही नाही.';

  @override
  String get builtIn => 'अंगभूत';

  @override
  String get manageCategories => 'श्रेणी व्यवस्थापित करा';

  @override
  String get expense => 'खर्च';

  @override
  String get languageNote =>
      'अरबी, उर्दू, फारसी आणि हिब्रू निवडल्यास चार्ट आणि PDF अहवालांसह संपूर्ण इंटरफेस उजवीकडून डावीकडे होतो.';

  @override
  String get next => 'पुढे';

  @override
  String get back => 'मागे';

  @override
  String get skip => 'वगळा';

  @override
  String get continueLabel => 'पुढे जा';

  @override
  String get selected => 'निवडलेले';

  @override
  String get passwordRequired => 'तुमचा पासवर्ड भरा';

  @override
  String get newPasswordLabel => 'नवीन पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्डची पुष्टी करा';

  @override
  String get passwordsDoNotMatch => 'दोन्ही पासवर्ड समान असणे आवश्यक आहे';

  @override
  String get showPassword => 'पासवर्ड दाखवा';

  @override
  String get hidePassword => 'पासवर्ड लपवा';

  @override
  String get savePassword => 'पासवर्ड जतन करा';

  @override
  String get backToSignIn => 'साइन इनवर परत जा';

  @override
  String get alreadyHaveAccount => 'माझे आधीच खाते आहे';

  @override
  String get getStarted => 'सुरुवात करा';

  @override
  String get acceptTerms => 'मी सेवा अटी आणि गोपनीयता धोरणाशी सहमत आहे';

  @override
  String get acceptTermsRequired => 'पुढे जाण्यासाठी कृपया स्वीकारा';

  @override
  String get passwordStrengthTooShort => 'खूप छोटा';

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
      'चिन्हांनी भरलेल्या छोट्या पासवर्डपेक्षा तुम्हाला लक्षात राहील असा मोठा वाक्यांश अधिक चांगला. तुम्ही इतरत्र आधीच वापरत असलेली माहिती टाळा.';

  @override
  String get authInvalidCredentials =>
      'हा ईमेल आणि पासवर्ड कोणत्याही खात्याशी जुळत नाही';

  @override
  String get authEmailNotConfirmed =>
      'साइन इन करण्यापूर्वी तुमच्या ईमेल पत्त्याची पुष्टी करा';

  @override
  String get authEmailAlreadyRegistered => 'या ईमेलसह खाते आधीच अस्तित्वात आहे';

  @override
  String get authWeakPassword => 'अधिक लांब पासवर्ड निवडा';

  @override
  String get authRateLimited =>
      'खूप प्रयत्न झाले. काही मिनिटांनी पुन्हा प्रयत्न करा';

  @override
  String get authNetworkError =>
      'कनेक्शन नाही. तुमचे नेटवर्क तपासा आणि पुन्हा प्रयत्न करा';

  @override
  String get authGenericError => 'काहीतरी चूक झाली. कृपया पुन्हा प्रयत्न करा';

  @override
  String get confirmEmailTitle => 'तुमचा ईमेल तपासा';

  @override
  String confirmEmailBody(String email) {
    return 'तुम्ही तुमचे खाते सेट करणे पूर्ण करण्यासाठी $email वर पुष्टीकरण लिंक पाठवली आहे.';
  }

  @override
  String get resendConfirmation => 'पुष्टीकरण ईमेल पुन्हा पाठवा';

  @override
  String get confirmationResent => 'पुष्टीकरण ईमेल पाठवला';

  @override
  String get forgotPasswordTitle => 'तुमचा पासवर्ड रीसेट करा';

  @override
  String get forgotPasswordSubtitle =>
      'तुम्ही ज्या ईमेलने नोंदणी केली तो ईमेल भरा आणि नवीन पासवर्ड निवडण्यासाठी आम्ही तुम्हाला लिंक पाठवू.';

  @override
  String get sendResetLink => 'रीसेट लिंक पाठवा';

  @override
  String get resetLinkSentTitle => 'रीसेट लिंक पाठवली';

  @override
  String resetLinkSentBody(String email) {
    return '$email चे खाते असल्यास, रीसेट लिंक लवकरच पोहोचेल.';
  }

  @override
  String get resetLinkSentHint =>
      'ही लिंक एका तासात कालबाह्य होईल. ती आली नाही तर पुन्हा मागण्यापूर्वी तुमचा स्पॅम फोल्डर तपासा.';

  @override
  String get tryAnotherEmail => 'वेगळा ईमेल वापरा';

  @override
  String get resetPasswordTitle => 'नवीन पासवर्ड निवडा';

  @override
  String get resetPasswordSubtitle =>
      'या खात्यावर यापूर्वी न वापरलेला पासवर्ड निवडा.';

  @override
  String get passwordChangedTitle => 'पासवर्ड अद्यतनित केला';

  @override
  String get passwordChangedBody =>
      'तुमचा नवीन पासवर्ड जतन केला आहे. तुम्ही साइन इन केलेले असून पुढे जाण्यास तयार आहात.';

  @override
  String get demoModeHint => 'डेमो आवृत्ती — खाते आवश्यक नाही';

  @override
  String get demoModeFill => 'भरा';

  @override
  String get welcomeTrackTitle => 'तुमचे पैसे कुठे जातात ते पहा';

  @override
  String get welcomeTrackBody =>
      'येणाऱ्या आणि जाणाऱ्या पैशांची नोंद करा. RainyPenny त्याचे तुम्हाला सहज समजेल असे चित्र तयार करते.';

  @override
  String get welcomeBudgetTitle => 'टिकणाऱ्या मर्यादा ठरवा';

  @override
  String get welcomeBudgetBody =>
      'तुमच्या खर्चाच्या प्रत्येक भागासाठी मासिक मर्यादा ठरवा आणि मर्यादा ओलांडल्यानंतर नव्हे तर आधी सूचना मिळवा.';

  @override
  String get welcomeGoalsTitle => 'महत्त्वाच्या गोष्टींसाठी बचत करा';

  @override
  String get welcomeGoalsBody =>
      'उद्दिष्टाला नाव द्या, लक्ष्य ठरवा आणि ते भरताना पहा. पावसाळ्याच्या दिवसासाठी निधी तयार करणे सोपे होते जेव्हा त्याची प्रगती दिसते.';

  @override
  String get welcomePrivacyTitle => 'तुमचे पैसे तुमचेच राहतात';

  @override
  String get welcomePrivacyBody =>
      'तुमची आर्थिक माहिती फक्त तुमची आहे. काहीही विकले जात नाही आणि कोणासोबतही शेअर केले जात नाही.';

  @override
  String stepOf(int step, int total) {
    return '$total पैकी $step पायरी';
  }

  @override
  String get onboardingNameTitle => 'तुम्हाला काय म्हणावे?';

  @override
  String get onboardingNameBody =>
      'आम्ही हे नाव तुम्हाला अभिवादन करण्यासाठी वापरू, इतर कुठेही नाही.';

  @override
  String get onboardingNameHint =>
      'पहिले नाव पुरेसे आहे. तुम्ही ते नंतर बदलू शकता.';

  @override
  String get onboardingCurrencyTitle => 'तुम्ही कोणते चलन वापरता?';

  @override
  String get onboardingCurrencyBody =>
      'अॅपमधील प्रत्येक रक्कम या चलनात दाखवली जाईल. ते निवडल्याने कोणतीही रक्कम रूपांतरित होत नाही.';

  @override
  String get onboardingCurrencySearch => 'सर्व चलने शोधा';

  @override
  String get onboardingAppearanceTitle => 'ते तुमच्या आवडीनुसार बनवा';

  @override
  String get onboardingAppearanceBody =>
      'एक लूक निवडा. तुम्ही टॅप करताच सर्वकाही बदलेल आणि तुम्ही कधीही त्यावर परत येऊ शकता.';

  @override
  String get onboardingNotificationsTitle => 'लक्ष ठेवत राहा';

  @override
  String get onboardingNotificationsBody =>
      'योग्य वेळी मिळणारे शांत स्मरणपत्र हेच याला सवय बनवते.';

  @override
  String get onboardingNotifyReminders =>
      'तुम्ही केलेला खर्च नोंदवण्यासाठी सौम्य स्मरणपत्र';

  @override
  String get onboardingNotifyBudget => 'अर्थसंकल्प संपण्यापूर्वी सूचना';

  @override
  String get onboardingNotifySummary =>
      'तुमचे पैसे कुठे गेले याचा साप्ताहिक आढावा';

  @override
  String get onboardingNotifyEnable => 'सूचना सुरू करा';

  @override
  String get onboardingNotifyDone => 'सूचना सेटिंग्ज जतन केल्या';

  @override
  String get onboardingNotifyLater =>
      'तुम्ही हे सर्व कधीही सेटिंग्जमध्ये बदलू शकता.';

  @override
  String get onboardingReadyTitle => 'तुमचे सर्व सेट आहे';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'तुमचे सर्व सेट आहे, $name';
  }

  @override
  String get onboardingReadyBody =>
      'सेटअप पूर्ण झाला. सर्वकाही कसे कार्य करते याचा झटपट फेरफटका पाहायचा आहे का?';

  @override
  String get onboardingTakeTour => 'मला दाखवा';

  @override
  String get onboardingGoToApp => 'अॅपवर जा';

  @override
  String get onboardingTourLater =>
      'आत्ता नको? तुम्हाला हवे तेव्हा मार्गदर्शक सेटिंग्जमध्ये उपलब्ध आहे.';

  @override
  String get beginnersGuide => 'नवशिक्यांसाठी मार्गदर्शक';

  @override
  String get guideFinish => 'पूर्ण करा';

  @override
  String chapterOf(int number, int total) {
    return '$total पैकी $number अध्याय';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen उघडा';
  }

  @override
  String get guideDashboardTitle => 'तुमचे डॅशबोर्ड';

  @override
  String get guideDashboardBody =>
      'सर्वकाही येथे उघडते. वरचे कार्ड तुमच्याकडे किती शिल्लक आहे ते दाखवते; त्याखाली या कालावधीतील आलेली आणि गेलेली रक्कम, त्यानंतर खर्च, अर्थसंकल्प आणि उद्दिष्टे दिसतात.';

  @override
  String get guideDashboardTip1 =>
      'सर्वकाही एकाच वेळी रिफ्रेश करण्यासाठी स्क्रीन खाली ओढा.';

  @override
  String get guideDashboardTip2 =>
      'त्या यादीवर जाण्यासाठी उत्पन्न किंवा खर्चाच्या कार्डवर टॅप करा.';

  @override
  String get guideDashboardTip3 =>
      'तुम्ही काही नोंदवताच रिंग आणि अंतर्दृष्टी अद्यतनित होतात.';

  @override
  String get guideAddTitle => 'पैशांची नोंद करणे';

  @override
  String get guideAddBody =>
      'बारच्या मध्यभागी असलेले बटण सर्वकाही सुरू करण्याचे ठिकाण आहे. त्यातून एक छोटा मेनू उघडतो: पैसे बाहेर, पैसे आत, कर्ज, अर्थसंकल्प किंवा बचतीचे उद्दिष्ट.';

  @override
  String get guideAddTip1 =>
      'पैसे आले किंवा गेले की त्याची नोंद करण्यासाठी मध्यभागी असलेल्या बटणावर टॅप करा.';

  @override
  String get guideAddTip2 =>
      'नवीन खर्चाकडे थेट जाण्यासाठी ते दाबून ठेवा आणि मेनू वगळा.';

  @override
  String get guideAddTip3 =>
      'नेहमी श्रेणी निवडा — यामुळेच चार्ट आणि अर्थसंकल्प व्यवस्थित काम करतात.';

  @override
  String get guideCategoriesTitle => 'श्रेणी';

  @override
  String get guideCategoriesBody =>
      'खर्चाचे गट तयार करण्यासाठी श्रेणी वापरल्या जातात. अॅपसोबत येणाऱ्या श्रेणी बहुतेक लोकांच्या गरजा पूर्ण करतात आणि तुम्ही त्यांची नावे बदलू शकता किंवा स्वतःच्या श्रेणी जोडू शकता.';

  @override
  String get guideCategoriesTip1 =>
      'श्रेणी बदलण्यासाठी किंवा जोडण्यासाठी सेटिंग्ज, नंतर श्रेणी व्यवस्थापित करा येथे जा.';

  @override
  String get guideCategoriesTip2 =>
      'श्रेणी न दिलेली कोणतीही गोष्ट इतरमध्ये जाते, त्यामुळे चार्ट अचूक राहतात.';

  @override
  String get guideBudgetTitle => 'अर्थसंकल्प';

  @override
  String get guideBudgetBody =>
      'अर्थसंकल्प म्हणजे एका श्रेणीसाठीची मासिक कमाल मर्यादा. खर्च करताना पट्टी भरते आणि मर्यादा जवळ आल्यावर बदलते, त्यामुळे मर्यादा ओलांडण्यापूर्वी तुम्हाला कळते.';

  @override
  String get guideBudgetTip1 =>
      'सर्व श्रेणी एकाच वेळी न करता दोन किंवा तीन श्रेणींपासून सुरुवात करा.';

  @override
  String get guideBudgetTip2 =>
      'तुम्ही नेहमी करता त्या खर्चापेक्षा थोडी जास्त मर्यादा ठरवा आणि नंतर ती कमी करा.';

  @override
  String get guideBudgetTip3 =>
      'अर्थसंकल्पाचे इशारे सुरू ठेवा आणि एखाद्या अर्थसंकल्पाची रक्कम कमी होताच अॅप तुम्हाला सूचित करेल.';

  @override
  String get guideSavingsTitle => 'बचतीची उद्दिष्टे';

  @override
  String get guideSavingsBody =>
      'तुम्ही कशासाठी बचत करत आहात त्याला नाव द्या, लक्ष्य आणि तारीख ठरवा आणि ते गाठण्यासाठी दर महिन्याला किती रक्कम बाजूला ठेवावी लागेल हे अॅप मोजेल.';

  @override
  String get guideSavingsTip1 =>
      'अस्पष्टपणे बचत करण्याच्या इच्छेपेक्षा नाव दिलेले उद्दिष्ट पूर्ण करणे सोपे जाते.';

  @override
  String get guideSavingsTip2 =>
      'एका मोठ्या उद्दिष्टापेक्षा अनेक छोटी उद्दिष्टे अधिक वेळा पूर्ण होतात.';

  @override
  String get guideLoansTitle => 'कर्जे आणि देणी';

  @override
  String get guideLoansBody =>
      'तुम्ही किती देणे लागता, त्याची किंमत किती आहे आणि पुढील देयक कधी आहे ते नोंदवा. तुम्ही फेडत असलेली सर्व कर्जे एका यादीत आणि उर्वरित एकूण रकमेसह दिसतात.';

  @override
  String get guideLoansTip1 =>
      'देय तारीख जोडा आणि देयक स्मरणपत्रे त्याची आठवण करून देतील.';

  @override
  String get guideLoansTip2 =>
      'कर्जाची मुदत उलटल्यास ते फेडेपर्यंत डॅशबोर्डवर लाल रंगात दिसेल.';

  @override
  String get guideReportsTitle => 'अहवाल';

  @override
  String get guideReportsBody =>
      'सखोल आढावा: उत्पन्न विरुद्ध खर्च, श्रेणीनुसार खर्च, तुमचे अर्थसंकल्प किती चांगले टिकले आणि तुम्ही उत्पन्नातील किती हिस्सा बचत केला.';

  @override
  String get guideReportsTip1 =>
      'स्क्रीनच्या वरून आठवडा, महिना आणि तिमाही यांमध्ये बदला.';

  @override
  String get guideReportsTip2 =>
      'PDF निर्यात किंवा शेअर करा — तो तुमच्या स्वतःच्या भाषेत आणि दिशेत तयार होईल.';

  @override
  String get guideSettingsTitle => 'सेटिंग्ज';

  @override
  String get guideSettingsBody =>
      'भाषा, चलन, रंग आणि इशारे येथे आहेत. सेटअपनंतर यापैकी काहीही कायमचे निश्चित नसते — तुम्ही ते कधीही बदलू शकता.';

  @override
  String get guideSettingsTip1 =>
      'चाळीस भाषा आणि उजवीकडून डावीकडे लिहिणाऱ्या भाषांसाठी संपूर्ण लेआउट आरशासारखे उलटते.';

  @override
  String get guideSettingsTip2 =>
      'तुम्हाला हवे असलेले इशारे आणि ते कोणत्या वेळेत येऊ शकतात ते निवडा.';

  @override
  String get guideSettingsTip3 => 'शांत वेळ सर्व सूचना सकाळपर्यंत थांबवते.';

  @override
  String get guideHabitTitle => 'ही सवय बनवा';

  @override
  String get guideHabitBody =>
      'अॅप तेव्हाच उपयुक्त आहे जेव्हा तुम्ही त्यात माहिती भरता. महिन्यातून एकदा तासभर देण्यापेक्षा दररोज एक मिनिट देणे चांगले आणि दोन आठवड्यांनंतर आकडे तुम्हाला काहीतरी सांगू लागतात.';

  @override
  String get guideHabitTip1 =>
      'आठवड्याच्या शेवटी नोंद करण्याऐवजी खर्च करतानाच नोंदवा.';

  @override
  String get guideHabitTip2 =>
      'दिवसातून एकदा डॅशबोर्ड पहा. दहा सेकंद पुरेसे आहेत.';

  @override
  String get guideHabitTip3 =>
      'हा मार्गदर्शक सेटिंग्जमध्येच राहतो — तुम्हाला हवे तेव्हा पुन्हा या.';

  @override
  String get appearance => 'दिसणे';

  @override
  String get themeCaption => 'फिकट, गडद किंवा तुमच्या फोनवर जे सुरू आहे ते.';

  @override
  String get accentColor => 'अॅक्सेंट रंग';

  @override
  String get accentColorCaption => 'बटणे, हायलाइट आणि चार्टचे रंग ठरवतो.';

  @override
  String get accentSemanticsNote =>
      'प्रत्येक थीममध्ये पैसे येणे आणि पैसे जाणे यांचे स्वतःचे रंग कायम राहतात, त्यामुळे अॅक्सेंट बदलल्याने एखाद्या रकमेचा अर्थ बदलत नाही.';

  @override
  String get accentTeal => 'टील';

  @override
  String get accentGreen => 'हिरवा';

  @override
  String get accentSky => 'आकाशी';

  @override
  String get accentBlue => 'निळा';

  @override
  String get accentIndigo => 'इंडिगो';

  @override
  String get accentViolet => 'जांभळा';

  @override
  String get accentPink => 'गुलाबी';

  @override
  String get accentCrimson => 'क्रिमसन';

  @override
  String get accentOrange => 'नारिंगी';

  @override
  String get accentSlate => 'स्लेट';

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
      'इंग्रजीतील नाव किंवा दोन-अक्षरी कोड वापरून पहा.';

  @override
  String get rightToLeft => 'उजवीकडून डावीकडे';

  @override
  String get replayGuide => 'मार्गदर्शक पुन्हा पहा';

  @override
  String get replaySetup => 'सेटअप पुन्हा करा';

  @override
  String get replaySetupBody =>
      'पहिल्यांदा विचारलेले प्रश्न पुन्हा पूर्ण करा. तुम्ही नोंदवलेली कोणतीही माहिती हटवली जाणार नाही.';

  @override
  String get rateTitle => 'RainyPenny आवडत आहे?';

  @override
  String get rateBody =>
      'तुम्ही काही काळापासून हे नियमित करत आहात. रेटिंग देण्यासाठी एक क्षण लागतो आणि इतरांना अॅप शोधण्यात मदत होते.';

  @override
  String get rateAction => 'अॅपला रेटिंग द्या';

  @override
  String get rateLater => 'नंतर कदाचित';

  @override
  String get rateNever => 'नको धन्यवाद';

  @override
  String get rateThanks => 'धन्यवाद';

  @override
  String get monthlySalary => 'मासिक पगार';

  @override
  String get remainingAmount => 'उर्वरित';

  @override
  String get carriedForward => 'मागील चक्रातून पुढे आलेली रक्कम';

  @override
  String get carriedForwardHint => 'मागील चक्रातून उरलेली रक्कम';

  @override
  String get totalSpending => 'एकूण खर्च';

  @override
  String get salaryCycle => 'पगार चक्र';

  @override
  String get payday => 'पगाराचा दिवस';

  @override
  String get paydayDescription =>
      'तुमचा पगार ज्या दिवशी येतो तो दिवस. तुमचा आर्थिक महिना या दिवसापासून पुढील पगाराच्या आदल्या दिवसापर्यंत असतो.';

  @override
  String get paydayUpdated => 'पगाराचा दिवस अद्यतनित केला';

  @override
  String paydayDayOfMonth(int day) {
    return 'दिवस $day';
  }

  @override
  String get paydayShortMonthNote =>
      'लहान महिन्यांमध्ये चक्र त्याऐवजी त्या महिन्याच्या शेवटच्या दिवशी सुरू होते.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'पगाराच्या दिवसाला $count दिवस बाकी',
      one: 'पगाराच्या दिवसाला १ दिवस बाकी',
      zero: 'चक्राचा शेवटचा दिवस',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'पुढील पगाराचा दिवस';

  @override
  String get spentSoFar => 'आतापर्यंत खर्च';

  @override
  String get dailyAllowance => 'दररोज सुरक्षितपणे खर्च करता येणारी रक्कम';

  @override
  String get overspentNotice =>
      'या चक्रात आलेल्या रकमेपेक्षा तुम्ही जास्त खर्च केला आहे.';

  @override
  String get backToThisMonth => 'या महिन्यावर परत जा';

  @override
  String get cycleRangeLabel => 'चक्र';

  @override
  String get noSalaryRecorded => 'अजून पगार नोंदवलेला नाही';

  @override
  String get addSalaryAction => 'तुमचा पगार जोडा';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'उत्कृष्ट';

  @override
  String get healthGood => 'चांगले';

  @override
  String get healthFair => 'ठीक';

  @override
  String get healthNeedsWork => 'सुधारणा आवश्यक';

  @override
  String get healthExcellentBody =>
      'तुम्ही चांगली बचत करत आहात आणि तुमच्या अर्थसंकल्पाच्या आत राहात आहात.';

  @override
  String get healthGoodBody => 'या कालावधीत तुमचा खर्च योग्य मार्गावर आहे.';

  @override
  String get healthFairBody =>
      'काही अर्थसंकल्पांमध्ये खर्च वेगाने वाढत आहे. छोटे बदल मदत करतील.';

  @override
  String get healthNeedsWorkBody =>
      'तुमचा खर्च तुमच्या योजनेपेक्षा वेगाने वाढत आहे. सर्वात मोठ्या श्रेणीपासून सुरुवात करा.';

  @override
  String get factorSavingsRate => 'बचत दर';

  @override
  String get factorBudgetControl => 'अर्थसंकल्प नियंत्रण';

  @override
  String get factorDebtLoad => 'कर्जाचा भार';

  @override
  String get factorSpendingTrend => 'खर्चाचा कल';

  @override
  String factorKept(String percent) {
    return '$percent% शिल्लक ठेवले';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% वापरले';
  }

  @override
  String factorOfIncome(String percent) {
    return 'उत्पन्नाच्या $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% वाढ';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% घट';
  }

  @override
  String get howScoreWorks => 'हा स्कोअर कसा काम करतो';

  @override
  String get healthScoreExplainer =>
      'तुमचा स्कोअर चार गोष्टींचे मिश्रण आहे: तुम्ही तुमच्या उत्पन्नापैकी किती रक्कम शिल्लक ठेवता, तुम्ही तुमच्या अर्थसंकल्पाच्या आत किती चांगले राहता, तुमच्या उत्पन्नापैकी किती हिस्सा कर्जासाठी जातो आणि तुमचा खर्च वाढत आहे की कमी होत आहे.';

  @override
  String scoreWeightLabel(int percent) {
    return 'स्कोअरपैकी $percent%';
  }

  @override
  String get viewHealthDetails => 'तपशीलवार आढावा पहा';

  @override
  String get saveChanges => 'बदल जतन करा';

  @override
  String get profileUpdated => 'प्रोफाइल अद्यतनित केले';

  @override
  String get changePhoto => 'फोटो बदला';

  @override
  String get removePhoto => 'फोटो काढा';

  @override
  String get personalInformationIntro =>
      'तुमचे नाव आणि फोटो संपूर्ण अॅपमध्ये दिसतील. तुमचा ईमेल हा तुम्ही साइन इन करण्यासाठी वापरत असलेला पत्ता आहे.';

  @override
  String get emailNotEditable =>
      'तुम्ही साइन इन करण्यासाठी वापरत असलेला पत्ता बदलण्यासाठी समर्थनाशी संपर्क साधा.';

  @override
  String get pressBackAgainToExit => 'बाहेर पडण्यासाठी पुन्हा मागे दाबा';

  @override
  String get categoryHousing => 'निवास';

  @override
  String get categoryFood => 'अन्न व जेवण';

  @override
  String get categoryTransport => 'वाहतूक';

  @override
  String get categoryShopping => 'खरेदी';

  @override
  String get categoryBills => 'बिले व उपयोगिता';

  @override
  String get categoryEntertainment => 'मनोरंजन';

  @override
  String get categoryHealth => 'आरोग्य व फिटनेस';

  @override
  String get categoryEducation => 'शिक्षण';

  @override
  String get categoryTravel => 'प्रवास';

  @override
  String get categorySalary => 'पगार';

  @override
  String get categoryFreelance => 'फ्रीलान्स';

  @override
  String get categoryInvestments => 'गुंतवणूक';

  @override
  String get categoryGift => 'भेट';

  @override
  String get categoryOther => 'इतर';

  @override
  String get categoryGroceries => 'किराणा';

  @override
  String get categoryDining => 'बाहेरचे जेवण';

  @override
  String get categoryCoffee => 'कॉफी';

  @override
  String get categoryUtilities => 'उपयोगिता';

  @override
  String get categoryInternet => 'इंटरनेट';

  @override
  String get categoryPhone => 'फोन';

  @override
  String get categoryInsurance => 'विमा';

  @override
  String get categorySubscriptions => 'सदस्यता';

  @override
  String get categoryPersonalCare => 'वैयक्तिक निगा';

  @override
  String get categoryClothing => 'कपडे';

  @override
  String get categoryElectronics => 'इलेक्ट्रॉनिक्स';

  @override
  String get categoryHomeSupplies => 'घरगुती साहित्य';

  @override
  String get categoryPets => 'पाळीव प्राणी';

  @override
  String get categoryChildcare => 'बालसंगोपन';

  @override
  String get categoryFamily => 'कुटुंब';

  @override
  String get categoryFitness => 'फिटनेस';

  @override
  String get categorySports => 'क्रीडा';

  @override
  String get categoryMedicine => 'औषधे';

  @override
  String get categoryMedical => 'वैद्यकीय';

  @override
  String get categoryCharity => 'धर्मादाय';

  @override
  String get categoryTaxes => 'कर';

  @override
  String get categoryFees => 'शुल्क';

  @override
  String get categoryDebt => 'कर्ज';

  @override
  String get categorySavings => 'बचत';

  @override
  String get categoryRepairs => 'दुरुस्ती';

  @override
  String get categoryCarMaintenance => 'कार देखभाल';

  @override
  String get categoryFuel => 'इंधन';

  @override
  String get categoryParking => 'पार्किंग';

  @override
  String get categoryPublicTransport => 'सार्वजनिक वाहतूक';

  @override
  String get categoryRent => 'भाडे';

  @override
  String get categoryMortgage => 'गृहकर्ज';

  @override
  String get categoryBonus => 'बोनस';

  @override
  String get categoryCommission => 'कमिशन';

  @override
  String get categoryPension => 'पेन्शन';

  @override
  String get categoryInterest => 'व्याज';

  @override
  String get categoryDividends => 'लाभांश';

  @override
  String get categoryCashback => 'कॅशबॅक';

  @override
  String get categoryRefund => 'परतावा';

  @override
  String get categoryRentalIncome => 'भाड्याचे उत्पन्न';

  @override
  String get addCategory => 'नवीन श्रेणी';

  @override
  String get filterByCategory => 'श्रेणीनुसार फिल्टर करा';

  @override
  String get allCategories => 'सर्व श्रेणी';

  @override
  String get clearFilters => 'फिल्टर साफ करा';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'सर्व काळ';

  @override
  String get customRange => 'सानुकूल';

  @override
  String get selectDateRange => 'कालावधी निवडा';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end दाखवत आहे';
  }

  @override
  String get loans => 'कर्जे';

  @override
  String get debts => 'देणी';

  @override
  String get noLoansTitle => 'कोणतीही कर्जे नाहीत';

  @override
  String get noLoansBody => 'तुमच्याकडे कोणतीही सक्रिय कर्जे नाहीत.';

  @override
  String get emptyHealthTitle => 'अजून आर्थिक स्कोअर नाही';

  @override
  String get emptyHealthDescription =>
      'अचूक आर्थिक आरोग्य स्कोअर मोजण्यासाठी आम्हाला थोडी आर्थिक माहिती आवश्यक आहे.';

  @override
  String get emptyHealthAddTransactions => 'उत्पन्न किंवा खर्चाचे व्यवहार जोडा';

  @override
  String get emptyHealthSetBudgets => 'तुमचे मासिक अर्थसंकल्प सेट करा';

  @override
  String get emptyHealthTrackLoans => 'कर्जे किंवा देणी ट्रॅक करा (ऐच्छिक)';

  @override
  String get emptyHealthCardSubtitle =>
      'तुमचा स्कोअर मोजण्यासाठी आणि अंतर्दृष्टी मिळवण्यासाठी व्यवहार जोडा.';

  @override
  String get smartBudgetSplit => 'स्मार्ट अर्थसंकल्प विभागणी';

  @override
  String get smartBudgetSplitSubtitle =>
      'शिफारस केलेल्या मर्यादा मोजण्यासाठी तुमचा मासिक पगार भरा';

  @override
  String get monthlyNetSalary => 'मासिक निव्वळ पगार';

  @override
  String get categoryAllocations => 'श्रेणी वाटप';

  @override
  String totalBudgeted(String amount) {
    return 'एकूण: $amount';
  }

  @override
  String get applyAllBudgets => 'सर्व अर्थसंकल्प लागू करा';

  @override
  String get applyingBudgets => 'अर्थसंकल्प लागू करत आहे...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count श्रेणींचे अर्थसंकल्प तयार केले.',
      one: '१ श्रेणीचा अर्थसंकल्प तयार केला.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'अर्थसंकल्प जतन करता आले नाहीत.';

  @override
  String get recommendedBudget => 'शिफारस केलेला अर्थसंकल्प';
}
