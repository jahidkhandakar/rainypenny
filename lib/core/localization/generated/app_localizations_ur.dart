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
}
