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
  String get appTagline => 'দুর্দিনের জন্য সঞ্চয় করুন';

  @override
  String get navHome => 'হোম';

  @override
  String get navTransactions => 'লেনদেন';

  @override
  String get navAdd => 'যোগ করুন';

  @override
  String get navReports => 'প্রতিবেদন';

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
  String get greetingSubtitle => 'এখানে আপনার আর্থিক সামগ্রিক চিত্র রয়েছে';

  @override
  String get totalBalance => 'মোট ব্যালেন্স';

  @override
  String get vsLastPeriod => 'পূর্ববর্তী মেয়াদের তুলনায়';

  @override
  String get income => 'আয়';

  @override
  String get expenses => 'ব্যয়';

  @override
  String get netBalance => 'নিট ব্যালেন্স';

  @override
  String get lastThirtyDays => 'গত ৩০ দিন';

  @override
  String get quickActions => 'দ্রুত পদক্ষেপ';

  @override
  String get addIncome => 'আয় যোগ করুন';

  @override
  String get addExpense => 'ব্যয় যোগ করুন';

  @override
  String get spendingOverview => 'ব্যয়ের বিবরণ';

  @override
  String get recentTransactions => 'সাম্প্রতিক লেনদেন';

  @override
  String get seeAll => 'সব দেখুন';

  @override
  String get viewAll => 'সব দেখুন';

  @override
  String get budgetProgress => 'বাজেটের অগ্রগতি';

  @override
  String get savingsGoals => 'সঞ্চয়ের লক্ষ্য';

  @override
  String get financialInsight => 'আর্থিক অন্তর্দৃষ্টি';

  @override
  String get financialHealth => 'আর্থিক সক্ষমতা';

  @override
  String ofTotal(String total) {
    return '$total-এর মধ্যে';
  }

  @override
  String get searchTransactions => 'লেনদেন অনুসন্ধান করুন';

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
      'আরও কার্যকলাপ দেখতে ভিন্ন অনুসন্ধান বা ফিল্টার ব্যবহার করে দেখুন।';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি লেনদেন',
      one: '১টি লেনদেন',
      zero: 'কোনো লেনদেন নেই',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'লেনদেন যোগ করুন';

  @override
  String get amount => 'পরিমাণ';

  @override
  String get category => 'বিভাগ';

  @override
  String get date => 'তারিখ';

  @override
  String get note => 'নোট';

  @override
  String get noteHint => 'ঐচ্ছিক নোট';

  @override
  String get saveIncome => 'আয় সংরক্ষণ করুন';

  @override
  String get saveExpense => 'ব্যয় সংরক্ষণ করুন';

  @override
  String get selectCategory => 'বিভাগ নির্বাচন করুন';

  @override
  String get transactionSaved => 'লেনদেন সংরক্ষিত হয়েছে';

  @override
  String get amountRequired => 'শূন্যের চেয়ে বেশি পরিমাণ লিখুন';

  @override
  String get titleRequired => 'এই লেনদেনের একটি নাম দিন';

  @override
  String get descriptionLabel => 'বিবরণ';

  @override
  String get descriptionHint => 'যেমন: মুদি বাজার';

  @override
  String get budget => 'বাজেট';

  @override
  String get budgets => 'বাজেটসমূহ';

  @override
  String get totalBudget => 'মোট বাজেট';

  @override
  String get spent => 'ব্যয়িত';

  @override
  String get remaining => 'অবশিষ্ট';

  @override
  String budgetUsed(int percent) {
    return '$percent% ব্যবহৃত';
  }

  @override
  String get onTrack => 'সঠিক পথে আছে';

  @override
  String get approachingLimit => 'সীমার কাছাকাছি';

  @override
  String get overBudget => 'বাজেটের অতিরিক্ত';

  @override
  String get savings => 'সঞ্চয়';

  @override
  String get yourGoals => 'আপনার লক্ষ্যসমূহ';

  @override
  String get saved => 'সঞ্চিত';

  @override
  String get target => 'লক্ষ্যমাত্রা';

  @override
  String get monthlyContribution => 'মাসিক';

  @override
  String get addFunds => 'অর্থ যোগ করুন';

  @override
  String get goalComplete => 'লক্ষ্য পূরণ হয়েছে';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মাস বাকি',
      one: '১ মাস বাকি',
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
    return '$percent% পরিশোধিত';
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
      other: '$count দিনের মধ্যে প্রদেয়',
      one: 'আগামীকাল প্রদেয়',
      zero: 'আজ প্রদেয়',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get reports => 'প্রতিবেদন';

  @override
  String get week => 'সপ্তাহ';

  @override
  String get month => 'মাস';

  @override
  String get quarter => 'ত্রৈমাসিক';

  @override
  String get incomeVsExpenses => 'আয় বনাম ব্যয়';

  @override
  String get spendingByCategory => 'বিভাগ অনুযায়ী ব্যয়';

  @override
  String get budgetPerformance => 'বাজেটের কার্যকারিতা';

  @override
  String get insights => 'অন্তর্দৃষ্টি';

  @override
  String get savingsRate => 'সঞ্চয়ের হার';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get personalInformation => 'ব্যক্তিগত তথ্য';

  @override
  String get changePassword => 'পাসওয়ার্ড পরিবর্তন করুন';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get preferences => 'পছন্দসমূহ';

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
  String get helpAndSupport => 'সহায়তা ও সমর্থন';

  @override
  String get termsAndConditions => 'শর্তাবলী';

  @override
  String get logOut => 'লগ আউট';

  @override
  String memberSince(String date) {
    return '$date থেকে যুক্ত আছেন';
  }

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'লাইট';

  @override
  String get themeDark => 'ডার্ক';

  @override
  String get settings => 'সেটিংস';

  @override
  String get noNotificationsTitle => 'নতুন কোনো বিজ্ঞপ্তি নেই';

  @override
  String get noNotificationsBody =>
      'নতুন অন্তর্দৃষ্টি এবং অনুস্মারক এখানে প্রদর্শিত হবে।';

  @override
  String get cancel => 'বাতিল';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে';

  @override
  String get comingSoon => 'শীঘ্রই আসছে';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get delete => 'মুছে ফেলুন';

  @override
  String get undo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get add => 'যোগ করুন';

  @override
  String get create => 'তৈরি করুন';

  @override
  String get nameRequired => 'আপনার নাম লিখুন';

  @override
  String get amountAboveZero => 'শূন্যের চেয়ে বেশি পরিমাণ লিখুন';

  @override
  String get editTransaction => 'লেনদেন সম্পাদনা করুন';

  @override
  String get deleteTransaction => 'লেনদেন মুছে ফেলবেন?';

  @override
  String deleteTransactionBody(String title) {
    return '$title আপনার খাতা থেকে মুছে ফেলা হবে।';
  }

  @override
  String get transactionDeleted => 'লেনদেন মুছে ফেলা হয়েছে';

  @override
  String get transactionUpdated => 'লেনদেন আপডেট করা হয়েছে';

  @override
  String get newBudget => 'নতুন বাজেট';

  @override
  String get editBudget => 'বাজেট সম্পাদনা করুন';

  @override
  String get budgetLimit => 'মাসিক সীমা';

  @override
  String get deleteBudget => 'বাজেট মুছে ফেলবেন?';

  @override
  String deleteBudgetBody(String category) {
    return '$category বাজেট মুছে ফেলা হবে। আপনার লেনদেনসমূহ অপরিবর্তিত থাকবে।';
  }

  @override
  String get budgetSaved => 'বাজেট সংরক্ষিত হয়েছে';

  @override
  String get budgetDeleted => 'বাজেট মুছে ফেলা হয়েছে';

  @override
  String get allCategoriesBudgeted =>
      'প্রতিটি বিভাগের জন্য ইতিমধ্যে বাজেট নির্ধারিত আছে';

  @override
  String get noBudgetsTitle => 'এখনো কোনো বাজেট নেই';

  @override
  String get noBudgetsBody =>
      'ট্র্যাকিং শুরু করতে যেকোনো বিভাগে একটি মাসিক সীমা নির্ধারণ করুন।';

  @override
  String get newGoal => 'নতুন লক্ষ্য';

  @override
  String get editGoal => 'লক্ষ্য সম্পাদনা করুন';

  @override
  String get goalName => 'লক্ষ্যের নাম';

  @override
  String get goalNameHint => 'যেমন: জরুরি তহবিল';

  @override
  String get targetAmount => 'লক্ষ্যমাত্রা পরিমাণ';

  @override
  String get alreadySaved => 'ইতিমধ্যে সঞ্চিত';

  @override
  String get deleteGoal => 'লক্ষ্য মুছে ফেলবেন?';

  @override
  String deleteGoalBody(String name) {
    return '$name এবং এর অগ্রগতি মুছে ফেলা হবে।';
  }

  @override
  String get goalSaved => 'লক্ষ্য সংরক্ষিত হয়েছে';

  @override
  String get goalDeleted => 'লক্ষ্য মুছে ফেলা হয়েছে';

  @override
  String get noGoalsTitle => 'এখনো কোনো সঞ্চয়ের লক্ষ্য নেই';

  @override
  String get noGoalsBody =>
      'একটি লক্ষ্যমাত্রা নির্ধারণ করুন এবং RainyPenny আপনার অগ্রগতি পর্যবেক্ষণ করবে।';

  @override
  String get fundsAdded => 'অর্থ যোগ করা হয়েছে';

  @override
  String get newDebt => 'নতুন ঋণ বা ক্রেডিট কার্ড';

  @override
  String get editDebt => 'ঋণ সম্পাদনা করুন';

  @override
  String get debtName => 'নাম';

  @override
  String get debtNameHint => 'যেমন: গাড়ি ঋণ';

  @override
  String get lender => 'ঋণদাতা';

  @override
  String get lenderHint => 'যেমন: ব্যাংক';

  @override
  String get originalAmount => 'মূল পরিমাণ';

  @override
  String get creditLimit => 'ক্রেডিট সীমা';

  @override
  String get remainingBalance => 'অবশিষ্ট ব্যালেন্স';

  @override
  String get interestRatePercent => 'সুদের হার (%)';

  @override
  String get kindLoan => 'ঋণ';

  @override
  String get kindCreditCard => 'ক্রেডিট কার্ড';

  @override
  String get recordPayment => 'পরিশোধ রেকর্ড করুন';

  @override
  String get paymentRecorded => 'পরিশোধ রেকর্ড করা হয়েছে';

  @override
  String get deleteDebt => 'এই ঋণটি মুছে ফেলবেন?';

  @override
  String deleteDebtBody(String name) {
    return '$name আপনার ঋণের তালিকা থেকে মুছে ফেলা হবে।';
  }

  @override
  String get debtSaved => 'সংরক্ষিত হয়েছে';

  @override
  String get debtDeleted => 'মুছে ফেলা হয়েছে';

  @override
  String get noDebtsTitle => 'কোনো ঋণ ট্র্যাক করা হচ্ছে না';

  @override
  String get noDebtsBody =>
      'পরিশোধের ওপর নজর রাখতে একটি ঋণ বা ক্রেডিট কার্ড যোগ করুন।';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject বাজেট অতিক্রম করেছে';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'এই মেয়াদে আপনার $subject বাজেট $amount অতিক্রম করেছে।';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject সীমার কাছাকাছি পৌঁছেছে';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'আপনার $subject বাজেটের $percent% ব্যবহৃত হয়েছে, $amount অবশিষ্ট আছে।';
  }

  @override
  String get insightOverIncomeTitle => 'ব্যয় আয়ের চেয়ে বেশি';

  @override
  String get insightOverIncomeBody =>
      'এই মেয়াদে আপনি আয়ের চেয়ে বেশি ব্যয় করেছেন। পরিস্থিতি নিয়ন্ত্রণে আনতে বড় ব্যয়ের বিভাগগুলো পর্যালোচনা করুন।';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject ব্যয় বৃদ্ধি পেয়েছে';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'আপনার $subject ব্যয় পূর্ববর্তী মেয়াদের তুলনায় $percent% বেশি।';
  }

  @override
  String get insightTrendDownTitle => 'ব্যয় হ্রাসের দিকে';

  @override
  String insightTrendDownBody(int percent) {
    return 'সামগ্রিক ব্যয় পূর্ববর্তী মেয়াদের তুলনায় $percent% কম।';
  }

  @override
  String get insightTrendUpTitle => 'ব্যয় বৃদ্ধির দিকে';

  @override
  String insightTrendUpBody(int percent) {
    return 'সামগ্রিক ব্যয় পূর্ববর্তী মেয়াদের তুলনায় $percent% বেশি।';
  }

  @override
  String get insightSavingsStrongTitle => 'এই মেয়াদে ভালো সঞ্চয় হয়েছে';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'আপনি আপনার আয়ের $percent% সঞ্চয় করেছেন — যা $target% লক্ষ্যমাত্রার চেয়ে অনেক বেশি।';
  }

  @override
  String get insightSavingsLowTitle => 'সঞ্চয়ের হার লক্ষ্যমাত্রার চেয়ে কম';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'এই মেয়াদে আপনি আয়ের $percent% সঞ্চয় করেছেন। $target% সঞ্চয় করার চেষ্টা করুন।';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject লক্ষ্য প্রায় পূরণ হয়েছে';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject লক্ষ্যে পৌঁছাতে মাত্র $amount বাকি।';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject সঠিক পথে রয়েছে';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months মাসে',
      one: '১ মাসে',
    );
    return 'প্রতি মাসে $amount সঞ্চয় করলে আপনি $_temp0 এই লক্ষ্যে পৌঁছাতে পারবেন।';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject কিস্তির মেয়াদ উত্তীর্ণ';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days দিন',
      one: '১ দিন',
    );
    return '$subject-এর $amount টাকার কিস্তি পরিশোধের মেয়াদ $_temp0 পেরিয়ে গেছে।';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject কিস্তি আসন্ন';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days দিনের মধ্যে',
      one: 'আগামীকাল',
      zero: 'আজ',
    );
    return '$amount টাকা $_temp0 প্রদেয়।';
  }

  @override
  String get signIn => 'সাইন ইন';

  @override
  String get signUp => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get signInSubtitle => 'স্বাগতম। আপনার আর্থিক বিবরণ প্রস্তুত রয়েছে।';

  @override
  String get signUpSubtitle => 'কিছু সাধারণ তথ্য দিন এবং শুরু করুন।';

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'পাসওয়ার্ড';

  @override
  String get passwordHint => 'কমপক্ষে ৮টি অক্ষর';

  @override
  String get fullNameLabel => 'পুরো নাম';

  @override
  String get fullNameHint => 'রহিম আহমেদ';

  @override
  String get forgotPassword => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get resetSent => 'রিসেট লিঙ্কের জন্য আপনার ইনবক্স চেক করুন';

  @override
  String get noAccountYet => 'নতুন এসেছেন?';

  @override
  String get haveAccount => 'ইতিমধ্যে অ্যাকাউন্ট আছে?';

  @override
  String get emailInvalid => 'একটি বৈধ ইমেইল ঠিকানা লিখুন';

  @override
  String get passwordTooShort => 'কমপক্ষে ৮টি অক্ষর ব্যবহার করুন';

  @override
  String get signOutConfirm => 'সাইন আউট করবেন?';

  @override
  String get signOutBody =>
      'আপনার আর্থিক বিবরণ দেখতে আপনাকে পুনরায় সাইন ইন করতে হবে।';

  @override
  String get dataSource => 'উপাত্তের উৎস';

  @override
  String get insightWeeklySummaryTitle => 'আপনার সপ্তাহের সারসংক্ষেপ';

  @override
  String get insightWeeklySummaryBody =>
      'এই সপ্তাহে আপনার অর্থ কোথায় ব্যয় হয়েছে এবং বাজেট কেমন রয়েছে তা দেখুন।';

  @override
  String get notificationSettings => 'বিজ্ঞপ্তি';

  @override
  String get alertsSection => 'সতর্কবার্তা';

  @override
  String get budgetAlerts => 'বাজেট সতর্কতা';

  @override
  String get budgetAlertsBody => 'যখন বাজেট সীমার কাছাকাছি বা অতিক্রম করে';

  @override
  String get paymentReminders => 'কিস্তি অনুস্মারক';

  @override
  String get paymentRemindersBody => 'কিস্তির নির্দিষ্ট দিনের কয়েক দিন আগে';

  @override
  String get savingsUpdates => 'সঞ্চয় আপডেট';

  @override
  String get savingsUpdatesBody => 'আপনার লক্ষ্যের দিকে অগ্রগতি';

  @override
  String get weeklySummaryLabel => 'সাপ্তাহিক সারসংক্ষেপ';

  @override
  String get weeklySummaryBody => 'গত সপ্তাহের একটি সংক্ষিপ্ত রূপরেখা';

  @override
  String get scheduleSection => 'সময়সূচী';

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
  String get permissionRequired => 'বিজ্ঞপ্তি বন্ধ রয়েছে';

  @override
  String get permissionRequiredBody =>
      'বিজ্ঞপ্তি চালু করুন যাতে বাজেট বা কিস্তি মিস হওয়ার আগে RainyPenny আপনাকে সতর্ক করতে পারে।';

  @override
  String get allowNotifications => 'বিজ্ঞপ্তি চালু করুন';

  @override
  String get permissionDenied =>
      'বিজ্ঞপ্তি ব্লক করা আছে। আপনি ডিভাইস সেটিংস থেকে এটি চালু করতে পারেন।';

  @override
  String get upcomingAlerts => 'নির্ধারিত অ্যালার্ট';

  @override
  String get noScheduledAlerts => 'এই মুহূর্তে নির্ধারিত কিছু নেই';

  @override
  String get noScheduledAlertsBody =>
      'বাজেট এবং কিস্তির সময় ঘনিয়ে এলে সতর্কবার্তা এখানে দেখাবে।';

  @override
  String scheduledFor(String date) {
    return '$date-এর জন্য নির্ধারিত';
  }

  @override
  String get everyWeek => 'প্রতি সপ্তাহে';

  @override
  String get allNotificationsOff => 'সব বিজ্ঞপ্তি বন্ধ আছে';

  @override
  String get needsAttention => 'মনোযোগ প্রয়োজন';

  @override
  String get quickActionsTitle => 'আপনি কি করতে চান?';

  @override
  String get createSection => 'রেকর্ড';

  @override
  String get jumpToSection => 'দ্রুত যান';

  @override
  String get addLoanAction => 'ঋণ যোগ করুন';

  @override
  String get addBudgetAction => 'বাজেট যোগ করুন';

  @override
  String get addGoalAction => 'লক্ষ্য যোগ করুন';

  @override
  String get longPressHint => 'পরামর্শ: সরাসরি ব্যয় যোগ করতে + চেপে ধরে রাখুন';

  @override
  String get searchCurrencies => 'মুদ্রা অনুসন্ধান করুন';

  @override
  String get noCurrenciesFound => 'কোনো মুদ্রা পাওয়া যায়নি';

  @override
  String get noCurrenciesFoundMessage =>
      'ভিন্ন কোড, প্রতীক বা নাম চেষ্টা করুন।';

  @override
  String get popularCurrencies => 'জনপ্রিয়';

  @override
  String get allCurrencies => 'সকল মুদ্রা';

  @override
  String get totalLoanAmount => 'মোট ঋণের পরিমাণ';

  @override
  String get installmentAmount => 'কিস্তির পরিমাণ';

  @override
  String get numberOfInstallments => 'কিস্তির সংখ্যা';

  @override
  String get paidInstallments => 'পরিশোধিত কিস্তি';

  @override
  String get remainingInstallments => 'অবশিষ্ট কিস্তি';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total-এর মধ্যে $paid পরিশোধিত';
  }

  @override
  String get finalPayment => 'সর্বশেষ কিস্তি';

  @override
  String get paymentDueDate => 'কিস্তি পরিশোধের তারিখ';

  @override
  String dueOnDayOfMonth(int day) {
    return 'প্রতি মাসের $day তারিখ';
  }

  @override
  String get loanStatus => 'স্ট্যাটাস';

  @override
  String get statusActive => 'সক্রিয়';

  @override
  String get statusDueSoon => 'শীঘ্রই প্রদেয়';

  @override
  String get statusOverdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get statusCompleted => 'সম্পূর্ণ পরিশোধিত';

  @override
  String get repaymentProgress => 'পরিশোধের অগ্রগতি';

  @override
  String get byAmount => 'পরিমাণ অনুযায়ী';

  @override
  String get byInstallments => 'কিস্তি অনুযায়ী';

  @override
  String get startDate => 'শুরুর তারিখ';

  @override
  String get openEnded => 'নির্দিষ্ট মেয়াদহীন';

  @override
  String get loanDetails => 'ঋণের বিবরণ';

  @override
  String get notSet => 'নির্ধারিত নয়';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject-এর কিস্তি আজ প্রদেয়';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'আপনার $amount টাকার কিস্তি আজ প্রদেয়। সময়মতো পরিশোধ করতে ট্যাপ করুন।';
  }

  @override
  String get remindMorningTitle => 'শুভ সকাল ☀️';

  @override
  String get remindMorningBody =>
      'দিনের শুরুতেই আর্থিক হিসাব ঠিক রাখুন। গতকালের কিছু যোগ করার আছে কি?';

  @override
  String get remindNoonTitle => 'দুপুরের চেক-ইন';

  @override
  String get remindNoonBody =>
      'দুপুরের খাবার, কফি বা যাতায়াত ভাড়া? কয়েক সেকেন্ডে যোগ করে নিন।';

  @override
  String get remindAfternoonTitle => 'দ্রুত আপডেট';

  @override
  String get remindAfternoonBody =>
      'আজকের খরচগুলো এখনি রেকর্ড করে হিসাব নিখুঁত রাখুন।';

  @override
  String get remindEveningTitle => 'দিনের সমাপ্তি';

  @override
  String get remindEveningBody =>
      'মাত্র দুই মিনিট সময় দিন এবং আজকের হিসাব সম্পন্ন করুন।';

  @override
  String get happyWeekendTitle => 'শুভ ছুটির দিন! 🎉';

  @override
  String get happyWeekendBody =>
      'ছুটির দিন উপভোগ করুন — আর খরচের ওপর নজর রাখুন।';

  @override
  String get dailyReminders => 'দৈনিক খরচের অনুস্মারক';

  @override
  String get dailyRemindersBody =>
      'খরচের হিসাব আপ-টু-ডেট রাখতে সহায়ক নোটিফিকেশন';

  @override
  String get weekendGreeting => 'উইকেন্ড গ্রিটিং';

  @override
  String get weekendGreetingBody => 'ছুটির দিনের শুরুতে শুভেচ্ছা বার্তা';

  @override
  String get reminderTimesSection => 'অনুস্মারকের সময়সূচী';

  @override
  String get slotMorning => 'সকাল';

  @override
  String get slotNoon => 'দুপুর';

  @override
  String get slotAfternoon => 'বিকাল';

  @override
  String get slotEvening => 'সন্ধ্যা';

  @override
  String get everyDay => 'প্রতিদিন';

  @override
  String get financialReport => 'আর্থিক প্রতিবেদন';

  @override
  String get preparedFor => 'যার জন্য প্রস্তুতকৃত';

  @override
  String get generatedOn => 'তৈরির তারিখ';

  @override
  String get reportDisclaimer =>
      'আপনার সংরক্ষিত তথ্যের ভিত্তিতে RainyPenny কর্তৃক প্রস্তুতকৃত।';

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
  String get targetDate => 'লক্ষ্যমাত্রা তারিখ';

  @override
  String get progress => 'অগ্রগতি';

  @override
  String get paidOffShort => 'পরিশোধিত';

  @override
  String get transactions => 'লেনদেনসমূহ';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এবং আরও $countটি লেনদেন',
      one: 'এবং আরও ১টি লেনদেন',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF রপ্তানি করুন';

  @override
  String get sharePdf => 'প্রতিবেদন শেয়ার করুন';

  @override
  String get preparingReport => 'প্রতিবেদন প্রস্তুত করা হচ্ছে…';

  @override
  String get reportReady => 'প্রতিবেদন প্রস্তুত';

  @override
  String get reportFailed => 'প্রতিবেদন তৈরি করা সম্ভব হয়নি';

  @override
  String get categories => 'বিভাগসমূহ';

  @override
  String get categoriesIntro =>
      'আপনার সুবিধা অনুযায়ী আয় এবং ব্যয়ের হিসাব রাখতে নিজস্ব বিভাগ যোগ করুন।';

  @override
  String get expenseCategories => 'ব্যয়ের বিভাগসমূহ';

  @override
  String get incomeCategories => 'আয়ের বিভাগসমূহ';

  @override
  String get newCategory => 'নতুন বিভাগ';

  @override
  String get editCategory => 'বিভাগ সম্পাদনা করুন';

  @override
  String get categoryName => 'নাম';

  @override
  String get categoryNameHint => 'যেমন: গৃহপালিত প্রাণী';

  @override
  String get icon => 'আইকন';

  @override
  String get categorySaved => 'বিভাগ সংরক্ষিত হয়েছে';

  @override
  String get categoryDeleted => 'বিভাগ মুছে ফেলা হয়েছে';

  @override
  String get deleteCategory => 'এই বিভাগটি মুছে ফেলবেন?';

  @override
  String deleteCategoryBody(String name) {
    return '$name আপনার বিভাগসমূহ থেকে মুছে ফেলা হবে।';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি রেকর্ডে এখনো এই বিভাগটি ব্যবহৃত হচ্ছে',
      one: '১টি রেকর্ডে এখনো এই বিভাগটি ব্যবহৃত হচ্ছে',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'এখানে এখনো কিছু নেই।';

  @override
  String get builtIn => 'বিল্ট-ইন';

  @override
  String get manageCategories => 'বিভাগ পরিচালনা করুন';

  @override
  String get expense => 'ব্যয়';

  @override
  String get languageNote =>
      'আরবি, উর্দু, ফার্সি এবং হিব্রু নির্বাচন করলে চার্ট এবং পিডিএফ সহ পুরো ইন্টারফেস ডান-থেকে-বামে পরিবর্তিত হবে।';

  @override
  String get next => 'পরবর্তী';

  @override
  String get back => 'পূর্ববর্তী';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get continueLabel => 'এগিয়ে যান';

  @override
  String get selected => 'নির্বাচিত';

  @override
  String get passwordRequired => 'আপনার পাসওয়ার্ড লিখুন';

  @override
  String get newPasswordLabel => 'নতুন পাসওয়ার্ড';

  @override
  String get confirmPasswordLabel => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get passwordsDoNotMatch => 'উভয় পাসওয়ার্ড একই হতে হবে';

  @override
  String get showPassword => 'পাসওয়ার্ড দেখুন';

  @override
  String get hidePassword => 'পাসওয়ার্ড লুকান';

  @override
  String get savePassword => 'পাসওয়ার্ড সংরক্ষণ করুন';

  @override
  String get backToSignIn => 'সাইন ইন-এ ফিরে যান';

  @override
  String get alreadyHaveAccount => 'আমার ইতিমধ্যে একটি অ্যাকাউন্ট আছে';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get acceptTerms => 'আমি সেবার শর্তাবলী এবং গোপনীয়তা নীতিতে সম্মত';

  @override
  String get acceptTermsRequired => 'এগিয়ে যেতে অনুগ্রহ করে সম্মতি দিন';

  @override
  String get passwordStrengthTooShort => 'খুব সংক্ষিপ্ত';

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
      'প্রতীকে ভরা জটিল ছোট পাসওয়ার্ডের চেয়ে মনে রাখার মতো দীর্ঘ শব্দগুচ্ছ বেশি কার্যকর। অন্য কোথাও ব্যবহৃত পাসওয়ার্ড এড়িয়ে চলুন।';

  @override
  String get authInvalidCredentials => 'ইমেইল এবং পাসওয়ার্ড সঠিক নয়';

  @override
  String get authEmailNotConfirmed =>
      'সাইন ইন করার আগে আপনার ইমেইল নিশ্চিত করুন';

  @override
  String get authEmailAlreadyRegistered =>
      'এই ইমেইল দিয়ে ইতিমধ্যে একটি অ্যাকাউন্ট রয়েছে';

  @override
  String get authWeakPassword => 'একটি শক্তিশালী পাসওয়ার্ড নির্বাচন করুন';

  @override
  String get authRateLimited =>
      'অতিরিক্ত চেষ্টা করা হয়েছে। কয়েক মিনিট পর আবার চেষ্টা করুন';

  @override
  String get authNetworkError =>
      'সংযোগ নেই। ইন্টারনেট সংযোগ পরীক্ষা করে আবার চেষ্টা করুন';

  @override
  String get authGenericError =>
      'কিছু সমস্যা হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন';

  @override
  String get confirmEmailTitle => 'ইমেইল চেক করুন';

  @override
  String confirmEmailBody(String email) {
    return 'আমরা $email ঠিকানায় একটি নিশ্চিতকরণ লিঙ্ক পাঠিয়েছি। অ্যাকাউন্ট সেটআপ সম্পন্ন করতে এটি খুলুন।';
  }

  @override
  String get resendConfirmation => 'নিশ্চিতকরণ ইমেইল পুনরায় পাঠান';

  @override
  String get confirmationResent => 'নিশ্চিতকরণ ইমেইল পাঠানো হয়েছে';

  @override
  String get forgotPasswordTitle => 'পাসওয়ার্ড রিসেট করুন';

  @override
  String get forgotPasswordSubtitle =>
      'আপনার নিবন্ধিত ইমেইল লিখুন এবং আমরা নতুন পাসওয়ার্ড বেছে নেওয়ার জন্য একটি লিঙ্ক পাঠাব।';

  @override
  String get sendResetLink => 'রিসেট লিঙ্ক পাঠান';

  @override
  String get resetLinkSentTitle => 'রিসেট লিঙ্ক পাঠানো হয়েছে';

  @override
  String resetLinkSentBody(String email) {
    return '$email দিয়ে অ্যাকাউন্ট খোলা থাকলে একটি রিসেট লিঙ্ক পাঠানো হয়েছে।';
  }

  @override
  String get resetLinkSentHint =>
      'লিঙ্কটি এক ঘণ্টার মধ্যে মেয়াদোত্তীর্ণ হবে। না পেলে আবার অনুরোধ করার আগে স্প্যাম ফোল্ডার পরীক্ষা করুন।';

  @override
  String get tryAnotherEmail => 'ভিন্ন ইমেইল ব্যবহার করুন';

  @override
  String get resetPasswordTitle => 'নতুন পাসওয়ার্ড বেছে নিন';

  @override
  String get resetPasswordSubtitle =>
      'এমন কিছু বেছে নিন যা আগে এই অ্যাকাউন্টে ব্যবহার করেননি।';

  @override
  String get passwordChangedTitle => 'পাসওয়ার্ড আপডেট করা হয়েছে';

  @override
  String get passwordChangedBody =>
      'আপনার নতুন পাসওয়ার্ড সংরক্ষিত হয়েছে। আপনি সাইন ইন করেছেন।';

  @override
  String get demoModeHint => 'ডেমো সংস্করণ — অ্যাকাউন্টের প্রয়োজন নেই';

  @override
  String get demoModeFill => 'পূরণ করুন';

  @override
  String get welcomeTrackTitle => 'আপনার অর্থ কোথায় ব্যয় হয় তা জানুন';

  @override
  String get welcomeTrackBody =>
      'আয় ও ব্যয়ের হিসাব রাখুন। RainyPenny এটিকে একটি স্পষ্ট ও সহজবোধ্য চিত্রে রূপান্তর করে।';

  @override
  String get welcomeBudgetTitle => 'কার্যকর বাজেট সীমা নির্ধারণ করুন';

  @override
  String get welcomeBudgetBody =>
      'আপনার খরচের প্রতিটি অংশে একটি মাসিক সীমা দিন এবং বাজেট অতিক্রম করার আগেই সতর্কবার্তা পান।';

  @override
  String get welcomeGoalsTitle => 'প্রয়োজনীয় বিষয়ের জন্য সঞ্চয় করুন';

  @override
  String get welcomeGoalsBody =>
      'লক্ষ্যের নাম দিন, পরিমাণ নির্ধারণ করুন এবং অগ্রগতি দেখুন। চোখে দেখলে সঞ্চয় করা সহজ হয়।';

  @override
  String get welcomePrivacyTitle => 'আপনার আর্থিক তথ্য সম্পূর্ণ নিরাপদ';

  @override
  String get welcomePrivacyBody =>
      'আপনার তথ্য সম্পূর্ণ আপনার নিজের। কোনো তথ্য বিক্রি করা হয় না এবং কারো সাথে শেয়ার করা হয় না।';

  @override
  String stepOf(int step, int total) {
    return 'ধাপ $step / $total';
  }

  @override
  String get onboardingNameTitle => 'আমরা আপনাকে কী নামে ডাকব?';

  @override
  String get onboardingNameBody =>
      'আমরা কেবল আপনাকে অভিবাদন জানাতে এটি ব্যবহার করব, অন্য কোথাও নয়।';

  @override
  String get onboardingNameHint =>
      'ডাকনামই যথেষ্ট। আপনি পরে এটি পরিবর্তন করতে পারবেন।';

  @override
  String get onboardingCurrencyTitle => 'আপনি কোন মুদ্রা ব্যবহার করেন?';

  @override
  String get onboardingCurrencyBody =>
      'অ্যাপের প্রতিটি পরিমাণ এই মুদ্রায় দেখানো হবে। এটি নির্বাচন করলে কোনো রূপান্তর ঘটে না।';

  @override
  String get onboardingCurrencySearch => 'সকল মুদ্রা অনুসন্ধান করুন';

  @override
  String get onboardingAppearanceTitle => 'আপনার পছন্দমতো সাজান';

  @override
  String get onboardingAppearanceBody =>
      'একটি রূপরেখা বেছে নিন। ট্যাপ করলেই সবকিছু পরিবর্তিত হবে এবং আপনি যেকোনো সময় এটি পরিবর্তন করতে পারবেন।';

  @override
  String get onboardingNotificationsTitle => 'সবসময় আপ-টু-ডেট থাকুন';

  @override
  String get onboardingNotificationsBody =>
      'সঠিক সময়ে একটি মৃদু অনুস্মারক এটিকে অভ্যাসে পরিণত করতে সাহায্য করে।';

  @override
  String get onboardingNotifyReminders =>
      'খরচ লিপিবদ্ধ করার একটি সহজ অনুস্মারক';

  @override
  String get onboardingNotifyBudget => 'বাজেট শেষ হওয়ার আগেই একটি সতর্কতা';

  @override
  String get onboardingNotifySummary =>
      'অর্থ কোথায় গেল তার একটি সাপ্তাহিক সারসংক্ষেপ';

  @override
  String get onboardingNotifyEnable => 'বিজ্ঞপ্তি চালু করুন';

  @override
  String get onboardingNotifyDone => 'বিজ্ঞপ্তি সেটিংস সংরক্ষিত হয়েছে';

  @override
  String get onboardingNotifyLater =>
      'আপনি সেটিংস থেকে যেকোনো সময় এগুলো পরিবর্তন করতে পারেন।';

  @override
  String get onboardingReadyTitle => 'আপনার সেটআপ সম্পন্ন হয়েছে';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'আপনার সেটআপ সম্পন্ন হয়েছে, $name';
  }

  @override
  String get onboardingReadyBody =>
      'সেটআপ সম্পন্ন হয়েছে। সবকিছু কীভাবে কাজ করে তার একটি দ্রুত গাইড দেখতে চান?';

  @override
  String get onboardingTakeTour => 'আমাকে ঘুরে দেখান';

  @override
  String get onboardingGoToApp => 'সরাসরি অ্যাপে যান';

  @override
  String get onboardingTourLater =>
      'এখন নয়? গাইডটি সেটিংসে থাকবে, যখন ইচ্ছা দেখতে পারবেন।';

  @override
  String get beginnersGuide => 'প্রাথমিক ব্যবহার নির্দেশিকা';

  @override
  String get guideFinish => 'সমাপ্ত';

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
      'সবকিছু এখান থেকেই শুরু হয়। শীর্ষে অবশিষ্ট অর্থ, তার নিচে আয়-ব্যয় এবং তারপর আপনার খরচ, বাজেট ও লক্ষ্যসমূহ দেখা যাবে।';

  @override
  String get guideDashboardTip1 =>
      'একসাথে সবকিছু রিফ্রেশ করতে স্ক্রিনটি নিচের দিকে টানুন।';

  @override
  String get guideDashboardTip2 =>
      'তালিকায় যেতে আয় বা ব্যয়ের কার্ডে ট্যাপ করুন।';

  @override
  String get guideDashboardTip3 =>
      'কোনো লেনদেন রেকর্ড করার সাথে সাথেই গ্রাফ ও অন্তর্দৃষ্টি আপডেট হয়।';

  @override
  String get guideAddTitle => 'অর্থের হিসাব রাখা';

  @override
  String get guideAddBody =>
      'নিচের বারের মাঝখানের বোতাম থেকে সবকিছু শুরু হয়। এটি একটি সংক্ষিপ্ত মেনু খোলে: ব্যয়, আয়, ঋণ, বাজেট বা সঞ্চয়ের লক্ষ্য।';

  @override
  String get guideAddTip1 =>
      'আয় বা ব্যয়ের হিসাব রাখতে মাঝের বোতামটি ট্যাপ করুন।';

  @override
  String get guideAddTip2 =>
      'মেনু এড়িয়ে সরাসরি ব্যয়ের ফর্মে যেতে এটি চেপে ধরে রাখুন।';

  @override
  String get guideAddTip3 =>
      'সর্বদা একটি বিভাগ নির্বাচন করুন — এটি চার্ট এবং বাজেট সঠিকভাবে পরিচালনা করতে সাহায্য করে।';

  @override
  String get guideCategoriesTitle => 'বিভাগসমূহ';

  @override
  String get guideCategoriesBody =>
      'বিভাগগুলোর মাধ্যমে খরচের গ্রুপ তৈরি হয়। অ্যাপে ডিফল্ট কিছু বিভাগ থাকে, তবে আপনি নিজের মতো বিভাগ তৈরি বা সম্পাদনা করতে পারেন।';

  @override
  String get guideCategoriesTip1 =>
      'বিভাগ পরিবর্তন বা নতুন বিভাগ যোগ করতে সেটিংস > বিভাগ পরিচালনা-য় যান।';

  @override
  String get guideCategoriesTip2 =>
      'অশ্রেণিভুক্ত খরচগুলো \'অন্যান্য\' বিভাগে জমা হয়, যাতে হিসাব সঠিক থাকে।';

  @override
  String get guideBudgetTitle => 'বাজেট';

  @override
  String get guideBudgetBody =>
      'বাজেট হলো কোনো নির্দিষ্ট বিভাগের জন্য মাসিক খরচের সর্বোচ্চ সীমা। খরচ বাড়ার সাথে সাথে বারটি পূর্ণ হতে থাকে এবং সীমা পার হওয়ার আগেই সতর্ক করে।';

  @override
  String get guideBudgetTip1 =>
      'একসাথে সবগুলো নয়, দুই বা তিনটি বিভাগ দিয়ে শুরু করুন।';

  @override
  String get guideBudgetTip2 =>
      'স্বাভাবিক খরচের চেয়ে সীমা কিছুটা বেশি রাখুন, তারপর ধীরে ধীরে তা নিয়ন্ত্রণ করুন।';

  @override
  String get guideBudgetTip3 =>
      'বাজেট সতর্কতা চালু রাখুন যাতে বাজেট শেষ হওয়ার আগেই অ্যাপ আপনাকে সতর্ক করে।';

  @override
  String get guideSavingsTitle => 'সঞ্চয়ের লক্ষ্য';

  @override
  String get guideSavingsBody =>
      'কীসের জন্য সঞ্চয় করছেন তা উল্লেখ করুন, লক্ষ্যমাত্রা ও তারিখ নির্ধারণ করুন এবং অ্যাপ হিসেব করে দেবে প্রতি মাসে কত জমা করতে হবে।';

  @override
  String get guideSavingsTip1 =>
      'অনির্দিষ্ট ইচ্ছার চেয়ে সুনির্দিষ্ট লক্ষ্য অর্জন করা সহজ।';

  @override
  String get guideSavingsTip2 =>
      'একটি বড় লক্ষ্যের চেয়ে কয়েকটি ছোট লক্ষ্য দ্রুত অর্জিত হয়।';

  @override
  String get guideLoansTitle => 'ঋণ ও দেনা';

  @override
  String get guideLoansBody =>
      'কত দেনা আছে, খরচ কত এবং পরবর্তী কিস্তি কবে তা রেকর্ড করুন। সমস্ত পরিশোধযোগ্য ঋণের তালিকা মোট বকেয়াসহ এক স্থানে দেখতে পাবেন।';

  @override
  String get guideLoansTip1 =>
      'নির্দিষ্ট তারিখ যুক্ত করুন এবং অনুস্মারকগুলো আপনাকে সময়মতো মনে করিয়ে দেবে।';

  @override
  String get guideLoansTip2 =>
      'মেয়াদোত্তীর্ণ ঋণ পরিশোধ না হওয়া পর্যন্ত ড্যাশবোর্ডে লাল রঙে প্রদর্শিত হয়।';

  @override
  String get guideReportsTitle => 'প্রতিবেদন';

  @override
  String get guideReportsBody =>
      'গভীর পর্যালোচনা: আয় বনাম ব্যয়, বিভাগভিত্তিক খরচ, বাজেটের অবস্থা এবং আয়ের কত অংশ সঞ্চয় করতে পেরেছেন।';

  @override
  String get guideReportsTip1 =>
      'স্ক্রিনের উপরে সপ্তাহ, মাস এবং ত্রৈমাসিকের মধ্যে পরিবর্তন করুন।';

  @override
  String get guideReportsTip2 =>
      'পিডিএফ রপ্তানি বা শেয়ার করুন — এটি আপনার ভাষা ও দিকবিন্যাসে তৈরি হবে।';

  @override
  String get guideSettingsTitle => 'সেটিংস';

  @override
  String get guideSettingsBody =>
      'ভাষা, মুদ্রা, রঙ এবং সতর্কবার্তা সবকিছু এখানে থাকে। সেটআপের কোনো কিছুই অপরিবর্তনীয় নয় — যেকোনো সময় পরিবর্তন করতে পারেন।';

  @override
  String get guideSettingsTip1 =>
      'চল্লিশটি ভাষা সমর্থিত এবং ডান-থেকে-বাম ভাষার জন্য সম্পূর্ণ লেআউট মিরর হয়।';

  @override
  String get guideSettingsTip2 =>
      'কোন অ্যালার্ট চান এবং কখন চান তা নির্বাচন করুন।';

  @override
  String get guideSettingsTip3 =>
      'নীরব সময় সকাল পর্যন্ত সমস্ত নোটিফিকেশন আটকে রাখে।';

  @override
  String get guideHabitTitle => 'অভ্যাসে রূপান্তর করুন';

  @override
  String get guideHabitBody =>
      'নিয়মিত ব্যবহারেই এই অ্যাপের আসল কার্যকারিতা। মাসে একবার এক ঘণ্টার চেয়ে দিনে এক মিনিট বেশি কার্যকর; দুই সপ্তাহেই ফলাফল বুঝতে পারবেন।';

  @override
  String get guideHabitTip1 => 'সপ্তাহের শেষে নয়, খরচের সময়ই তা রেকর্ড করুন।';

  @override
  String get guideHabitTip2 =>
      'দিনে একবার ড্যাশবোর্ডে চোখ বুলিয়ে নিন। দশ সেকেন্ডই যথেষ্ট।';

  @override
  String get guideHabitTip3 =>
      'এই গাইডটি সেটিংসে সংরক্ষিত থাকবে — যখন ইচ্ছা দেখতে পারেন।';

  @override
  String get appearance => 'চেহারা ও থিম';

  @override
  String get themeCaption => 'লাইট, ডার্ক অথবা আপনার ফোনের সিস্টেম থিম।';

  @override
  String get accentColor => 'অ্যাকসেন্ট রঙ';

  @override
  String get accentColorCaption =>
      'বোতাম, হাইলাইট এবং চার্টের রঙ পরিবর্তন করে।';

  @override
  String get accentSemanticsNote =>
      'আয় এবং ব্যয়ের নিজস্ব রঙ সব থিমেই অপরিবর্তিত থাকে, যাতে অ্যাকসেন্ট পরিবর্তনের কারণে অর্থের অর্থ বদলে না যায়।';

  @override
  String get accentTeal => 'টিল';

  @override
  String get accentGreen => 'সবুজ';

  @override
  String get accentSky => 'আকাশি';

  @override
  String get accentBlue => 'নীল';

  @override
  String get accentIndigo => 'ইন্ডিগো';

  @override
  String get accentViolet => 'বেগুনি';

  @override
  String get accentPink => 'গোলাপি';

  @override
  String get accentCrimson => 'ক্রিমসন';

  @override
  String get accentOrange => 'কমলা';

  @override
  String get accentSlate => 'স্লেট';

  @override
  String get searchLanguages => 'ভাষা অনুসন্ধান করুন';

  @override
  String get suggestedLanguages => 'প্রস্তাবিত';

  @override
  String get allLanguages => 'সকল ভাষা';

  @override
  String get noLanguagesFound => 'কোনো ভাষা পাওয়া যায়নি';

  @override
  String get noLanguagesFoundMessage =>
      'ইংরেজিতে নাম বা দুই অক্ষরের কোড দিয়ে চেষ্টা করুন।';

  @override
  String get rightToLeft => 'ডান থেকে বাম';

  @override
  String get replayGuide => 'গাইড পুনরায় দেখুন';

  @override
  String get replaySetup => 'সেটআপ পুনরায় চালান';

  @override
  String get replaySetupBody =>
      'প্রাথমিক প্রশ্নগুলোর উত্তর আবার দিন। আপনার সংরক্ষিত কোনো রেকর্ড মুছে যাবে না।';

  @override
  String get rateTitle => 'RainyPenny ভালো লাগছে?';

  @override
  String get rateBody =>
      'আপনি বেশ কিছুদিন ধরে এটি ব্যবহার করছেন। একটি রেটিং দিতে মাত্র এক মুহূর্ত লাগে এবং এটি অন্যদের অ্যাপটি খুঁজে পেতে সাহায্য করে।';

  @override
  String get rateAction => 'রেটিং দিন';

  @override
  String get rateLater => 'পরে হতে পারে';

  @override
  String get rateNever => 'না, ধন্যবাদ';

  @override
  String get rateThanks => 'আপনাকে ধন্যবাদ';

  @override
  String get monthlySalary => 'মাসিক বেতন';

  @override
  String get remainingAmount => 'অবশিষ্ট';

  @override
  String get carriedForward => 'পূর্বে জমাকৃত';

  @override
  String get carriedForwardHint => 'আগের সাইকেল থেকে অবশিষ্ট';

  @override
  String get totalSpending => 'মোট ব্যয়';

  @override
  String get salaryCycle => 'বেতন সাইকেল';

  @override
  String get payday => 'বেতনের দিন';

  @override
  String get paydayDescription =>
      'যেদিন আপনার বেতন আসে। আপনার আর্থিক মাস এই দিন থেকে শুরু হয়ে পরবর্তী বেতন আসার আগের দিন পর্যন্ত চলে।';

  @override
  String get paydayUpdated => 'বেতনের দিন আপডেট করা হয়েছে';

  @override
  String paydayDayOfMonth(int day) {
    return '$day তারিখ';
  }

  @override
  String get paydayShortMonthNote =>
      'ছোট মাসগুলোতে সাইকেলটি মাসের শেষ দিনে শুরু হয়।';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'বেতনের $count দিন বাকি',
      one: 'বেতনের ১ দিন বাকি',
      zero: 'সাইকেলের শেষ দিন',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'পরবর্তী বেতনের দিন';

  @override
  String get spentSoFar => 'এ পর্যন্ত খরচ';

  @override
  String get dailyAllowance => 'দৈনিক খরচের নিরাপদ মাত্রা';

  @override
  String get overspentNotice => 'এই সাইকেলে আয়ের চেয়ে বেশি ব্যয় হয়েছে।';

  @override
  String get backToThisMonth => 'চলতি মাসে ফিরে যান';

  @override
  String get cycleRangeLabel => 'সাইকেল';

  @override
  String get noSalaryRecorded => 'এখনো কোনো বেতন রেকর্ড করা হয়নি';

  @override
  String get addSalaryAction => 'বেতন যোগ করুন';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'চমৎকার';

  @override
  String get healthGood => 'ভালো';

  @override
  String get healthFair => 'মোটামুটি';

  @override
  String get healthNeedsWork => 'উন্নতি প্রয়োজন';

  @override
  String get healthExcellentBody =>
      'আপনি ভালো সঞ্চয় করছেন এবং বাজেটের মধ্যে থাকছেন।';

  @override
  String get healthGoodBody => 'এই মেয়াদে আপনার খরচের গতি সঠিক পথে রয়েছে।';

  @override
  String get healthFairBody =>
      'কয়েকটি বাজেটে অতিরিক্ত খরচ হচ্ছে। ছোট পরিবর্তন সাহায্য করবে।';

  @override
  String get healthNeedsWorkBody =>
      'ব্যয় পরিকল্পনার বাইরে চলে যাচ্ছে। সবচেয়ে বড় ব্যয়ের খাত থেকে শুরু করুন।';

  @override
  String get factorSavingsRate => 'সঞ্চয়ের হার';

  @override
  String get factorBudgetControl => 'বাজেট নিয়ন্ত্রণ';

  @override
  String get factorDebtLoad => 'ঋণের চাপ';

  @override
  String get factorSpendingTrend => 'ব্যয়ের ধারা';

  @override
  String factorKept(String percent) {
    return '$percent% সংরক্ষিত';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% ব্যবহৃত';
  }

  @override
  String factorOfIncome(String percent) {
    return 'আয়ের $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% বৃদ্ধি';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% হ্রাস';
  }

  @override
  String get howScoreWorks => 'এই স্কোর কীভাবে কাজ করে';

  @override
  String get healthScoreExplainer =>
      'আপনার স্কোর চারটি বিষয়ের ওপর নির্ভর করে: আয়ের কতটুকু সঞ্চয় করছেন, বাজেট কতটা মানছেন, আয়ের কত অংশ ঋণে যাচ্ছে এবং ব্যয় বৃদ্ধি নাকি হ্রাসের দিকে রয়েছে।';

  @override
  String scoreWeightLabel(int percent) {
    return 'স্কোরের $percent% অংশ';
  }

  @override
  String get viewHealthDetails => 'বিস্তারিত বিশ্লেষণ দেখুন';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get profileUpdated => 'প্রোফাইল আপডেট করা হয়েছে';

  @override
  String get changePhoto => 'ছবি পরিবর্তন করুন';

  @override
  String get removePhoto => 'ছবি সরান';

  @override
  String get personalInformationIntro =>
      'আপনার নাম ও ছবি পুরো অ্যাপে প্রদর্শিত হবে। যে ইমেইল দিয়ে সাইন ইন করেছেন সেটাই আপনার যোগাযোগের ঠিকানা।';

  @override
  String get emailNotEditable =>
      'যে ইমেইল দিয়ে সাইন ইন করেছেন তা পরিবর্তন করতে সাপোর্টে যোগাযোগ করুন।';

  @override
  String get pressBackAgainToExit => 'বের হতে আবার ব্যাক বাটন চাপুন';

  @override
  String get categoryHousing => 'আবাসন';

  @override
  String get categoryFood => 'খাবার ও ডাইনিং';

  @override
  String get categoryTransport => 'পরিবহন';

  @override
  String get categoryShopping => 'কেনাকাটা';

  @override
  String get categoryBills => 'বিল ও ইউটিলিটি';

  @override
  String get categoryEntertainment => 'বিনোদন';

  @override
  String get categoryHealth => 'স্বাস্থ্য ও ফিটনেস';

  @override
  String get categoryEducation => 'শিক্ষা';

  @override
  String get categoryTravel => 'ভ্রমণ';

  @override
  String get categorySalary => 'বেতন';

  @override
  String get categoryFreelance => 'ফ্রিল্যান্স';

  @override
  String get categoryInvestments => 'বিনিয়োগ';

  @override
  String get categoryGift => 'উপহার';

  @override
  String get categoryOther => 'অন্যান্য';

  @override
  String get categoryGroceries => 'মুদি বাজার';

  @override
  String get categoryDining => 'বাইরে খাওয়া';

  @override
  String get categoryCoffee => 'কফি';

  @override
  String get categoryUtilities => 'ইউটিলিটি';

  @override
  String get categoryInternet => 'ইন্টারনেট';

  @override
  String get categoryPhone => 'ফোন';

  @override
  String get categoryInsurance => 'বীমা';

  @override
  String get categorySubscriptions => 'সাবস্ক্রিপশন';

  @override
  String get categoryPersonalCare => 'ব্যক্তিগত যত্ন';

  @override
  String get categoryClothing => 'পোশাক';

  @override
  String get categoryElectronics => 'ইলেকট্রনিক্স';

  @override
  String get categoryHomeSupplies => 'গৃহস্থালি সামগ্রী';

  @override
  String get categoryPets => 'পোষা প্রাণী';

  @override
  String get categoryChildcare => 'সন্তানের যত্ন';

  @override
  String get categoryFamily => 'পরিবার';

  @override
  String get categoryFitness => 'ফিটনেস';

  @override
  String get categorySports => 'খেলাধুলা';

  @override
  String get categoryMedicine => 'ওষুধ';

  @override
  String get categoryMedical => 'চিকিৎসা';

  @override
  String get categoryCharity => 'দান';

  @override
  String get categoryTaxes => 'কর';

  @override
  String get categoryFees => 'ফি';

  @override
  String get categoryDebt => 'ঋণ';

  @override
  String get categorySavings => 'সঞ্চয়';

  @override
  String get categoryRepairs => 'মেরামত';

  @override
  String get categoryCarMaintenance => 'গাড়ি রক্ষণাবেক্ষণ';

  @override
  String get categoryFuel => 'জ্বালানি';

  @override
  String get categoryParking => 'পার্কিং';

  @override
  String get categoryPublicTransport => 'গণপরিবহন';

  @override
  String get categoryRent => 'ভাড়া';

  @override
  String get categoryMortgage => 'বন্ধক';

  @override
  String get categoryBonus => 'বোনাস';

  @override
  String get categoryCommission => 'কমিশন';

  @override
  String get categoryPension => 'পেনশন';

  @override
  String get categoryInterest => 'সুদ';

  @override
  String get categoryDividends => 'লভ্যাংশ';

  @override
  String get categoryCashback => 'ক্যাশব্যাক';

  @override
  String get categoryRefund => 'রিফান্ড';

  @override
  String get categoryRentalIncome => 'ভাড়া আয়';

  @override
  String get addCategory => 'নতুন বিভাগ';

  @override
  String get filterByCategory => 'বিভাগ অনুযায়ী ফিল্টার';

  @override
  String get allCategories => 'সকল বিভাগ';

  @override
  String get clearFilters => 'ফিল্টার পরিষ্কার করুন';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'সর্বমোট';

  @override
  String get customRange => 'কাস্টম';

  @override
  String get selectDateRange => 'সময়কাল নির্বাচন করুন';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end দেখানো হচ্ছে';
  }

  @override
  String get loans => 'ঋণসমূহ';

  @override
  String get debts => 'দেনাসমূহ';

  @override
  String get noLoansTitle => 'কোনো ঋণ নেই';

  @override
  String get noLoansBody => 'আপনার কোনো সক্রিয় ঋণ নেই।';

  @override
  String get emptyHealthTitle => 'এখনো কোনো আর্থিক স্কোর নেই';

  @override
  String get emptyHealthDescription =>
      'সঠিক আর্থিক সক্ষমতা স্কোর গণনা করার জন্য আরও কিছু আর্থিক লেনদেনের তথ্য প্রয়োজন।';

  @override
  String get emptyHealthAddTransactions => 'আয় বা ব্যয়ের লেনদেন যোগ করুন';

  @override
  String get emptyHealthSetBudgets => 'মাসিক বাজেট নির্ধারণ করুন';

  @override
  String get emptyHealthTrackLoans => 'ঋণ বা দেনা ট্র্যাক করুন (ঐচ্ছিক)';

  @override
  String get emptyHealthCardSubtitle =>
      'আপনার স্কোর গণনা করতে এবং অন্তর্দৃষ্টি পেতে লেনদেন যোগ করুন।';

  @override
  String get smartBudgetSplit => 'স্মার্ট বাজেট বিভাজন';

  @override
  String get smartBudgetSplitSubtitle =>
      'প্রস্তাবিত ব্যয়ের সীমা জানতে আপনার মাসিক বেতন লিখুন';

  @override
  String get monthlyNetSalary => 'মাসিক নিট বেতন';

  @override
  String get categoryAllocations => 'বিভাগভিত্তিক বরাদ্দ';

  @override
  String totalBudgeted(String amount) {
    return 'মোট: $amount';
  }

  @override
  String get applyAllBudgets => 'সকল বাজেট প্রয়োগ করুন';

  @override
  String get applyingBudgets => 'বাজেট প্রয়োগ করা হচ্ছে...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি বিভাগের বাজেট তৈরি হয়েছে।',
      one: '১টি বিভাগের বাজেট তৈরি হয়েছে।',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'বাজেট সংরক্ষণ করতে ব্যর্থ হয়েছে।';

  @override
  String get recommendedBudget => 'প্রস্তাবিত বাজেট';
}
