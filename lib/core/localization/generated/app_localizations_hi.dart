// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppL10nHi extends AppL10n {
  AppL10nHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'बुरे समय के लिए बचत करें';

  @override
  String get navHome => 'होम';

  @override
  String get navTransactions => 'लेन-देन';

  @override
  String get navAdd => 'जोड़ें';

  @override
  String get navReports => 'रिपोर्ट';

  @override
  String get navProfile => 'प्रोफ़ाइल';

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
    return 'शुभ संध्या, $name';
  }

  @override
  String get greetingSubtitle => 'यहाँ आपकी वित्तीय स्थिति का अवलोकन है';

  @override
  String get totalBalance => 'कुल शेष राशि';

  @override
  String get vsLastPeriod => 'पिछली अवधि की तुलना में';

  @override
  String get income => 'आय';

  @override
  String get expenses => 'खर्च';

  @override
  String get netBalance => 'शुद्ध शेष राशि';

  @override
  String get lastThirtyDays => 'पिछले 30 दिन';

  @override
  String get quickActions => 'त्वरित कार्रवाइयाँ';

  @override
  String get addIncome => 'आय जोड़ें';

  @override
  String get addExpense => 'खर्च जोड़ें';

  @override
  String get spendingOverview => 'खर्च का अवलोकन';

  @override
  String get recentTransactions => 'हाल के लेन-देन';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get viewAll => 'सभी देखें';

  @override
  String get budgetProgress => 'बजट की प्रगति';

  @override
  String get savingsGoals => 'बचत लक्ष्य';

  @override
  String get financialInsight => 'वित्तीय जानकारी';

  @override
  String get financialHealth => 'वित्तीय स्थिति';

  @override
  String ofTotal(String total) {
    return '$total में से';
  }

  @override
  String get searchTransactions => 'लेन-देन खोजें';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterIncome => 'आय';

  @override
  String get filterExpenses => 'खर्च';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get noTransactionsTitle => 'कोई लेन-देन नहीं मिला';

  @override
  String get noTransactionsBody =>
      'अपनी गतिविधि देखने के लिए कोई दूसरा खोज शब्द या फ़िल्टर आज़माएँ।';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लेन-देन',
      one: '1 लेन-देन',
      zero: 'कोई लेन-देन नहीं',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'लेन-देन जोड़ें';

  @override
  String get amount => 'राशि';

  @override
  String get category => 'श्रेणी';

  @override
  String get date => 'तारीख';

  @override
  String get note => 'नोट';

  @override
  String get noteHint => 'वैकल्पिक नोट';

  @override
  String get saveIncome => 'आय सहेजें';

  @override
  String get saveExpense => 'खर्च सहेजें';

  @override
  String get selectCategory => 'श्रेणी चुनें';

  @override
  String get transactionSaved => 'लेन-देन सहेजा गया';

  @override
  String get amountRequired => 'शून्य से अधिक राशि दर्ज करें';

  @override
  String get titleRequired => 'इस लेन-देन का नाम दें';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे किराने का सामान';

  @override
  String get budget => 'बजट';

  @override
  String get budgets => 'बजट';

  @override
  String get totalBudget => 'कुल बजट';

  @override
  String get spent => 'खर्च किया गया';

  @override
  String get remaining => 'शेष';

  @override
  String budgetUsed(int percent) {
    return '$percent% उपयोग हुआ';
  }

  @override
  String get onTrack => 'सही दिशा में';

  @override
  String get approachingLimit => 'सीमा करीब है';

  @override
  String get overBudget => 'बजट से अधिक';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'आपके लक्ष्य';

  @override
  String get saved => 'सहेजी गई राशि';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'मासिक';

  @override
  String get addFunds => 'राशि जोड़ें';

  @override
  String get goalComplete => 'लक्ष्य पूरा हुआ';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महीने बाकी',
      one: '1 महीना बाकी',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ऋण और कर्ज़';

  @override
  String get totalOutstanding => 'कुल बकाया';

  @override
  String get monthlyPayment => 'मासिक';

  @override
  String get nextPayment => 'अगला भुगतान';

  @override
  String paidOff(int percent) {
    return '$percent% चुकाया गया';
  }

  @override
  String get interestRate => 'ब्याज';

  @override
  String get upcomingPayments => 'आगामी भुगतान';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनों में देय',
      one: 'कल देय',
      zero: 'आज देय',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'अतिदेय';

  @override
  String get reports => 'रिपोर्ट';

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'महीना';

  @override
  String get quarter => 'तिमाही';

  @override
  String get incomeVsExpenses => 'आय बनाम खर्च';

  @override
  String get spendingByCategory => 'श्रेणी के अनुसार खर्च';

  @override
  String get budgetPerformance => 'बजट का प्रदर्शन';

  @override
  String get insights => 'जानकारियाँ';

  @override
  String get savingsRate => 'बचत दर';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get account => 'खाता';

  @override
  String get personalInformation => 'व्यक्तिगत जानकारी';

  @override
  String get changePassword => 'पासवर्ड बदलें';

  @override
  String get notifications => 'सूचनाएँ';

  @override
  String get preferences => 'प्राथमिकताएँ';

  @override
  String get language => 'भाषा';

  @override
  String get currency => 'मुद्रा';

  @override
  String get theme => 'थीम';

  @override
  String get security => 'सुरक्षा';

  @override
  String get privacyAndSecurity => 'गोपनीयता और सुरक्षा';

  @override
  String get help => 'सहायता';

  @override
  String get helpAndSupport => 'सहायता और समर्थन';

  @override
  String get termsAndConditions => 'नियम और शर्तें';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String memberSince(String date) {
    return '$date से सदस्य';
  }

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'हल्का';

  @override
  String get themeDark => 'गहरा';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get noNotificationsTitle => 'आप पूरी तरह अपडेट हैं';

  @override
  String get noNotificationsBody =>
      'नई जानकारियाँ और रिमाइंडर यहाँ दिखाई देंगे।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get done => 'हो गया';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get close => 'बंद करें';

  @override
  String get somethingWentWrong => 'कुछ गलत हो गया';

  @override
  String get comingSoon => 'पूर्ण रिलीज़ में जल्द आ रहा है';

  @override
  String get edit => 'संपादित करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get add => 'जोड़ें';

  @override
  String get create => 'बनाएँ';

  @override
  String get nameRequired => 'अपना नाम दर्ज करें';

  @override
  String get amountAboveZero => 'शून्य से अधिक राशि दर्ज करें';

  @override
  String get editTransaction => 'लेन-देन संपादित करें';

  @override
  String get deleteTransaction => 'लेन-देन हटाएँ?';

  @override
  String deleteTransactionBody(String title) {
    return '$title को आपके लेज़र से हटा दिया जाएगा।';
  }

  @override
  String get transactionDeleted => 'लेन-देन हटा दिया गया';

  @override
  String get transactionUpdated => 'लेन-देन अपडेट किया गया';

  @override
  String get newBudget => 'नया बजट';

  @override
  String get editBudget => 'बजट संपादित करें';

  @override
  String get budgetLimit => 'मासिक सीमा';

  @override
  String get deleteBudget => 'बजट हटाएँ?';

  @override
  String deleteBudgetBody(String category) {
    return '$category बजट हटा दिया जाएगा। आपके लेन-देन प्रभावित नहीं होंगे।';
  }

  @override
  String get budgetSaved => 'बजट सहेजा गया';

  @override
  String get budgetDeleted => 'बजट हटा दिया गया';

  @override
  String get allCategoriesBudgeted => 'हर श्रेणी के लिए पहले से बजट मौजूद है';

  @override
  String get noBudgetsTitle => 'अभी कोई बजट नहीं';

  @override
  String get noBudgetsBody =>
      'किसी श्रेणी पर मासिक सीमा तय करके उसकी निगरानी शुरू करें।';

  @override
  String get newGoal => 'नया लक्ष्य';

  @override
  String get editGoal => 'लक्ष्य संपादित करें';

  @override
  String get goalName => 'लक्ष्य का नाम';

  @override
  String get goalNameHint => 'जैसे आपातकालीन निधि';

  @override
  String get targetAmount => 'लक्ष्य राशि';

  @override
  String get alreadySaved => 'पहले से बचाई गई राशि';

  @override
  String get deleteGoal => 'लक्ष्य हटाएँ?';

  @override
  String deleteGoalBody(String name) {
    return '$name और उसकी प्रगति हटा दी जाएगी।';
  }

  @override
  String get goalSaved => 'लक्ष्य सहेजा गया';

  @override
  String get goalDeleted => 'लक्ष्य हटा दिया गया';

  @override
  String get noGoalsTitle => 'अभी कोई बचत लक्ष्य नहीं';

  @override
  String get noGoalsBody =>
      'एक लक्ष्य तय करें और RainyPenny आपकी प्रगति पर नज़र रखेगा।';

  @override
  String get fundsAdded => 'राशि जोड़ दी गई';

  @override
  String get newDebt => 'नया ऋण या कार्ड';

  @override
  String get editDebt => 'ऋण संपादित करें';

  @override
  String get debtName => 'नाम';

  @override
  String get debtNameHint => 'जैसे कार ऋण';

  @override
  String get lender => 'ऋणदाता';

  @override
  String get lenderHint => 'जैसे Meridian Bank';

  @override
  String get originalAmount => 'मूल राशि';

  @override
  String get creditLimit => 'क्रेडिट सीमा';

  @override
  String get remainingBalance => 'शेष बकाया';

  @override
  String get interestRatePercent => 'ब्याज दर (%)';

  @override
  String get kindLoan => 'ऋण';

  @override
  String get kindCreditCard => 'क्रेडिट कार्ड';

  @override
  String get recordPayment => 'भुगतान दर्ज करें';

  @override
  String get paymentRecorded => 'भुगतान दर्ज किया गया';

  @override
  String get deleteDebt => 'यह कर्ज़ हटाएँ?';

  @override
  String deleteDebtBody(String name) {
    return '$name को आपके कर्ज़ों से हटा दिया जाएगा।';
  }

  @override
  String get debtSaved => 'सहेजा गया';

  @override
  String get debtDeleted => 'हटा दिया गया';

  @override
  String get noDebtsTitle => 'कोई कर्ज़ दर्ज नहीं है';

  @override
  String get noDebtsBody =>
      'भुगतान पर नज़र रखने के लिए कोई ऋण या क्रेडिट कार्ड जोड़ें।';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject बजट से अधिक';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'इस अवधि में आप अपने $subject बजट से $amount अधिक खर्च कर चुके हैं।';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject अपनी सीमा के करीब है';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'आपके $subject बजट का $percent% उपयोग हो चुका है और $amount बाकी है।';
  }

  @override
  String get insightOverIncomeTitle => 'खर्च आय से अधिक है';

  @override
  String get insightOverIncomeBody =>
      'इस अवधि में आपने जितना कमाया उससे अधिक खर्च किया। स्थिति को फिर से संतुलित करने के लिए अपनी सबसे बड़ी खर्च श्रेणियों की समीक्षा करें।';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject का खर्च बढ़ा है';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'पिछली अवधि की तुलना में आपका $subject खर्च $percent% अधिक है।';
  }

  @override
  String get insightTrendDownTitle => 'खर्च घटने की दिशा में है';

  @override
  String insightTrendDownBody(int percent) {
    return 'पिछली अवधि की तुलना में कुल खर्च $percent% कम है।';
  }

  @override
  String get insightTrendUpTitle => 'खर्च बढ़ने की दिशा में है';

  @override
  String insightTrendUpBody(int percent) {
    return 'पिछली अवधि की तुलना में कुल खर्च $percent% अधिक है।';
  }

  @override
  String get insightSavingsStrongTitle => 'इस अवधि में अच्छी बचत';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'आपने अपनी आय का $percent% बचाकर रखा — $target% के लक्ष्य से काफी अधिक।';
  }

  @override
  String get insightSavingsLowTitle => 'बचत दर लक्ष्य से कम है';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'इस अवधि में आपने अपनी आय का $percent% बचाया। $target% का लक्ष्य रखें।';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject लगभग पूरा हो गया है';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject तक पहुँचने के लिए केवल $amount बाकी है।';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject के लिए प्रगति सही दिशा में है';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months महीनों',
      one: '1 महीने',
    );
    return 'हर महीने $amount बचाने पर आप यह लक्ष्य $_temp0 में पूरा कर लेंगे।';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject का भुगतान अतिदेय है';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिनों',
      one: '1 दिन',
    );
    return '$subject का $amount का भुगतान $_temp0 से अतिदेय है।';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject का भुगतान जल्द देय है';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिनों में',
      one: 'कल',
      zero: 'आज',
    );
    return '$amount का भुगतान $_temp0 देय है।';
  }

  @override
  String get signIn => 'साइन इन करें';

  @override
  String get signUp => 'खाता बनाएँ';

  @override
  String get signInSubtitle =>
      'वापसी पर स्वागत है। आपका पैसा आपका इंतज़ार कर रहा है।';

  @override
  String get signUpSubtitle => 'कुछ जानकारी दें और आप तैयार हैं।';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get passwordHint => 'कम से कम 8 अक्षर';

  @override
  String get fullNameLabel => 'पूरा नाम';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get resetSent => 'रीसेट लिंक के लिए अपना इनबॉक्स देखें';

  @override
  String get noAccountYet => 'यहाँ नए हैं?';

  @override
  String get haveAccount => 'क्या आपका पहले से खाता है?';

  @override
  String get emailInvalid => 'मान्य ईमेल पता दर्ज करें';

  @override
  String get passwordTooShort => 'कम से कम 8 अक्षरों का उपयोग करें';

  @override
  String get signOutConfirm => 'साइन आउट करें?';

  @override
  String get signOutBody =>
      'अपनी वित्तीय जानकारी देखने के लिए आपको फिर से साइन इन करना होगा।';

  @override
  String get dataSource => 'डेटा स्रोत';

  @override
  String get insightWeeklySummaryTitle => 'आपके सप्ताह की समीक्षा';

  @override
  String get insightWeeklySummaryBody =>
      'देखें कि इस सप्ताह आपका पैसा कहाँ गया और आपके बजट कितने नियंत्रण में रहे।';

  @override
  String get notificationSettings => 'सूचनाएँ';

  @override
  String get alertsSection => 'अलर्ट';

  @override
  String get budgetAlerts => 'बजट अलर्ट';

  @override
  String get budgetAlertsBody =>
      'जब कोई बजट अपनी सीमा के करीब पहुँचे या उसे पार करे';

  @override
  String get paymentReminders => 'भुगतान रिमाइंडर';

  @override
  String get paymentRemindersBody => 'भुगतान की देय तारीख से कुछ दिन पहले';

  @override
  String get savingsUpdates => 'बचत अपडेट';

  @override
  String get savingsUpdatesBody => 'आपके लक्ष्यों की प्रगति';

  @override
  String get weeklySummaryLabel => 'साप्ताहिक सारांश';

  @override
  String get weeklySummaryBody => 'बीते सप्ताह का संक्षिप्त विवरण';

  @override
  String get scheduleSection => 'समय';

  @override
  String get reminderTime => 'रिमाइंडर का समय';

  @override
  String get quietHours => 'शांत समय';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'सारांश का दिन';

  @override
  String get permissionRequired => 'सूचनाएँ बंद हैं';

  @override
  String get permissionRequiredBody =>
      'सूचनाओं की अनुमति दें ताकि RainyPenny बजट या भुगतान नियंत्रण से बाहर होने से पहले आपको चेतावनी दे सके।';

  @override
  String get allowNotifications => 'सूचनाओं की अनुमति दें';

  @override
  String get permissionDenied =>
      'सूचनाएँ ब्लॉक हैं। आप उन्हें अपने डिवाइस की सेटिंग्स में चालू कर सकते हैं।';

  @override
  String get upcomingAlerts => 'शेड्यूल किए गए';

  @override
  String get noScheduledAlerts => 'अभी कुछ भी शेड्यूल नहीं है';

  @override
  String get noScheduledAlertsBody =>
      'जब आपके बजट और भुगतान अपनी सीमाओं के करीब पहुँचेंगे, तो अलर्ट यहाँ दिखाई देंगे।';

  @override
  String scheduledFor(String date) {
    return '$date के लिए शेड्यूल किया गया';
  }

  @override
  String get everyWeek => 'हर सप्ताह';

  @override
  String get allNotificationsOff => 'सभी सूचनाएँ बंद हैं';

  @override
  String get needsAttention => 'ध्यान देने की आवश्यकता है';

  @override
  String get quickActionsTitle => 'आप क्या करना चाहेंगे?';

  @override
  String get createSection => 'दर्ज करें';

  @override
  String get jumpToSection => 'यहाँ जाएँ';

  @override
  String get addLoanAction => 'ऋण जोड़ें';

  @override
  String get addBudgetAction => 'बजट जोड़ें';

  @override
  String get addGoalAction => 'लक्ष्य जोड़ें';

  @override
  String get longPressHint =>
      'सुझाव: खर्च तुरंत दर्ज करने के लिए + को दबाकर रखें';

  @override
  String get searchCurrencies => 'मुद्राएँ खोजें';

  @override
  String get noCurrenciesFound => 'कोई मुद्रा नहीं मिली';

  @override
  String get noCurrenciesFoundMessage =>
      'कोई दूसरा कोड, प्रतीक या नाम आज़माएँ।';

  @override
  String get popularCurrencies => 'लोकप्रिय';

  @override
  String get allCurrencies => 'सभी मुद्राएँ';

  @override
  String get totalLoanAmount => 'कुल ऋण राशि';

  @override
  String get installmentAmount => 'किश्त की राशि';

  @override
  String get numberOfInstallments => 'किश्तों की संख्या';

  @override
  String get paidInstallments => 'भुगतान की गई किश्तें';

  @override
  String get remainingInstallments => 'बाकी किश्तें';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid में से $total भुगतान किए गए';
  }

  @override
  String get finalPayment => 'अंतिम भुगतान';

  @override
  String get paymentDueDate => 'भुगतान की देय तारीख';

  @override
  String dueOnDayOfMonth(int day) {
    return 'हर महीने की $day तारीख';
  }

  @override
  String get loanStatus => 'स्थिति';

  @override
  String get statusActive => 'सही दिशा में';

  @override
  String get statusDueSoon => 'जल्द देय';

  @override
  String get statusOverdue => 'अतिदेय';

  @override
  String get statusCompleted => 'पूरी तरह चुकाया गया';

  @override
  String get repaymentProgress => 'पुनर्भुगतान की प्रगति';

  @override
  String get byAmount => 'राशि के अनुसार';

  @override
  String get byInstallments => 'किश्तों के अनुसार';

  @override
  String get startDate => 'आरंभ तारीख';

  @override
  String get openEnded => 'कोई निश्चित अवधि नहीं';

  @override
  String get loanDetails => 'ऋण विवरण';

  @override
  String get notSet => 'सेट नहीं किया गया';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject आज देय है';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'आपका $amount का भुगतान आज देय है। एक त्वरित टैप इसे समय पर रखने में मदद करता है।';
  }

  @override
  String get remindMorningTitle => 'सुप्रभात ☀️';

  @override
  String get remindMorningBody =>
      'अपने पैसे पर नज़र रखते हुए दिन शुरू करें। क्या कल का कोई खर्च जोड़ना है?';

  @override
  String get remindNoonTitle => 'दोपहर का चेक-इन';

  @override
  String get remindNoonBody =>
      'दोपहर का खाना, कॉफ़ी या किराया? कुछ ही सेकंड में जोड़ें।';

  @override
  String get remindAfternoonTitle => 'त्वरित अपडेट';

  @override
  String get remindAfternoonBody =>
      'अब तक किए गए खर्च दर्ज करें और आज के आँकड़े सही रखें।';

  @override
  String get remindEveningTitle => 'दिन का समापन';

  @override
  String get remindEveningBody =>
      'अभी दो मिनट दें और आज के आँकड़े पूरे कर लें।';

  @override
  String get happyWeekendTitle => 'सुखद सप्ताहांत! 🎉';

  @override
  String get happyWeekendBody =>
      'इसका आनंद लें — और सप्ताहांत के खर्च पर नज़र रखें।';

  @override
  String get dailyReminders => 'दैनिक खर्च रिमाइंडर';

  @override
  String get dailyRemindersBody =>
      'अपने खर्चों को अपडेट रखने के लिए उपयोगी रिमाइंडर';

  @override
  String get weekendGreeting => 'सुखद सप्ताहांत';

  @override
  String get weekendGreetingBody => 'सप्ताहांत की शुरुआत में एक दोस्ताना संदेश';

  @override
  String get reminderTimesSection => 'रिमाइंडर के समय';

  @override
  String get slotMorning => 'सुबह';

  @override
  String get slotNoon => 'दोपहर';

  @override
  String get slotAfternoon => 'दोपहर बाद';

  @override
  String get slotEvening => 'शाम';

  @override
  String get everyDay => 'हर दिन';

  @override
  String get financialReport => 'वित्तीय रिपोर्ट';

  @override
  String get preparedFor => 'के लिए तैयार';

  @override
  String get generatedOn => 'बनाई गई तारीख';

  @override
  String get reportDisclaimer =>
      'RainyPenny ने आपके अपने रिकॉर्ड से यह रिपोर्ट बनाई है।';

  @override
  String pageOf(int page, int total) {
    return 'पृष्ठ $page / $total';
  }

  @override
  String get overview => 'अवलोकन';

  @override
  String get description => 'विवरण';

  @override
  String get totalIncome => 'कुल आय';

  @override
  String get totalExpenses => 'कुल खर्च';

  @override
  String get totalSaved => 'कुल बचत';

  @override
  String get shareOfTotal => 'हिस्सा';

  @override
  String get used => 'उपयोग हुआ';

  @override
  String get goal => 'लक्ष्य';

  @override
  String get targetDate => 'लक्ष्य तारीख';

  @override
  String get progress => 'प्रगति';

  @override
  String get paidOffShort => 'चुकाया';

  @override
  String get transactions => 'लेन-देन';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'और $count अन्य लेन-देन',
      one: 'और 1 लेन-देन',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF निर्यात करें';

  @override
  String get sharePdf => 'रिपोर्ट साझा करें';

  @override
  String get preparingReport => 'आपकी रिपोर्ट तैयार की जा रही है…';

  @override
  String get reportReady => 'रिपोर्ट तैयार है';

  @override
  String get reportFailed => 'रिपोर्ट नहीं बनाई जा सकी';

  @override
  String get categories => 'श्रेणियाँ';

  @override
  String get categoriesIntro =>
      'अपनी आय और खर्च को उसी तरह व्यवस्थित करने के लिए अपनी श्रेणियाँ जोड़ें, जैसे आप उन्हें समझते हैं।';

  @override
  String get expenseCategories => 'खर्च की श्रेणियाँ';

  @override
  String get incomeCategories => 'आय की श्रेणियाँ';

  @override
  String get newCategory => 'नई श्रेणी';

  @override
  String get editCategory => 'श्रेणी संपादित करें';

  @override
  String get categoryName => 'नाम';

  @override
  String get categoryNameHint => 'जैसे पालतू जानवरों की देखभाल';

  @override
  String get icon => 'आइकन';

  @override
  String get categorySaved => 'श्रेणी सहेजी गई';

  @override
  String get categoryDeleted => 'श्रेणी हटा दी गई';

  @override
  String get deleteCategory => 'यह श्रेणी हटाएँ?';

  @override
  String deleteCategoryBody(String name) {
    return '$name को आपकी श्रेणियों से हटा दिया जाएगा।';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रिकॉर्ड अभी भी इस श्रेणी का उपयोग करते हैं',
      one: '1 रिकॉर्ड अभी भी इस श्रेणी का उपयोग करता है',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'अभी यहाँ कुछ नहीं है।';

  @override
  String get builtIn => 'अंतर्निर्मित';

  @override
  String get manageCategories => 'श्रेणियाँ प्रबंधित करें';

  @override
  String get expense => 'खर्च';

  @override
  String get languageNote =>
      'अरबी, उर्दू, फ़ारसी और हिब्रू में चार्ट और PDF रिपोर्ट सहित पूरा इंटरफ़ेस दाएँ से बाएँ हो जाता है।';

  @override
  String get next => 'अगला';

  @override
  String get back => 'वापस';

  @override
  String get skip => 'छोड़ें';

  @override
  String get continueLabel => 'जारी रखें';

  @override
  String get selected => 'चयनित';

  @override
  String get passwordRequired => 'अपना पासवर्ड दर्ज करें';

  @override
  String get newPasswordLabel => 'नया पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्ड की पुष्टि करें';

  @override
  String get passwordsDoNotMatch => 'दोनों पासवर्ड समान होने चाहिए';

  @override
  String get showPassword => 'पासवर्ड दिखाएँ';

  @override
  String get hidePassword => 'पासवर्ड छिपाएँ';

  @override
  String get savePassword => 'पासवर्ड सहेजें';

  @override
  String get backToSignIn => 'साइन इन पर वापस जाएँ';

  @override
  String get alreadyHaveAccount => 'मेरा पहले से खाता है';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get acceptTerms => 'मैं सेवा की शर्तों और गोपनीयता नीति से सहमत हूँ';

  @override
  String get acceptTermsRequired => 'जारी रखने के लिए कृपया स्वीकार करें';

  @override
  String get passwordStrengthTooShort => 'बहुत छोटा';

  @override
  String get passwordStrengthWeak => 'कमज़ोर';

  @override
  String get passwordStrengthFair => 'ठीक';

  @override
  String get passwordStrengthGood => 'अच्छा';

  @override
  String get passwordStrengthStrong => 'मज़बूत';

  @override
  String get passwordAdvice =>
      'ऐसा लंबा वाक्यांश जिसे आप याद रख सकें, प्रतीकों से भरे छोटे पासवर्ड से बेहतर है। ऐसा पासवर्ड न रखें जिसे आप पहले से कहीं और इस्तेमाल करते हैं।';

  @override
  String get authInvalidCredentials =>
      'यह ईमेल और पासवर्ड किसी खाते से मेल नहीं खाते';

  @override
  String get authEmailNotConfirmed =>
      'साइन इन करने से पहले अपने ईमेल पते की पुष्टि करें';

  @override
  String get authEmailAlreadyRegistered =>
      'इस ईमेल से पहले से एक खाता मौजूद है';

  @override
  String get authWeakPassword => 'लंबा पासवर्ड चुनें';

  @override
  String get authRateLimited =>
      'बहुत अधिक प्रयास किए गए। कुछ मिनट बाद फिर प्रयास करें';

  @override
  String get authNetworkError =>
      'कोई कनेक्शन नहीं है। अपना नेटवर्क जाँचें और फिर प्रयास करें';

  @override
  String get authGenericError => 'कुछ गलत हो गया। कृपया फिर प्रयास करें';

  @override
  String get confirmEmailTitle => 'अपना ईमेल देखें';

  @override
  String confirmEmailBody(String email) {
    return 'हमने $email पर पुष्टि लिंक भेजा है। अपना खाता सेट अप पूरा करने के लिए उसे खोलें।';
  }

  @override
  String get resendConfirmation => 'पुष्टि ईमेल फिर भेजें';

  @override
  String get confirmationResent => 'पुष्टि ईमेल भेज दिया गया';

  @override
  String get forgotPasswordTitle => 'अपना पासवर्ड रीसेट करें';

  @override
  String get forgotPasswordSubtitle =>
      'वह ईमेल दर्ज करें जिससे आपने साइन अप किया था और हम आपको नया पासवर्ड चुनने के लिए एक लिंक भेजेंगे।';

  @override
  String get sendResetLink => 'रीसेट लिंक भेजें';

  @override
  String get resetLinkSentTitle => 'रीसेट लिंक भेज दिया गया';

  @override
  String resetLinkSentBody(String email) {
    return 'अगर $email से कोई खाता जुड़ा है, तो रीसेट लिंक भेज दिया गया है।';
  }

  @override
  String get resetLinkSentHint =>
      'लिंक एक घंटे में समाप्त हो जाएगा। अगर वह नहीं आता है, तो दूसरा माँगने से पहले अपना स्पैम फ़ोल्डर देखें।';

  @override
  String get tryAnotherEmail => 'दूसरा ईमेल इस्तेमाल करें';

  @override
  String get resetPasswordTitle => 'नया पासवर्ड चुनें';

  @override
  String get resetPasswordSubtitle =>
      'ऐसा पासवर्ड चुनें जिसे आपने इस खाते पर पहले इस्तेमाल न किया हो।';

  @override
  String get passwordChangedTitle => 'पासवर्ड अपडेट किया गया';

  @override
  String get passwordChangedBody =>
      'आपका नया पासवर्ड सहेज लिया गया है। आप साइन इन हैं और तैयार हैं।';

  @override
  String get demoModeHint => 'डेमो बिल्ड — खाते की आवश्यकता नहीं';

  @override
  String get demoModeFill => 'भरें';

  @override
  String get welcomeTrackTitle => 'देखें आपका पैसा कहाँ जाता है';

  @override
  String get welcomeTrackBody =>
      'जो पैसा आता और जाता है उसे दर्ज करें। RainyPenny उसे एक ऐसी तस्वीर में बदल देता है जिसे आप वास्तव में समझ सकते हैं।';

  @override
  String get welcomeBudgetTitle => 'ऐसी सीमाएँ तय करें जो टिकें';

  @override
  String get welcomeBudgetBody =>
      'अपने खर्च के हर हिस्से के लिए मासिक सीमा तय करें और सीमा पार होने के बाद नहीं, बल्कि उससे पहले चेतावनी पाएँ।';

  @override
  String get welcomeGoalsTitle => 'उन चीज़ों के लिए बचत करें जो मायने रखती हैं';

  @override
  String get welcomeGoalsBody =>
      'एक लक्ष्य का नाम दें, लक्ष्य राशि तय करें और उसे पूरा होते देखें। जब आप प्रगति देख सकते हैं तो मुश्किल समय के लिए बचत बनाना आसान होता है।';

  @override
  String get welcomePrivacyTitle => 'आपका पैसा आपका ही रहता है';

  @override
  String get welcomePrivacyBody =>
      'आपके आँकड़े केवल आपके हैं। कुछ भी बेचा या किसी के साथ साझा नहीं किया जाता।';

  @override
  String stepOf(int step, int total) {
    return 'चरण $step / $total';
  }

  @override
  String get onboardingNameTitle => 'हम आपको किस नाम से बुलाएँ?';

  @override
  String get onboardingNameBody =>
      'हम इसका उपयोग आपको अभिवादन करने के लिए करेंगे, और कहीं नहीं।';

  @override
  String get onboardingNameHint =>
      'पहला नाम ही पर्याप्त है। आप इसे बाद में बदल सकते हैं।';

  @override
  String get onboardingCurrencyTitle => 'आप कौन-सी मुद्रा इस्तेमाल करते हैं?';

  @override
  String get onboardingCurrencyBody =>
      'ऐप में हर राशि इसी मुद्रा में दिखाई जाएगी। इसे चुनने से कोई राशि परिवर्तित नहीं होगी।';

  @override
  String get onboardingCurrencySearch => 'सभी मुद्राएँ खोजें';

  @override
  String get onboardingAppearanceTitle => 'इसे अपना बनाएँ';

  @override
  String get onboardingAppearanceBody =>
      'एक रूप चुनें। टैप करते ही सब कुछ बदल जाएगा और आप इसे कभी भी फिर से बदल सकते हैं।';

  @override
  String get onboardingNotificationsTitle => 'सब कुछ नियंत्रण में रखें';

  @override
  String get onboardingNotificationsBody =>
      'सही समय पर मिलने वाला एक हल्का रिमाइंडर ही इसे आदत में बदलता है।';

  @override
  String get onboardingNotifyReminders =>
      'अपने खर्च दर्ज करने के लिए एक हल्का रिमाइंडर';

  @override
  String get onboardingNotifyBudget => 'बजट खत्म होने से पहले एक चेतावनी';

  @override
  String get onboardingNotifySummary =>
      'आपका पैसा कहाँ गया, इसका साप्ताहिक सारांश';

  @override
  String get onboardingNotifyEnable => 'सूचनाएँ चालू करें';

  @override
  String get onboardingNotifyDone => 'सूचना सेटिंग्स सहेजी गईं';

  @override
  String get onboardingNotifyLater =>
      'जब चाहें, आप यह सब सेटिंग्स में बदल सकते हैं।';

  @override
  String get onboardingReadyTitle => 'आप पूरी तरह तैयार हैं';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'आप पूरी तरह तैयार हैं, $name';
  }

  @override
  String get onboardingReadyBody =>
      'सेटअप पूरा हो गया है। क्या आप जानना चाहेंगे कि सब कुछ कैसे काम करता है?';

  @override
  String get onboardingTakeTour => 'मुझे ऐप दिखाएँ';

  @override
  String get onboardingGoToApp => 'मुझे ऐप पर ले चलें';

  @override
  String get onboardingTourLater =>
      'अभी नहीं? जब भी चाहें, गाइड सेटिंग्स में उपलब्ध रहेगा।';

  @override
  String get beginnersGuide => 'शुरुआती गाइड';

  @override
  String get guideFinish => 'समाप्त करें';

  @override
  String chapterOf(int number, int total) {
    return 'अध्याय $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen खोलें';
  }

  @override
  String get guideDashboardTitle => 'आपका डैशबोर्ड';

  @override
  String get guideDashboardBody =>
      'सब कुछ यहीं से शुरू होता है। ऊपर वाला कार्ड बताता है कि आपके पास कितना बाकी है; उसके नीचे इस अवधि की आय और खर्च, फिर आपके खर्च, बजट और लक्ष्य दिखाई देते हैं।';

  @override
  String get guideDashboardTip1 =>
      'सब कुछ एक साथ रिफ्रेश करने के लिए स्क्रीन को नीचे खींचें।';

  @override
  String get guideDashboardTip2 =>
      'उस सूची पर जाने के लिए आय या खर्च वाले कार्ड पर टैप करें।';

  @override
  String get guideDashboardTip3 =>
      'आप कुछ दर्ज करते ही रिंग और जानकारियाँ अपडेट हो जाती हैं।';

  @override
  String get guideAddTitle => 'पैसा दर्ज करना';

  @override
  String get guideAddBody =>
      'बार के बीच का बटन वह जगह है जहाँ से सब कुछ शुरू होता है। यह एक छोटा मेनू खोलता है: पैसा बाहर, पैसा अंदर, कर्ज़, बजट या बचत लक्ष्य।';

  @override
  String get guideAddTip1 =>
      'अंदर आए या बाहर गए पैसे को दर्ज करने के लिए बीच वाले बटन पर टैप करें।';

  @override
  String get guideAddTip2 =>
      'नए खर्च पर सीधे जाने और मेनू छोड़ने के लिए इसे दबाकर रखें।';

  @override
  String get guideAddTip3 =>
      'हमेशा एक श्रेणी चुनें — इसी से चार्ट और बजट काम करते हैं।';

  @override
  String get guideCategoriesTitle => 'श्रेणियाँ';

  @override
  String get guideCategoriesBody =>
      'श्रेणियाँ खर्च को समूहों में बाँटने का तरीका हैं। ऐप के साथ आने वाली श्रेणियाँ अधिकांश लोगों के लिए पर्याप्त हैं, और आप उनका नाम बदल सकते हैं या अपनी श्रेणियाँ जोड़ सकते हैं।';

  @override
  String get guideCategoriesTip1 =>
      'किसी श्रेणी को बदलने या जोड़ने के लिए सेटिंग्स, फिर श्रेणियाँ प्रबंधित करें पर जाएँ।';

  @override
  String get guideCategoriesTip2 =>
      'बिना श्रेणी वाला कोई भी खर्च अन्य में चला जाता है, ताकि चार्ट सही बने रहें।';

  @override
  String get guideBudgetTitle => 'बजट';

  @override
  String get guideBudgetBody =>
      'बजट किसी एक श्रेणी के लिए मासिक अधिकतम सीमा है। खर्च करते ही बार भरता जाता है और सीमा के करीब पहुँचने पर बदलता है, ताकि सीमा पार करने से पहले आपको पता चल जाए।';

  @override
  String get guideBudgetTip1 =>
      'एक साथ सभी श्रेणियों के बजाय दो या तीन श्रेणियों से शुरुआत करें।';

  @override
  String get guideBudgetTip2 =>
      'सीमा को सामान्य खर्च से थोड़ा ऊपर रखें, फिर धीरे-धीरे कम करें।';

  @override
  String get guideBudgetTip3 =>
      'बजट अलर्ट चालू रखें और जब बजट कम होने लगे तो ऐप आपको चेतावनी देगा।';

  @override
  String get guideSavingsTitle => 'बचत लक्ष्य';

  @override
  String get guideSavingsBody =>
      'बताएँ कि आप किस लिए बचत कर रहे हैं, लक्ष्य और तारीख तय करें, और ऐप गणना करेगा कि वहाँ पहुँचने के लिए आपको हर महीने कितनी राशि अलग रखनी होगी।';

  @override
  String get guideSavingsTip1 =>
      'नाम वाला लक्ष्य बचत करने के अस्पष्ट इरादे की तुलना में बनाए रखना आसान होता है।';

  @override
  String get guideSavingsTip2 =>
      'एक बड़े लक्ष्य की तुलना में कई छोटे लक्ष्य अधिक बार पूरे होते हैं।';

  @override
  String get guideLoansTitle => 'कर्ज़ और ऋण';

  @override
  String get guideLoansBody =>
      'आप पर कितना कर्ज़ है, उसकी लागत कितनी है और अगला भुगतान कब देय है, यह दर्ज करें। जो कुछ भी आप चुका रहे हैं वह एक ही सूची में कुल शेष राशि के साथ दिखाई देगा।';

  @override
  String get guideLoansTip1 =>
      'देय तारीख जोड़ें और भुगतान रिमाइंडर आपके लिए उसका ध्यान रखेंगे।';

  @override
  String get guideLoansTip2 =>
      'अतिदेय कर्ज़ भुगतान होने तक डैशबोर्ड पर लाल रंग में दिखाई देगा।';

  @override
  String get guideReportsTitle => 'रिपोर्ट';

  @override
  String get guideReportsBody =>
      'विस्तृत जानकारी: आय बनाम खर्च, श्रेणी के अनुसार खर्च, आपके बजट कितने अच्छे रहे और आपने अपनी आय का कितना हिस्सा बचाया।';

  @override
  String get guideReportsTip1 =>
      'स्क्रीन के ऊपर सप्ताह, महीना और तिमाही के बीच बदलें।';

  @override
  String get guideReportsTip2 =>
      'PDF निर्यात या साझा करें — यह आपकी अपनी भाषा और दिशा में तैयार होगी।';

  @override
  String get guideSettingsTitle => 'सेटिंग्स';

  @override
  String get guideSettingsBody =>
      'भाषा, मुद्रा, रंग और अलर्ट सभी यहाँ हैं, और सेटअप के बाद इनमें से कोई भी स्थायी नहीं है — जब चाहें इन्हें बदलें।';

  @override
  String get guideSettingsTip1 =>
      'चालीस भाषाएँ उपलब्ध हैं और दाएँ-से-बाएँ वाली भाषाओं के लिए पूरा लेआउट उलट जाता है।';

  @override
  String get guideSettingsTip2 =>
      'चुनें कि आपको कौन-से अलर्ट चाहिए और वे किन समयों पर आ सकते हैं।';

  @override
  String get guideSettingsTip3 =>
      'शांत समय के दौरान सभी सूचनाएँ सुबह तक रुक जाती हैं।';

  @override
  String get guideHabitTitle => 'इसे आदत बनाएँ';

  @override
  String get guideHabitBody =>
      'ऐप उतना ही उपयोगी है जितना डेटा आप इसमें डालते हैं। महीने में एक बार एक घंटे देने से बेहतर है कि रोज़ एक मिनट दें, और दो सप्ताह बाद आँकड़े आपको कुछ बताने लगेंगे।';

  @override
  String get guideHabitTip1 =>
      'सप्ताह के अंत में नहीं, बल्कि खर्च करते समय उसे दर्ज करें।';

  @override
  String get guideHabitTip2 =>
      'दिन में एक बार डैशबोर्ड पर नज़र डालें। दस सेकंड पर्याप्त हैं।';

  @override
  String get guideHabitTip3 =>
      'यह गाइड सेटिंग्स में मौजूद रहेगा — जब चाहें वापस आएँ।';

  @override
  String get appearance => 'दिखावट';

  @override
  String get themeCaption =>
      'हल्का, गहरा या आपके फ़ोन की वर्तमान सेटिंग के अनुसार।';

  @override
  String get accentColor => 'मुख्य रंग';

  @override
  String get accentColorCaption => 'बटन, हाइलाइट और चार्ट का रंग बदलता है।';

  @override
  String get accentSemanticsNote =>
      'हर थीम में आय और खर्च अपने अलग रंग बनाए रखते हैं, इसलिए मुख्य रंग बदलने पर किसी आँकड़े का अर्थ नहीं बदलता।';

  @override
  String get accentTeal => 'टील';

  @override
  String get accentGreen => 'हरा';

  @override
  String get accentSky => 'आसमानी';

  @override
  String get accentBlue => 'नीला';

  @override
  String get accentIndigo => 'इंडिगो';

  @override
  String get accentViolet => 'बैंगनी';

  @override
  String get accentPink => 'गुलाबी';

  @override
  String get accentCrimson => 'गहरा लाल';

  @override
  String get accentOrange => 'नारंगी';

  @override
  String get accentSlate => 'स्लेट';

  @override
  String get searchLanguages => 'भाषाएँ खोजें';

  @override
  String get suggestedLanguages => 'सुझाई गई';

  @override
  String get allLanguages => 'सभी भाषाएँ';

  @override
  String get noLanguagesFound => 'कोई भाषा नहीं मिली';

  @override
  String get noLanguagesFoundMessage =>
      'अंग्रेज़ी में नाम या दो-अक्षर वाला कोड आज़माएँ।';

  @override
  String get rightToLeft => 'दाएँ से बाएँ';

  @override
  String get replayGuide => 'गाइड फिर से चलाएँ';

  @override
  String get replaySetup => 'सेटअप फिर से करें';

  @override
  String get replaySetupBody =>
      'पहली बार वाले सवालों से फिर गुजरें। आपके द्वारा दर्ज की गई कोई भी जानकारी हटाई नहीं जाएगी।';

  @override
  String get rateTitle => 'क्या आपको RainyPenny पसंद आ रहा है?';

  @override
  String get rateBody =>
      'आप इसे कुछ समय से इस्तेमाल कर रहे हैं। रेटिंग देने में बस एक पल लगता है और इससे दूसरे लोगों को ऐप खोजने में मदद मिलती है।';

  @override
  String get rateAction => 'ऐप को रेट करें';

  @override
  String get rateLater => 'शायद बाद में';

  @override
  String get rateNever => 'नहीं, धन्यवाद';

  @override
  String get rateThanks => 'धन्यवाद';

  @override
  String get monthlySalary => 'मासिक वेतन';

  @override
  String get remainingAmount => 'शेष';

  @override
  String get carriedForward => 'आगे जोड़ी गई राशि';

  @override
  String get carriedForwardHint => 'पिछली अवधि से बची राशि';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get salaryCycle => 'वेतन चक्र';

  @override
  String get payday => 'वेतन दिवस';

  @override
  String get paydayDescription =>
      'जिस दिन आपका वेतन आता है। आपका वित्तीय महीना इस दिन से अगले वेतन दिवस से एक दिन पहले तक चलता है।';

  @override
  String get paydayUpdated => 'वेतन दिवस अपडेट किया गया';

  @override
  String paydayDayOfMonth(int day) {
    return 'दिन $day';
  }

  @override
  String get paydayShortMonthNote =>
      'छोटे महीनों में चक्र इसके बजाय महीने के आखिरी दिन शुरू होता है।';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'वेतन दिवस तक $count दिन',
      one: 'वेतन दिवस तक 1 दिन',
      zero: 'चक्र का अंतिम दिन',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'अगला वेतन दिवस';

  @override
  String get spentSoFar => 'अब तक खर्च';

  @override
  String get dailyAllowance => 'रोज़ सुरक्षित रूप से खर्च कर सकते हैं';

  @override
  String get overspentNotice =>
      'इस चक्र में आपने आने वाली राशि से अधिक खर्च किया है।';

  @override
  String get backToThisMonth => 'इस महीने पर वापस जाएँ';

  @override
  String get cycleRangeLabel => 'चक्र';

  @override
  String get noSalaryRecorded => 'अभी कोई वेतन दर्ज नहीं है';

  @override
  String get addSalaryAction => 'अपना वेतन जोड़ें';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'उत्कृष्ट';

  @override
  String get healthGood => 'अच्छा';

  @override
  String get healthFair => 'ठीक';

  @override
  String get healthNeedsWork => 'सुधार की आवश्यकता';

  @override
  String get healthExcellentBody =>
      'आप अच्छी बचत कर रहे हैं और अपने बजट के अंदर रह रहे हैं।';

  @override
  String get healthGoodBody => 'इस अवधि में आपका खर्च सही दिशा में है।';

  @override
  String get healthFairBody =>
      'कुछ बजट तेज़ी से खर्च हो रहे हैं। छोटे बदलाव मदद करेंगे।';

  @override
  String get healthNeedsWorkBody =>
      'खर्च आपकी योजना से तेज़ बढ़ रहा है। अपनी सबसे बड़ी श्रेणी से शुरुआत करें।';

  @override
  String get factorSavingsRate => 'बचत दर';

  @override
  String get factorBudgetControl => 'बजट नियंत्रण';

  @override
  String get factorDebtLoad => 'कर्ज़ का भार';

  @override
  String get factorSpendingTrend => 'खर्च की प्रवृत्ति';

  @override
  String factorKept(String percent) {
    return '$percent% बचाकर रखा';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% उपयोग हुआ';
  }

  @override
  String factorOfIncome(String percent) {
    return 'आय का $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% बढ़ा';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% घटा';
  }

  @override
  String get howScoreWorks => 'यह स्कोर कैसे काम करता है';

  @override
  String get healthScoreExplainer =>
      'आपका स्कोर चार चीज़ों को मिलाकर बनता है: आप अपनी आय का कितना हिस्सा बचाकर रखते हैं, आप अपने बजट के अंदर कितनी अच्छी तरह रहते हैं, आपकी आय का कितना हिस्सा कर्ज़ में जाता है और आपका खर्च बढ़ रहा है या घट रहा है।';

  @override
  String scoreWeightLabel(int percent) {
    return 'स्कोर का $percent%';
  }

  @override
  String get viewHealthDetails => 'विवरण देखें';

  @override
  String get saveChanges => 'बदलाव सहेजें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल अपडेट की गई';

  @override
  String get changePhoto => 'फ़ोटो बदलें';

  @override
  String get removePhoto => 'फ़ोटो हटाएँ';

  @override
  String get personalInformationIntro =>
      'आपका नाम और फ़ोटो पूरे ऐप में दिखाई देंगे। आपका ईमेल वही पता है जिससे आप साइन इन करते हैं।';

  @override
  String get emailNotEditable =>
      'जिस पते से आप साइन इन करते हैं उसे बदलने के लिए सहायता से संपर्क करें।';

  @override
  String get pressBackAgainToExit => 'बाहर निकलने के लिए फिर से बैक दबाएँ';

  @override
  String get categoryHousing => 'आवास';

  @override
  String get categoryFood => 'खाना और बाहर खाना';

  @override
  String get categoryTransport => 'परिवहन';

  @override
  String get categoryShopping => 'खरीदारी';

  @override
  String get categoryBills => 'बिल और उपयोगिताएँ';

  @override
  String get categoryEntertainment => 'मनोरंजन';

  @override
  String get categoryHealth => 'स्वास्थ्य और फिटनेस';

  @override
  String get categoryEducation => 'शिक्षा';

  @override
  String get categoryTravel => 'यात्रा';

  @override
  String get categorySalary => 'वेतन';

  @override
  String get categoryFreelance => 'फ्रीलांस';

  @override
  String get categoryInvestments => 'निवेश';

  @override
  String get categoryGift => 'उपहार';

  @override
  String get categoryOther => 'अन्य';

  @override
  String get categoryGroceries => 'किराने का सामान';

  @override
  String get categoryDining => 'बाहर खाना';

  @override
  String get categoryCoffee => 'कॉफ़ी';

  @override
  String get categoryUtilities => 'उपयोगिताएँ';

  @override
  String get categoryInternet => 'इंटरनेट';

  @override
  String get categoryPhone => 'फ़ोन';

  @override
  String get categoryInsurance => 'बीमा';

  @override
  String get categorySubscriptions => 'सदस्यताएँ';

  @override
  String get categoryPersonalCare => 'व्यक्तिगत देखभाल';

  @override
  String get categoryClothing => 'कपड़े';

  @override
  String get categoryElectronics => 'इलेक्ट्रॉनिक्स';

  @override
  String get categoryHomeSupplies => 'घरेलू सामान';

  @override
  String get categoryPets => 'पालतू जानवर';

  @override
  String get categoryChildcare => 'बच्चों की देखभाल';

  @override
  String get categoryFamily => 'परिवार';

  @override
  String get categoryFitness => 'फिटनेस';

  @override
  String get categorySports => 'खेल';

  @override
  String get categoryMedicine => 'दवाइयाँ';

  @override
  String get categoryMedical => 'चिकित्सा';

  @override
  String get categoryCharity => 'दान';

  @override
  String get categoryTaxes => 'कर';

  @override
  String get categoryFees => 'शुल्क';

  @override
  String get categoryDebt => 'कर्ज़';

  @override
  String get categorySavings => 'बचत';

  @override
  String get categoryRepairs => 'मरम्मत';

  @override
  String get categoryCarMaintenance => 'कार की देखभाल';

  @override
  String get categoryFuel => 'ईंधन';

  @override
  String get categoryParking => 'पार्किंग';

  @override
  String get categoryPublicTransport => 'सार्वजनिक परिवहन';

  @override
  String get categoryRent => 'किराया';

  @override
  String get categoryMortgage => 'गृह ऋण';

  @override
  String get categoryBonus => 'बोनस';

  @override
  String get categoryCommission => 'कमीशन';

  @override
  String get categoryPension => 'पेंशन';

  @override
  String get categoryInterest => 'ब्याज';

  @override
  String get categoryDividends => 'लाभांश';

  @override
  String get categoryCashback => 'कैशबैक';

  @override
  String get categoryRefund => 'रिफंड';

  @override
  String get categoryRentalIncome => 'किराये की आय';

  @override
  String get addCategory => 'नई श्रेणी';

  @override
  String get filterByCategory => 'श्रेणी के अनुसार फ़िल्टर करें';

  @override
  String get allCategories => 'सभी श्रेणियाँ';

  @override
  String get clearFilters => 'फ़िल्टर साफ़ करें';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'सभी समय';

  @override
  String get customRange => 'कस्टम';

  @override
  String get selectDateRange => 'अवधि चुनें';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end दिखाया जा रहा है';
  }

  @override
  String get loans => 'ऋण';

  @override
  String get debts => 'कर्ज़';

  @override
  String get noLoansTitle => 'कोई ऋण नहीं';

  @override
  String get noLoansBody => 'आपके पास कोई सक्रिय ऋण नहीं है।';

  @override
  String get emptyHealthTitle => 'अभी कोई वित्तीय स्कोर नहीं';

  @override
  String get emptyHealthDescription =>
      'सटीक वित्तीय स्थिति का स्कोर निकालने से पहले हमें आपकी थोड़ी वित्तीय गतिविधि चाहिए।';

  @override
  String get emptyHealthAddTransactions => 'आय या खर्च के लेन-देन जोड़ें';

  @override
  String get emptyHealthSetBudgets => 'अपने मासिक बजट सेट करें';

  @override
  String get emptyHealthTrackLoans => 'ऋण या कर्ज़ ट्रैक करें (वैकल्पिक)';

  @override
  String get emptyHealthCardSubtitle =>
      'अपना स्कोर निकालने और जानकारियाँ पाने के लिए लेन-देन जोड़ें।';

  @override
  String get smartBudgetSplit => 'स्मार्ट बजट विभाजन';

  @override
  String get smartBudgetSplitSubtitle =>
      'अनुशंसित सीमाएँ निकालने के लिए अपना मासिक वेतन दर्ज करें';

  @override
  String get monthlyNetSalary => 'मासिक शुद्ध वेतन';

  @override
  String get categoryAllocations => 'श्रेणी आवंटन';

  @override
  String totalBudgeted(String amount) {
    return 'कुल: $amount';
  }

  @override
  String get applyAllBudgets => 'सभी बजट लागू करें';

  @override
  String get applyingBudgets => 'बजट लागू किए जा रहे हैं...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count श्रेणियों के बजट बनाए गए।',
      one: '1 श्रेणी का बजट बनाया गया।',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'बजट सहेजने में विफल।';

  @override
  String get recommendedBudget => 'अनुशंसित बजट';
}
