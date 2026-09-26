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
  String get lastThirtyDays => 'آخر 30 يومًا';

  @override
  String get quickActions => 'إجراءات سريعة';

  @override
  String get addIncome => 'إضافة دخل';

  @override
  String get addExpense => 'إضافة مصروف';

  @override
  String get spendingOverview => 'نظرة عامة على الإنفاق';

  @override
  String get recentTransactions => 'المعاملات الأخيرة';

  @override
  String get seeAll => 'عرض الكل';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get budgetProgress => 'تقدم الميزانية';

  @override
  String get savingsGoals => 'أهداف الادخار';

  @override
  String get financialInsight => 'رؤية مالية';

  @override
  String get financialHealth => 'الصحة المالية';

  @override
  String ofTotal(String total) {
    return 'من $total';
  }

  @override
  String get searchTransactions => 'البحث في المعاملات';

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
  String get noTransactionsTitle => 'لم يتم العثور على معاملات';

  @override
  String get noTransactionsBody =>
      'جرّب بحثًا أو فلترًا مختلفًا لعرض المزيد من نشاطك.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count معاملات',
      one: 'معاملة واحدة',
      zero: 'لا توجد معاملات',
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
  String get selectCategory => 'اختر فئة';

  @override
  String get transactionSaved => 'تم حفظ المعاملة';

  @override
  String get amountRequired => 'أدخل مبلغًا أكبر من صفر';

  @override
  String get titleRequired => 'أدخل اسمًا لهذه المعاملة';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get descriptionHint => 'مثال: مشتريات البقالة';

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
    return 'تم استخدام $percent%';
  }

  @override
  String get onTrack => 'على المسار';

  @override
  String get approachingLimit => 'تقترب من الحد';

  @override
  String get overBudget => 'تجاوزت الميزانية';

  @override
  String get savings => 'الادخار';

  @override
  String get yourGoals => 'أهدافك';

  @override
  String get saved => 'المدخر';

  @override
  String get target => 'الهدف';

  @override
  String get monthlyContribution => 'شهريًا';

  @override
  String get addFunds => 'إضافة أموال';

  @override
  String get goalComplete => 'تم تحقيق الهدف';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أشهر متبقية',
      one: 'شهر واحد متبقٍ',
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
  String get nextPayment => 'الدفعة التالية';

  @override
  String paidOff(int percent) {
    return 'تم سداد $percent%';
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
      other: 'مستحق خلال $count أيام',
      one: 'مستحق غدًا',
      zero: 'مستحق اليوم',
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
  String get insights => 'الرؤى';

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
    return 'عضو منذ $date';
  }

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get settings => 'الإعدادات';

  @override
  String get noNotificationsTitle => 'أنت على اطلاع بكل شيء';

  @override
  String get noNotificationsBody => 'ستظهر الرؤى والتذكيرات الجديدة هنا.';

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

  @override
  String get edit => 'تعديل';

  @override
  String get delete => 'حذف';

  @override
  String get undo => 'تراجع';

  @override
  String get add => 'إضافة';

  @override
  String get create => 'إنشاء';

  @override
  String get nameRequired => 'أدخل اسمك';

  @override
  String get amountAboveZero => 'أدخل مبلغًا أكبر من صفر';

  @override
  String get editTransaction => 'تعديل المعاملة';

  @override
  String get deleteTransaction => 'حذف المعاملة؟';

  @override
  String deleteTransactionBody(String title) {
    return 'ستتم إزالة $title من سجلك.';
  }

  @override
  String get transactionDeleted => 'تم حذف المعاملة';

  @override
  String get transactionUpdated => 'تم تحديث المعاملة';

  @override
  String get newBudget => 'ميزانية جديدة';

  @override
  String get editBudget => 'تعديل الميزانية';

  @override
  String get budgetLimit => 'الحد الشهري';

  @override
  String get deleteBudget => 'حذف الميزانية؟';

  @override
  String deleteBudgetBody(String category) {
    return 'ستتم إزالة ميزانية $category. لن تتأثر معاملاتك.';
  }

  @override
  String get budgetSaved => 'تم حفظ الميزانية';

  @override
  String get budgetDeleted => 'تم حذف الميزانية';

  @override
  String get allCategoriesBudgeted => 'لدى جميع الفئات ميزانية بالفعل';

  @override
  String get noBudgetsTitle => 'لا توجد ميزانيات بعد';

  @override
  String get noBudgetsBody => 'حدد حدًا شهريًا لفئة ما لبدء تتبعها.';

  @override
  String get newGoal => 'هدف جديد';

  @override
  String get editGoal => 'تعديل الهدف';

  @override
  String get goalName => 'اسم الهدف';

  @override
  String get goalNameHint => 'مثال: صندوق الطوارئ';

  @override
  String get targetAmount => 'المبلغ المستهدف';

  @override
  String get alreadySaved => 'المدخر بالفعل';

  @override
  String get deleteGoal => 'حذف الهدف؟';

  @override
  String deleteGoalBody(String name) {
    return 'ستتم إزالة $name وتقدمه.';
  }

  @override
  String get goalSaved => 'تم حفظ الهدف';

  @override
  String get goalDeleted => 'تم حذف الهدف';

  @override
  String get noGoalsTitle => 'لا توجد أهداف ادخار بعد';

  @override
  String get noGoalsBody =>
      'حدد هدفًا ومبلغًا مستهدفًا، وسيتتبع RainyPenny تقدمك.';

  @override
  String get fundsAdded => 'تمت إضافة الأموال';

  @override
  String get newDebt => 'قرض أو بطاقة جديدة';

  @override
  String get editDebt => 'تعديل القرض';

  @override
  String get debtName => 'الاسم';

  @override
  String get debtNameHint => 'مثال: قرض السيارة';

  @override
  String get lender => 'جهة الإقراض';

  @override
  String get lenderHint => 'مثال: بنك ميريديان';

  @override
  String get originalAmount => 'المبلغ الأصلي';

  @override
  String get creditLimit => 'حد الائتمان';

  @override
  String get remainingBalance => 'الرصيد المتبقي';

  @override
  String get interestRatePercent => 'معدل الفائدة (%)';

  @override
  String get kindLoan => 'قرض';

  @override
  String get kindCreditCard => 'بطاقة ائتمان';

  @override
  String get recordPayment => 'تسجيل دفعة';

  @override
  String get paymentRecorded => 'تم تسجيل الدفعة';

  @override
  String get deleteDebt => 'حذف هذا الدين؟';

  @override
  String deleteDebtBody(String name) {
    return 'ستتم إزالة $name من ديونك.';
  }

  @override
  String get debtSaved => 'تم الحفظ';

  @override
  String get debtDeleted => 'تم الحذف';

  @override
  String get noDebtsTitle => 'لا توجد ديون متتبعة';

  @override
  String get noDebtsBody => 'أضف قرضًا أو بطاقة ائتمان لمتابعة السداد.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'تم تجاوز ميزانية $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'لقد أنفقت $amount أكثر من ميزانية $subject لهذه الفترة.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'اقتربت ميزانية $subject من الحد';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'تم استخدام $percent% من ميزانية $subject، ويتبقى $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'الإنفاق أعلى من الدخل';

  @override
  String get insightOverIncomeBody =>
      'لقد أنفقت أكثر مما كسبت خلال هذه الفترة. راجع أكبر فئات إنفاقك لإعادة التوازن.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'إنفاق $subject مرتفع';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'إنفاقك على $subject أعلى بنسبة $percent% من الفترة السابقة.';
  }

  @override
  String get insightTrendDownTitle => 'الإنفاق يتجه نحو الانخفاض';

  @override
  String insightTrendDownBody(int percent) {
    return 'انخفض إجمالي الإنفاق بنسبة $percent% مقارنة بالفترة السابقة.';
  }

  @override
  String get insightTrendUpTitle => 'الإنفاق يتجه نحو الارتفاع';

  @override
  String insightTrendUpBody(int percent) {
    return 'ارتفع إجمالي الإنفاق بنسبة $percent% مقارنة بالفترة السابقة.';
  }

  @override
  String get insightSavingsStrongTitle => 'ادخار قوي خلال هذه الفترة';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'احتفظت بنسبة $percent% من دخلك — وهي أعلى بكثير من الهدف البالغ $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'معدل الادخار أقل من الهدف';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'احتفظت بنسبة $percent% من دخلك خلال هذه الفترة. استهدف $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'اقترب تمويل $subject من الاكتمال';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'لم يتبقَّ سوى $amount للوصول إلى $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'أنت على المسار الصحيح لتحقيق $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months أشهر',
      one: 'شهر واحد',
    );
    return 'بمبلغ $amount شهريًا، ستصل إلى هذا الهدف خلال $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'دفعة $subject متأخرة';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days أيام',
      one: 'يوم واحد',
    );
    return 'دفعة $subject البالغة $amount متأخرة لمدة $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'دفعة $subject قادمة';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'خلال $days أيام',
      one: 'غدًا',
      zero: 'اليوم',
    );
    return 'يستحق مبلغ $amount $_temp0.';
  }

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signInSubtitle => 'مرحبًا بعودتك. أموالك بانتظارك.';

  @override
  String get signUpSubtitle => 'بعض التفاصيل فقط وستكون جاهزًا.';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get passwordHint => '8 أحرف على الأقل';

  @override
  String get fullNameLabel => 'الاسم الكامل';

  @override
  String get fullNameHint => 'أحمد محمد';

  @override
  String get forgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get resetSent => 'تحقق من بريدك الوارد للحصول على رابط إعادة التعيين';

  @override
  String get noAccountYet => 'جديد هنا؟';

  @override
  String get haveAccount => 'لديك حساب بالفعل؟';

  @override
  String get emailInvalid => 'أدخل عنوان بريد إلكتروني صالحًا';

  @override
  String get passwordTooShort => 'استخدم 8 أحرف على الأقل';

  @override
  String get signOutConfirm => 'تسجيل الخروج؟';

  @override
  String get signOutBody => 'ستحتاج إلى تسجيل الدخول مرة أخرى لرؤية أموالك.';

  @override
  String get dataSource => 'مصدر البيانات';

  @override
  String get insightWeeklySummaryTitle => 'ملخص أسبوعك';

  @override
  String get insightWeeklySummaryBody =>
      'شاهد أين ذهبت أموالك هذا الأسبوع وكيف تسير ميزانياتك.';

  @override
  String get notificationSettings => 'الإشعارات';

  @override
  String get alertsSection => 'التنبيهات';

  @override
  String get budgetAlerts => 'تنبيهات الميزانية';

  @override
  String get budgetAlertsBody => 'عندما تقترب الميزانية من حدها أو تتجاوزه';

  @override
  String get paymentReminders => 'تذكيرات الدفع';

  @override
  String get paymentRemindersBody => 'قبل حلول موعد الدفع ببضعة أيام';

  @override
  String get savingsUpdates => 'تحديثات الادخار';

  @override
  String get savingsUpdatesBody => 'تقدم أهدافك';

  @override
  String get weeklySummaryLabel => 'الملخص الأسبوعي';

  @override
  String get weeklySummaryBody => 'ملخص للأسبوع المنصرم';

  @override
  String get scheduleSection => 'التوقيت';

  @override
  String get reminderTime => 'وقت التذكير';

  @override
  String get quietHours => 'ساعات الهدوء';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'يوم الملخص';

  @override
  String get permissionRequired => 'الإشعارات متوقفة';

  @override
  String get permissionRequiredBody =>
      'اسمح بالإشعارات حتى يتمكن RainyPenny من تنبيهك قبل أن تتجاوز ميزانية أو يفوتك موعد دفع.';

  @override
  String get allowNotifications => 'السماح بالإشعارات';

  @override
  String get permissionDenied =>
      'الإشعارات محظورة. يمكنك تشغيلها من إعدادات جهازك.';

  @override
  String get upcomingAlerts => 'مجدولة';

  @override
  String get noScheduledAlerts => 'لا توجد تنبيهات مجدولة حاليًا';

  @override
  String get noScheduledAlertsBody =>
      'ستظهر التنبيهات هنا مع اقتراب ميزانياتك ومدفوعاتك من حدودها.';

  @override
  String scheduledFor(String date) {
    return 'مجدول في $date';
  }

  @override
  String get everyWeek => 'كل أسبوع';

  @override
  String get allNotificationsOff => 'جميع الإشعارات متوقفة';

  @override
  String get needsAttention => 'يحتاج إلى انتباه';

  @override
  String get quickActionsTitle => 'ماذا تريد أن تفعل؟';

  @override
  String get createSection => 'تسجيل';

  @override
  String get jumpToSection => 'انتقل إلى';

  @override
  String get addLoanAction => 'إضافة قرض';

  @override
  String get addBudgetAction => 'إضافة ميزانية';

  @override
  String get addGoalAction => 'إضافة هدف';

  @override
  String get longPressHint => 'نصيحة: اضغط مطولًا على + لتسجيل مصروف مباشرة';

  @override
  String get searchCurrencies => 'البحث عن العملات';

  @override
  String get noCurrenciesFound => 'لم يتم العثور على عملات';

  @override
  String get noCurrenciesFoundMessage =>
      'جرّب رمزًا أو رمزًا مختصرًا أو اسمًا مختلفًا.';

  @override
  String get popularCurrencies => 'شائعة';

  @override
  String get allCurrencies => 'جميع العملات';

  @override
  String get totalLoanAmount => 'إجمالي مبلغ القرض';

  @override
  String get installmentAmount => 'مبلغ القسط';

  @override
  String get numberOfInstallments => 'عدد الأقساط';

  @override
  String get paidInstallments => 'الأقساط المدفوعة';

  @override
  String get remainingInstallments => 'الأقساط المتبقية';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'تم دفع $paid من أصل $total';
  }

  @override
  String get finalPayment => 'الدفعة الأخيرة';

  @override
  String get paymentDueDate => 'تاريخ استحقاق الدفع';

  @override
  String dueOnDayOfMonth(int day) {
    return 'اليوم $day من كل شهر';
  }

  @override
  String get loanStatus => 'الحالة';

  @override
  String get statusActive => 'على المسار';

  @override
  String get statusDueSoon => 'يستحق قريبًا';

  @override
  String get statusOverdue => 'متأخر';

  @override
  String get statusCompleted => 'تم السداد';

  @override
  String get repaymentProgress => 'تقدم السداد';

  @override
  String get byAmount => 'حسب المبلغ';

  @override
  String get byInstallments => 'حسب الأقساط';

  @override
  String get startDate => 'تاريخ البدء';

  @override
  String get openEnded => 'مفتوح المدة';

  @override
  String get loanDetails => 'تفاصيل القرض';

  @override
  String get notSet => 'غير محدد';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'يستحق $subject اليوم';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'دفعة $amount مستحقة اليوم. بنقرة سريعة تحافظ على انتظام السداد.';
  }

  @override
  String get remindMorningTitle => 'صباح الخير ☀️';

  @override
  String get remindMorningBody =>
      'ابدأ يومك وأنت مسيطر على أموالك. هل لديك شيء من الأمس تريد إضافته؟';

  @override
  String get remindNoonTitle => 'تذكير منتصف اليوم';

  @override
  String get remindNoonBody => 'غداء، قهوة، أجرة؟ أضفها في بضع ثوانٍ.';

  @override
  String get remindAfternoonTitle => 'تحديث سريع';

  @override
  String get remindAfternoonBody =>
      'سجّل ما أنفقته حتى الآن وحافظ على دقة اليوم.';

  @override
  String get remindEveningTitle => 'اختتام اليوم';

  @override
  String get remindEveningBody => 'دقيقتان الآن وتصبح أرقام اليوم مكتملة.';

  @override
  String get happyWeekendTitle => 'عطلة نهاية أسبوع سعيدة! 🎉';

  @override
  String get happyWeekendBody => 'استمتع بها — وراقب إنفاق عطلة نهاية الأسبوع.';

  @override
  String get dailyReminders => 'تذكيرات المصروفات اليومية';

  @override
  String get dailyRemindersBody => 'تذكيرات ودية للحفاظ على تحديث مصروفاتك';

  @override
  String get weekendGreeting => 'تحية عطلة نهاية الأسبوع';

  @override
  String get weekendGreetingBody => 'تحية ودية في بداية عطلة نهاية الأسبوع';

  @override
  String get reminderTimesSection => 'أوقات التذكير';

  @override
  String get slotMorning => 'الصباح';

  @override
  String get slotNoon => 'الظهر';

  @override
  String get slotAfternoon => 'بعد الظهر';

  @override
  String get slotEvening => 'المساء';

  @override
  String get everyDay => 'كل يوم';

  @override
  String get financialReport => 'التقرير المالي';

  @override
  String get preparedFor => 'مُعدّ لـ';

  @override
  String get generatedOn => 'تاريخ الإنشاء';

  @override
  String get reportDisclaimer =>
      'تم إنشاء هذا التقرير بواسطة RainyPenny من سجلاتك الخاصة.';

  @override
  String pageOf(int page, int total) {
    return 'الصفحة $page من $total';
  }

  @override
  String get overview => 'نظرة عامة';

  @override
  String get description => 'الوصف';

  @override
  String get totalIncome => 'إجمالي الدخل';

  @override
  String get totalExpenses => 'إجمالي المصروفات';

  @override
  String get totalSaved => 'إجمالي المدخرات';

  @override
  String get shareOfTotal => 'النسبة';

  @override
  String get used => 'المستخدم';

  @override
  String get goal => 'الهدف';

  @override
  String get targetDate => 'التاريخ المستهدف';

  @override
  String get progress => 'التقدم';

  @override
  String get paidOffShort => 'المسدّد';

  @override
  String get transactions => 'المعاملات';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'و$count معاملات أخرى',
      one: 'ومعاملة أخرى واحدة',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'تصدير PDF';

  @override
  String get sharePdf => 'مشاركة التقرير';

  @override
  String get preparingReport => 'جارٍ إعداد تقريرك…';

  @override
  String get reportReady => 'التقرير جاهز';

  @override
  String get reportFailed => 'تعذر إنشاء التقرير';

  @override
  String get categories => 'الفئات';

  @override
  String get categoriesIntro =>
      'أضف فئاتك الخاصة لتصنيف الدخل والمصروفات بالطريقة التي تناسبك.';

  @override
  String get expenseCategories => 'فئات المصروفات';

  @override
  String get incomeCategories => 'فئات الدخل';

  @override
  String get newCategory => 'فئة جديدة';

  @override
  String get editCategory => 'تعديل الفئة';

  @override
  String get categoryName => 'الاسم';

  @override
  String get categoryNameHint => 'مثال: رعاية الحيوانات الأليفة';

  @override
  String get icon => 'الأيقونة';

  @override
  String get categorySaved => 'تم حفظ الفئة';

  @override
  String get categoryDeleted => 'تم حذف الفئة';

  @override
  String get deleteCategory => 'حذف هذه الفئة؟';

  @override
  String deleteCategoryBody(String name) {
    return 'ستتم إزالة $name من فئاتك.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سجلات لا تزال تستخدم هذه الفئة',
      one: 'سجل واحد لا يزال يستخدم هذه الفئة',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'لا يوجد شيء هنا بعد.';

  @override
  String get builtIn => 'مدمجة';

  @override
  String get manageCategories => 'إدارة الفئات';

  @override
  String get expense => 'مصروف';

  @override
  String get languageNote =>
      'تُحوّل العربية والأردية والفارسية والعبرية الواجهة بالكامل إلى الاتجاه من اليمين إلى اليسار، بما في ذلك المخططات وتقارير PDF.';

  @override
  String get next => 'التالي';

  @override
  String get back => 'رجوع';

  @override
  String get skip => 'تخطي';

  @override
  String get continueLabel => 'متابعة';

  @override
  String get selected => 'محدد';

  @override
  String get passwordRequired => 'أدخل كلمة المرور';

  @override
  String get newPasswordLabel => 'كلمة المرور الجديدة';

  @override
  String get confirmPasswordLabel => 'تأكيد كلمة المرور';

  @override
  String get passwordsDoNotMatch => 'يجب أن تتطابق كلمتا المرور';

  @override
  String get showPassword => 'إظهار كلمة المرور';

  @override
  String get hidePassword => 'إخفاء كلمة المرور';

  @override
  String get savePassword => 'حفظ كلمة المرور';

  @override
  String get backToSignIn => 'العودة إلى تسجيل الدخول';

  @override
  String get alreadyHaveAccount => 'لدي حساب بالفعل';

  @override
  String get getStarted => 'البدء';

  @override
  String get acceptTerms => 'أوافق على شروط الخدمة وسياسة الخصوصية';

  @override
  String get acceptTermsRequired => 'يرجى الموافقة للمتابعة';

  @override
  String get passwordStrengthTooShort => 'قصيرة جدًا';

  @override
  String get passwordStrengthWeak => 'ضعيفة';

  @override
  String get passwordStrengthFair => 'متوسطة';

  @override
  String get passwordStrengthGood => 'جيدة';

  @override
  String get passwordStrengthStrong => 'قوية';

  @override
  String get passwordAdvice =>
      'عبارة طويلة يسهل عليك تذكرها أفضل من كلمة قصيرة مليئة بالرموز. تجنب استخدام أي كلمة تستخدمها في مكان آخر.';

  @override
  String get authInvalidCredentials =>
      'البريد الإلكتروني وكلمة المرور لا يتطابقان مع أي حساب';

  @override
  String get authEmailNotConfirmed =>
      'أكد عنوان بريدك الإلكتروني قبل تسجيل الدخول';

  @override
  String get authEmailAlreadyRegistered =>
      'يوجد حساب بهذا البريد الإلكتروني بالفعل';

  @override
  String get authWeakPassword => 'اختر كلمة مرور أطول';

  @override
  String get authRateLimited =>
      'محاولات كثيرة جدًا. حاول مرة أخرى بعد بضع دقائق';

  @override
  String get authNetworkError => 'لا يوجد اتصال. تحقق من الشبكة وحاول مرة أخرى';

  @override
  String get authGenericError => 'حدث خطأ ما. حاول مرة أخرى';

  @override
  String get confirmEmailTitle => 'تحقق من بريدك الإلكتروني';

  @override
  String confirmEmailBody(String email) {
    return 'أرسلنا رابط تأكيد إلى $email. افتحه لإنهاء إعداد حسابك.';
  }

  @override
  String get resendConfirmation => 'إعادة إرسال رسالة التأكيد';

  @override
  String get confirmationResent => 'تم إرسال رسالة التأكيد';

  @override
  String get forgotPasswordTitle => 'إعادة تعيين كلمة المرور';

  @override
  String get forgotPasswordSubtitle =>
      'أدخل البريد الإلكتروني الذي سجلت به وسنرسل إليك رابطًا لاختيار كلمة مرور جديدة.';

  @override
  String get sendResetLink => 'إرسال رابط إعادة التعيين';

  @override
  String get resetLinkSentTitle => 'تم إرسال رابط إعادة التعيين';

  @override
  String resetLinkSentBody(String email) {
    return 'إذا كان لدى $email حساب، فسيصله رابط إعادة التعيين.';
  }

  @override
  String get resetLinkSentHint =>
      'تنتهي صلاحية الرابط خلال ساعة. إذا لم يصلك، تحقق من مجلد الرسائل غير المرغوب فيها قبل طلب رابط آخر.';

  @override
  String get tryAnotherEmail => 'استخدام بريد إلكتروني مختلف';

  @override
  String get resetPasswordTitle => 'اختر كلمة مرور جديدة';

  @override
  String get resetPasswordSubtitle =>
      'اختر كلمة مرور لم تستخدمها من قبل لهذا الحساب.';

  @override
  String get passwordChangedTitle => 'تم تحديث كلمة المرور';

  @override
  String get passwordChangedBody =>
      'تم حفظ كلمة المرور الجديدة. لقد سجلت الدخول وأصبحت جاهزًا للبدء.';

  @override
  String get demoModeHint => 'نسخة تجريبية — لا حاجة إلى حساب';

  @override
  String get demoModeFill => 'تعبئة';

  @override
  String get welcomeTrackTitle => 'اعرف أين تذهب أموالك';

  @override
  String get welcomeTrackBody =>
      'سجّل ما يدخل وما يخرج من أموالك. يحوّل RainyPenny ذلك إلى صورة يمكنك فهمها فعلًا.';

  @override
  String get welcomeBudgetTitle => 'ضع حدودًا للإنفاق';

  @override
  String get welcomeBudgetBody =>
      'حدد سقفًا شهريًا لكل جزء من إنفاقك، وتلقَّ تنبيهًا قبل تجاوزه بدلًا من بعده.';

  @override
  String get welcomeGoalsTitle => 'ادّخر لما يهمك';

  @override
  String get welcomeGoalsBody =>
      'سمِّ هدفًا، وحدد مبلغًا مستهدفًا، وشاهد تقدمه. يصبح بناء صندوق للطوارئ أسهل عندما يمكنك رؤية تقدمه.';

  @override
  String get welcomePrivacyTitle => 'أموالك تبقى لك';

  @override
  String get welcomePrivacyBody =>
      'بياناتك المالية ملكك وحدك. لا يتم بيع أي شيء ولا تتم مشاركة أي شيء مع أي جهة.';

  @override
  String stepOf(int step, int total) {
    return 'الخطوة $step من $total';
  }

  @override
  String get onboardingNameTitle => 'كيف نُناديك؟';

  @override
  String get onboardingNameBody => 'سنستخدمه لتحيتك، ولا شيء آخر.';

  @override
  String get onboardingNameHint => 'الاسم الأول يكفي. يمكنك تغييره لاحقًا.';

  @override
  String get onboardingCurrencyTitle => 'ما العملة التي تستخدمها؟';

  @override
  String get onboardingCurrencyBody =>
      'يتم عرض كل مبلغ في التطبيق بهذه العملة. اختيارها لا يحوّل أي مبلغ.';

  @override
  String get onboardingCurrencySearch => 'البحث في جميع العملات';

  @override
  String get onboardingAppearanceTitle => 'اجعل التطبيق على ذوقك';

  @override
  String get onboardingAppearanceBody =>
      'اختر المظهر الذي تفضله. يتغير كل شيء بمجرد اختيارك، ويمكنك العودة إليه في أي وقت.';

  @override
  String get onboardingNotificationsTitle => 'ابقَ على اطلاع';

  @override
  String get onboardingNotificationsBody =>
      'التذكير الهادئ في الوقت المناسب هو ما يحوّل المتابعة إلى عادة.';

  @override
  String get onboardingNotifyReminders => 'تذكير لطيف لتسجيل ما أنفقته';

  @override
  String get onboardingNotifyBudget => 'تنبيه قبل نفاد الميزانية';

  @override
  String get onboardingNotifySummary => 'ملخص أسبوعي يوضح أين ذهبت أموالك';

  @override
  String get onboardingNotifyEnable => 'تشغيل الإشعارات';

  @override
  String get onboardingNotifyDone => 'تم حفظ إعدادات الإشعارات';

  @override
  String get onboardingNotifyLater =>
      'يمكنك تغيير كل ذلك في الإعدادات متى شئت.';

  @override
  String get onboardingReadyTitle => 'أنت جاهز تمامًا';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'أنت جاهز تمامًا، $name';
  }

  @override
  String get onboardingReadyBody =>
      'اكتمل الإعداد. هل تريد جولة سريعة للتعرف على طريقة عمل كل شيء؟';

  @override
  String get onboardingTakeTour => 'أرني كيفية الاستخدام';

  @override
  String get onboardingGoToApp => 'الانتقال إلى التطبيق';

  @override
  String get onboardingTourLater =>
      'ليس الآن؟ سيبقى الدليل في الإعدادات متى احتجت إليه.';

  @override
  String get beginnersGuide => 'دليل المبتدئين';

  @override
  String get guideFinish => 'إنهاء';

  @override
  String chapterOf(int number, int total) {
    return 'الفصل $number من $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'فتح $screen';
  }

  @override
  String get guideDashboardTitle => 'لوحة التحكم';

  @override
  String get guideDashboardBody =>
      'كل شيء يبدأ من هنا. البطاقة في الأعلى تعرض ما تبقى لديك؛ وتحتها الدخل والمصروفات خلال هذه الفترة، ثم الإنفاق والميزانيات والأهداف.';

  @override
  String get guideDashboardTip1 =>
      'اسحب الشاشة إلى الأسفل لتحديث كل شيء مرة واحدة.';

  @override
  String get guideDashboardTip2 =>
      'اضغط على بطاقة الدخل أو المصروفات للانتقال إلى القائمة.';

  @override
  String get guideDashboardTip3 => 'تتحدث الدوائر والرؤى فور تسجيل أي شيء.';

  @override
  String get guideAddTitle => 'تسجيل الأموال';

  @override
  String get guideAddBody =>
      'الزر الموجود في منتصف شريط التنقل هو نقطة البداية لكل شيء. يفتح قائمة قصيرة: أموال خارجة، أموال داخلة، دين، ميزانية أو هدف ادخار.';

  @override
  String get guideAddTip1 =>
      'اضغط على الزر الأوسط لتسجيل أموال داخلة أو خارجة.';

  @override
  String get guideAddTip2 =>
      'اضغط عليه مطولًا للانتقال مباشرة إلى إضافة مصروف جديد وتخطي القائمة.';

  @override
  String get guideAddTip3 =>
      'اختر دائمًا فئة — فهذا ما يجعل المخططات والميزانيات تعمل.';

  @override
  String get guideCategoriesTitle => 'الفئات';

  @override
  String get guideCategoriesBody =>
      'الفئات هي الطريقة التي يتم بها تجميع الإنفاق. الفئات المرفقة مع التطبيق تغطي احتياجات معظم الناس، ويمكنك إعادة تسميتها أو إضافة فئاتك الخاصة.';

  @override
  String get guideCategoriesTip1 =>
      'الإعدادات، ثم إدارة الفئات، لتغيير فئة أو إضافة أخرى.';

  @override
  String get guideCategoriesTip2 =>
      'أي شيء غير مصنف ينتقل إلى فئة أخرى، حتى تبقى المخططات دقيقة.';

  @override
  String get guideBudgetTitle => 'الميزانيات';

  @override
  String get guideBudgetBody =>
      'الميزانية هي سقف شهري لفئة واحدة. يمتلئ الشريط مع إنفاقك ويتغير عند الاقتراب من الحد، لتعرف قبل تجاوزه.';

  @override
  String get guideBudgetTip1 =>
      'ابدأ بفئتين أو ثلاث، وليس بكل الفئات دفعة واحدة.';

  @override
  String get guideBudgetTip2 =>
      'حدد الحد أعلى قليلًا من إنفاقك المعتاد، ثم شدده تدريجيًا.';

  @override
  String get guideBudgetTip3 =>
      'اترك تنبيهات الميزانية مفعّلة ليحذرك التطبيق عندما تقترب إحدى الميزانيات من حدها.';

  @override
  String get guideSavingsTitle => 'أهداف الادخار';

  @override
  String get guideSavingsBody =>
      'سمِّ ما تدخر من أجله، وحدد المبلغ المستهدف والتاريخ، وسيحسب التطبيق المبلغ الذي تحتاج إلى ادخاره شهريًا للوصول إليه.';

  @override
  String get guideSavingsTip1 =>
      'الهدف المسمى أسهل في الالتزام به من نية عامة للادخار.';

  @override
  String get guideSavingsTip2 =>
      'عدة أهداف صغيرة تكتمل غالبًا أكثر من هدف واحد كبير.';

  @override
  String get guideLoansTitle => 'الديون والقروض';

  @override
  String get guideLoansBody =>
      'سجّل ما تدين به، وتكلفته، وموعد الدفعة التالية. ستجد كل ما تسدده في قائمة واحدة مع إجمالي المبلغ المتبقي.';

  @override
  String get guideLoansTip1 =>
      'أضف تاريخ الاستحقاق وستتولى تذكيرات الدفع تنبيهك.';

  @override
  String get guideLoansTip2 =>
      'يظهر الدين المتأخر باللون الأحمر على لوحة التحكم حتى يتم سداده.';

  @override
  String get guideReportsTitle => 'التقارير';

  @override
  String get guideReportsBody =>
      'الرؤية الأعمق: الدخل مقابل المصروفات، والإنفاق حسب الفئة، وأداء ميزانياتك، ونسبة الدخل التي احتفظت بها.';

  @override
  String get guideReportsTip1 =>
      'بدّل بين الأسبوع والشهر وربع السنة من أعلى الشاشة.';

  @override
  String get guideReportsTip2 =>
      'صدّر أو شارك ملف PDF — وسيظهر بلغتك واتجاه الكتابة الخاص بها.';

  @override
  String get guideSettingsTitle => 'الإعدادات';

  @override
  String get guideSettingsBody =>
      'اللغة والعملة والألوان والتنبيهات كلها موجودة هنا، ولا شيء منها مقيد بإعدادك الأول — يمكنك تغيير أي منها متى شئت.';

  @override
  String get guideSettingsTip1 =>
      'أربعون لغة، وتنعكس الواجهة بالكامل للغات التي تكتب من اليمين إلى اليسار.';

  @override
  String get guideSettingsTip2 =>
      'اختر التنبيهات التي تريدها والأوقات التي يمكن أن تصل فيها.';

  @override
  String get guideSettingsTip3 => 'تؤجل ساعات الهدوء كل شيء حتى الصباح.';

  @override
  String get guideHabitTitle => 'حوّلها إلى عادة';

  @override
  String get guideHabitBody =>
      'التطبيق جيد بقدر جودة البيانات التي تدخلها. دقيقة يوميًا أفضل من ساعة مرة واحدة في الشهر، وبعد أسبوعين تبدأ الأرقام في إخبارك بشيء مفيد.';

  @override
  String get guideHabitTip1 =>
      'سجّل ما تنفقه وقت حدوثه، وليس في نهاية الأسبوع.';

  @override
  String get guideHabitTip2 =>
      'ألقِ نظرة على لوحة التحكم مرة يوميًا. عشر ثوانٍ تكفي.';

  @override
  String get guideHabitTip3 =>
      'يبقى هذا الدليل في الإعدادات — عد إليه متى شئت.';

  @override
  String get appearance => 'المظهر';

  @override
  String get themeCaption => 'فاتح أو داكن أو حسب إعداد هاتفك.';

  @override
  String get accentColor => 'اللون المميز';

  @override
  String get accentColorCaption => 'يُستخدم في الأزرار والتحديدات والمخططات.';

  @override
  String get accentSemanticsNote =>
      'يحافظ الدخل والمصروفات على ألوانهما الخاصة في جميع المظاهر، حتى لا يتغير معنى الرقم عند تغيير اللون المميز.';

  @override
  String get accentTeal => 'تركوازي';

  @override
  String get accentGreen => 'أخضر';

  @override
  String get accentSky => 'سماوي';

  @override
  String get accentBlue => 'أزرق';

  @override
  String get accentIndigo => 'نيلي';

  @override
  String get accentViolet => 'بنفسجي';

  @override
  String get accentPink => 'وردي';

  @override
  String get accentCrimson => 'قرمزي';

  @override
  String get accentOrange => 'برتقالي';

  @override
  String get accentSlate => 'رمادي أردوازي';

  @override
  String get searchLanguages => 'البحث عن اللغات';

  @override
  String get suggestedLanguages => 'مقترحة';

  @override
  String get allLanguages => 'جميع اللغات';

  @override
  String get noLanguagesFound => 'لم يتم العثور على لغات';

  @override
  String get noLanguagesFoundMessage =>
      'جرّب الاسم بالإنجليزية أو رمز اللغة المكوّن من حرفين.';

  @override
  String get rightToLeft => 'من اليمين إلى اليسار';

  @override
  String get replayGuide => 'إعادة تشغيل الدليل';

  @override
  String get replaySetup => 'تشغيل الإعداد مرة أخرى';

  @override
  String get replaySetupBody =>
      'أجب عن أسئلة الإعداد الأولي مرة أخرى. لن يتم حذف أي شيء سجلته.';

  @override
  String get rateTitle => 'هل تستمتع باستخدام RainyPenny؟';

  @override
  String get rateBody =>
      'لقد واظبت على استخدام التطبيق لفترة. يستغرق التقييم لحظة ويساعد الآخرين على العثور على التطبيق.';

  @override
  String get rateAction => 'قيّم التطبيق';

  @override
  String get rateLater => 'ربما لاحقًا';

  @override
  String get rateNever => 'لا شكرًا';

  @override
  String get rateThanks => 'شكرًا لك';

  @override
  String get monthlySalary => 'الراتب الشهري';

  @override
  String get remainingAmount => 'المتبقي';

  @override
  String get carriedForward => 'المرحل';

  @override
  String get carriedForwardHint => 'المتبقي من الدورة السابقة';

  @override
  String get totalSpending => 'إجمالي الإنفاق';

  @override
  String get salaryCycle => 'دورة الراتب';

  @override
  String get payday => 'يوم الراتب';

  @override
  String get paydayDescription =>
      'اليوم الذي يصل فيه راتبك. تمتد دورتك المالية من هذا اليوم حتى اليوم السابق ليوم الراتب التالي.';

  @override
  String get paydayUpdated => 'تم تحديث يوم الراتب';

  @override
  String paydayDayOfMonth(int day) {
    return 'اليوم $day';
  }

  @override
  String get paydayShortMonthNote =>
      'في الأشهر الأقصر، تبدأ الدورة في اليوم الأخير بدلًا من ذلك.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام حتى الراتب',
      one: 'يوم واحد حتى الراتب',
      zero: 'آخر يوم في الدورة',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'موعد الراتب التالي';

  @override
  String get spentSoFar => 'المنفق حتى الآن';

  @override
  String get dailyAllowance => 'المبلغ الآمن للإنفاق يوميًا';

  @override
  String get overspentNotice => 'لقد أنفقت أكثر مما دخل إليك خلال هذه الدورة.';

  @override
  String get backToThisMonth => 'العودة إلى هذا الشهر';

  @override
  String get cycleRangeLabel => 'الدورة';

  @override
  String get noSalaryRecorded => 'لم يتم تسجيل راتب بعد';

  @override
  String get addSalaryAction => 'أضف راتبك';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'ممتازة';

  @override
  String get healthGood => 'جيدة';

  @override
  String get healthFair => 'متوسطة';

  @override
  String get healthNeedsWork => 'تحتاج إلى تحسين';

  @override
  String get healthExcellentBody => 'أنت تدخر بشكل جيد وتحافظ على ميزانياتك.';

  @override
  String get healthGoodBody => 'إنفاقك يسير وفق الخطة خلال هذه الفترة.';

  @override
  String get healthFairBody =>
      'بعض الميزانيات تقترب من حدودها. ستساعدك تغييرات بسيطة.';

  @override
  String get healthNeedsWorkBody =>
      'الإنفاق يتجاوز خطتك. ابدأ بأكبر فئة إنفاق.';

  @override
  String get factorSavingsRate => 'معدل الادخار';

  @override
  String get factorBudgetControl => 'التحكم في الميزانية';

  @override
  String get factorDebtLoad => 'عبء الديون';

  @override
  String get factorSpendingTrend => 'اتجاه الإنفاق';

  @override
  String factorKept(String percent) {
    return 'احتفظت بـ $percent%';
  }

  @override
  String factorUsed(String percent) {
    return 'تم استخدام $percent%';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% من الدخل';
  }

  @override
  String factorTrendUp(String percent) {
    return 'ارتفاع $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'انخفاض $percent%';
  }

  @override
  String get howScoreWorks => 'كيف تُحسب هذه النتيجة';

  @override
  String get healthScoreExplainer =>
      'تجمع النتيجة أربعة عوامل: مقدار ما تحتفظ به من دخلك، ومدى التزامك بميزانياتك، ونسبة دخلك التي تذهب إلى الديون، وما إذا كان إنفاقك يرتفع أو ينخفض.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% من النتيجة';
  }

  @override
  String get viewHealthDetails => 'عرض التفاصيل';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get profileUpdated => 'تم تحديث الملف الشخصي';

  @override
  String get changePhoto => 'تغيير الصورة';

  @override
  String get removePhoto => 'إزالة الصورة';

  @override
  String get personalInformationIntro =>
      'يظهر اسمك وصورتك في جميع أنحاء التطبيق. بريدك الإلكتروني هو العنوان الذي تسجل الدخول به.';

  @override
  String get emailNotEditable => 'تواصل مع الدعم لتغيير عنوان تسجيل الدخول.';

  @override
  String get pressBackAgainToExit => 'اضغط مرة أخرى للخروج';

  @override
  String get categoryHousing => 'السكن';

  @override
  String get categoryFood => 'الطعام والمطاعم';

  @override
  String get categoryTransport => 'المواصلات';

  @override
  String get categoryShopping => 'التسوق';

  @override
  String get categoryBills => 'الفواتير والخدمات';

  @override
  String get categoryEntertainment => 'الترفيه';

  @override
  String get categoryHealth => 'الصحة واللياقة';

  @override
  String get categoryEducation => 'التعليم';

  @override
  String get categoryTravel => 'السفر';

  @override
  String get categorySalary => 'الراتب';

  @override
  String get categoryFreelance => 'العمل الحر';

  @override
  String get categoryInvestments => 'الاستثمارات';

  @override
  String get categoryGift => 'الهدايا';

  @override
  String get categoryOther => 'أخرى';

  @override
  String get categoryGroceries => 'مشتريات البقالة';

  @override
  String get categoryDining => 'المطاعم';

  @override
  String get categoryCoffee => 'القهوة';

  @override
  String get categoryUtilities => 'الخدمات';

  @override
  String get categoryInternet => 'الإنترنت';

  @override
  String get categoryPhone => 'الهاتف';

  @override
  String get categoryInsurance => 'التأمين';

  @override
  String get categorySubscriptions => 'الاشتراكات';

  @override
  String get categoryPersonalCare => 'العناية الشخصية';

  @override
  String get categoryClothing => 'الملابس';

  @override
  String get categoryElectronics => 'الإلكترونيات';

  @override
  String get categoryHomeSupplies => 'مستلزمات المنزل';

  @override
  String get categoryPets => 'الحيوانات الأليفة';

  @override
  String get categoryChildcare => 'رعاية الأطفال';

  @override
  String get categoryFamily => 'العائلة';

  @override
  String get categoryFitness => 'اللياقة البدنية';

  @override
  String get categorySports => 'الرياضة';

  @override
  String get categoryMedicine => 'الأدوية';

  @override
  String get categoryMedical => 'الرعاية الطبية';

  @override
  String get categoryCharity => 'التبرعات';

  @override
  String get categoryTaxes => 'الضرائب';

  @override
  String get categoryFees => 'الرسوم';

  @override
  String get categoryDebt => 'الديون';

  @override
  String get categorySavings => 'الادخار';

  @override
  String get categoryRepairs => 'الإصلاحات';

  @override
  String get categoryCarMaintenance => 'صيانة السيارة';

  @override
  String get categoryFuel => 'الوقود';

  @override
  String get categoryParking => 'مواقف السيارات';

  @override
  String get categoryPublicTransport => 'النقل العام';

  @override
  String get categoryRent => 'الإيجار';

  @override
  String get categoryMortgage => 'الرهن العقاري';

  @override
  String get categoryBonus => 'المكافأة';

  @override
  String get categoryCommission => 'العمولة';

  @override
  String get categoryPension => 'المعاش التقاعدي';

  @override
  String get categoryInterest => 'الفائدة';

  @override
  String get categoryDividends => 'أرباح الأسهم';

  @override
  String get categoryCashback => 'استرداد نقدي';

  @override
  String get categoryRefund => 'استرداد المبلغ';

  @override
  String get categoryRentalIncome => 'دخل الإيجار';

  @override
  String get addCategory => 'فئة جديدة';

  @override
  String get filterByCategory => 'تصفية حسب الفئة';

  @override
  String get allCategories => 'جميع الفئات';

  @override
  String get clearFilters => 'مسح الفلاتر';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'كل الوقت';

  @override
  String get customRange => 'مخصص';

  @override
  String get selectDateRange => 'اختر فترة';

  @override
  String rangeApplied(String start, String end) {
    return 'عرض $start – $end';
  }

  @override
  String get loans => 'القروض';

  @override
  String get debts => 'الديون';

  @override
  String get noLoansTitle => 'لا توجد قروض';

  @override
  String get noLoansBody => 'ليس لديك قروض نشطة.';

  @override
  String get emptyHealthTitle => 'لا توجد نتيجة مالية بعد';

  @override
  String get emptyHealthDescription =>
      'نحتاج إلى بعض النشاط المالي قبل أن نتمكن من حساب درجة صحة مالية دقيقة.';

  @override
  String get emptyHealthAddTransactions => 'أضف معاملات دخل أو مصروفات';

  @override
  String get emptyHealthSetBudgets => 'أنشئ ميزانياتك الشهرية';

  @override
  String get emptyHealthTrackLoans => 'تتبع القروض أو الديون (اختياري)';

  @override
  String get emptyHealthCardSubtitle =>
      'أضف معاملات لحساب نتيجتك والحصول على رؤى.';

  @override
  String get smartBudgetSplit => 'تقسيم الميزانية الذكي';

  @override
  String get smartBudgetSplitSubtitle =>
      'أدخل راتبك الشهري لحساب الحدود المقترحة';

  @override
  String get monthlyNetSalary => 'صافي الراتب الشهري';

  @override
  String get categoryAllocations => 'توزيعات الفئات';

  @override
  String totalBudgeted(String amount) {
    return 'الإجمالي: $amount';
  }

  @override
  String get applyAllBudgets => 'تطبيق جميع الميزانيات';

  @override
  String get applyingBudgets => 'جارٍ تطبيق الميزانيات...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم إنشاء ميزانيات لـ $count فئات.',
      one: 'تم إنشاء ميزانية لفئة واحدة.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'فشل حفظ الميزانيات.';

  @override
  String get recommendedBudget => 'الميزانية المقترحة';
}
