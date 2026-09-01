// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppL10nUr extends AppL10n {
  AppL10nUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'مشکل دنوں کے لیے بچت کریں';

  @override
  String get navHome => 'ہوم';

  @override
  String get navTransactions => 'لین دین';

  @override
  String get navAdd => 'شامل کریں';

  @override
  String get navReports => 'رپورٹس';

  @override
  String get navProfile => 'پروفائل';

  @override
  String greetingMorning(String name) {
    return 'صبح بخیر، $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'السلام علیکم، $name';
  }

  @override
  String greetingEvening(String name) {
    return 'شام بخیر، $name';
  }

  @override
  String get greetingSubtitle => 'یہ ہے آپ کا مالی جائزہ';

  @override
  String get totalBalance => 'کل بیلنس';

  @override
  String get vsLastPeriod => 'پچھلی مدت کے مقابلے';

  @override
  String get income => 'آمدنی';

  @override
  String get expenses => 'اخراجات';

  @override
  String get netBalance => 'خالص بیلنس';

  @override
  String get lastThirtyDays => 'گزشتہ 30 دن';

  @override
  String get quickActions => 'فوری اقدامات';

  @override
  String get addIncome => 'آمدنی شامل کریں';

  @override
  String get addExpense => 'خرچ شامل کریں';

  @override
  String get spendingOverview => 'اخراجات کا جائزہ';

  @override
  String get recentTransactions => 'حالیہ لین دین';

  @override
  String get seeAll => 'سب دیکھیں';

  @override
  String get viewAll => 'سب دیکھیں';

  @override
  String get budgetProgress => 'بجٹ کی پیش رفت';

  @override
  String get savingsGoals => 'بچت کے اہداف';

  @override
  String get financialInsight => 'مالی بصیرت';

  @override
  String get financialHealth => 'مالی صحت';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'لین دین تلاش کریں';

  @override
  String get filterAll => 'سب';

  @override
  String get filterIncome => 'آمدنی';

  @override
  String get filterExpenses => 'اخراجات';

  @override
  String get today => 'آج';

  @override
  String get yesterday => 'کل';

  @override
  String get noTransactionsTitle => 'کوئی لین دین نہیں ملا';

  @override
  String get noTransactionsBody => 'کوئی اور تلاش یا فلٹر آزمائیں۔';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'لین دین شامل کریں';

  @override
  String get amount => 'رقم';

  @override
  String get category => 'زمرہ';

  @override
  String get date => 'تاریخ';

  @override
  String get note => 'نوٹ';

  @override
  String get noteHint => 'اختیاری نوٹ';

  @override
  String get saveIncome => 'آمدنی محفوظ کریں';

  @override
  String get saveExpense => 'خرچ محفوظ کریں';

  @override
  String get selectCategory => 'زمرہ منتخب کریں';

  @override
  String get transactionSaved => 'لین دین محفوظ ہو گیا';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'تفصیل';

  @override
  String get descriptionHint => 'مثلاً گروسری';

  @override
  String get budget => 'بجٹ';

  @override
  String get budgets => 'بجٹس';

  @override
  String get totalBudget => 'کل بجٹ';

  @override
  String get spent => 'خرچ شدہ';

  @override
  String get remaining => 'باقی';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'درست سمت میں';

  @override
  String get approachingLimit => 'حد کے قریب';

  @override
  String get overBudget => 'بجٹ سے زیادہ';

  @override
  String get savings => 'بچت';

  @override
  String get yourGoals => 'آپ کے اہداف';

  @override
  String get saved => 'بچایا گیا';

  @override
  String get target => 'ہدف';

  @override
  String get monthlyContribution => 'ماہانہ';

  @override
  String get addFunds => 'رقم شامل کریں';

  @override
  String get goalComplete => 'ہدف مکمل';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months to go',
      one: '1 month to go',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'قرضے اور واجبات';

  @override
  String get totalOutstanding => 'کل واجب الادا';

  @override
  String get monthlyPayment => 'ماہانہ';

  @override
  String get nextPayment => 'اگلی ادائیگی';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'سود';

  @override
  String get upcomingPayments => 'آنے والی ادائیگیاں';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'واجب الادا';

  @override
  String get reports => 'رپورٹس';

  @override
  String get week => 'ہفتہ';

  @override
  String get month => 'مہینہ';

  @override
  String get quarter => 'سہ ماہی';

  @override
  String get incomeVsExpenses => 'آمدنی بمقابلہ اخراجات';

  @override
  String get spendingByCategory => 'زمرے کے مطابق اخراجات';

  @override
  String get budgetPerformance => 'بجٹ کی کارکردگی';

  @override
  String get insights => 'بصیرتیں';

  @override
  String get savingsRate => 'بچت کی شرح';

  @override
  String get profile => 'پروفائل';

  @override
  String get account => 'اکاؤنٹ';

  @override
  String get personalInformation => 'ذاتی معلومات';

  @override
  String get changePassword => 'پاس ورڈ تبدیل کریں';

  @override
  String get notifications => 'اطلاعات';

  @override
  String get preferences => 'ترجیحات';

  @override
  String get language => 'زبان';

  @override
  String get currency => 'کرنسی';

  @override
  String get theme => 'تھیم';

  @override
  String get security => 'سیکیورٹی';

  @override
  String get privacyAndSecurity => 'رازداری اور سیکیورٹی';

  @override
  String get help => 'مدد';

  @override
  String get helpAndSupport => 'مدد اور معاونت';

  @override
  String get termsAndConditions => 'شرائط و ضوابط';

  @override
  String get logOut => 'لاگ آؤٹ';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'لائٹ';

  @override
  String get themeDark => 'ڈارک';

  @override
  String get dashboard => 'ڈیش بورڈ';

  @override
  String get settings => 'ترتیبات';

  @override
  String get noNotificationsTitle => 'سب کچھ اپ ٹو ڈیٹ ہے';

  @override
  String get noNotificationsBody =>
      'نئی بصیرتیں اور یاد دہانیاں یہاں دکھائی دیں گی۔';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get done => 'ہو گیا';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get close => 'بند کریں';

  @override
  String get somethingWentWrong => 'کچھ غلط ہو گیا';

  @override
  String get comingSoon => 'جلد آ رہا ہے';

  @override
  String get edit => 'ترمیم';

  @override
  String get delete => 'حذف کریں';

  @override
  String get undo => 'واپس کریں';

  @override
  String get add => 'شامل کریں';

  @override
  String get create => 'بنائیں';

  @override
  String get nameRequired => 'Give this a name';

  @override
  String get amountAboveZero => 'Enter an amount greater than zero';

  @override
  String get editTransaction => 'لین دین میں ترمیم';

  @override
  String get deleteTransaction => 'لین دین حذف کریں؟';

  @override
  String deleteTransactionBody(String title) {
    return '$title will be removed from your ledger.';
  }

  @override
  String get transactionDeleted => 'لین دین حذف ہو گیا';

  @override
  String get transactionUpdated => 'لین دین اپ ڈیٹ ہو گیا';

  @override
  String get newBudget => 'نیا بجٹ';

  @override
  String get editBudget => 'بجٹ میں ترمیم';

  @override
  String get budgetLimit => 'ماہانہ حد';

  @override
  String get deleteBudget => 'Delete budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'The $category budget will be removed. Your transactions are not affected.';
  }

  @override
  String get budgetSaved => 'بجٹ محفوظ ہو گیا';

  @override
  String get budgetDeleted => 'بجٹ حذف ہو گیا';

  @override
  String get allCategoriesBudgeted => 'Every category already has a budget';

  @override
  String get noBudgetsTitle => 'No budgets yet';

  @override
  String get noBudgetsBody =>
      'Set a monthly limit on a category to start tracking it.';

  @override
  String get newGoal => 'نیا ہدف';

  @override
  String get editGoal => 'ہدف میں ترمیم';

  @override
  String get goalName => 'ہدف کا نام';

  @override
  String get goalNameHint => 'e.g. Emergency fund';

  @override
  String get targetAmount => 'ہدف کی رقم';

  @override
  String get alreadySaved => 'پہلے سے بچایا گیا';

  @override
  String get deleteGoal => 'Delete goal?';

  @override
  String deleteGoalBody(String name) {
    return '$name and its progress will be removed.';
  }

  @override
  String get goalSaved => 'ہدف محفوظ ہو گیا';

  @override
  String get goalDeleted => 'ہدف حذف ہو گیا';

  @override
  String get noGoalsTitle => 'No savings goals yet';

  @override
  String get noGoalsBody =>
      'Set a target and RainyPenny will track your progress.';

  @override
  String get fundsAdded => 'رقم شامل ہو گئی';

  @override
  String get newDebt => 'نیا قرض یا کارڈ';

  @override
  String get editDebt => 'قرض میں ترمیم';

  @override
  String get debtName => 'نام';

  @override
  String get debtNameHint => 'e.g. Car loan';

  @override
  String get lender => 'قرض دہندہ';

  @override
  String get lenderHint => 'e.g. Meridian Bank';

  @override
  String get originalAmount => 'اصل رقم';

  @override
  String get creditLimit => 'کریڈٹ کی حد';

  @override
  String get remainingBalance => 'باقی رقم';

  @override
  String get interestRatePercent => 'شرح سود (%)';

  @override
  String get kindLoan => 'قرض';

  @override
  String get kindCreditCard => 'کریڈٹ کارڈ';

  @override
  String get recordPayment => 'ادائیگی درج کریں';

  @override
  String get paymentRecorded => 'ادائیگی درج ہو گئی';

  @override
  String get deleteDebt => 'Delete this debt?';

  @override
  String deleteDebtBody(String name) {
    return '$name will be removed from your debts.';
  }

  @override
  String get debtSaved => 'محفوظ ہو گیا';

  @override
  String get debtDeleted => 'حذف ہو گیا';

  @override
  String get noDebtsTitle => 'No debts tracked';

  @override
  String get noDebtsBody =>
      'Add a loan or credit card to keep an eye on repayments.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject کا بجٹ تجاوز کر گیا';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'آپ اس مدت میں $subject کے بجٹ سے $amount زیادہ خرچ کر چکے ہیں۔';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject حد کے قریب ہے';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject کا $percent% بجٹ استعمال ہو چکا ہے، $amount باقی ہیں۔';
  }

  @override
  String get insightOverIncomeTitle => 'اخراجات آمدنی سے زیادہ ہیں';

  @override
  String get insightOverIncomeBody =>
      'اس مدت میں آپ نے کمائی سے زیادہ خرچ کیا۔ اپنے سب سے بڑے زمرے دیکھیں۔';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject پر اخراجات بڑھ گئے';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject پر آپ کے اخراجات پچھلی مدت سے $percent% زیادہ ہیں۔';
  }

  @override
  String get insightTrendDownTitle => 'اخراجات کم ہو رہے ہیں';

  @override
  String insightTrendDownBody(int percent) {
    return 'مجموعی اخراجات پچھلی مدت سے $percent% کم ہیں۔';
  }

  @override
  String get insightTrendUpTitle => 'اخراجات بڑھ رہے ہیں';

  @override
  String insightTrendUpBody(int percent) {
    return 'مجموعی اخراجات پچھلی مدت سے $percent% زیادہ ہیں۔';
  }

  @override
  String get insightSavingsStrongTitle => 'اس مدت میں شاندار بچت';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'آپ نے اپنی آمدنی کا $percent% بچایا، جو $target% ہدف سے کہیں زیادہ ہے۔';
  }

  @override
  String get insightSavingsLowTitle => 'بچت کی شرح ہدف سے کم ہے';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'آپ نے اس مدت میں آمدنی کا $percent% بچایا۔ $target% کا ہدف رکھیں۔';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject تقریباً مکمل ہے';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject تک پہنچنے کے لیے صرف $amount باقی ہیں۔';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject کے لیے درست سمت میں';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months مہینوں',
      one: 'ایک مہینے',
    );
    return 'ماہانہ $amount کے ساتھ آپ یہ ہدف $_temp0 میں حاصل کر لیں گے۔';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject کی ادائیگی واجب الادا ہے';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن',
      one: 'ایک دن',
    );
    return '$subject کی $amount کی ادائیگی $_temp0 سے تاخیر کا شکار ہے۔';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject کی ادائیگی قریب ہے';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن میں',
      one: 'کل',
      zero: 'آج',
    );
    return '$amount کی ادائیگی $_temp0 واجب ہے۔';
  }

  @override
  String get signIn => 'Sign in';

  @override
  String get signUp => 'Create account';

  @override
  String get signInSubtitle => 'Welcome back. Your money is waiting.';

  @override
  String get signUpSubtitle => 'A few details and you are set up.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'At least 8 characters';

  @override
  String get fullNameLabel => 'Full name';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get resetSent => 'Check your inbox for a reset link';

  @override
  String get noAccountYet => 'New here?';

  @override
  String get haveAccount => 'Already have an account?';

  @override
  String get emailInvalid => 'Enter a valid email address';

  @override
  String get passwordTooShort => 'Use at least 8 characters';

  @override
  String get signOutConfirm => 'Sign out?';

  @override
  String get signOutBody =>
      'You will need to sign in again to see your finances.';

  @override
  String get dataSource => 'Data source';

  @override
  String get insightWeeklySummaryTitle => 'آپ کے ہفتے کا جائزہ';

  @override
  String get insightWeeklySummaryBody =>
      'دیکھیں اس ہفتے آپ کا پیسہ کہاں گیا اور آپ کے بجٹ کیسے چل رہے ہیں۔';

  @override
  String get notificationSettings => 'Notifications';

  @override
  String get alertsSection => 'Alerts';

  @override
  String get budgetAlerts => 'Budget alerts';

  @override
  String get budgetAlertsBody => 'When a budget nears or passes its limit';

  @override
  String get paymentReminders => 'Payment reminders';

  @override
  String get paymentRemindersBody => 'A few days before a payment falls due';

  @override
  String get savingsUpdates => 'Savings updates';

  @override
  String get savingsUpdatesBody => 'Progress towards your goals';

  @override
  String get weeklySummaryLabel => 'Weekly summary';

  @override
  String get weeklySummaryBody => 'A digest of the week just gone';

  @override
  String get scheduleSection => 'Timing';

  @override
  String get reminderTime => 'Reminder time';

  @override
  String get quietHours => 'Quiet hours';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Summary day';

  @override
  String get permissionRequired => 'Notifications are turned off';

  @override
  String get permissionRequiredBody =>
      'Allow notifications so RainyPenny can warn you before a budget or a payment gets away from you.';

  @override
  String get allowNotifications => 'Allow notifications';

  @override
  String get permissionDenied =>
      'Notifications are blocked. You can turn them on in your device settings.';

  @override
  String get upcomingAlerts => 'Scheduled';

  @override
  String get noScheduledAlerts => 'Nothing scheduled right now';

  @override
  String get noScheduledAlertsBody =>
      'Alerts appear here as your budgets and payments approach their limits.';

  @override
  String scheduledFor(String date) {
    return 'Scheduled for $date';
  }

  @override
  String get everyWeek => 'Every week';

  @override
  String get allNotificationsOff => 'All notifications are off';

  @override
  String get needsAttention => 'توجہ درکار';
}
