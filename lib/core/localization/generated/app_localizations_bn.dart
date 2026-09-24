// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppL10nBn extends AppL10n {
  AppL10nBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'দুর্দিনের জন্য জমান';

  @override
  String get navHome => 'হোম';

  @override
  String get navTransactions => 'লেনদেন';

  @override
  String get navAdd => 'যোগ';

  @override
  String get navReports => 'রিপোর্ট';

  @override
  String get navProfile => 'প্রোফাইল';

  @override
  String greetingMorning(String name) {
    return 'শুভ সকাল, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'শুভ অপরাহ্ন, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'শুভ সন্ধ্যা, $name';
  }

  @override
  String get greetingSubtitle => 'এই যে আপনার আর্থিক চিত্র';

  @override
  String get totalBalance => 'মোট ব্যালেন্স';

  @override
  String get vsLastPeriod => 'গত সময়ের তুলনায়';

  @override
  String get income => 'আয়';

  @override
  String get expenses => 'ব্যয়';

  @override
  String get netBalance => 'নিট ব্যালেন্স';

  @override
  String get lastThirtyDays => 'গত ৩০ দিন';

  @override
  String get quickActions => 'দ্রুত কাজ';

  @override
  String get addIncome => 'আয় যোগ করুন';

  @override
  String get addExpense => 'ব্যয় যোগ করুন';

  @override
  String get spendingOverview => 'খরচের সারসংক্ষেপ';

  @override
  String get recentTransactions => 'সাম্প্রতিক লেনদেন';

  @override
  String get seeAll => 'সব দেখুন';

  @override
  String get viewAll => 'সবগুলো দেখুন';

  @override
  String get budgetProgress => 'বাজেটের অগ্রগতি';

  @override
  String get savingsGoals => 'সঞ্চয়ের লক্ষ্য';

  @override
  String get financialInsight => 'আর্থিক পর্যবেক্ষণ';

  @override
  String get financialHealth => 'আর্থিক স্বাস্থ্য';

  @override
  String ofTotal(String total) {
    return '$total-এর মধ্যে';
  }

  @override
  String get searchTransactions => 'লেনদেন খুঁজুন';

  @override
  String get filterAll => 'সব';

  @override
  String get filterIncome => 'আয়';

  @override
  String get filterExpenses => 'ব্যয়';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get noTransactionsTitle => 'কোনো লেনদেন পাওয়া যায়নি';

  @override
  String get noTransactionsBody =>
      'অন্য কিছু খুঁজে দেখুন বা ফিল্টার বদলে আরও রেকর্ড দেখুন।';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি লেনদেন',
      one: '$countটি লেনদেন',
      zero: 'কোনো লেনদেন নেই',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'লেনদেন যোগ করুন';

  @override
  String get amount => 'পরিমাণ';

  @override
  String get category => 'শ্রেণি';

  @override
  String get date => 'তারিখ';

  @override
  String get note => 'নোট';

  @override
  String get noteHint => 'নোট (ঐচ্ছিক)';

  @override
  String get saveIncome => 'আয় সংরক্ষণ';

  @override
  String get saveExpense => 'ব্যয় সংরক্ষণ';

  @override
  String get selectCategory => 'শ্রেণি বাছুন';

  @override
  String get transactionSaved => 'লেনদেন সংরক্ষিত';

  @override
  String get amountRequired => 'শূন্যের চেয়ে বড় পরিমাণ লিখুন';

  @override
  String get titleRequired => 'এই লেনদেনের একটি নাম দিন';

  @override
  String get descriptionLabel => 'বিবরণ';

  @override
  String get descriptionHint => 'যেমন: বাজার';

  @override
  String get budget => 'বাজেট';

  @override
  String get budgets => 'বাজেট';

  @override
  String get totalBudget => 'মোট বাজেট';

  @override
  String get spent => 'খরচ হয়েছে';

  @override
  String get remaining => 'বাকি';

  @override
  String budgetUsed(int percent) {
    return '$percent% ব্যবহৃত';
  }

  @override
  String get onTrack => 'ঠিক পথে';

  @override
  String get approachingLimit => 'সীমার কাছে';

  @override
  String get overBudget => 'বাজেট ছাড়িয়েছে';

  @override
  String get savings => 'সঞ্চয়';

  @override
  String get yourGoals => 'আপনার লক্ষ্য';

  @override
  String get saved => 'জমা হয়েছে';

  @override
  String get target => 'লক্ষ্য';

  @override
  String get monthlyContribution => 'মাসিক';

  @override
  String get addFunds => 'টাকা যোগ করুন';

  @override
  String get goalComplete => 'লক্ষ্য পূর্ণ';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আর $count মাস বাকি',
      one: 'আর $count মাস বাকি',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ঋণ ও দেনা';

  @override
  String get totalOutstanding => 'মোট বকেয়া';

  @override
  String get monthlyPayment => 'মাসিক';

  @override
  String get nextPayment => 'পরবর্তী কিস্তি';

  @override
  String paidOff(int percent) {
    return '$percent% শোধ হয়েছে';
  }

  @override
  String get interestRate => 'সুদ';

  @override
  String get upcomingPayments => 'আসন্ন কিস্তি';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আর $count দিন পর',
      one: 'আর $count দিন পর',
      zero: 'আজ দিতে হবে',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'মেয়াদ পার';

  @override
  String get reports => 'রিপোর্ট';

  @override
  String get week => 'সপ্তাহ';

  @override
  String get month => 'মাস';

  @override
  String get quarter => 'ত্রৈমাসিক';

  @override
  String get incomeVsExpenses => 'আয় বনাম ব্যয়';

  @override
  String get spendingByCategory => 'শ্রেণি অনুযায়ী খরচ';

  @override
  String get budgetPerformance => 'বাজেটের ফল';

  @override
  String get insights => 'পর্যবেক্ষণ';

  @override
  String get savingsRate => 'সঞ্চয়ের হার';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get personalInformation => 'ব্যক্তিগত তথ্য';

  @override
  String get changePassword => 'পাসওয়ার্ড বদলান';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get preferences => 'পছন্দ';

  @override
  String get language => 'ভাষা';

  @override
  String get currency => 'মুদ্রা';

  @override
  String get theme => 'থিম';

  @override
  String get security => 'নিরাপত্তা';

  @override
  String get privacyAndSecurity => 'গোপনীয়তা ও নিরাপত্তা';

  @override
  String get help => 'সহায়তা';

  @override
  String get helpAndSupport => 'সহায়তা ও সাপোর্ট';

  @override
  String get termsAndConditions => 'শর্তাবলি';

  @override
  String get logOut => 'লগ আউট';

  @override
  String memberSince(String date) {
    return '$date থেকে সদস্য';
  }

  @override
  String get themeSystem => 'সিস্টেম অনুযায়ী';

  @override
  String get themeLight => 'উজ্জ্বল';

  @override
  String get themeDark => 'গাঢ়';

  @override
  String get settings => 'সেটিংস';

  @override
  String get noNotificationsTitle => 'সব দেখা হয়ে গেছে';

  @override
  String get noNotificationsBody => 'নতুন পর্যবেক্ষণ ও অনুস্মারক এখানে আসবে।';

  @override
  String get cancel => 'বাতিল';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get retry => 'আবার চেষ্টা';

  @override
  String get close => 'বন্ধ';

  @override
  String get somethingWentWrong => 'কিছু একটা ভুল হয়েছে';

  @override
  String get comingSoon => 'পূর্ণ সংস্করণে আসছে';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get delete => 'মুছুন';

  @override
  String get undo => 'ফেরান';

  @override
  String get add => 'যোগ';

  @override
  String get create => 'তৈরি';

  @override
  String get nameRequired => 'একটি নাম দিন';

  @override
  String get amountAboveZero => 'শূন্যের চেয়ে বড় পরিমাণ লিখুন';

  @override
  String get editTransaction => 'লেনদেন সম্পাদনা';

  @override
  String get deleteTransaction => 'লেনদেন মুছবেন?';

  @override
  String deleteTransactionBody(String title) {
    return '$title আপনার হিসাব থেকে সরে যাবে।';
  }

  @override
  String get transactionDeleted => 'লেনদেন মোছা হয়েছে';

  @override
  String get transactionUpdated => 'লেনদেন হালনাগাদ হয়েছে';

  @override
  String get newBudget => 'নতুন বাজেট';

  @override
  String get editBudget => 'বাজেট সম্পাদনা';

  @override
  String get budgetLimit => 'মাসিক সীমা';

  @override
  String get deleteBudget => 'বাজেট মুছবেন?';

  @override
  String deleteBudgetBody(String category) {
    return '$category বাজেটটি সরে যাবে। আপনার লেনদেনে কোনো প্রভাব পড়বে না।';
  }

  @override
  String get budgetSaved => 'বাজেট সংরক্ষিত';

  @override
  String get budgetDeleted => 'বাজেট মোছা হয়েছে';

  @override
  String get allCategoriesBudgeted => 'প্রতিটি শ্রেণিতেই ইতিমধ্যে বাজেট আছে';

  @override
  String get noBudgetsTitle => 'এখনো কোনো বাজেট নেই';

  @override
  String get noBudgetsBody =>
      'কোনো শ্রেণিতে মাসিক সীমা দিন, তাহলেই হিসাব রাখা শুরু হবে।';

  @override
  String get newGoal => 'নতুন লক্ষ্য';

  @override
  String get editGoal => 'লক্ষ্য সম্পাদনা';

  @override
  String get goalName => 'লক্ষ্যের নাম';

  @override
  String get goalNameHint => 'যেমন: জরুরি তহবিল';

  @override
  String get targetAmount => 'লক্ষ্যমাত্রা';

  @override
  String get alreadySaved => 'ইতিমধ্যে জমা';

  @override
  String get deleteGoal => 'লক্ষ্য মুছবেন?';

  @override
  String deleteGoalBody(String name) {
    return '$name এবং তার অগ্রগতি সরে যাবে।';
  }

  @override
  String get goalSaved => 'লক্ষ্য সংরক্ষিত';

  @override
  String get goalDeleted => 'লক্ষ্য মোছা হয়েছে';

  @override
  String get noGoalsTitle => 'এখনো কোনো সঞ্চয়ের লক্ষ্য নেই';

  @override
  String get noGoalsBody =>
      'একটি লক্ষ্য ঠিক করুন, RainyPenny আপনার অগ্রগতির হিসাব রাখবে।';

  @override
  String get fundsAdded => 'টাকা যোগ হয়েছে';

  @override
  String get newDebt => 'নতুন ঋণ বা কার্ড';

  @override
  String get editDebt => 'ঋণ সম্পাদনা';

  @override
  String get debtName => 'নাম';

  @override
  String get debtNameHint => 'যেমন: গাড়ির ঋণ';

  @override
  String get lender => 'ঋণদাতা';

  @override
  String get lenderHint => 'যেমন: সোনালী ব্যাংক';

  @override
  String get originalAmount => 'মূল পরিমাণ';

  @override
  String get creditLimit => 'ক্রেডিট সীমা';

  @override
  String get remainingBalance => 'বাকি ব্যালেন্স';

  @override
  String get interestRatePercent => 'সুদের হার (%)';

  @override
  String get kindLoan => 'ঋণ';

  @override
  String get kindCreditCard => 'ক্রেডিট কার্ড';

  @override
  String get recordPayment => 'কিস্তি নথিভুক্ত করুন';

  @override
  String get paymentRecorded => 'কিস্তি নথিভুক্ত হয়েছে';

  @override
  String get deleteDebt => 'এই দেনা মুছবেন?';

  @override
  String deleteDebtBody(String name) {
    return '$name আপনার দেনার তালিকা থেকে সরে যাবে।';
  }

  @override
  String get debtSaved => 'সংরক্ষিত';

  @override
  String get debtDeleted => 'মোছা হয়েছে';

  @override
  String get noDebtsTitle => 'কোনো দেনা নেই';

  @override
  String get noDebtsBody =>
      'ঋণ বা ক্রেডিট কার্ড যোগ করে কিস্তির দিকে নজর রাখুন।';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject বাজেট ছাড়িয়ে গেছে';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'এই সময়ে আপনি $subject বাজেটের চেয়ে $amount বেশি খরচ করেছেন।';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject সীমার কাছাকাছি';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'আপনার $subject বাজেটের $percent% ব্যবহৃত, বাকি $amount।';
  }

  @override
  String get insightOverIncomeTitle => 'খরচ আয়ের চেয়ে বেশি';

  @override
  String get insightOverIncomeBody =>
      'এই সময়ে আপনি আয়ের চেয়ে বেশি খরচ করেছেন। সবচেয়ে বড় শ্রেণিগুলো দেখে হিসাব সামলে নিন।';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject খরচ বেড়েছে';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'আপনার $subject খরচ আগের সময়ের চেয়ে $percent% বেশি।';
  }

  @override
  String get insightTrendDownTitle => 'খরচ কমছে';

  @override
  String insightTrendDownBody(int percent) {
    return 'সব মিলিয়ে খরচ আগের সময়ের চেয়ে $percent% কম।';
  }

  @override
  String get insightTrendUpTitle => 'খরচ বাড়ছে';

  @override
  String insightTrendUpBody(int percent) {
    return 'সব মিলিয়ে খরচ আগের সময়ের চেয়ে $percent% বেশি।';
  }

  @override
  String get insightSavingsStrongTitle => 'এই সময়ে সঞ্চয় ভালো হয়েছে';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'আপনি আয়ের $percent% রেখে দিয়েছেন — $target% লক্ষ্যের অনেক ওপরে।';
  }

  @override
  String get insightSavingsLowTitle => 'সঞ্চয়ের হার লক্ষ্যের নিচে';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'এই সময়ে আপনি আয়ের $percent% রেখেছেন। লক্ষ্য $target%।';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject প্রায় পূর্ণ';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject-এ পৌঁছাতে আর মাত্র $amount বাকি।';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject ঠিক পথে';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months মাসে',
      one: '$months মাসে',
    );
    return 'মাসে $amount করে রাখলে $_temp0 এই লক্ষ্যে পৌঁছে যাবেন।';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject কিস্তির মেয়াদ পেরিয়েছে';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days দিন',
      one: '$days দিন',
    );
    return '$subject-এর $amount কিস্তি $_temp0 ধরে বকেয়া।';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject কিস্তি আসছে';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'আর $days দিন পর',
      one: 'আর $days দিন পর',
      zero: 'আজ',
    );
    return '$amount দিতে হবে $_temp0।';
  }

  @override
  String get signIn => 'সাইন ইন';

  @override
  String get signUp => 'অ্যাকাউন্ট খুলুন';

  @override
  String get signInSubtitle => 'ফিরে আসায় স্বাগতম। আপনার টাকা অপেক্ষা করছে।';

  @override
  String get signUpSubtitle => 'কয়েকটি তথ্য দিলেই হয়ে যাবে।';

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'পাসওয়ার্ড';

  @override
  String get passwordHint => 'অন্তত ৮টি অক্ষর';

  @override
  String get fullNameLabel => 'পুরো নাম';

  @override
  String get fullNameHint => 'রফিক আহমেদ';

  @override
  String get forgotPassword => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get resetSent => 'রিসেট লিংকের জন্য ইনবক্স দেখুন';

  @override
  String get noAccountYet => 'নতুন এসেছেন?';

  @override
  String get haveAccount => 'আগে থেকেই অ্যাকাউন্ট আছে?';

  @override
  String get emailInvalid => 'সঠিক ইমেইল ঠিকানা লিখুন';

  @override
  String get passwordTooShort => 'অন্তত ৮টি অক্ষর দিন';

  @override
  String get signOutConfirm => 'সাইন আউট করবেন?';

  @override
  String get signOutBody => 'আবার হিসাব দেখতে হলে আপনাকে ফের সাইন ইন করতে হবে।';

  @override
  String get dataSource => 'ডেটার উৎস';

  @override
  String get insightWeeklySummaryTitle => 'আপনার সপ্তাহের হিসাব';

  @override
  String get insightWeeklySummaryBody =>
      'এই সপ্তাহে টাকা কোথায় গেল আর বাজেট কেমন চলল, দেখে নিন।';

  @override
  String get notificationSettings => 'বিজ্ঞপ্তি';

  @override
  String get alertsSection => 'সতর্কতা';

  @override
  String get budgetAlerts => 'বাজেট সতর্কতা';

  @override
  String get budgetAlertsBody => 'বাজেট সীমার কাছে গেলে বা ছাড়িয়ে গেলে';

  @override
  String get paymentReminders => 'কিস্তির অনুস্মারক';

  @override
  String get paymentRemindersBody => 'কিস্তির তারিখের কয়েক দিন আগে';

  @override
  String get savingsUpdates => 'সঞ্চয়ের খবর';

  @override
  String get savingsUpdatesBody => 'আপনার লক্ষ্যের দিকে অগ্রগতি';

  @override
  String get weeklySummaryLabel => 'সাপ্তাহিক সারসংক্ষেপ';

  @override
  String get weeklySummaryBody => 'গত সপ্তাহের সংক্ষিপ্ত হিসাব';

  @override
  String get scheduleSection => 'সময়';

  @override
  String get reminderTime => 'অনুস্মারকের সময়';

  @override
  String get quietHours => 'নীরব সময়';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'সারসংক্ষেপের দিন';

  @override
  String get permissionRequired => 'বিজ্ঞপ্তি বন্ধ আছে';

  @override
  String get permissionRequiredBody =>
      'বিজ্ঞপ্তির অনুমতি দিন, যাতে বাজেট বা কিস্তি হাতছাড়া হওয়ার আগেই RainyPenny জানাতে পারে।';

  @override
  String get allowNotifications => 'বিজ্ঞপ্তির অনুমতি দিন';

  @override
  String get permissionDenied =>
      'বিজ্ঞপ্তি আটকানো আছে। ডিভাইসের সেটিংস থেকে চালু করতে পারেন।';

  @override
  String get upcomingAlerts => 'নির্ধারিত';

  @override
  String get noScheduledAlerts => 'এখন কিছুই নির্ধারিত নেই';

  @override
  String get noScheduledAlertsBody =>
      'বাজেট আর কিস্তি সীমার কাছে এলে সতর্কতা এখানে দেখা যাবে।';

  @override
  String scheduledFor(String date) {
    return '$date-এর জন্য নির্ধারিত';
  }

  @override
  String get everyWeek => 'প্রতি সপ্তাহে';

  @override
  String get allNotificationsOff => 'সব বিজ্ঞপ্তি বন্ধ';

  @override
  String get needsAttention => 'নজর দরকার';

  @override
  String get quickActionsTitle => 'কী করতে চান?';

  @override
  String get createSection => 'লিখে রাখুন';

  @override
  String get jumpToSection => 'চলে যান';

  @override
  String get addLoanAction => 'ঋণ যোগ করুন';

  @override
  String get addBudgetAction => 'বাজেট যোগ করুন';

  @override
  String get addGoalAction => 'লক্ষ্য যোগ করুন';

  @override
  String get longPressHint => 'পরামর্শ: + চেপে ধরলেই সরাসরি খরচ লেখা যায়';

  @override
  String get searchCurrencies => 'মুদ্রা খুঁজুন';

  @override
  String get noCurrenciesFound => 'কোনো মুদ্রা পাওয়া যায়নি';

  @override
  String get noCurrenciesFoundMessage => 'অন্য কোড, প্রতীক বা নাম দিয়ে দেখুন।';

  @override
  String get popularCurrencies => 'জনপ্রিয়';

  @override
  String get allCurrencies => 'সব মুদ্রা';

  @override
  String get totalLoanAmount => 'মোট ঋণের পরিমাণ';

  @override
  String get installmentAmount => 'কিস্তির পরিমাণ';

  @override
  String get numberOfInstallments => 'কিস্তির সংখ্যা';

  @override
  String get paidInstallments => 'পরিশোধিত কিস্তি';

  @override
  String get remainingInstallments => 'বাকি কিস্তি';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total-এর মধ্যে $paidটি পরিশোধিত';
  }

  @override
  String get finalPayment => 'শেষ কিস্তি';

  @override
  String get paymentDueDate => 'কিস্তির তারিখ';

  @override
  String dueOnDayOfMonth(int day) {
    return 'প্রতি মাসের $day তারিখে';
  }

  @override
  String get loanStatus => 'অবস্থা';

  @override
  String get statusActive => 'ঠিক পথে';

  @override
  String get statusDueSoon => 'শিগগিরই দিতে হবে';

  @override
  String get statusOverdue => 'মেয়াদ পার';

  @override
  String get statusCompleted => 'পরিশোধিত';

  @override
  String get repaymentProgress => 'পরিশোধের অগ্রগতি';

  @override
  String get byAmount => 'পরিমাণ অনুযায়ী';

  @override
  String get byInstallments => 'কিস্তি অনুযায়ী';

  @override
  String get startDate => 'শুরুর তারিখ';

  @override
  String get openEnded => 'মেয়াদহীন';

  @override
  String get loanDetails => 'ঋণের বিবরণ';

  @override
  String get notSet => 'নির্ধারিত নয়';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject আজ দিতে হবে';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'আপনার $amount কিস্তি আজ দিতে হবে। এক চাপেই সময়মতো হয়ে যাবে।';
  }

  @override
  String get remindMorningTitle => 'শুভ সকাল ☀️';

  @override
  String get remindMorningBody =>
      'টাকার হিসাব হাতে রেখে দিন শুরু করুন। গতকালের কিছু যোগ করার আছে?';

  @override
  String get remindNoonTitle => 'দুপুরের হিসাব';

  @override
  String get remindNoonBody =>
      'দুপুরের খাবার, চা, ভাড়া? কয়েক সেকেন্ডেই লিখে ফেলুন।';

  @override
  String get remindAfternoonTitle => 'একটু গুছিয়ে নিন';

  @override
  String get remindAfternoonBody =>
      'এ পর্যন্ত যা খরচ হয়েছে লিখে ফেলুন, আজকের হিসাব ঠিক থাকবে।';

  @override
  String get remindEveningTitle => 'দিনের শেষ টানা';

  @override
  String get remindEveningBody => 'এখন দুই মিনিট দিলেই আজকের হিসাব পূর্ণ।';

  @override
  String get happyWeekendTitle => 'ছুটির দিন ভালো কাটুক! 🎉';

  @override
  String get happyWeekendBody =>
      'উপভোগ করুন — আর ছুটির খরচের দিকেও একটু নজর রাখুন।';

  @override
  String get dailyReminders => 'দৈনিক খরচের অনুস্মারক';

  @override
  String get dailyRemindersBody => 'খরচ লিখে রাখতে মৃদু মনে করিয়ে দেওয়া';

  @override
  String get weekendGreeting => 'ছুটির শুভেচ্ছা';

  @override
  String get weekendGreetingBody => 'ছুটি শুরুর সময় একটি শুভেচ্ছা';

  @override
  String get reminderTimesSection => 'অনুস্মারকের সময়';

  @override
  String get slotMorning => 'সকাল';

  @override
  String get slotNoon => 'দুপুর';

  @override
  String get slotAfternoon => 'বিকেল';

  @override
  String get slotEvening => 'সন্ধ্যা';

  @override
  String get everyDay => 'প্রতিদিন';

  @override
  String get financialReport => 'আর্থিক রিপোর্ট';

  @override
  String get preparedFor => 'যাঁর জন্য তৈরি';

  @override
  String get generatedOn => 'তৈরির সময়';

  @override
  String get reportDisclaimer =>
      'আপনার নিজের রেকর্ড থেকে RainyPenny তৈরি করেছে।';

  @override
  String pageOf(int page, int total) {
    return 'পৃষ্ঠা $page / $total';
  }

  @override
  String get overview => 'সারসংক্ষেপ';

  @override
  String get description => 'বিবরণ';

  @override
  String get totalIncome => 'মোট আয়';

  @override
  String get totalExpenses => 'মোট ব্যয়';

  @override
  String get totalSaved => 'মোট সঞ্চয়';

  @override
  String get shareOfTotal => 'অংশ';

  @override
  String get used => 'ব্যবহৃত';

  @override
  String get goal => 'লক্ষ্য';

  @override
  String get targetDate => 'লক্ষ্যের তারিখ';

  @override
  String get progress => 'অগ্রগতি';

  @override
  String get paidOffShort => 'পরিশোধিত';

  @override
  String get transactions => 'লেনদেন';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এবং আরও $countটি লেনদেন',
      one: 'এবং আরও $countটি লেনদেন',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF রপ্তানি';

  @override
  String get sharePdf => 'রিপোর্ট শেয়ার';

  @override
  String get preparingReport => 'রিপোর্ট তৈরি হচ্ছে…';

  @override
  String get reportReady => 'রিপোর্ট তৈরি';

  @override
  String get reportFailed => 'রিপোর্ট তৈরি করা যায়নি';

  @override
  String get categories => 'শ্রেণি';

  @override
  String get categoriesIntro =>
      'নিজের শ্রেণি যোগ করুন, যাতে আয়-ব্যয় ঠিক আপনার ভাবনার মতোই সাজানো যায়।';

  @override
  String get expenseCategories => 'ব্যয়ের শ্রেণি';

  @override
  String get incomeCategories => 'আয়ের শ্রেণি';

  @override
  String get newCategory => 'নতুন শ্রেণি';

  @override
  String get editCategory => 'শ্রেণি সম্পাদনা';

  @override
  String get categoryName => 'নাম';

  @override
  String get categoryNameHint => 'যেমন: পোষা প্রাণী';

  @override
  String get icon => 'আইকন';

  @override
  String get categorySaved => 'শ্রেণি সংরক্ষিত';

  @override
  String get categoryDeleted => 'শ্রেণি মোছা হয়েছে';

  @override
  String get deleteCategory => 'এই শ্রেণি মুছবেন?';

  @override
  String deleteCategoryBody(String name) {
    return '$name আপনার শ্রেণির তালিকা থেকে সরে যাবে।';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি রেকর্ড এখনো এই শ্রেণি ব্যবহার করছে',
      one: '$countটি রেকর্ড এখনো এই শ্রেণি ব্যবহার করছে',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'এখানে এখনো কিছু নেই।';

  @override
  String get builtIn => 'অন্তর্নির্মিত';

  @override
  String get manageCategories => 'শ্রেণি ব্যবস্থাপনা';

  @override
  String get expense => 'ব্যয়';

  @override
  String get languageNote =>
      'আরবি, উর্দু, ফারসি ও হিব্রু পুরো ইন্টারফেস ডান-থেকে-বামে করে দেয় — চার্ট আর PDF রিপোর্টসহ।';

  @override
  String get next => 'পরবর্তী';

  @override
  String get back => 'ফিরুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get continueLabel => 'চালিয়ে যান';

  @override
  String get selected => 'নির্বাচিত';

  @override
  String get passwordRequired => 'আপনার পাসওয়ার্ড লিখুন';

  @override
  String get newPasswordLabel => 'নতুন পাসওয়ার্ড';

  @override
  String get confirmPasswordLabel => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get passwordsDoNotMatch => 'দুটি পাসওয়ার্ড একই হতে হবে';

  @override
  String get showPassword => 'পাসওয়ার্ড দেখান';

  @override
  String get hidePassword => 'পাসওয়ার্ড লুকান';

  @override
  String get savePassword => 'পাসওয়ার্ড সংরক্ষণ';

  @override
  String get backToSignIn => 'সাইন ইনে ফিরুন';

  @override
  String get alreadyHaveAccount => 'আমার আগে থেকেই অ্যাকাউন্ট আছে';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get acceptTerms => 'আমি সেবার শর্তাবলি ও গোপনীয়তা নীতিতে সম্মত';

  @override
  String get acceptTermsRequired => 'চালিয়ে যেতে সম্মতি দিন';

  @override
  String get passwordStrengthTooShort => 'খুব ছোট';

  @override
  String get passwordStrengthWeak => 'দুর্বল';

  @override
  String get passwordStrengthFair => 'মোটামুটি';

  @override
  String get passwordStrengthGood => 'ভালো';

  @override
  String get passwordStrengthStrong => 'শক্তিশালী';

  @override
  String get passwordAdvice =>
      'চিহ্নে ঠাসা ছোট পাসওয়ার্ডের চেয়ে মনে থাকে এমন লম্বা বাক্য ভালো। অন্য কোথাও ব্যবহার করা কিছু বেছে নেবেন না।';

  @override
  String get authInvalidCredentials =>
      'এই ইমেইল ও পাসওয়ার্ড কোনো অ্যাকাউন্টের সঙ্গে মেলে না';

  @override
  String get authEmailNotConfirmed =>
      'সাইন ইনের আগে আপনার ইমেইল ঠিকানা নিশ্চিত করুন';

  @override
  String get authEmailAlreadyRegistered =>
      'এই ইমেইলে একটি অ্যাকাউন্ট আগে থেকেই আছে';

  @override
  String get authWeakPassword => 'আরও লম্বা পাসওয়ার্ড বাছুন';

  @override
  String get authRateLimited =>
      'অনেকবার চেষ্টা হয়েছে। কয়েক মিনিট পরে আবার চেষ্টা করুন';

  @override
  String get authNetworkError => 'সংযোগ নেই। নেটওয়ার্ক দেখে আবার চেষ্টা করুন';

  @override
  String get authGenericError => 'কিছু একটা ভুল হয়েছে। আবার চেষ্টা করুন';

  @override
  String get confirmEmailTitle => 'আপনার ইমেইল দেখুন';

  @override
  String confirmEmailBody(String email) {
    return 'আমরা $email-এ একটি নিশ্চিতকরণ লিংক পাঠিয়েছি। অ্যাকাউন্ট সম্পূর্ণ করতে সেটি খুলুন।';
  }

  @override
  String get resendConfirmation => 'নিশ্চিতকরণ ইমেইল আবার পাঠান';

  @override
  String get confirmationResent => 'নিশ্চিতকরণ ইমেইল পাঠানো হয়েছে';

  @override
  String get forgotPasswordTitle => 'পাসওয়ার্ড রিসেট করুন';

  @override
  String get forgotPasswordSubtitle =>
      'যে ইমেইলে সাইন আপ করেছিলেন সেটি লিখুন, নতুন পাসওয়ার্ড বেছে নেওয়ার লিংক পাঠিয়ে দেব।';

  @override
  String get sendResetLink => 'রিসেট লিংক পাঠান';

  @override
  String get resetLinkSentTitle => 'লিংক পাঠানো হয়েছে';

  @override
  String resetLinkSentBody(String email) {
    return '$email-এর অ্যাকাউন্ট থাকলে রিসেট লিংক পথেই আছে।';
  }

  @override
  String get resetLinkSentHint =>
      'লিংকটি এক ঘণ্টায় মেয়াদ হারায়। না এলে নতুন চাওয়ার আগে স্প্যাম ফোল্ডার দেখুন।';

  @override
  String get tryAnotherEmail => 'অন্য ইমেইল ব্যবহার করুন';

  @override
  String get resetPasswordTitle => 'নতুন পাসওয়ার্ড বাছুন';

  @override
  String get resetPasswordSubtitle =>
      'এই অ্যাকাউন্টে আগে ব্যবহার করেননি এমন কিছু বেছে নিন।';

  @override
  String get passwordChangedTitle => 'পাসওয়ার্ড হালনাগাদ হয়েছে';

  @override
  String get passwordChangedBody =>
      'নতুন পাসওয়ার্ড সংরক্ষিত। আপনি সাইন ইন করা আছেন, শুরু করতে পারেন।';

  @override
  String get demoModeHint => 'ডেমো সংস্করণ — অ্যাকাউন্ট লাগবে না';

  @override
  String get demoModeFill => 'বসিয়ে দিন';

  @override
  String get welcomeTrackTitle => 'টাকা কোথায় যায় দেখুন';

  @override
  String get welcomeTrackBody =>
      'কী আসছে আর কী যাচ্ছে লিখে রাখুন। RainyPenny সেটিকে এমন ছবিতে বদলে দেয় যা সত্যিই পড়া যায়।';

  @override
  String get welcomeBudgetTitle => 'এমন সীমা যা টেকে';

  @override
  String get welcomeBudgetBody =>
      'খরচের প্রতিটি দিকের জন্য মাসিক সীমা ঠিক করুন, আর সীমা পার হওয়ার পরে নয় — আগেই জেনে যান।';

  @override
  String get welcomeGoalsTitle => 'যা জরুরি তার জন্য জমান';

  @override
  String get welcomeGoalsBody =>
      'লক্ষ্যের নাম দিন, পরিমাণ ঠিক করুন, আর ভরে ওঠা দেখুন। দুর্দিনের তহবিল চোখে দেখা গেলে গড়ে তোলা সহজ।';

  @override
  String get welcomePrivacyTitle => 'আপনার টাকা আপনারই থাকে';

  @override
  String get welcomePrivacyBody =>
      'আপনার হিসাব কেবল আপনার। কিছু বিক্রি হয় না, কারও সঙ্গে ভাগও করা হয় না।';

  @override
  String stepOf(int step, int total) {
    return 'ধাপ $step / $total';
  }

  @override
  String get onboardingNameTitle => 'আপনাকে কী বলে ডাকব?';

  @override
  String get onboardingNameBody =>
      'শুধু শুভেচ্ছা জানাতেই ব্যবহার হবে, আর কোথাও নয়।';

  @override
  String get onboardingNameHint => 'ডাকনামই যথেষ্ট। পরে বদলাতে পারবেন।';

  @override
  String get onboardingCurrencyTitle => 'আপনি কোন মুদ্রা ব্যবহার করেন?';

  @override
  String get onboardingCurrencyBody =>
      'অ্যাপের সব অঙ্ক এই মুদ্রাতেই দেখানো হবে। এটি বাছলে কোনো রূপান্তর হয় না।';

  @override
  String get onboardingCurrencySearch => 'সব মুদ্রায় খুঁজুন';

  @override
  String get onboardingAppearanceTitle => 'নিজের মতো সাজান';

  @override
  String get onboardingAppearanceBody =>
      'একটি চেহারা বাছুন। ছোঁয়ার সঙ্গে সঙ্গেই সব বদলায়, আর যখন খুশি ফিরে আসতে পারেন।';

  @override
  String get onboardingNotificationsTitle => 'নজরে রাখুন';

  @override
  String get onboardingNotificationsBody =>
      'সঠিক সময়ে একটি নীরব মনে করিয়ে দেওয়াই এটিকে অভ্যাসে বদলে দেয়।';

  @override
  String get onboardingNotifyReminders =>
      'কত খরচ হলো লিখে রাখার মৃদু অনুস্মারক';

  @override
  String get onboardingNotifyBudget => 'বাজেট ফুরানোর আগেই একটি খবর';

  @override
  String get onboardingNotifySummary => 'টাকা কোথায় গেল তার সাপ্তাহিক হিসাব';

  @override
  String get onboardingNotifyEnable => 'বিজ্ঞপ্তি চালু করুন';

  @override
  String get onboardingNotifyDone => 'বিজ্ঞপ্তির সেটিংস সংরক্ষিত';

  @override
  String get onboardingNotifyLater =>
      'এসবই সেটিংসে গিয়ে যখন খুশি বদলাতে পারবেন।';

  @override
  String get onboardingReadyTitle => 'সব প্রস্তুত';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'সব প্রস্তুত, $name';
  }

  @override
  String get onboardingReadyBody =>
      'সেটআপ শেষ। সবকিছু কীভাবে চলে, একবার দ্রুত দেখে নেবেন?';

  @override
  String get onboardingTakeTour => 'ঘুরিয়ে দেখান';

  @override
  String get onboardingGoToApp => 'অ্যাপে নিয়ে চলুন';

  @override
  String get onboardingTourLater =>
      'এখন নয়? নির্দেশিকা সেটিংসেই থাকবে, যখন খুশি দেখে নেবেন।';

  @override
  String get beginnersGuide => 'শিক্ষানবিশ নির্দেশিকা';

  @override
  String get guideFinish => 'শেষ';

  @override
  String chapterOf(int number, int total) {
    return 'অধ্যায় $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen খুলুন';
  }

  @override
  String get guideDashboardTitle => 'আপনার ড্যাশবোর্ড';

  @override
  String get guideDashboardBody =>
      'সবকিছু এখান থেকেই শুরু। ওপরের কার্ডটি বলে আপনার কত বাকি; তার নিচে এই সময়ের আয় আর ব্যয়, তারপর আপনার খরচ, বাজেট আর লক্ষ্য।';

  @override
  String get guideDashboardTip1 => 'একসঙ্গে সব হালনাগাদ করতে পর্দা নিচে টানুন।';

  @override
  String get guideDashboardTip2 =>
      'সেই তালিকায় সরাসরি যেতে আয় বা ব্যয়ের কার্ডে চাপ দিন।';

  @override
  String get guideDashboardTip3 =>
      'কিছু লিখলেই বৃত্ত আর পর্যবেক্ষণ সঙ্গে সঙ্গে বদলে যায়।';

  @override
  String get guideAddTitle => 'টাকা লিখে রাখা';

  @override
  String get guideAddBody =>
      'বারের মাঝখানের বোতামটিই সব কিছুর শুরু। এটি ছোট একটি মেনু খোলে: ব্যয়, আয়, দেনা, বাজেট বা সঞ্চয়ের লক্ষ্য।';

  @override
  String get guideAddTip1 => 'আয় বা ব্যয় লিখতে মাঝের বোতামে চাপ দিন।';

  @override
  String get guideAddTip2 =>
      'মেনু এড়িয়ে সরাসরি নতুন খরচে যেতে বোতামটি চেপে ধরুন।';

  @override
  String get guideAddTip3 =>
      'সবসময় একটি শ্রেণি বাছুন — চার্ট আর বাজেট এর ওপরেই দাঁড়িয়ে।';

  @override
  String get guideCategoriesTitle => 'শ্রেণি';

  @override
  String get guideCategoriesBody =>
      'শ্রেণি দিয়েই খরচ দলে ভাগ হয়। অ্যাপের সঙ্গে আসা শ্রেণিগুলো বেশির ভাগ মানুষের জন্য যথেষ্ট, আর আপনি নাম বদলাতে বা নিজের যোগ করতে পারেন।';

  @override
  String get guideCategoriesTip1 =>
      'বদলাতে বা যোগ করতে সেটিংস, তারপর শ্রেণি ব্যবস্থাপনা।';

  @override
  String get guideCategoriesTip2 =>
      'শ্রেণিহীন সবকিছু «অন্যান্য»-তে যায়, তাই চার্ট সৎ থাকে।';

  @override
  String get guideBudgetTitle => 'বাজেট';

  @override
  String get guideBudgetBody =>
      'বাজেট মানে একটি শ্রেণির মাসিক সীমা। খরচের সঙ্গে বারটি ভরে ওঠে আর সীমার কাছে এলে রং বদলায়, তাই পার হওয়ার আগেই টের পান।';

  @override
  String get guideBudgetTip1 =>
      'সব একসঙ্গে নয় — দুই-তিনটি শ্রেণি দিয়ে শুরু করুন।';

  @override
  String get guideBudgetTip2 =>
      'সীমাটা আপনার সাধারণ খরচের সামান্য ওপরে রাখুন, পরে ধীরে ধীরে কমান।';

  @override
  String get guideBudgetTip3 =>
      'বাজেট সতর্কতা চালু রাখুন, ফুরিয়ে আসার আগেই অ্যাপ জানাবে।';

  @override
  String get guideSavingsTitle => 'সঞ্চয়ের লক্ষ্য';

  @override
  String get guideSavingsBody =>
      'কিসের জন্য জমাচ্ছেন তার নাম দিন, পরিমাণ আর তারিখ ঠিক করুন — অ্যাপ হিসাব করে দেবে প্রতি মাসে কত রাখতে হবে।';

  @override
  String get guideSavingsTip1 =>
      'নাম দেওয়া লক্ষ্য, «জমাব» এমন অস্পষ্ট ইচ্ছার চেয়ে অনেক সহজে টেকে।';

  @override
  String get guideSavingsTip2 =>
      'একটি বড় লক্ষ্যের চেয়ে কয়েকটি ছোট লক্ষ্য বেশিবার পূর্ণ হয়।';

  @override
  String get guideLoansTitle => 'দেনা ও ঋণ';

  @override
  String get guideLoansBody =>
      'কত দেনা, কত খরচ পড়ছে আর পরের কিস্তি কবে — সব লিখে রাখুন। যা কিছু শোধ করছেন, বাকি অঙ্কসহ এক তালিকাতেই থাকে।';

  @override
  String get guideLoansTip1 =>
      'তারিখ যোগ করে দিন, কিস্তির অনুস্মারক আপনার হয়ে তাগাদা দেবে।';

  @override
  String get guideLoansTip2 =>
      'মেয়াদ পেরোনো দেনা শোধ না হওয়া পর্যন্ত ড্যাশবোর্ডে লাল দেখায়।';

  @override
  String get guideReportsTitle => 'রিপোর্ট';

  @override
  String get guideReportsBody =>
      'গভীর দৃষ্টি: আয়ের বিপরীতে ব্যয়, শ্রেণি অনুযায়ী খরচ, বাজেট কেমন টিকল, আর আয়ের কতটা আপনার হাতে থাকল।';

  @override
  String get guideReportsTip1 =>
      'পর্দার ওপরে সপ্তাহ, মাস আর ত্রৈমাসিকের মধ্যে বদল করুন।';

  @override
  String get guideReportsTip2 =>
      'PDF রপ্তানি বা শেয়ার করুন — সেটি আপনার ভাষায় আর সঠিক দিকেই তৈরি হয়।';

  @override
  String get guideSettingsTitle => 'সেটিংস';

  @override
  String get guideSettingsBody =>
      'ভাষা, মুদ্রা, রং আর সতর্কতা সবই এখানে, আর সেটআপে কোনোটাই স্থায়ী হয়ে যায় না — যখন খুশি বদলান।';

  @override
  String get guideSettingsTip1 =>
      'চল্লিশটি ভাষা, আর ডান-থেকে-বাম ভাষার জন্য পুরো লেআউট উল্টে যায়।';

  @override
  String get guideSettingsTip2 =>
      'কোন সতর্কতা চান আর সেগুলো কখন আসতে পারে, বেছে নিন।';

  @override
  String get guideSettingsTip3 => 'নীরব সময় সবকিছু সকাল পর্যন্ত আটকে রাখে।';

  @override
  String get guideHabitTitle => 'অভ্যাস বানিয়ে ফেলুন';

  @override
  String get guideHabitBody =>
      'অ্যাপ ততটাই কাজের, যতটা আপনি এতে দেন। মাসে এক ঘণ্টার চেয়ে দিনে এক মিনিট ভালো, আর দুই সপ্তাহ পরেই সংখ্যাগুলো কিছু বলতে শুরু করে।';

  @override
  String get guideHabitTip1 =>
      'খরচ হওয়ার সঙ্গে সঙ্গেই লিখুন, সপ্তাহের শেষে নয়।';

  @override
  String get guideHabitTip2 =>
      'দিনে একবার ড্যাশবোর্ডে চোখ বুলান। দশ সেকেন্ডই যথেষ্ট।';

  @override
  String get guideHabitTip3 =>
      'এই নির্দেশিকা সেটিংসেই থাকে — যখন খুশি ফিরে আসুন।';

  @override
  String get appearance => 'চেহারা';

  @override
  String get themeCaption => 'উজ্জ্বল, গাঢ়, বা আপনার ফোন যা করছে।';

  @override
  String get accentColor => 'প্রধান রং';

  @override
  String get accentColorCaption => 'বোতাম, হাইলাইট আর চার্টে রং দেয়।';

  @override
  String get accentSemanticsNote =>
      'আয় আর ব্যয় সব থিমেই নিজের রং ধরে রাখে, তাই প্রধান রং বদলালে কোনো সংখ্যার মানে বদলায় না।';

  @override
  String get accentTeal => 'ফিরোজা';

  @override
  String get accentGreen => 'সবুজ';

  @override
  String get accentSky => 'আকাশি';

  @override
  String get accentBlue => 'নীল';

  @override
  String get accentIndigo => 'নীলাভ বেগুনি';

  @override
  String get accentViolet => 'বেগুনি';

  @override
  String get accentPink => 'গোলাপি';

  @override
  String get accentCrimson => 'টকটকে লাল';

  @override
  String get accentOrange => 'কমলা';

  @override
  String get accentSlate => 'ধূসর';

  @override
  String get searchLanguages => 'ভাষা খুঁজুন';

  @override
  String get suggestedLanguages => 'প্রস্তাবিত';

  @override
  String get allLanguages => 'সব ভাষা';

  @override
  String get noLanguagesFound => 'কোনো ভাষা পাওয়া যায়নি';

  @override
  String get noLanguagesFoundMessage =>
      'ইংরেজি নাম বা দুই অক্ষরের কোড দিয়ে দেখুন।';

  @override
  String get rightToLeft => 'ডান থেকে বাম';

  @override
  String get replayGuide => 'নির্দেশিকা আবার দেখুন';

  @override
  String get replaySetup => 'সেটআপ আবার চালান';

  @override
  String get replaySetupBody =>
      'শুরুর প্রশ্নগুলোর মধ্য দিয়ে আবার যান। আপনার লেখা কিছুই মুছে যাবে না।';

  @override
  String get rateTitle => 'RainyPenny ভালো লাগছে?';

  @override
  String get rateBody =>
      'আপনি বেশ কিছুদিন ধরে এটি ব্যবহার করছেন। একটি রেটিং দিতে এক মুহূর্ত লাগে এবং অন্যদের অ্যাপটি খুঁজে পেতে সাহায্য করে।';

  @override
  String get rateAction => 'অ্যাপ রেট করুন';

  @override
  String get rateLater => 'পরে হয়তো';

  @override
  String get rateNever => 'না, ধন্যবাদ';

  @override
  String get rateThanks => 'ধন্যবাদ';

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
