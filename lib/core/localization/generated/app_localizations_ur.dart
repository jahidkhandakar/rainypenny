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
    return '$total میں سے';
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
      other: '$count لین دین',
      one: '1 لین دین',
      zero: 'کوئی لین دین نہیں',
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
  String get amountRequired => 'صفر سے زیادہ رقم درج کریں';

  @override
  String get titleRequired => 'اس لین دین کو نام دیں';

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
    return '$percent% استعمال ہوا';
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
      other: '$count مہینے باقی',
      one: '1 مہینہ باقی',
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
    return '$percent% ادا ہو چکا';
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
      other: '$count دن میں واجب الادا',
      one: 'کل واجب الادا',
      zero: 'آج واجب الادا',
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
    return '$date سے رکن';
  }

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'لائٹ';

  @override
  String get themeDark => 'ڈارک';

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
  String get nameRequired => 'اپنا نام درج کریں';

  @override
  String get amountAboveZero => 'صفر سے زیادہ رقم درج کریں';

  @override
  String get editTransaction => 'لین دین میں ترمیم';

  @override
  String get deleteTransaction => 'لین دین حذف کریں؟';

  @override
  String deleteTransactionBody(String title) {
    return '$title آپ کے کھاتے سے ہٹا دیا جائے گا۔';
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
  String get deleteBudget => 'بجٹ حذف کریں؟';

  @override
  String deleteBudgetBody(String category) {
    return '$category کا بجٹ ہٹا دیا جائے گا۔ آپ کے لین دین متاثر نہیں ہوں گے۔';
  }

  @override
  String get budgetSaved => 'بجٹ محفوظ ہو گیا';

  @override
  String get budgetDeleted => 'بجٹ حذف ہو گیا';

  @override
  String get allCategoriesBudgeted => 'ہر زمرے کا بجٹ پہلے سے موجود ہے';

  @override
  String get noBudgetsTitle => 'ابھی کوئی بجٹ نہیں';

  @override
  String get noBudgetsBody =>
      'کسی زمرے پر ماہانہ حد مقرر کریں تاکہ اس کی نگرانی شروع ہو۔';

  @override
  String get newGoal => 'نیا ہدف';

  @override
  String get editGoal => 'ہدف میں ترمیم';

  @override
  String get goalName => 'ہدف کا نام';

  @override
  String get goalNameHint => 'مثلاً: ہنگامی فنڈ';

  @override
  String get targetAmount => 'ہدف رقم';

  @override
  String get alreadySaved => 'پہلے سے بچایا گیا';

  @override
  String get deleteGoal => 'ہدف حذف کریں؟';

  @override
  String deleteGoalBody(String name) {
    return '$name اور اس کی پیش رفت ہٹا دی جائے گی۔';
  }

  @override
  String get goalSaved => 'ہدف محفوظ ہو گیا';

  @override
  String get goalDeleted => 'ہدف حذف ہو گیا';

  @override
  String get noGoalsTitle => 'ابھی کوئی بچت ہدف نہیں';

  @override
  String get noGoalsBody =>
      'ایک ہدف مقرر کریں اور RainyPenny آپ کی پیش رفت پر نظر رکھے گا۔';

  @override
  String get fundsAdded => 'رقم شامل ہو گئی';

  @override
  String get newDebt => 'نیا قرض یا کارڈ';

  @override
  String get editDebt => 'قرض میں ترمیم';

  @override
  String get debtName => 'نام';

  @override
  String get debtNameHint => 'مثلاً: گاڑی کا قرض';

  @override
  String get lender => 'قرض دہندہ';

  @override
  String get lenderHint => 'مثلاً: میریڈین بینک';

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
  String get deleteDebt => 'یہ قرض حذف کریں؟';

  @override
  String deleteDebtBody(String name) {
    return '$name آپ کے قرضوں سے ہٹا دیا جائے گا۔';
  }

  @override
  String get debtSaved => 'محفوظ ہو گیا';

  @override
  String get debtDeleted => 'حذف ہو گیا';

  @override
  String get noDebtsTitle => 'کوئی قرض زیرِ نگرانی نہیں';

  @override
  String get noDebtsBody =>
      'ادائیگیوں پر نظر رکھنے کے لیے قرض یا کریڈٹ کارڈ شامل کریں۔';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject کا بجٹ عبور ہو گیا';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'آپ اس مدت میں $subject کے بجٹ سے $amount زیادہ خرچ کر چکے ہیں۔';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject اپنی حد کے قریب ہے';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject کا بجٹ $percent% استعمال ہو چکا ہے، $amount باقی ہے۔';
  }

  @override
  String get insightOverIncomeTitle => 'اخراجات آمدنی سے زیادہ ہیں';

  @override
  String get insightOverIncomeBody =>
      'اس مدت میں آپ نے کمائی سے زیادہ خرچ کیا۔ توازن بحال کرنے کے لیے اپنے بڑے زمرے دیکھیں۔';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject پر خرچ بڑھ گیا';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject پر آپ کا خرچ پچھلی مدت سے $percent% زیادہ ہے۔';
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
    return 'آپ نے اپنی آمدنی کا $percent% رکھا — $target% کے ہدف سے کہیں زیادہ۔';
  }

  @override
  String get insightSavingsLowTitle => 'بچت کی شرح ہدف سے کم ہے';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'اس مدت میں آپ نے آمدنی کا $percent% رکھا۔ $target% کا ہدف رکھیں۔';
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
    return '$subject کے لیے آپ درست راستے پر ہیں';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months مہینوں',
      one: '1 مہینے',
    );
    return 'ماہانہ $amount کے ساتھ آپ یہ ہدف $_temp0 میں پا لیں گے۔';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject کی ادائیگی تاخیر کا شکار';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن',
      one: '1 دن',
    );
    return '$subject کی $amount کی ادائیگی $_temp0 سے واجب الادا ہے۔';
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
    return '$amount $_temp0 واجب الادا ہے۔';
  }

  @override
  String get signIn => 'سائن ان';

  @override
  String get signUp => 'اکاؤنٹ بنائیں';

  @override
  String get signInSubtitle => 'خوش آمدید۔ آپ کا پیسہ آپ کا منتظر ہے۔';

  @override
  String get signUpSubtitle => 'چند تفصیلات اور آپ تیار ہیں۔';

  @override
  String get emailLabel => 'ای میل';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'پاس ورڈ';

  @override
  String get passwordHint => 'کم از کم 8 حروف';

  @override
  String get fullNameLabel => 'پورا نام';

  @override
  String get fullNameHint => 'ایلکس مورگن';

  @override
  String get forgotPassword => 'پاس ورڈ بھول گئے؟';

  @override
  String get resetSent => 'ری سیٹ لنک کے لیے اپنا ان باکس دیکھیں';

  @override
  String get noAccountYet => 'یہاں نئے ہیں؟';

  @override
  String get haveAccount => 'پہلے سے اکاؤنٹ ہے؟';

  @override
  String get emailInvalid => 'درست ای میل پتہ درج کریں';

  @override
  String get passwordTooShort => 'کم از کم 8 حروف استعمال کریں';

  @override
  String get signOutConfirm => 'سائن آؤٹ کریں؟';

  @override
  String get signOutBody =>
      'اپنے مالی معاملات دیکھنے کے لیے آپ کو دوبارہ سائن ان کرنا ہوگا۔';

  @override
  String get dataSource => 'ڈیٹا کا ذریعہ';

  @override
  String get insightWeeklySummaryTitle => 'آپ کا ہفتہ ایک نظر میں';

  @override
  String get insightWeeklySummaryBody =>
      'دیکھیں کہ اس ہفتے آپ کا پیسہ کہاں گیا اور آپ کے بجٹ کیسے چل رہے ہیں۔';

  @override
  String get notificationSettings => 'اطلاعات';

  @override
  String get alertsSection => 'الرٹس';

  @override
  String get budgetAlerts => 'بجٹ الرٹس';

  @override
  String get budgetAlertsBody =>
      'جب کوئی بجٹ اپنی حد کے قریب پہنچے یا اسے عبور کرے';

  @override
  String get paymentReminders => 'ادائیگی کی یاد دہانیاں';

  @override
  String get paymentRemindersBody => 'ادائیگی واجب الادا ہونے سے چند دن پہلے';

  @override
  String get savingsUpdates => 'بچت کی اپ ڈیٹس';

  @override
  String get savingsUpdatesBody => 'آپ کے اہداف کی جانب پیش رفت';

  @override
  String get weeklySummaryLabel => 'ہفتہ وار خلاصہ';

  @override
  String get weeklySummaryBody => 'گزرے ہفتے کا خلاصہ';

  @override
  String get scheduleSection => 'اوقات';

  @override
  String get reminderTime => 'یاد دہانی کا وقت';

  @override
  String get quietHours => 'خاموش اوقات';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'خلاصے کا دن';

  @override
  String get permissionRequired => 'اطلاعات بند ہیں';

  @override
  String get permissionRequiredBody =>
      'اطلاعات کی اجازت دیں تاکہ RainyPenny آپ کو بجٹ یا ادائیگی ہاتھ سے نکلنے سے پہلے خبردار کر سکے۔';

  @override
  String get allowNotifications => 'اطلاعات کی اجازت دیں';

  @override
  String get permissionDenied =>
      'اطلاعات مسدود ہیں۔ آپ انہیں اپنے ڈیوائس کی ترتیبات سے آن کر سکتے ہیں۔';

  @override
  String get upcomingAlerts => 'شیڈول شدہ';

  @override
  String get noScheduledAlerts => 'ابھی کچھ شیڈول نہیں';

  @override
  String get noScheduledAlertsBody =>
      'جیسے جیسے آپ کے بجٹ اور ادائیگیاں اپنی حدود کے قریب آئیں گی، الرٹس یہاں نظر آئیں گے۔';

  @override
  String scheduledFor(String date) {
    return '$date کے لیے شیڈول';
  }

  @override
  String get everyWeek => 'ہر ہفتے';

  @override
  String get allNotificationsOff => 'تمام اطلاعات بند ہیں';

  @override
  String get needsAttention => 'توجہ درکار';

  @override
  String get quickActionsTitle => 'آپ کیا کرنا چاہیں گے؟';

  @override
  String get createSection => 'درج کریں';

  @override
  String get jumpToSection => 'یہاں جائیں';

  @override
  String get addLoanAction => 'قرض شامل کریں';

  @override
  String get addBudgetAction => 'بجٹ شامل کریں';

  @override
  String get addGoalAction => 'ہدف شامل کریں';

  @override
  String get longPressHint => 'مشورہ: خرچ فوراً درج کرنے کے لیے + دبائے رکھیں';

  @override
  String get searchCurrencies => 'کرنسی تلاش کریں';

  @override
  String get noCurrenciesFound => 'کوئی کرنسی نہیں ملی';

  @override
  String get noCurrenciesFoundMessage =>
      'کوئی مختلف کوڈ، علامت یا نام آزمائیں۔';

  @override
  String get popularCurrencies => 'مقبول';

  @override
  String get allCurrencies => 'تمام کرنسیاں';

  @override
  String get totalLoanAmount => 'کل قرض کی رقم';

  @override
  String get installmentAmount => 'قسط کی رقم';

  @override
  String get numberOfInstallments => 'اقساط کی تعداد';

  @override
  String get paidInstallments => 'ادا شدہ اقساط';

  @override
  String get remainingInstallments => 'باقی اقساط';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total میں سے $paid ادا';
  }

  @override
  String get finalPayment => 'آخری ادائیگی';

  @override
  String get paymentDueDate => 'ادائیگی کی تاریخ';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ہر مہینے کی $day تاریخ';
  }

  @override
  String get loanStatus => 'حیثیت';

  @override
  String get statusActive => 'درست راستے پر';

  @override
  String get statusDueSoon => 'جلد واجب الادا';

  @override
  String get statusOverdue => 'تاخیر کا شکار';

  @override
  String get statusCompleted => 'مکمل ادا شدہ';

  @override
  String get repaymentProgress => 'ادائیگی کی پیش رفت';

  @override
  String get byAmount => 'رقم کے لحاظ سے';

  @override
  String get byInstallments => 'اقساط کے لحاظ سے';

  @override
  String get startDate => 'آغاز کی تاریخ';

  @override
  String get openEnded => 'غیر معینہ';

  @override
  String get loanDetails => 'قرض کی تفصیلات';

  @override
  String get notSet => 'مقرر نہیں';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject آج واجب الادا ہے';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'آپ کی $amount کی ادائیگی آج واجب الادا ہے۔ ایک کلک اسے وقت پر رکھے گا۔';
  }

  @override
  String get remindMorningTitle => 'صبح بخیر ☀️';

  @override
  String get remindMorningBody =>
      'دن کا آغاز اپنے پیسے پر گرفت کے ساتھ کریں۔ کل کا کچھ درج کرنا ہے؟';

  @override
  String get remindNoonTitle => 'دوپہر کا جائزہ';

  @override
  String get remindNoonBody => 'کھانا، کافی، کرایہ؟ چند سیکنڈ میں درج کریں۔';

  @override
  String get remindAfternoonTitle => 'مختصر جائزہ';

  @override
  String get remindAfternoonBody =>
      'اب تک کے اخراجات درج کریں اور آج کا حساب درست رکھیں۔';

  @override
  String get remindEveningTitle => 'دن کا اختتام';

  @override
  String get remindEveningBody => 'ابھی دو منٹ اور آج کے اعداد مکمل۔';

  @override
  String get happyWeekendTitle => 'ہفتہ مبارک! 🎉';

  @override
  String get happyWeekendBody =>
      'لطف اٹھائیں — اور ویک اینڈ کے اخراجات پر نظر رکھیں۔';

  @override
  String get dailyReminders => 'روزانہ اخراجات کی یاد دہانیاں';

  @override
  String get dailyRemindersBody =>
      'آپ کے اخراجات کو تازہ رکھنے کے لیے دوستانہ یاد دہانیاں';

  @override
  String get weekendGreeting => 'ہفتہ مبارک';

  @override
  String get weekendGreetingBody =>
      'آپ کے ویک اینڈ کے آغاز پر ایک دوستانہ سلام';

  @override
  String get reminderTimesSection => 'یاد دہانی کے اوقات';

  @override
  String get slotMorning => 'صبح';

  @override
  String get slotNoon => 'دوپہر';

  @override
  String get slotAfternoon => 'سہ پہر';

  @override
  String get slotEvening => 'شام';

  @override
  String get everyDay => 'ہر روز';

  @override
  String get financialReport => 'مالیاتی رپورٹ';

  @override
  String get preparedFor => 'برائے';

  @override
  String get generatedOn => 'تیاری کی تاریخ';

  @override
  String get reportDisclaimer => 'RainyPenny نے آپ ہی کے ریکارڈ سے تیار کی۔';

  @override
  String pageOf(int page, int total) {
    return 'صفحہ $page از $total';
  }

  @override
  String get overview => 'جائزہ';

  @override
  String get description => 'تفصیل';

  @override
  String get totalIncome => 'کل آمدنی';

  @override
  String get totalExpenses => 'کل اخراجات';

  @override
  String get totalSaved => 'کل بچت';

  @override
  String get shareOfTotal => 'حصہ';

  @override
  String get used => 'استعمال شدہ';

  @override
  String get goal => 'ہدف';

  @override
  String get targetDate => 'ہدف کی تاریخ';

  @override
  String get progress => 'پیش رفت';

  @override
  String get paidOffShort => 'ادا شدہ';

  @override
  String get transactions => 'لین دین';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'اور $count مزید لین دین',
      one: 'اور 1 مزید لین دین',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF برآمد کریں';

  @override
  String get sharePdf => 'رپورٹ شیئر کریں';

  @override
  String get preparingReport => 'آپ کی رپورٹ تیار ہو رہی ہے…';

  @override
  String get reportReady => 'رپورٹ تیار ہے';

  @override
  String get reportFailed => 'رپورٹ نہیں بن سکی';

  @override
  String get categories => 'زمرے';

  @override
  String get categoriesIntro =>
      'اپنے زمرے شامل کریں تاکہ آمدنی اور اخراجات بالکل اسی طرح درج ہوں جیسے آپ سوچتے ہیں۔';

  @override
  String get expenseCategories => 'اخراجات کے زمرے';

  @override
  String get incomeCategories => 'آمدنی کے زمرے';

  @override
  String get newCategory => 'نیا زمرہ';

  @override
  String get editCategory => 'زمرے میں ترمیم';

  @override
  String get categoryName => 'نام';

  @override
  String get categoryNameHint => 'مثلاً: پالتو جانور کی دیکھ بھال';

  @override
  String get icon => 'آئیکن';

  @override
  String get categorySaved => 'زمرہ محفوظ ہو گیا';

  @override
  String get categoryDeleted => 'زمرہ حذف ہو گیا';

  @override
  String get deleteCategory => 'یہ زمرہ حذف کریں؟';

  @override
  String deleteCategoryBody(String name) {
    return '$name آپ کے زمروں سے ہٹا دیا جائے گا۔';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریکارڈ اب بھی یہ زمرہ استعمال کر رہے ہیں',
      one: '1 ریکارڈ اب بھی یہ زمرہ استعمال کر رہا ہے',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'یہاں ابھی کچھ نہیں۔';

  @override
  String get builtIn => 'بلٹ اِن';

  @override
  String get manageCategories => 'زمرے منظم کریں';

  @override
  String get expense => 'خرچ';

  @override
  String get languageNote =>
      'عربی، اردو، فارسی اور عبرانی پورے انٹرفیس کو دائیں سے بائیں کر دیتی ہیں — چارٹ اور PDF رپورٹس سمیت۔';

  @override
  String get next => 'آگے';

  @override
  String get back => 'واپس';

  @override
  String get skip => 'چھوڑ دیں';

  @override
  String get continueLabel => 'جاری رکھیں';

  @override
  String get selected => 'منتخب';

  @override
  String get passwordRequired => 'اپنا پاس ورڈ درج کریں';

  @override
  String get newPasswordLabel => 'نیا پاس ورڈ';

  @override
  String get confirmPasswordLabel => 'پاس ورڈ کی تصدیق کریں';

  @override
  String get passwordsDoNotMatch => 'دونوں پاس ورڈ ایک جیسے ہونے چاہئیں';

  @override
  String get showPassword => 'پاس ورڈ دکھائیں';

  @override
  String get hidePassword => 'پاس ورڈ چھپائیں';

  @override
  String get savePassword => 'پاس ورڈ محفوظ کریں';

  @override
  String get backToSignIn => 'سائن اِن پر واپس';

  @override
  String get alreadyHaveAccount => 'میرا اکاؤنٹ پہلے سے ہے';

  @override
  String get getStarted => 'شروع کریں';

  @override
  String get acceptTerms =>
      'میں شرائطِ استعمال اور پرائیویسی پالیسی سے متفق ہوں';

  @override
  String get acceptTermsRequired => 'جاری رکھنے کے لیے رضامندی دیں';

  @override
  String get passwordStrengthTooShort => 'بہت مختصر';

  @override
  String get passwordStrengthWeak => 'کمزور';

  @override
  String get passwordStrengthFair => 'ٹھیک';

  @override
  String get passwordStrengthGood => 'اچھا';

  @override
  String get passwordStrengthStrong => 'مضبوط';

  @override
  String get passwordAdvice =>
      'ایک لمبا جملہ جو آپ کو یاد رہے، علامتوں سے بھرے مختصر پاس ورڈ سے بہتر ہے۔ جو کہیں اور استعمال کر رہے ہوں، اس سے گریز کریں۔';

  @override
  String get authInvalidCredentials =>
      'یہ ای میل اور پاس ورڈ کسی اکاؤنٹ سے میل نہیں کھاتے';

  @override
  String get authEmailNotConfirmed =>
      'سائن اِن سے پہلے اپنا ای میل پتہ تصدیق کریں';

  @override
  String get authEmailAlreadyRegistered =>
      'اس ای میل سے اکاؤنٹ پہلے ہی موجود ہے';

  @override
  String get authWeakPassword => 'زیادہ لمبا پاس ورڈ منتخب کریں';

  @override
  String get authRateLimited =>
      'بہت زیادہ کوششیں۔ چند منٹ بعد دوبارہ کوشش کریں';

  @override
  String get authNetworkError =>
      'کوئی کنکشن نہیں۔ اپنا نیٹ ورک دیکھ کر دوبارہ کوشش کریں';

  @override
  String get authGenericError => 'کچھ گڑبڑ ہو گئی۔ براہِ کرم دوبارہ کوشش کریں';

  @override
  String get confirmEmailTitle => 'اپنا ای میل دیکھیں';

  @override
  String confirmEmailBody(String email) {
    return 'ہم نے $email پر تصدیقی لنک بھیجا ہے۔ اکاؤنٹ مکمل کرنے کے لیے اسے کھولیں۔';
  }

  @override
  String get resendConfirmation => 'تصدیقی ای میل دوبارہ بھیجیں';

  @override
  String get confirmationResent => 'تصدیقی ای میل بھیج دی گئی';

  @override
  String get forgotPasswordTitle => 'پاس ورڈ ری سیٹ کریں';

  @override
  String get forgotPasswordSubtitle =>
      'وہ ای میل درج کریں جس سے آپ نے سائن اپ کیا تھا، ہم نیا پاس ورڈ منتخب کرنے کا لنک بھیج دیں گے۔';

  @override
  String get sendResetLink => 'ری سیٹ لنک بھیجیں';

  @override
  String get resetLinkSentTitle => 'لنک بھیج دیا گیا';

  @override
  String resetLinkSentBody(String email) {
    return 'اگر $email کا اکاؤنٹ ہے تو ری سیٹ لنک راستے میں ہے۔';
  }

  @override
  String get resetLinkSentHint =>
      'لنک ایک گھنٹے میں ختم ہو جاتا ہے۔ نہ ملے تو دوسرا منگوانے سے پہلے اسپیم فولڈر دیکھ لیں۔';

  @override
  String get tryAnotherEmail => 'دوسرا ای میل استعمال کریں';

  @override
  String get resetPasswordTitle => 'نیا پاس ورڈ منتخب کریں';

  @override
  String get resetPasswordSubtitle =>
      'ایسا کچھ چنیں جو اس اکاؤنٹ پر پہلے استعمال نہ کیا ہو۔';

  @override
  String get passwordChangedTitle => 'پاس ورڈ اپ ڈیٹ ہو گیا';

  @override
  String get passwordChangedBody =>
      'آپ کا نیا پاس ورڈ محفوظ ہو گیا۔ آپ سائن اِن ہیں اور تیار ہیں۔';

  @override
  String get demoModeHint => 'ڈیمو ورژن — اکاؤنٹ کی ضرورت نہیں';

  @override
  String get demoModeFill => 'بھر دیں';

  @override
  String get welcomeTrackTitle => 'دیکھیں آپ کا پیسہ کہاں جاتا ہے';

  @override
  String get welcomeTrackBody =>
      'جو آتا ہے اور جو جاتا ہے، دونوں درج کریں۔ RainyPenny اسے ایسی تصویر میں بدل دیتا ہے جو واقعی پڑھی جا سکے۔';

  @override
  String get welcomeBudgetTitle => 'ایسی حدیں جو قائم رہیں';

  @override
  String get welcomeBudgetBody =>
      'اپنے خرچ کے ہر حصے پر ماہانہ حد رکھیں، اور حد پار ہونے سے پہلے جان لیں — بعد میں نہیں۔';

  @override
  String get welcomeGoalsTitle => 'جو اہم ہے اس کے لیے بچت کریں';

  @override
  String get welcomeGoalsBody =>
      'مقصد کو نام دیں، رقم مقرر کریں، اور اسے بھرتے دیکھیں۔ مشکل دنوں کا فنڈ تب آسانی سے بنتا ہے جب وہ نظر آئے۔';

  @override
  String get welcomePrivacyTitle => 'آپ کا پیسہ آپ ہی کا رہتا ہے';

  @override
  String get welcomePrivacyBody =>
      'آپ کے اعداد صرف آپ کے ہیں۔ نہ کچھ بیچا جاتا ہے، نہ کسی سے شیئر کیا جاتا ہے۔';

  @override
  String stepOf(int step, int total) {
    return 'مرحلہ $step از $total';
  }

  @override
  String get onboardingNameTitle => 'ہم آپ کو کیا کہہ کر پکاریں؟';

  @override
  String get onboardingNameBody =>
      'یہ صرف سلام کے لیے استعمال ہوگا، اور کہیں نہیں۔';

  @override
  String get onboardingNameHint => 'پہلا نام کافی ہے۔ بعد میں بدل سکتے ہیں۔';

  @override
  String get onboardingCurrencyTitle => 'آپ کون سی کرنسی استعمال کرتے ہیں؟';

  @override
  String get onboardingCurrencyBody =>
      'ایپ میں ہر رقم اسی کرنسی میں دکھائی جائے گی۔ اسے منتخب کرنے سے کوئی تبدیلی نہیں ہوتی۔';

  @override
  String get onboardingCurrencySearch => 'تمام کرنسیوں میں تلاش کریں';

  @override
  String get onboardingAppearanceTitle => 'اسے اپنا بنائیں';

  @override
  String get onboardingAppearanceBody =>
      'ایک انداز چنیں۔ چھوتے ہی سب بدل جاتا ہے، اور آپ جب چاہیں واپس آ سکتے ہیں۔';

  @override
  String get onboardingNotificationsTitle => 'نظر رکھیں';

  @override
  String get onboardingNotificationsBody =>
      'صحیح وقت پر ہلکی سی یاددہانی ہی اسے عادت بناتی ہے۔';

  @override
  String get onboardingNotifyReminders => 'خرچ درج کرنے کی نرم یاددہانی';

  @override
  String get onboardingNotifyBudget => 'بجٹ ختم ہونے سے پہلے اطلاع';

  @override
  String get onboardingNotifySummary =>
      'آپ کا پیسہ کہاں گیا، اس کا ہفتہ وار خلاصہ';

  @override
  String get onboardingNotifyEnable => 'اطلاعات آن کریں';

  @override
  String get onboardingNotifyDone => 'اطلاعات کی ترتیبات محفوظ ہو گئیں';

  @override
  String get onboardingNotifyLater =>
      'یہ سب آپ ترتیبات میں جب چاہیں بدل سکتے ہیں۔';

  @override
  String get onboardingReadyTitle => 'سب تیار ہے';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'سب تیار ہے، $name';
  }

  @override
  String get onboardingReadyBody =>
      'سیٹ اپ مکمل ہوا۔ کیا ایپ کیسے چلتی ہے، اس کی مختصر سیر کریں؟';

  @override
  String get onboardingTakeTour => 'مجھے دکھائیں';

  @override
  String get onboardingGoToApp => 'ایپ پر لے چلیں';

  @override
  String get onboardingTourLater =>
      'ابھی نہیں؟ رہنما ترتیبات میں رہے گا، جب چاہیں دیکھ لیں۔';

  @override
  String get beginnersGuide => 'ابتدائی رہنما';

  @override
  String get guideFinish => 'مکمل';

  @override
  String chapterOf(int number, int total) {
    return 'باب $number از $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen کھولیں';
  }

  @override
  String get guideDashboardTitle => 'آپ کا ڈیش بورڈ';

  @override
  String get guideDashboardBody =>
      'سب یہیں سے شروع ہوتا ہے۔ اوپر والا کارڈ بتاتا ہے کہ آپ کے پاس کیا بچا ہے؛ اس کے نیچے اس مدت کی آمدنی اور خرچ، پھر آپ کا خرچ، بجٹ اور اہداف۔';

  @override
  String get guideDashboardTip1 =>
      'سب کچھ ایک ساتھ تازہ کرنے کے لیے اسکرین نیچے کھینچیں۔';

  @override
  String get guideDashboardTip2 =>
      'اُس فہرست پر سیدھے جانے کے لیے آمدنی یا اخراجات کارڈ پر ٹیپ کریں۔';

  @override
  String get guideDashboardTip3 =>
      'جیسے ہی آپ کچھ درج کرتے ہیں، حلقے اور تجاویز اپ ڈیٹ ہو جاتے ہیں۔';

  @override
  String get guideAddTitle => 'پیسہ درج کرنا';

  @override
  String get guideAddBody =>
      'بار کے بیچ والا بٹن ہی آغاز ہے۔ یہ ایک مختصر مینو کھولتا ہے: خرچ، آمدنی، قرض، بجٹ یا بچت کا ہدف۔';

  @override
  String get guideAddTip1 =>
      'آمدنی یا خرچ درج کرنے کے لیے بیچ والا بٹن دبائیں۔';

  @override
  String get guideAddTip2 =>
      'مینو چھوڑ کر سیدھے نئے خرچ پر جانے کے لیے اسے دبائے رکھیں۔';

  @override
  String get guideAddTip3 =>
      'ہمیشہ ایک زمرہ منتخب کریں — چارٹ اور بجٹ اسی سے کام کرتے ہیں۔';

  @override
  String get guideCategoriesTitle => 'زمرے';

  @override
  String get guideCategoriesBody =>
      'زمرے خرچ کو گروپوں میں بانٹتے ہیں۔ ایپ کے ساتھ آنے والے زمرے زیادہ تر لوگوں کے لیے کافی ہیں، اور آپ ان کے نام بدل سکتے ہیں یا اپنے بنا سکتے ہیں۔';

  @override
  String get guideCategoriesTip1 =>
      'بدلنے یا شامل کرنے کے لیے ترتیبات، پھر زمرے منظم کریں۔';

  @override
  String get guideCategoriesTip2 =>
      'بغیر زمرے والی ہر چیز «دیگر» میں جاتی ہے، تاکہ چارٹ درست رہیں۔';

  @override
  String get guideBudgetTitle => 'بجٹ';

  @override
  String get guideBudgetBody =>
      'بجٹ کسی ایک زمرے کی ماہانہ حد ہے۔ خرچ کے ساتھ پٹی بھرتی ہے اور حد قریب آتے ہی رنگ بدلتی ہے، سو حد پار ہونے سے پہلے پتہ چل جاتا ہے۔';

  @override
  String get guideBudgetTip1 => 'ایک ساتھ سب نہیں — دو تین زمروں سے شروع کریں۔';

  @override
  String get guideBudgetTip2 =>
      'حد اپنے عام خرچ سے کچھ اوپر رکھیں، پھر آہستہ آہستہ کم کریں۔';

  @override
  String get guideBudgetTip3 =>
      'بجٹ الرٹ آن رہنے دیں، ایپ وقت پر خبردار کر دے گی۔';

  @override
  String get guideSavingsTitle => 'بچت کے اہداف';

  @override
  String get guideSavingsBody =>
      'جس کے لیے بچت کر رہے ہیں اسے نام دیں، رقم اور تاریخ مقرر کریں — ایپ حساب لگا دے گی کہ ہر مہینے کتنا الگ رکھنا ہے۔';

  @override
  String get guideSavingsTip1 =>
      'نام والا ہدف، بچت کے مبہم ارادے سے کہیں آسانی سے نبھتا ہے۔';

  @override
  String get guideSavingsTip2 =>
      'ایک بڑے ہدف سے زیادہ بار کئی چھوٹے اہداف مکمل ہوتے ہیں۔';

  @override
  String get guideLoansTitle => 'قرض اور واجبات';

  @override
  String get guideLoansBody =>
      'جو آپ پر واجب ہے، اس کی لاگت اور اگلی قسط کی تاریخ درج کریں۔ جو کچھ آپ ادا کر رہے ہیں، وہ سب باقی رقم کے ساتھ ایک فہرست میں رہتا ہے۔';

  @override
  String get guideLoansTip1 =>
      'مقررہ تاریخ شامل کریں، ادائیگی کی یاددہانیاں خود پیچھا کرتی رہیں گی۔';

  @override
  String get guideLoansTip2 =>
      'واجب الادا قرض ادا ہونے تک ڈیش بورڈ پر سرخ دکھائی دیتا ہے۔';

  @override
  String get guideReportsTitle => 'رپورٹس';

  @override
  String get guideReportsBody =>
      'گہری نظر: آمدنی بمقابلہ اخراجات، زمرہ وار خرچ، آپ کے بجٹ کیسے قائم رہے، اور آپ کی آمدنی کا کتنا حصہ بچا۔';

  @override
  String get guideReportsTip1 =>
      'اسکرین کے اوپر سے ہفتہ، مہینہ اور سہ ماہی کے درمیان بدلیں۔';

  @override
  String get guideReportsTip2 =>
      'PDF برآمد کریں یا شیئر کریں — وہ آپ کی زبان اور سمت میں ہی بنتی ہے۔';

  @override
  String get guideSettingsTitle => 'ترتیبات';

  @override
  String get guideSettingsBody =>
      'زبان، کرنسی، رنگ اور الرٹ سب یہیں ہیں، اور سیٹ اپ سے کچھ بھی طے نہیں ہو جاتا — جب چاہیں بدلیں۔';

  @override
  String get guideSettingsTip1 =>
      'چالیس زبانیں، اور دائیں سے بائیں زبانوں کے لیے پورا لے آؤٹ پلٹ جاتا ہے۔';

  @override
  String get guideSettingsTip2 =>
      'منتخب کریں کہ کون سے الرٹ چاہئیں اور وہ کن اوقات میں آ سکتے ہیں۔';

  @override
  String get guideSettingsTip3 => 'خاموش اوقات سب کچھ صبح تک روک رکھتے ہیں۔';

  @override
  String get guideHabitTitle => 'اسے عادت بنائیں';

  @override
  String get guideHabitBody =>
      'ایپ اتنی ہی اچھی ہے جتنا آپ اس میں ڈالیں۔ مہینے میں ایک گھنٹے سے روز کا ایک منٹ بہتر ہے، اور دو ہفتوں بعد اعداد کچھ کہنے لگتے ہیں۔';

  @override
  String get guideHabitTip1 => 'خرچ اُسی وقت درج کریں، ہفتے کے آخر میں نہیں۔';

  @override
  String get guideHabitTip2 =>
      'دن میں ایک بار ڈیش بورڈ دیکھ لیں۔ دس سیکنڈ کافی ہیں۔';

  @override
  String get guideHabitTip3 =>
      'یہ رہنما ترتیبات میں رہتا ہے — جب چاہیں واپس آ جائیں۔';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get themeCaption => 'ہلکا، گہرا، یا جو آپ کا فون کر رہا ہو۔';

  @override
  String get accentColor => 'نمایاں رنگ';

  @override
  String get accentColorCaption => 'بٹن، نمایاں حصے اور چارٹ رنگتا ہے۔';

  @override
  String get accentSemanticsNote =>
      'آمدنی اور خرچ ہر تھیم میں اپنے رنگ برقرار رکھتے ہیں، سو نمایاں رنگ بدلنے سے کسی عدد کا مطلب نہیں بدلتا۔';

  @override
  String get accentTeal => 'فیروزی';

  @override
  String get accentGreen => 'سبز';

  @override
  String get accentSky => 'آسمانی';

  @override
  String get accentBlue => 'نیلا';

  @override
  String get accentIndigo => 'نیلگوں';

  @override
  String get accentViolet => 'بنفشی';

  @override
  String get accentPink => 'گلابی';

  @override
  String get accentCrimson => 'قرمزی';

  @override
  String get accentOrange => 'نارنجی';

  @override
  String get accentSlate => 'سلیٹی';

  @override
  String get searchLanguages => 'زبانیں تلاش کریں';

  @override
  String get suggestedLanguages => 'تجویز کردہ';

  @override
  String get allLanguages => 'تمام زبانیں';

  @override
  String get noLanguagesFound => 'کوئی زبان نہیں ملی';

  @override
  String get noLanguagesFoundMessage => 'انگریزی نام یا دو حرفی کوڈ آزمائیں۔';

  @override
  String get rightToLeft => 'دائیں سے بائیں';

  @override
  String get replayGuide => 'رہنما دوبارہ دیکھیں';

  @override
  String get replaySetup => 'سیٹ اپ دوبارہ چلائیں';

  @override
  String get replaySetupBody =>
      'ابتدائی سوالات سے دوبارہ گزریں۔ آپ کا درج کیا ہوا کچھ بھی نہیں مٹے گا۔';

  @override
  String get rateTitle => 'کیا RainyPenny پسند آ رہی ہے؟';

  @override
  String get rateBody =>
      'آپ کچھ عرصے سے اسے استعمال کر رہے ہیں۔ درجہ بندی میں ایک لمحہ لگتا ہے اور اس سے دوسروں کو ایپ ڈھونڈنے میں مدد ملتی ہے۔';

  @override
  String get rateAction => 'ایپ کو ریٹ کریں';

  @override
  String get rateLater => 'شاید بعد میں';

  @override
  String get rateNever => 'نہیں، شکریہ';

  @override
  String get rateThanks => 'شکریہ';

  @override
  String get monthlySalary => 'ماہانہ تنخواہ';

  @override
  String get remainingAmount => 'باقی';

  @override
  String get carriedForward => 'آگے منتقل';

  @override
  String get carriedForwardHint => 'پچھلے دورانیے سے بچا ہوا';

  @override
  String get totalSpending => 'کل اخراجات';

  @override
  String get salaryCycle => 'تنخواہ کا دورانیہ';

  @override
  String get payday => 'تنخواہ کا دن';

  @override
  String get paydayDescription =>
      'وہ دن جب آپ کی تنخواہ آتی ہے۔ آپ کا مالی مہینہ اس دن سے اگلی تنخواہ سے ایک دن پہلے تک چلتا ہے۔';

  @override
  String get paydayUpdated => 'تنخواہ کا دن اپ ڈیٹ ہو گیا';

  @override
  String paydayDayOfMonth(int day) {
    return 'دن $day';
  }

  @override
  String get paydayShortMonthNote =>
      'چھوٹے مہینوں میں دورانیہ مہینے کے آخری دن سے شروع ہوتا ہے۔';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تنخواہ میں $count دن باقی',
      one: 'تنخواہ میں 1 دن باقی',
      zero: 'دورانیے کا آخری دن',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'اگلی تنخواہ';

  @override
  String get spentSoFar => 'اب تک خرچ';

  @override
  String get dailyAllowance => 'روزانہ محفوظ خرچ';

  @override
  String get overspentNotice =>
      'آپ نے اس دورانیے میں آمدنی سے زیادہ خرچ کیا ہے۔';

  @override
  String get backToThisMonth => 'اس مہینے پر واپس';

  @override
  String get cycleRangeLabel => 'دورانیہ';

  @override
  String get noSalaryRecorded => 'ابھی کوئی تنخواہ درج نہیں';

  @override
  String get addSalaryAction => 'اپنی تنخواہ شامل کریں';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'بہترین';

  @override
  String get healthGood => 'اچھا';

  @override
  String get healthFair => 'ٹھیک';

  @override
  String get healthNeedsWork => 'بہتری درکار';

  @override
  String get healthExcellentBody =>
      'آپ اچھی بچت کر رہے ہیں اور اپنے بجٹ کے اندر رہ رہے ہیں۔';

  @override
  String get healthGoodBody => 'اس مدت میں آپ کے اخراجات درست راستے پر ہیں۔';

  @override
  String get healthFairBody =>
      'کچھ بجٹ حد کے قریب ہیں۔ چھوٹی تبدیلیاں مدد دیں گی۔';

  @override
  String get healthNeedsWorkBody =>
      'اخراجات آپ کے منصوبے سے بڑھ رہے ہیں۔ اپنی سب سے بڑی قسم سے شروع کریں۔';

  @override
  String get factorSavingsRate => 'بچت کی شرح';

  @override
  String get factorBudgetControl => 'بجٹ کنٹرول';

  @override
  String get factorDebtLoad => 'قرض کا بوجھ';

  @override
  String get factorSpendingTrend => 'اخراجات کا رجحان';

  @override
  String factorKept(String percent) {
    return '$percent% محفوظ';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% استعمال';
  }

  @override
  String factorOfIncome(String percent) {
    return 'آمدنی کا $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% اضافہ';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% کمی';
  }

  @override
  String get howScoreWorks => 'یہ اسکور کیسے بنتا ہے';

  @override
  String get healthScoreExplainer =>
      'آپ کا اسکور چار چیزوں کو ملاتا ہے: آپ اپنی آمدنی کا کتنا حصہ بچاتے ہیں، آپ اپنے بجٹ میں کتنا رہتے ہیں، آپ کی آمدنی کا کتنا حصہ قرض میں جاتا ہے، اور آپ کے اخراجات بڑھ رہے ہیں یا کم ہو رہے ہیں۔';

  @override
  String scoreWeightLabel(int percent) {
    return 'اسکور کا $percent%';
  }

  @override
  String get viewHealthDetails => 'تفصیل دیکھیں';

  @override
  String get saveChanges => 'تبدیلیاں محفوظ کریں';

  @override
  String get profileUpdated => 'پروفائل اپ ڈیٹ ہو گئی';

  @override
  String get changePhoto => 'تصویر تبدیل کریں';

  @override
  String get removePhoto => 'تصویر ہٹائیں';

  @override
  String get personalInformationIntro =>
      'آپ کا نام اور تصویر پوری ایپ میں نظر آتے ہیں۔ آپ کا ای میل وہ پتہ ہے جس سے آپ سائن اِن کرتے ہیں۔';

  @override
  String get emailNotEditable =>
      'سائن اِن کا پتہ تبدیل کرنے کے لیے سپورٹ سے رابطہ کریں۔';

  @override
  String get pressBackAgainToExit => 'باہر نکلنے کے لیے دوبارہ بیک دبائیں';

  @override
  String get categoryHousing => 'رہائش';

  @override
  String get categoryFood => 'کھانا پینا';

  @override
  String get categoryTransport => 'آمد و رفت';

  @override
  String get categoryShopping => 'خریداری';

  @override
  String get categoryBills => 'بل اور یوٹیلٹیز';

  @override
  String get categoryEntertainment => 'تفریح';

  @override
  String get categoryHealth => 'صحت و تندرستی';

  @override
  String get categoryEducation => 'تعلیم';

  @override
  String get categoryTravel => 'سفر';

  @override
  String get categoryOther => 'دیگر';

  @override
  String get categorySalary => 'تنخواہ';

  @override
  String get categoryFreelance => 'فری لانس';

  @override
  String get categoryInvestments => 'سرمایہ کاری';

  @override
  String get categoryRefunds => 'واپسی اور تحائف';

  @override
  String get addCategory => 'نئی قسم';

  @override
  String get filterByCategory => 'قسم کے مطابق چھانٹیں';

  @override
  String get allCategories => 'تمام اقسام';

  @override
  String get clearFilters => 'فلٹر صاف کریں';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'تمام وقت';

  @override
  String get customRange => 'حسبِ ضرورت';

  @override
  String get selectDateRange => 'مدت منتخب کریں';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end دکھایا جا رہا ہے';
  }
}
