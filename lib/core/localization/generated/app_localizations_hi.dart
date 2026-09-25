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
  String get appTagline => 'मुश्किल दिनों के लिए बचत करें';

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
  String get greetingSubtitle => 'यह रहा आपका वित्तीय सारांश';

  @override
  String get totalBalance => 'कुल शेष';

  @override
  String get vsLastPeriod => 'पिछली अवधि की तुलना में';

  @override
  String get income => 'आय';

  @override
  String get expenses => 'व्यय';

  @override
  String get netBalance => 'शुद्ध शेष';

  @override
  String get lastThirtyDays => 'पिछले 30 दिन';

  @override
  String get quickActions => 'त्वरित कार्य';

  @override
  String get addIncome => 'आय जोड़ें';

  @override
  String get addExpense => 'व्यय जोड़ें';

  @override
  String get spendingOverview => 'खर्च का अवलोकन';

  @override
  String get recentTransactions => 'हाल के लेन-देन';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get viewAll => 'सभी देखें';

  @override
  String get budgetProgress => 'बजट प्रगति';

  @override
  String get savingsGoals => 'बचत लक्ष्य';

  @override
  String get financialInsight => 'वित्तीय अंतर्दृष्टि';

  @override
  String get financialHealth => 'वित्तीय स्वास्थ्य';

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
  String get filterExpenses => 'व्यय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get noTransactionsTitle => 'कोई लेन-देन नहीं मिला';

  @override
  String get noTransactionsBody => 'कोई दूसरी खोज या फ़िल्टर आज़माएँ।';

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
  String get date => 'तारीख़';

  @override
  String get note => 'टिप्पणी';

  @override
  String get noteHint => 'वैकल्पिक टिप्पणी';

  @override
  String get saveIncome => 'आय सहेजें';

  @override
  String get saveExpense => 'व्यय सहेजें';

  @override
  String get selectCategory => 'श्रेणी चुनें';

  @override
  String get transactionSaved => 'लेन-देन सहेजा गया';

  @override
  String get amountRequired => 'शून्य से अधिक राशि दर्ज करें';

  @override
  String get titleRequired => 'इस लेन-देन को एक नाम दें';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे किराना';

  @override
  String get budget => 'बजट';

  @override
  String get budgets => 'बजट';

  @override
  String get totalBudget => 'कुल बजट';

  @override
  String get spent => 'खर्च';

  @override
  String get remaining => 'शेष';

  @override
  String budgetUsed(int percent) {
    return '$percent% उपयोग हुआ';
  }

  @override
  String get onTrack => 'सही राह पर';

  @override
  String get approachingLimit => 'सीमा के करीब';

  @override
  String get overBudget => 'बजट से अधिक';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'आपके लक्ष्य';

  @override
  String get saved => 'बचाया गया';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'मासिक';

  @override
  String get addFunds => 'राशि जोड़ें';

  @override
  String get goalComplete => 'लक्ष्य पूरा';

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
  String get loansAndDebts => 'ऋण और देनदारियाँ';

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
  String get month => 'माह';

  @override
  String get quarter => 'तिमाही';

  @override
  String get incomeVsExpenses => 'आय बनाम व्यय';

  @override
  String get spendingByCategory => 'श्रेणी अनुसार खर्च';

  @override
  String get budgetPerformance => 'बजट प्रदर्शन';

  @override
  String get insights => 'अंतर्दृष्टि';

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
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get noNotificationsTitle => 'सब कुछ अपडेट है';

  @override
  String get noNotificationsBody => 'नई अंतर्दृष्टि और अनुस्मारक यहाँ दिखेंगे।';

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
  String get somethingWentWrong => 'कुछ गड़बड़ हो गई';

  @override
  String get comingSoon => 'जल्द ही आ रहा है';

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
    return '$title आपके खाते से हटा दिया जाएगा।';
  }

  @override
  String get transactionDeleted => 'लेन-देन हटाया गया';

  @override
  String get transactionUpdated => 'लेन-देन अपडेट हुआ';

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
    return '$category का बजट हटा दिया जाएगा। आपके लेन-देन प्रभावित नहीं होंगे।';
  }

  @override
  String get budgetSaved => 'बजट सहेजा गया';

  @override
  String get budgetDeleted => 'बजट हटाया गया';

  @override
  String get allCategoriesBudgeted => 'हर श्रेणी का बजट पहले से है';

  @override
  String get noBudgetsTitle => 'अभी कोई बजट नहीं';

  @override
  String get noBudgetsBody =>
      'किसी श्रेणी पर मासिक सीमा तय करें और उसे ट्रैक करना शुरू करें।';

  @override
  String get newGoal => 'नया लक्ष्य';

  @override
  String get editGoal => 'लक्ष्य संपादित करें';

  @override
  String get goalName => 'लक्ष्य का नाम';

  @override
  String get goalNameHint => 'जैसे आपातकालीन कोष';

  @override
  String get targetAmount => 'लक्ष्य राशि';

  @override
  String get alreadySaved => 'अब तक बचाया';

  @override
  String get deleteGoal => 'लक्ष्य हटाएँ?';

  @override
  String deleteGoalBody(String name) {
    return '$name और उसकी प्रगति हटा दी जाएगी।';
  }

  @override
  String get goalSaved => 'लक्ष्य सहेजा गया';

  @override
  String get goalDeleted => 'लक्ष्य हटाया गया';

  @override
  String get noGoalsTitle => 'अभी कोई बचत लक्ष्य नहीं';

  @override
  String get noGoalsBody =>
      'एक लक्ष्य तय करें और RainyPenny आपकी प्रगति देखेगा।';

  @override
  String get fundsAdded => 'राशि जोड़ी गई';

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
  String get lenderHint => 'जैसे मेरिडियन बैंक';

  @override
  String get originalAmount => 'मूल राशि';

  @override
  String get creditLimit => 'क्रेडिट सीमा';

  @override
  String get remainingBalance => 'शेष राशि';

  @override
  String get interestRatePercent => 'ब्याज दर (%)';

  @override
  String get kindLoan => 'ऋण';

  @override
  String get kindCreditCard => 'क्रेडिट कार्ड';

  @override
  String get recordPayment => 'भुगतान दर्ज करें';

  @override
  String get paymentRecorded => 'भुगतान दर्ज हुआ';

  @override
  String get deleteDebt => 'यह ऋण हटाएँ?';

  @override
  String deleteDebtBody(String name) {
    return '$name आपके ऋणों से हटा दिया जाएगा।';
  }

  @override
  String get debtSaved => 'सहेजा गया';

  @override
  String get debtDeleted => 'हटाया गया';

  @override
  String get noDebtsTitle => 'कोई ऋण ट्रैक नहीं हो रहा';

  @override
  String get noDebtsBody =>
      'भुगतानों पर नज़र रखने के लिए ऋण या क्रेडिट कार्ड जोड़ें।';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject का बजट पार हुआ';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'इस अवधि में आप $subject के बजट से $amount अधिक खर्च कर चुके हैं।';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject अपनी सीमा के पास है';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject का बजट $percent% उपयोग हो चुका है, $amount बचा है।';
  }

  @override
  String get insightOverIncomeTitle => 'खर्च आय से अधिक है';

  @override
  String get insightOverIncomeBody =>
      'इस अवधि में आपने कमाई से ज़्यादा खर्च किया। संतुलन बनाने के लिए अपनी सबसे बड़ी श्रेणियाँ देखें।';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject पर खर्च बढ़ा';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject पर आपका खर्च पिछली अवधि से $percent% अधिक है।';
  }

  @override
  String get insightTrendDownTitle => 'खर्च घट रहा है';

  @override
  String insightTrendDownBody(int percent) {
    return 'कुल खर्च पिछली अवधि से $percent% कम है।';
  }

  @override
  String get insightTrendUpTitle => 'खर्च बढ़ रहा है';

  @override
  String insightTrendUpBody(int percent) {
    return 'कुल खर्च पिछली अवधि से $percent% अधिक है।';
  }

  @override
  String get insightSavingsStrongTitle => 'इस अवधि में शानदार बचत';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'आपने अपनी आय का $percent% बचाया — $target% के लक्ष्य से कहीं अधिक।';
  }

  @override
  String get insightSavingsLowTitle => 'बचत दर लक्ष्य से कम है';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'इस अवधि में आपने आय का $percent% बचाया। $target% का लक्ष्य रखें।';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject लगभग पूरा है';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject तक पहुँचने के लिए केवल $amount बाकी है।';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject के लिए आप सही रास्ते पर हैं';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months महीनों',
      one: '1 महीने',
    );
    return 'हर महीने $amount से आप यह लक्ष्य $_temp0 में पा लेंगे।';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject का भुगतान बकाया है';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिन',
      one: '1 दिन',
    );
    return '$subject का $amount का भुगतान $_temp0 से बकाया है।';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject का भुगतान आने वाला है';
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
    return '$amount $_temp0 देय है।';
  }

  @override
  String get signIn => 'साइन इन';

  @override
  String get signUp => 'खाता बनाएँ';

  @override
  String get signInSubtitle =>
      'वापसी पर स्वागत है। आपका पैसा इंतज़ार कर रहा है।';

  @override
  String get signUpSubtitle => 'कुछ जानकारी और आप तैयार हैं।';

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
  String get fullNameHint => 'एलेक्स मॉर्गन';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get resetSent => 'रीसेट लिंक के लिए अपना इनबॉक्स देखें';

  @override
  String get noAccountYet => 'यहाँ नए हैं?';

  @override
  String get haveAccount => 'पहले से खाता है?';

  @override
  String get emailInvalid => 'एक वैध ईमेल पता दर्ज करें';

  @override
  String get passwordTooShort => 'कम से कम 8 अक्षर उपयोग करें';

  @override
  String get signOutConfirm => 'साइन आउट करें?';

  @override
  String get signOutBody =>
      'अपने वित्त देखने के लिए आपको फिर से साइन इन करना होगा।';

  @override
  String get dataSource => 'डेटा स्रोत';

  @override
  String get insightWeeklySummaryTitle => 'आपका सप्ताह एक नज़र में';

  @override
  String get insightWeeklySummaryBody =>
      'देखें कि इस सप्ताह आपका पैसा कहाँ गया और आपके बजट कैसे चल रहे हैं।';

  @override
  String get notificationSettings => 'सूचनाएँ';

  @override
  String get alertsSection => 'अलर्ट';

  @override
  String get budgetAlerts => 'बजट अलर्ट';

  @override
  String get budgetAlertsBody =>
      'जब कोई बजट अपनी सीमा के पास पहुँचे या उसे पार करे';

  @override
  String get paymentReminders => 'भुगतान अनुस्मारक';

  @override
  String get paymentRemindersBody => 'भुगतान देय होने से कुछ दिन पहले';

  @override
  String get savingsUpdates => 'बचत अपडेट';

  @override
  String get savingsUpdatesBody => 'आपके लक्ष्यों की ओर प्रगति';

  @override
  String get weeklySummaryLabel => 'साप्ताहिक सारांश';

  @override
  String get weeklySummaryBody => 'बीते सप्ताह का सारांश';

  @override
  String get scheduleSection => 'समय';

  @override
  String get reminderTime => 'अनुस्मारक का समय';

  @override
  String get quietHours => 'शांत घंटे';

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
      'सूचनाओं की अनुमति दें ताकि RainyPenny आपको बजट या भुगतान हाथ से निकलने से पहले चेता सके।';

  @override
  String get allowNotifications => 'सूचनाओं की अनुमति दें';

  @override
  String get permissionDenied =>
      'सूचनाएँ अवरुद्ध हैं। आप उन्हें अपनी डिवाइस सेटिंग्स में चालू कर सकते हैं।';

  @override
  String get upcomingAlerts => 'निर्धारित';

  @override
  String get noScheduledAlerts => 'अभी कुछ भी निर्धारित नहीं';

  @override
  String get noScheduledAlertsBody =>
      'जैसे-जैसे आपके बजट और भुगतान अपनी सीमाओं के पास आएँगे, अलर्ट यहाँ दिखेंगे।';

  @override
  String scheduledFor(String date) {
    return '$date के लिए निर्धारित';
  }

  @override
  String get everyWeek => 'हर सप्ताह';

  @override
  String get allNotificationsOff => 'सभी सूचनाएँ बंद हैं';

  @override
  String get needsAttention => 'ध्यान चाहिए';

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
  String get longPressHint => 'सुझाव: खर्च तुरंत दर्ज करने के लिए + दबाकर रखें';

  @override
  String get searchCurrencies => 'मुद्राएँ खोजें';

  @override
  String get noCurrenciesFound => 'कोई मुद्रा नहीं मिली';

  @override
  String get noCurrenciesFoundMessage => 'कोई दूसरा कोड, चिह्न या नाम आज़माएँ।';

  @override
  String get popularCurrencies => 'लोकप्रिय';

  @override
  String get allCurrencies => 'सभी मुद्राएँ';

  @override
  String get totalLoanAmount => 'कुल ऋण राशि';

  @override
  String get installmentAmount => 'किस्त राशि';

  @override
  String get numberOfInstallments => 'किस्तों की संख्या';

  @override
  String get paidInstallments => 'चुकाई गई किस्तें';

  @override
  String get remainingInstallments => 'शेष किस्तें';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total में से $paid चुकाई गईं';
  }

  @override
  String get finalPayment => 'अंतिम भुगतान';

  @override
  String get paymentDueDate => 'भुगतान की देय तिथि';

  @override
  String dueOnDayOfMonth(int day) {
    return 'हर महीने की $day तारीख';
  }

  @override
  String get loanStatus => 'स्थिति';

  @override
  String get statusActive => 'सही राह पर';

  @override
  String get statusDueSoon => 'जल्द देय';

  @override
  String get statusOverdue => 'बकाया';

  @override
  String get statusCompleted => 'पूरा चुकाया';

  @override
  String get repaymentProgress => 'चुकौती की प्रगति';

  @override
  String get byAmount => 'राशि के अनुसार';

  @override
  String get byInstallments => 'किस्तों के अनुसार';

  @override
  String get startDate => 'प्रारंभ तिथि';

  @override
  String get openEnded => 'अवधि तय नहीं';

  @override
  String get loanDetails => 'ऋण विवरण';

  @override
  String get notSet => 'तय नहीं';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject आज देय है';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'आपका $amount का भुगतान आज देय है। एक टैप और यह समय पर रहेगा।';
  }

  @override
  String get remindMorningTitle => 'सुप्रभात ☀️';

  @override
  String get remindMorningBody =>
      'दिन की शुरुआत अपने पैसे पर पकड़ के साथ करें। कल का कुछ जोड़ना है?';

  @override
  String get remindNoonTitle => 'दोपहर की जाँच';

  @override
  String get remindNoonBody => 'खाना, कॉफ़ी, किराया? कुछ सेकंड में जोड़ें।';

  @override
  String get remindAfternoonTitle => 'एक त्वरित नज़र';

  @override
  String get remindAfternoonBody =>
      'अब तक किया खर्च दर्ज करें और आज का हिसाब सही रखें।';

  @override
  String get remindEveningTitle => 'दिन को समेटते हुए';

  @override
  String get remindEveningBody => 'अभी दो मिनट और आज के आँकड़े पूरे।';

  @override
  String get happyWeekendTitle => 'सप्ताहांत मुबारक! 🎉';

  @override
  String get happyWeekendBody =>
      'इसका आनंद लें — और सप्ताहांत के खर्च पर नज़र रखें।';

  @override
  String get dailyReminders => 'दैनिक खर्च अनुस्मारक';

  @override
  String get dailyRemindersBody =>
      'आपके खर्च अद्यतन रखने के लिए मैत्रीपूर्ण अनुस्मारक';

  @override
  String get weekendGreeting => 'सप्ताहांत मुबारक';

  @override
  String get weekendGreetingBody =>
      'आपके सप्ताहांत की शुरुआत पर एक मैत्रीपूर्ण अभिवादन';

  @override
  String get reminderTimesSection => 'अनुस्मारक के समय';

  @override
  String get slotMorning => 'सुबह';

  @override
  String get slotNoon => 'दोपहर';

  @override
  String get slotAfternoon => 'अपराह्न';

  @override
  String get slotEvening => 'शाम';

  @override
  String get everyDay => 'हर दिन';

  @override
  String get financialReport => 'वित्तीय रिपोर्ट';

  @override
  String get preparedFor => 'किसके लिए तैयार';

  @override
  String get generatedOn => 'तैयार करने की तिथि';

  @override
  String get reportDisclaimer => 'RainyPenny द्वारा आपके ही रिकॉर्ड से तैयार।';

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
  String get totalExpenses => 'कुल व्यय';

  @override
  String get totalSaved => 'कुल बचत';

  @override
  String get shareOfTotal => 'हिस्सा';

  @override
  String get used => 'उपयोग हुआ';

  @override
  String get goal => 'लक्ष्य';

  @override
  String get targetDate => 'लक्ष्य तिथि';

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
      one: 'और 1 अन्य लेन-देन',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF निर्यात करें';

  @override
  String get sharePdf => 'रिपोर्ट साझा करें';

  @override
  String get preparingReport => 'आपकी रिपोर्ट तैयार हो रही है…';

  @override
  String get reportReady => 'रिपोर्ट तैयार है';

  @override
  String get reportFailed => 'रिपोर्ट नहीं बन सकी';

  @override
  String get categories => 'श्रेणियाँ';

  @override
  String get categoriesIntro =>
      'अपनी श्रेणियाँ जोड़ें ताकि आय और व्यय ठीक वैसे ही दर्ज हों जैसे आप सोचते हैं।';

  @override
  String get expenseCategories => 'व्यय श्रेणियाँ';

  @override
  String get incomeCategories => 'आय श्रेणियाँ';

  @override
  String get newCategory => 'नई श्रेणी';

  @override
  String get editCategory => 'श्रेणी संपादित करें';

  @override
  String get categoryName => 'नाम';

  @override
  String get categoryNameHint => 'जैसे पालतू देखभाल';

  @override
  String get icon => 'आइकन';

  @override
  String get categorySaved => 'श्रेणी सहेजी गई';

  @override
  String get categoryDeleted => 'श्रेणी हटाई गई';

  @override
  String get deleteCategory => 'यह श्रेणी हटाएँ?';

  @override
  String deleteCategoryBody(String name) {
    return '$name आपकी श्रेणियों से हटा दी जाएगी।';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रिकॉर्ड अब भी इस श्रेणी का उपयोग करते हैं',
      one: '1 रिकॉर्ड अब भी इस श्रेणी का उपयोग करता है',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'यहाँ अभी कुछ नहीं है।';

  @override
  String get builtIn => 'अंतर्निहित';

  @override
  String get manageCategories => 'श्रेणियाँ प्रबंधित करें';

  @override
  String get expense => 'व्यय';

  @override
  String get languageNote =>
      'अरबी, उर्दू, फ़ारसी और हिब्रू पूरे इंटरफ़ेस को दाएँ-से-बाएँ कर देती हैं — चार्ट और PDF रिपोर्ट सहित।';

  @override
  String get next => 'आगे';

  @override
  String get back => 'पीछे';

  @override
  String get skip => 'छोड़ें';

  @override
  String get continueLabel => 'जारी रखें';

  @override
  String get selected => 'चयनित';

  @override
  String get passwordRequired => 'अपना पासवर्ड डालें';

  @override
  String get newPasswordLabel => 'नया पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्ड की पुष्टि करें';

  @override
  String get passwordsDoNotMatch => 'दोनों पासवर्ड एक जैसे होने चाहिए';

  @override
  String get showPassword => 'पासवर्ड दिखाएँ';

  @override
  String get hidePassword => 'पासवर्ड छिपाएँ';

  @override
  String get savePassword => 'पासवर्ड सहेजें';

  @override
  String get backToSignIn => 'साइन इन पर लौटें';

  @override
  String get alreadyHaveAccount => 'मेरा खाता पहले से है';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get acceptTerms => 'मैं सेवा की शर्तों और गोपनीयता नीति से सहमत हूँ';

  @override
  String get acceptTermsRequired => 'जारी रखने के लिए सहमति दें';

  @override
  String get passwordStrengthTooShort => 'बहुत छोटा';

  @override
  String get passwordStrengthWeak => 'कमज़ोर';

  @override
  String get passwordStrengthFair => 'ठीक-ठाक';

  @override
  String get passwordStrengthGood => 'अच्छा';

  @override
  String get passwordStrengthStrong => 'मज़बूत';

  @override
  String get passwordAdvice =>
      'याद रहने वाला लंबा वाक्यांश, चिह्नों से भरे छोटे पासवर्ड से बेहतर है। जो कहीं और इस्तेमाल कर रहे हों, उससे बचें।';

  @override
  String get authInvalidCredentials =>
      'यह ईमेल और पासवर्ड किसी खाते से मेल नहीं खाते';

  @override
  String get authEmailNotConfirmed =>
      'साइन इन से पहले अपना ईमेल पता पुष्ट करें';

  @override
  String get authEmailAlreadyRegistered => 'इस ईमेल से खाता पहले से मौजूद है';

  @override
  String get authWeakPassword => 'लंबा पासवर्ड चुनें';

  @override
  String get authRateLimited => 'बहुत अधिक प्रयास। कुछ मिनट बाद फिर कोशिश करें';

  @override
  String get authNetworkError =>
      'कनेक्शन नहीं है। नेटवर्क जाँचकर फिर कोशिश करें';

  @override
  String get authGenericError => 'कुछ गड़बड़ हुई। कृपया फिर कोशिश करें';

  @override
  String get confirmEmailTitle => 'अपना ईमेल देखें';

  @override
  String confirmEmailBody(String email) {
    return 'हमने $email पर पुष्टि लिंक भेजा है। खाता पूरा करने के लिए उसे खोलें।';
  }

  @override
  String get resendConfirmation => 'पुष्टि ईमेल फिर भेजें';

  @override
  String get confirmationResent => 'पुष्टि ईमेल भेज दिया गया';

  @override
  String get forgotPasswordTitle => 'पासवर्ड रीसेट करें';

  @override
  String get forgotPasswordSubtitle =>
      'जिस ईमेल से आपने साइन अप किया था वह डालें, हम नया पासवर्ड चुनने का लिंक भेज देंगे।';

  @override
  String get sendResetLink => 'रीसेट लिंक भेजें';

  @override
  String get resetLinkSentTitle => 'लिंक भेज दिया गया';

  @override
  String resetLinkSentBody(String email) {
    return 'अगर $email का खाता है, तो रीसेट लिंक रास्ते में है।';
  }

  @override
  String get resetLinkSentHint =>
      'लिंक एक घंटे में समाप्त हो जाता है। न मिले तो दूसरा माँगने से पहले स्पैम फ़ोल्डर देखें।';

  @override
  String get tryAnotherEmail => 'दूसरा ईमेल इस्तेमाल करें';

  @override
  String get resetPasswordTitle => 'नया पासवर्ड चुनें';

  @override
  String get resetPasswordSubtitle =>
      'ऐसा कुछ चुनें जो इस खाते पर पहले न इस्तेमाल किया हो।';

  @override
  String get passwordChangedTitle => 'पासवर्ड अपडेट हुआ';

  @override
  String get passwordChangedBody =>
      'आपका नया पासवर्ड सहेज लिया गया है। आप साइन इन हैं और तैयार हैं।';

  @override
  String get demoModeHint => 'डेमो बिल्ड — खाते की ज़रूरत नहीं';

  @override
  String get demoModeFill => 'भर दें';

  @override
  String get welcomeTrackTitle => 'देखें आपका पैसा कहाँ जाता है';

  @override
  String get welcomeTrackBody =>
      'जो आता है और जो जाता है, दोनों दर्ज करें। RainyPenny उसे ऐसी तस्वीर में बदल देता है जो सचमुच पढ़ी जा सके।';

  @override
  String get welcomeBudgetTitle => 'ऐसी सीमाएँ जो टिकें';

  @override
  String get welcomeBudgetBody =>
      'अपने खर्च के हर हिस्से पर मासिक सीमा रखें, और सीमा पार होने से पहले जानें — बाद में नहीं।';

  @override
  String get welcomeGoalsTitle => 'जो अहम है उसके लिए बचत करें';

  @override
  String get welcomeGoalsBody =>
      'लक्ष्य को नाम दें, राशि तय करें, और उसे भरते देखें। मुश्किल दिनों का कोष तब आसानी से बनता है जब वह दिखे।';

  @override
  String get welcomePrivacyTitle => 'आपका पैसा आपका ही रहता है';

  @override
  String get welcomePrivacyBody =>
      'आपके आँकड़े सिर्फ़ आपके हैं। न कुछ बेचा जाता है, न किसी से साझा किया जाता है।';

  @override
  String stepOf(int step, int total) {
    return 'चरण $step / $total';
  }

  @override
  String get onboardingNameTitle => 'हम आपको क्या कहकर बुलाएँ?';

  @override
  String get onboardingNameBody =>
      'इसका उपयोग सिर्फ़ अभिवादन में होगा, और कहीं नहीं।';

  @override
  String get onboardingNameHint => 'पहला नाम काफ़ी है। बाद में बदल सकते हैं।';

  @override
  String get onboardingCurrencyTitle => 'आप कौन-सी मुद्रा इस्तेमाल करते हैं?';

  @override
  String get onboardingCurrencyBody =>
      'ऐप में हर राशि इसी मुद्रा में दिखेगी। इसे चुनने से कोई रूपांतरण नहीं होता।';

  @override
  String get onboardingCurrencySearch => 'सभी मुद्राओं में खोजें';

  @override
  String get onboardingAppearanceTitle => 'इसे अपना बनाएँ';

  @override
  String get onboardingAppearanceBody =>
      'एक रूप चुनें। छूते ही सब बदल जाता है, और आप कभी भी लौट सकते हैं।';

  @override
  String get onboardingNotificationsTitle => 'पकड़ बनाए रखें';

  @override
  String get onboardingNotificationsBody =>
      'सही समय पर हल्की-सी याद ही इसे आदत बनाती है।';

  @override
  String get onboardingNotifyReminders => 'खर्च दर्ज करने की सौम्य याद';

  @override
  String get onboardingNotifyBudget => 'बजट खत्म होने से पहले चेतावनी';

  @override
  String get onboardingNotifySummary =>
      'आपका पैसा कहाँ गया, इसका साप्ताहिक सार';

  @override
  String get onboardingNotifyEnable => 'सूचनाएँ चालू करें';

  @override
  String get onboardingNotifyDone => 'सूचना सेटिंग सहेजी गई';

  @override
  String get onboardingNotifyLater =>
      'यह सब आप सेटिंग में जब चाहें बदल सकते हैं।';

  @override
  String get onboardingReadyTitle => 'सब तैयार है';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'सब तैयार है, $name';
  }

  @override
  String get onboardingReadyBody =>
      'सेटअप हो गया। क्या ऐप कैसे चलता है, इसकी छोटी-सी सैर करेंगे?';

  @override
  String get onboardingTakeTour => 'मुझे दिखाइए';

  @override
  String get onboardingGoToApp => 'ऐप पर ले चलें';

  @override
  String get onboardingTourLater =>
      'अभी नहीं? गाइड सेटिंग में रहेगी, जब चाहें देख लें।';

  @override
  String get beginnersGuide => 'शुरुआती गाइड';

  @override
  String get guideFinish => 'समाप्त';

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
      'सब यहीं से शुरू होता है। ऊपर वाला कार्ड बताता है कि आपके पास क्या बचा है; उसके नीचे इस अवधि की आय और व्यय, फिर आपका खर्च, बजट और लक्ष्य।';

  @override
  String get guideDashboardTip1 =>
      'सब कुछ एक साथ ताज़ा करने के लिए स्क्रीन नीचे खींचें।';

  @override
  String get guideDashboardTip2 =>
      'उस सूची पर सीधे जाने के लिए आय या व्यय कार्ड पर टैप करें।';

  @override
  String get guideDashboardTip3 =>
      'जैसे ही आप कुछ दर्ज करते हैं, रिंग और सुझाव अपडेट हो जाते हैं।';

  @override
  String get guideAddTitle => 'पैसा दर्ज करना';

  @override
  String get guideAddBody =>
      'बार के बीच वाला बटन ही शुरुआत है। यह एक छोटा मेन्यू खोलता है: खर्च, आय, कर्ज़, बजट या बचत लक्ष्य।';

  @override
  String get guideAddTip1 => 'आय या खर्च दर्ज करने के लिए बीच वाला बटन दबाएँ।';

  @override
  String get guideAddTip2 =>
      'मेन्यू छोड़कर सीधे नए खर्च पर जाने के लिए उसे दबाए रखें।';

  @override
  String get guideAddTip3 =>
      'श्रेणी हमेशा चुनें — चार्ट और बजट इसी से काम करते हैं।';

  @override
  String get guideCategoriesTitle => 'श्रेणियाँ';

  @override
  String get guideCategoriesBody =>
      'श्रेणियाँ खर्च को समूहों में बाँटती हैं। ऐप के साथ आने वाली श्रेणियाँ ज़्यादातर लोगों के लिए काफ़ी हैं, और आप उनके नाम बदल सकते हैं या अपनी जोड़ सकते हैं।';

  @override
  String get guideCategoriesTip1 =>
      'बदलने या जोड़ने के लिए सेटिंग, फिर श्रेणियाँ प्रबंधित करें।';

  @override
  String get guideCategoriesTip2 =>
      'बिना श्रेणी वाली हर चीज़ «अन्य» में जाती है, ताकि चार्ट सही रहें।';

  @override
  String get guideBudgetTitle => 'बजट';

  @override
  String get guideBudgetBody =>
      'बजट किसी एक श्रेणी की मासिक सीमा है। खर्च के साथ पट्टी भरती है और सीमा पास आते ही रंग बदलती है, इसलिए पार करने से पहले ही पता चल जाता है।';

  @override
  String get guideBudgetTip1 =>
      'एक साथ सब नहीं — दो-तीन श्रेणियों से शुरू करें।';

  @override
  String get guideBudgetTip2 =>
      'सीमा अपने सामान्य खर्च से थोड़ी ऊपर रखें, फिर धीरे-धीरे कसें।';

  @override
  String get guideBudgetTip3 =>
      'बजट अलर्ट चालू रहने दें, ऐप समय रहते चेता देगा।';

  @override
  String get guideSavingsTitle => 'बचत लक्ष्य';

  @override
  String get guideSavingsBody =>
      'जिसके लिए बचत कर रहे हैं उसे नाम दें, राशि और तारीख तय करें — ऐप हिसाब लगा देगा कि हर महीने कितना अलग रखना है।';

  @override
  String get guideSavingsTip1 =>
      'नाम वाला लक्ष्य, बचत के अस्पष्ट इरादे से कहीं आसानी से निभता है।';

  @override
  String get guideSavingsTip2 =>
      'एक बड़े लक्ष्य से ज़्यादा बार कई छोटे लक्ष्य पूरे होते हैं।';

  @override
  String get guideLoansTitle => 'कर्ज़ और ऋण';

  @override
  String get guideLoansBody =>
      'जो आप पर बकाया है, उसकी लागत और अगली किस्त की तारीख दर्ज करें। जो कुछ चुका रहे हैं, वह सब शेष राशि के साथ एक सूची में रहता है।';

  @override
  String get guideLoansTip1 =>
      'देय तारीख जोड़ दें, भुगतान की याद अपने-आप आती रहेगी।';

  @override
  String get guideLoansTip2 =>
      'बकाया कर्ज़ चुकाने तक डैशबोर्ड पर लाल रंग में दिखता है।';

  @override
  String get guideReportsTitle => 'रिपोर्ट';

  @override
  String get guideReportsBody =>
      'गहरी नज़र: आय बनाम व्यय, श्रेणीवार खर्च, बजट कैसा टिका, और आपकी आय का कितना हिस्सा बचा।';

  @override
  String get guideReportsTip1 =>
      'स्क्रीन के ऊपर से सप्ताह, महीने और तिमाही के बीच बदलें।';

  @override
  String get guideReportsTip2 =>
      'PDF निर्यात करें या साझा करें — वह आपकी भाषा और दिशा में ही बनती है।';

  @override
  String get guideSettingsTitle => 'सेटिंग';

  @override
  String get guideSettingsBody =>
      'भाषा, मुद्रा, रंग और अलर्ट सब यहीं हैं, और सेटअप से कुछ भी तय नहीं हो जाता — जब चाहें बदलें।';

  @override
  String get guideSettingsTip1 =>
      'चालीस भाषाएँ, और दाएँ-से-बाएँ भाषाओं के लिए पूरा लेआउट पलट जाता है।';

  @override
  String get guideSettingsTip2 =>
      'चुनें कि कौन-से अलर्ट चाहिए और वे किन घंटों में आ सकते हैं।';

  @override
  String get guideSettingsTip3 => 'शांत घंटे सब कुछ सुबह तक रोक रखते हैं।';

  @override
  String get guideHabitTitle => 'इसे आदत बनाएँ';

  @override
  String get guideHabitBody =>
      'ऐप उतना ही अच्छा है जितना आप उसमें डालें। महीने में एक घंटे से रोज़ का एक मिनट बेहतर है, और दो हफ़्ते बाद आँकड़े कुछ कहने लगते हैं।';

  @override
  String get guideHabitTip1 =>
      'खर्च उसी समय दर्ज करें, हफ़्ते के आख़िर में नहीं।';

  @override
  String get guideHabitTip2 =>
      'दिन में एक बार डैशबोर्ड देखें। दस सेकंड काफ़ी हैं।';

  @override
  String get guideHabitTip3 => 'यह गाइड सेटिंग में रहती है — जब चाहें लौट आएँ।';

  @override
  String get appearance => 'रूप-रंग';

  @override
  String get themeCaption => 'हल्का, गहरा, या जो आपका फ़ोन कर रहा हो।';

  @override
  String get accentColor => 'मुख्य रंग';

  @override
  String get accentColorCaption => 'बटन, हाइलाइट और चार्ट को रंग देता है।';

  @override
  String get accentSemanticsNote =>
      'आय और व्यय हर थीम में अपने रंग बनाए रखते हैं, इसलिए मुख्य रंग बदलने से किसी आँकड़े का अर्थ नहीं बदलता।';

  @override
  String get accentTeal => 'फ़िरोज़ी';

  @override
  String get accentGreen => 'हरा';

  @override
  String get accentSky => 'आसमानी';

  @override
  String get accentBlue => 'नीला';

  @override
  String get accentIndigo => 'जामुनी नीला';

  @override
  String get accentViolet => 'बैंगनी';

  @override
  String get accentPink => 'गुलाबी';

  @override
  String get accentCrimson => 'सुर्ख़ लाल';

  @override
  String get accentOrange => 'नारंगी';

  @override
  String get accentSlate => 'स्लेटी';

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
      'अंग्रेज़ी नाम या दो अक्षरों का कोड आज़माएँ।';

  @override
  String get rightToLeft => 'दाएँ से बाएँ';

  @override
  String get replayGuide => 'गाइड फिर देखें';

  @override
  String get replaySetup => 'सेटअप दोबारा चलाएँ';

  @override
  String get replaySetupBody =>
      'शुरुआती सवालों से फिर गुज़रें। आपका दर्ज किया कुछ भी नहीं मिटेगा।';

  @override
  String get rateTitle => 'RainyPenny पसंद आ रहा है?';

  @override
  String get rateBody =>
      'आप कुछ समय से इसका इस्तेमाल कर रहे हैं। रेटिंग देने में एक पल लगता है और इससे दूसरों को ऐप खोजने में मदद मिलती है।';

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
  String get carriedForward => 'आगे लाया गया';

  @override
  String get carriedForwardHint => 'पिछले चक्र से बचा हुआ';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get salaryCycle => 'वेतन चक्र';

  @override
  String get payday => 'वेतन दिवस';

  @override
  String get paydayDescription =>
      'वह दिन जब आपका वेतन आता है। आपका वित्तीय महीना इस दिन से अगले वेतन से एक दिन पहले तक चलता है।';

  @override
  String get paydayUpdated => 'वेतन दिवस अपडेट हुआ';

  @override
  String paydayDayOfMonth(int day) {
    return 'दिन $day';
  }

  @override
  String get paydayShortMonthNote =>
      'छोटे महीनों में चक्र महीने के अंतिम दिन से शुरू होता है।';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'वेतन में $count दिन शेष',
      one: 'वेतन में 1 दिन शेष',
      zero: 'चक्र का अंतिम दिन',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'अगला वेतन';

  @override
  String get spentSoFar => 'अब तक खर्च';

  @override
  String get dailyAllowance => 'प्रतिदिन सुरक्षित खर्च';

  @override
  String get overspentNotice => 'आपने इस चक्र में आमदनी से अधिक खर्च किया है।';

  @override
  String get backToThisMonth => 'इस महीने पर लौटें';

  @override
  String get cycleRangeLabel => 'चक्र';

  @override
  String get noSalaryRecorded => 'अभी कोई वेतन दर्ज नहीं';

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
  String get healthNeedsWork => 'सुधार चाहिए';

  @override
  String get healthExcellentBody =>
      'आप अच्छी बचत कर रहे हैं और अपने बजट में रह रहे हैं।';

  @override
  String get healthGoodBody => 'इस अवधि में आपका खर्च सही राह पर है।';

  @override
  String get healthFairBody =>
      'कुछ बजट सीमा के करीब हैं। छोटे बदलाव मदद करेंगे।';

  @override
  String get healthNeedsWorkBody =>
      'खर्च आपकी योजना से आगे निकल रहा है। अपनी सबसे बड़ी श्रेणी से शुरू करें।';

  @override
  String get factorSavingsRate => 'बचत दर';

  @override
  String get factorBudgetControl => 'बजट नियंत्रण';

  @override
  String get factorDebtLoad => 'कर्ज़ का बोझ';

  @override
  String get factorSpendingTrend => 'खर्च की प्रवृत्ति';

  @override
  String factorKept(String percent) {
    return '$percent% बचाया';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% उपयोग';
  }

  @override
  String factorOfIncome(String percent) {
    return 'आय का $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% वृद्धि';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% कमी';
  }

  @override
  String get howScoreWorks => 'यह स्कोर कैसे बनता है';

  @override
  String get healthScoreExplainer =>
      'आपका स्कोर चार बातों को जोड़ता है: आप अपनी आय का कितना हिस्सा बचाते हैं, आप अपने बजट में कितना रहते हैं, आपकी आय का कितना हिस्सा कर्ज़ में जाता है, और आपका खर्च बढ़ रहा है या घट रहा है।';

  @override
  String scoreWeightLabel(int percent) {
    return 'स्कोर का $percent%';
  }

  @override
  String get viewHealthDetails => 'विवरण देखें';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल अपडेट हुई';

  @override
  String get changePhoto => 'फ़ोटो बदलें';

  @override
  String get removePhoto => 'फ़ोटो हटाएँ';

  @override
  String get personalInformationIntro =>
      'आपका नाम और फ़ोटो पूरे ऐप में दिखते हैं। आपका ईमेल वही पता है जिससे आप साइन इन करते हैं।';

  @override
  String get emailNotEditable =>
      'साइन इन पता बदलने के लिए सहायता से संपर्क करें।';

  @override
  String get pressBackAgainToExit => 'बाहर निकलने के लिए फिर से बैक दबाएँ';

  @override
  String get categoryHousing => 'आवास';

  @override
  String get categoryFood => 'खाना और भोजन';

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
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'अन्य';

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
  String get categoryRefund => 'रिफंड और उपहार';

  @override
  String get categoryRentalIncome => 'Rental income';

  @override
  String get addCategory => 'नई श्रेणी';

  @override
  String get filterByCategory => 'श्रेणी से छाँटें';

  @override
  String get allCategories => 'सभी श्रेणियाँ';

  @override
  String get clearFilters => 'फ़िल्टर हटाएँ';

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
