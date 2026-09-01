// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppL10nAr extends AppL10n {
  AppL10nAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'ادّخر ليوم ممطر';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navTransactions => 'المعاملات';

  @override
  String get navAdd => 'إضافة';

  @override
  String get navReports => 'التقارير';

  @override
  String get navProfile => 'الملف الشخصي';

  @override
  String greetingMorning(String name) {
    return 'صباح الخير، $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'مساء الخير، $name';
  }

  @override
  String greetingEvening(String name) {
    return 'مساء الخير، $name';
  }

  @override
  String get greetingSubtitle => 'إليك نظرة عامة على وضعك المالي';

  @override
  String get totalBalance => 'الرصيد الإجمالي';

  @override
  String get vsLastPeriod => 'مقارنة بالفترة السابقة';

  @override
  String get income => 'الدخل';

  @override
  String get expenses => 'المصروفات';

  @override
  String get netBalance => 'صافي الرصيد';

  @override
  String get lastThirtyDays => 'آخر ٣٠ يومًا';

  @override
  String get quickActions => 'إجراءات سريعة';

  @override
  String get addIncome => 'إضافة دخل';

  @override
  String get addExpense => 'إضافة مصروف';

  @override
  String get spendingOverview => 'نظرة على الإنفاق';

  @override
  String get recentTransactions => 'أحدث المعاملات';

  @override
  String get seeAll => 'عرض الكل';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get budgetProgress => 'تقدّم الميزانية';

  @override
  String get savingsGoals => 'أهداف الادخار';

  @override
  String get financialInsight => 'رؤية مالية';

  @override
  String get financialHealth => 'الصحة المالية';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'ابحث في المعاملات';

  @override
  String get filterAll => 'الكل';

  @override
  String get filterIncome => 'الدخل';

  @override
  String get filterExpenses => 'المصروفات';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String get noTransactionsTitle => 'لا توجد معاملات';

  @override
  String get noTransactionsBody => 'جرّب بحثًا أو تصفية مختلفة لعرض المزيد.';

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
  String get addTransaction => 'إضافة معاملة';

  @override
  String get amount => 'المبلغ';

  @override
  String get category => 'الفئة';

  @override
  String get date => 'التاريخ';

  @override
  String get note => 'ملاحظة';

  @override
  String get noteHint => 'ملاحظة اختيارية';

  @override
  String get saveIncome => 'حفظ الدخل';

  @override
  String get saveExpense => 'حفظ المصروف';

  @override
  String get selectCategory => 'اختر الفئة';

  @override
  String get transactionSaved => 'تم حفظ المعاملة';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get descriptionHint => 'مثال: بقالة';

  @override
  String get budget => 'الميزانية';

  @override
  String get budgets => 'الميزانيات';

  @override
  String get totalBudget => 'إجمالي الميزانية';

  @override
  String get spent => 'المنفق';

  @override
  String get remaining => 'المتبقي';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'على المسار';

  @override
  String get approachingLimit => 'يقترب من الحد';

  @override
  String get overBudget => 'تجاوز الميزانية';

  @override
  String get savings => 'المدخرات';

  @override
  String get yourGoals => 'أهدافك';

  @override
  String get saved => 'تم ادخاره';

  @override
  String get target => 'الهدف';

  @override
  String get monthlyContribution => 'شهريًا';

  @override
  String get addFunds => 'إضافة مبلغ';

  @override
  String get goalComplete => 'تم تحقيق الهدف';

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
  String get loansAndDebts => 'القروض والديون';

  @override
  String get totalOutstanding => 'إجمالي المستحق';

  @override
  String get monthlyPayment => 'شهريًا';

  @override
  String get nextPayment => 'الدفعة القادمة';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'الفائدة';

  @override
  String get upcomingPayments => 'الدفعات القادمة';

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
  String get overdue => 'متأخر';

  @override
  String get reports => 'التقارير';

  @override
  String get week => 'أسبوع';

  @override
  String get month => 'شهر';

  @override
  String get quarter => 'ربع سنة';

  @override
  String get incomeVsExpenses => 'الدخل مقابل المصروفات';

  @override
  String get spendingByCategory => 'الإنفاق حسب الفئة';

  @override
  String get budgetPerformance => 'أداء الميزانية';

  @override
  String get insights => 'رؤى';

  @override
  String get savingsRate => 'معدل الادخار';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get account => 'الحساب';

  @override
  String get personalInformation => 'المعلومات الشخصية';

  @override
  String get changePassword => 'تغيير كلمة المرور';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get preferences => 'التفضيلات';

  @override
  String get language => 'اللغة';

  @override
  String get currency => 'العملة';

  @override
  String get theme => 'المظهر';

  @override
  String get security => 'الأمان';

  @override
  String get privacyAndSecurity => 'الخصوصية والأمان';

  @override
  String get help => 'المساعدة';

  @override
  String get helpAndSupport => 'المساعدة والدعم';

  @override
  String get termsAndConditions => 'الشروط والأحكام';

  @override
  String get logOut => 'تسجيل الخروج';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get dashboard => 'لوحة التحكم';

  @override
  String get settings => 'الإعدادات';

  @override
  String get noNotificationsTitle => 'لا يوجد جديد';

  @override
  String get noNotificationsBody => 'ستظهر هنا الرؤى والتذكيرات الجديدة.';

  @override
  String get cancel => 'إلغاء';

  @override
  String get save => 'حفظ';

  @override
  String get done => 'تم';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get close => 'إغلاق';

  @override
  String get somethingWentWrong => 'حدث خطأ ما';

  @override
  String get comingSoon => 'قريبًا في الإصدار الكامل';
}
