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
    return 'من $total';
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
      other: '$count معاملة',
      many: '$count معاملة',
      few: '$count معاملات',
      two: 'معاملتان',
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
  String get selectCategory => 'اختر الفئة';

  @override
  String get transactionSaved => 'تم حفظ المعاملة';

  @override
  String get amountRequired => 'أدخل مبلغًا أكبر من صفر';

  @override
  String get titleRequired => 'أعطِ هذه المعاملة اسمًا';

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
    return 'تم استخدام $percent%';
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
      other: 'بقي $count شهر',
      many: 'بقي $count شهرًا',
      few: 'بقيت $count أشهر',
      two: 'بقي شهران',
      one: 'بقي شهر واحد',
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
      other: 'مستحق خلال $count يوم',
      many: 'مستحق خلال $count يومًا',
      few: 'مستحق خلال $count أيام',
      two: 'مستحق بعد يومين',
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
    return 'سيتم حذف $title من سجلك.';
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
    return 'سيتم حذف ميزانية $category. لن تتأثر معاملاتك.';
  }

  @override
  String get budgetSaved => 'تم حفظ الميزانية';

  @override
  String get budgetDeleted => 'تم حذف الميزانية';

  @override
  String get allCategoriesBudgeted => 'كل الفئات لديها ميزانية بالفعل';

  @override
  String get noBudgetsTitle => 'لا توجد ميزانيات بعد';

  @override
  String get noBudgetsBody => 'حدد حدًا شهريًا لفئة لتبدأ في متابعتها.';

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
  String get alreadySaved => 'المدخر حاليًا';

  @override
  String get deleteGoal => 'حذف الهدف؟';

  @override
  String deleteGoalBody(String name) {
    return 'سيتم حذف $name وكل تقدمه.';
  }

  @override
  String get goalSaved => 'تم حفظ الهدف';

  @override
  String get goalDeleted => 'تم حذف الهدف';

  @override
  String get noGoalsTitle => 'لا توجد أهداف ادخار بعد';

  @override
  String get noGoalsBody => 'حدد هدفًا وسيتابع RainyPenny تقدمك.';

  @override
  String get fundsAdded => 'تمت إضافة المبلغ';

  @override
  String get newDebt => 'قرض أو بطاقة جديدة';

  @override
  String get editDebt => 'تعديل القرض';

  @override
  String get debtName => 'الاسم';

  @override
  String get debtNameHint => 'مثال: قرض السيارة';

  @override
  String get lender => 'الجهة المُقرِضة';

  @override
  String get lenderHint => 'مثال: بنك المريديان';

  @override
  String get originalAmount => 'المبلغ الأصلي';

  @override
  String get creditLimit => 'الحد الائتماني';

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
    return 'سيتم حذف $name من ديونك.';
  }

  @override
  String get debtSaved => 'تم الحفظ';

  @override
  String get debtDeleted => 'تم الحذف';

  @override
  String get noDebtsTitle => 'لا توجد ديون مُتابَعة';

  @override
  String get noDebtsBody => 'أضف قرضًا أو بطاقة ائتمان لمتابعة السداد.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'تم تجاوز ميزانية $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'لقد تجاوزت ميزانية $subject بمقدار $amount في هذه الفترة.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject تقترب من حدها';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'تم استخدام $percent% من ميزانية $subject، وبقي $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'الإنفاق يتجاوز الدخل';

  @override
  String get insightOverIncomeBody =>
      'أنفقت أكثر مما كسبت في هذه الفترة. راجع أكبر فئاتك لإعادة التوازن.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'ارتفع الإنفاق على $subject';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'إنفاقك على $subject أعلى بنسبة $percent% من الفترة السابقة.';
  }

  @override
  String get insightTrendDownTitle => 'الإنفاق في انخفاض';

  @override
  String insightTrendDownBody(int percent) {
    return 'إجمالي الإنفاق أقل بنسبة $percent% من الفترة السابقة.';
  }

  @override
  String get insightTrendUpTitle => 'الإنفاق في ارتفاع';

  @override
  String insightTrendUpBody(int percent) {
    return 'إجمالي الإنفاق أعلى بنسبة $percent% من الفترة السابقة.';
  }

  @override
  String get insightSavingsStrongTitle => 'ادخار قوي هذه الفترة';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'احتفظت بـ $percent% من دخلك — أعلى بكثير من هدف $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'معدل الادخار أقل من المستهدف';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'احتفظت بـ $percent% من دخلك هذه الفترة. استهدف $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject على وشك الاكتمال';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'بقي $amount فقط للوصول إلى $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'أنت على المسار الصحيح نحو $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months شهر',
      many: '$months شهرًا',
      few: '$months أشهر',
      two: 'شهرين',
      one: 'شهر واحد',
    );
    return 'بمبلغ $amount شهريًا ستصل إلى هذا الهدف خلال $_temp0.';
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
      other: '$days يوم',
      many: '$days يومًا',
      few: '$days أيام',
      two: 'يومين',
      one: 'يوم واحد',
    );
    return 'دفعة $subject البالغة $amount متأخرة منذ $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'دفعة $subject تقترب';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'خلال $days يوم',
      many: 'خلال $days يومًا',
      few: 'خلال $days أيام',
      two: 'بعد يومين',
      one: 'غدًا',
      zero: 'اليوم',
    );
    return 'مبلغ $amount مستحق $_temp0.';
  }

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signInSubtitle => 'أهلًا بعودتك. أموالك في انتظارك.';

  @override
  String get signUpSubtitle => 'بضع تفاصيل وتكون جاهزًا.';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get passwordHint => '٨ أحرف على الأقل';

  @override
  String get fullNameLabel => 'الاسم الكامل';

  @override
  String get fullNameHint => 'أليكس مورغان';

  @override
  String get forgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get resetSent => 'تحقق من بريدك للحصول على رابط إعادة التعيين';

  @override
  String get noAccountYet => 'جديد هنا؟';

  @override
  String get haveAccount => 'لديك حساب بالفعل؟';

  @override
  String get emailInvalid => 'أدخل بريدًا إلكترونيًا صالحًا';

  @override
  String get passwordTooShort => 'استخدم ٨ أحرف على الأقل';

  @override
  String get signOutConfirm => 'تسجيل الخروج؟';

  @override
  String get signOutBody => 'ستحتاج إلى تسجيل الدخول مرة أخرى لرؤية أموالك.';

  @override
  String get dataSource => 'مصدر البيانات';

  @override
  String get insightWeeklySummaryTitle => 'أسبوعك في لمحة';

  @override
  String get insightWeeklySummaryBody =>
      'اطلع على أين ذهبت أموالك هذا الأسبوع وكيف تسير ميزانياتك.';

  @override
  String get notificationSettings => 'الإشعارات';

  @override
  String get alertsSection => 'التنبيهات';

  @override
  String get budgetAlerts => 'تنبيهات الميزانية';

  @override
  String get budgetAlertsBody => 'عندما تقترب ميزانية من حدها أو تتجاوزه';

  @override
  String get paymentReminders => 'تذكيرات الدفع';

  @override
  String get paymentRemindersBody => 'قبل أيام قليلة من موعد استحقاق الدفعة';

  @override
  String get savingsUpdates => 'تحديثات الادخار';

  @override
  String get savingsUpdatesBody => 'تقدمك نحو أهدافك';

  @override
  String get weeklySummaryLabel => 'الملخص الأسبوعي';

  @override
  String get weeklySummaryBody => 'خلاصة الأسبوع المنقضي';

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
  String get permissionRequired => 'الإشعارات معطّلة';

  @override
  String get permissionRequiredBody =>
      'اسمح بالإشعارات ليتمكن RainyPenny من تنبيهك قبل أن تفلت منك ميزانية أو دفعة.';

  @override
  String get allowNotifications => 'السماح بالإشعارات';

  @override
  String get permissionDenied =>
      'الإشعارات محظورة. يمكنك تفعيلها من إعدادات جهازك.';

  @override
  String get upcomingAlerts => 'المجدولة';

  @override
  String get noScheduledAlerts => 'لا يوجد شيء مجدول حاليًا';

  @override
  String get noScheduledAlertsBody =>
      'تظهر التنبيهات هنا كلما اقتربت ميزانياتك ودفعاتك من حدودها.';

  @override
  String scheduledFor(String date) {
    return 'مجدول في $date';
  }

  @override
  String get everyWeek => 'كل أسبوع';

  @override
  String get allNotificationsOff => 'جميع الإشعارات معطّلة';

  @override
  String get needsAttention => 'يحتاج انتباهًا';

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
  String get searchCurrencies => 'ابحث عن عملة';

  @override
  String get noCurrenciesFound => 'لم يتم العثور على عملات';

  @override
  String get noCurrenciesFoundMessage => 'جرّب رمزًا أو اسمًا مختلفًا.';

  @override
  String get popularCurrencies => 'الأكثر استخدامًا';

  @override
  String get allCurrencies => 'كل العملات';

  @override
  String get totalLoanAmount => 'إجمالي مبلغ القرض';

  @override
  String get installmentAmount => 'قيمة القسط';

  @override
  String get numberOfInstallments => 'عدد الأقساط';

  @override
  String get paidInstallments => 'الأقساط المدفوعة';

  @override
  String get remainingInstallments => 'الأقساط المتبقية';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid من $total مدفوعة';
  }

  @override
  String get finalPayment => 'الدفعة الأخيرة';

  @override
  String get paymentDueDate => 'تاريخ استحقاق الدفعة';

  @override
  String dueOnDayOfMonth(int day) {
    return 'اليوم $day من كل شهر';
  }

  @override
  String get loanStatus => 'الحالة';

  @override
  String get statusActive => 'على المسار الصحيح';

  @override
  String get statusDueSoon => 'مستحق قريبًا';

  @override
  String get statusOverdue => 'متأخر';

  @override
  String get statusCompleted => 'مسدد بالكامل';

  @override
  String get repaymentProgress => 'تقدّم السداد';

  @override
  String get byAmount => 'حسب المبلغ';

  @override
  String get byInstallments => 'حسب الأقساط';

  @override
  String get startDate => 'تاريخ البدء';

  @override
  String get openEnded => 'غير محدد المدة';

  @override
  String get loanDetails => 'تفاصيل القرض';

  @override
  String get notSet => 'غير محدد';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject مستحق اليوم';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'دفعتك البالغة $amount مستحقة اليوم. نقرة سريعة تبقيها في موعدها.';
  }

  @override
  String get remindMorningTitle => 'صباح الخير ☀️';

  @override
  String get remindMorningBody =>
      'ابدأ يومك متحكمًا في أموالك. هل هناك ما تضيفه من الأمس؟';

  @override
  String get remindNoonTitle => 'متابعة الظهيرة';

  @override
  String get remindNoonBody => 'غداء أو قهوة أو مواصلات؟ أضفه في ثوانٍ.';

  @override
  String get remindAfternoonTitle => 'تحديث سريع';

  @override
  String get remindAfternoonBody =>
      'سجّل ما أنفقته حتى الآن ليبقى يومك دقيقًا.';

  @override
  String get remindEveningTitle => 'ختام اليوم';

  @override
  String get remindEveningBody => 'دقيقتان الآن وتكتمل أرقام اليوم.';

  @override
  String get happyWeekendTitle => 'عطلة سعيدة! 🎉';

  @override
  String get happyWeekendBody => 'استمتع بها — وانتبه لمصروف نهاية الأسبوع.';

  @override
  String get dailyReminders => 'تذكيرات المصروفات اليومية';

  @override
  String get dailyRemindersBody => 'تنبيهات لطيفة لتبقى مصروفاتك محدّثة';

  @override
  String get weekendGreeting => 'عطلة سعيدة';

  @override
  String get weekendGreetingBody => 'تحية ودّية في بداية عطلتك';

  @override
  String get reminderTimesSection => 'أوقات التذكير';

  @override
  String get slotMorning => 'الصباح';

  @override
  String get slotNoon => 'الظهيرة';

  @override
  String get slotAfternoon => 'بعد الظهر';

  @override
  String get slotEvening => 'المساء';

  @override
  String get everyDay => 'كل يوم';

  @override
  String get financialReport => 'التقرير المالي';

  @override
  String get preparedFor => 'مُعد لصالح';

  @override
  String get generatedOn => 'تاريخ الإصدار';

  @override
  String get reportDisclaimer =>
      'تم إنشاؤه بواسطة RainyPenny من سجلاتك الخاصة.';

  @override
  String pageOf(int page, int total) {
    return 'صفحة $page من $total';
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
  String get totalSaved => 'إجمالي المدخر';

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
  String get paidOffShort => 'المسدد';

  @override
  String get transactions => 'المعاملات';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'و$count معاملة أخرى',
      many: 'و$count معاملة أخرى',
      few: 'و$count معاملات أخرى',
      two: 'ومعاملتان أخريان',
      one: 'ومعاملة واحدة أخرى',
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
  String get reportFailed => 'تعذّر إنشاء التقرير';

  @override
  String get categories => 'الفئات';

  @override
  String get categoriesIntro =>
      'أضف فئاتك الخاصة لتصنيف الدخل والمصروفات تمامًا كما تفكر بها.';

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
  String get categoryNameHint => 'مثال: رعاية الحيوانات';

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
    return 'سيتم حذف $name من فئاتك.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سجل ما زال يستخدم هذه الفئة',
      many: '$count سجلًا ما زال يستخدم هذه الفئة',
      few: '$count سجلات ما زالت تستخدم هذه الفئة',
      two: 'سجلان ما زالا يستخدمان هذه الفئة',
      one: 'سجل واحد ما زال يستخدم هذه الفئة',
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
      'العربية والأردية والفارسية والعبرية تحوّل الواجهة بالكامل إلى الاتجاه من اليمين إلى اليسار، بما في ذلك الرسوم البيانية وتقارير PDF.';

  @override
  String get next => 'التالي';

  @override
  String get back => 'رجوع';

  @override
  String get skip => 'تخطٍ';

  @override
  String get continueLabel => 'متابعة';

  @override
  String get selected => 'محدَّد';

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
  String get getStarted => 'لنبدأ';

  @override
  String get acceptTerms => 'أوافق على شروط الخدمة وسياسة الخصوصية';

  @override
  String get acceptTermsRequired => 'يرجى الموافقة للمتابعة';

  @override
  String get passwordStrengthTooShort => 'قصيرة جدًا';

  @override
  String get passwordStrengthWeak => 'ضعيفة';

  @override
  String get passwordStrengthFair => 'مقبولة';

  @override
  String get passwordStrengthGood => 'جيدة';

  @override
  String get passwordStrengthStrong => 'قوية';

  @override
  String get passwordAdvice =>
      'عبارة طويلة تتذكرها أفضل من كلمة قصيرة مليئة بالرموز. تجنّب أي كلمة مرور تستخدمها في مكان آخر.';

  @override
  String get authInvalidCredentials =>
      'لا يطابق هذا البريد وكلمة المرور أي حساب';

  @override
  String get authEmailNotConfirmed => 'أكّد بريدك الإلكتروني قبل تسجيل الدخول';

  @override
  String get authEmailAlreadyRegistered =>
      'يوجد حساب بهذا البريد الإلكتروني بالفعل';

  @override
  String get authWeakPassword => 'اختر كلمة مرور أطول';

  @override
  String get authRateLimited => 'محاولات كثيرة. أعد المحاولة بعد بضع دقائق';

  @override
  String get authNetworkError => 'لا يوجد اتصال. تحقق من الشبكة وأعد المحاولة';

  @override
  String get authGenericError => 'حدث خطأ ما. يرجى المحاولة مرة أخرى';

  @override
  String get confirmEmailTitle => 'تحقق من بريدك الإلكتروني';

  @override
  String confirmEmailBody(String email) {
    return 'أرسلنا رابط تأكيد إلى $email. افتحه لإكمال إعداد حسابك.';
  }

  @override
  String get resendConfirmation => 'إعادة إرسال رسالة التأكيد';

  @override
  String get confirmationResent => 'تم إرسال رسالة التأكيد';

  @override
  String get forgotPasswordTitle => 'إعادة تعيين كلمة المرور';

  @override
  String get forgotPasswordSubtitle =>
      'أدخل البريد الإلكتروني الذي سجّلت به وسنرسل إليك رابطًا لاختيار كلمة مرور جديدة.';

  @override
  String get sendResetLink => 'إرسال رابط إعادة التعيين';

  @override
  String get resetLinkSentTitle => 'تم إرسال الرابط';

  @override
  String resetLinkSentBody(String email) {
    return 'إذا كان لدى $email حساب، فرابط إعادة التعيين في الطريق.';
  }

  @override
  String get resetLinkSentHint =>
      'تنتهي صلاحية الرابط خلال ساعة. إذا لم يصل، تحقق من مجلد البريد غير المرغوب فيه قبل طلب رابط آخر.';

  @override
  String get tryAnotherEmail => 'استخدم بريدًا آخر';

  @override
  String get resetPasswordTitle => 'اختر كلمة مرور جديدة';

  @override
  String get resetPasswordSubtitle =>
      'اختر كلمة لم تستخدمها من قبل مع هذا الحساب.';

  @override
  String get passwordChangedTitle => 'تم تحديث كلمة المرور';

  @override
  String get passwordChangedBody =>
      'تم حفظ كلمة المرور الجديدة. أنت مسجَّل الدخول وجاهز للمتابعة.';

  @override
  String get demoModeHint => 'نسخة تجريبية — لا حاجة إلى حساب';

  @override
  String get demoModeFill => 'املأ البيانات';

  @override
  String get welcomeTrackTitle => 'اعرف أين تذهب أموالك';

  @override
  String get welcomeTrackBody =>
      'سجّل ما يدخل وما يخرج. يحوّل RainyPenny ذلك إلى صورة واضحة يمكنك قراءتها فعلًا.';

  @override
  String get welcomeBudgetTitle => 'ضع حدودًا تلتزم بها';

  @override
  String get welcomeBudgetBody =>
      'حدّد سقفًا شهريًا لكل جانب من إنفاقك، ودعنا ننبّهك قبل أن تتجاوزه لا بعده.';

  @override
  String get welcomeGoalsTitle => 'ادّخر لما يهمك';

  @override
  String get welcomeGoalsBody =>
      'سمِّ هدفًا، وحدّد مبلغًا، وشاهده يمتلئ. بناء صندوق ليوم ممطر أسهل حين تراه أمامك.';

  @override
  String get welcomePrivacyTitle => 'أموالك تبقى لك';

  @override
  String get welcomePrivacyBody =>
      'أرقامك ملك لك وحدك. لا نبيع شيئًا ولا نشارك شيئًا مع أحد.';

  @override
  String stepOf(int step, int total) {
    return 'الخطوة $step من $total';
  }

  @override
  String get onboardingNameTitle => 'بماذا نناديك؟';

  @override
  String get onboardingNameBody => 'سنستخدمه للترحيب بك، ولا شيء غير ذلك.';

  @override
  String get onboardingNameHint => 'الاسم الأول يكفي. يمكنك تغييره لاحقًا.';

  @override
  String get onboardingCurrencyTitle => 'ما العملة التي تستخدمها؟';

  @override
  String get onboardingCurrencyBody =>
      'تُعرض كل المبالغ في التطبيق بهذه العملة. اختيارها لا يحوّل أي مبلغ.';

  @override
  String get onboardingCurrencySearch => 'ابحث في كل العملات';

  @override
  String get onboardingAppearanceTitle => 'اجعله على ذوقك';

  @override
  String get onboardingAppearanceBody =>
      'اختر المظهر. كل شيء يتغيّر فور اللمس، ويمكنك العودة إليه في أي وقت.';

  @override
  String get onboardingNotificationsTitle => 'ابقَ على اطّلاع';

  @override
  String get onboardingNotificationsBody =>
      'تنبيه هادئ في اللحظة المناسبة هو ما يحوّل هذا إلى عادة.';

  @override
  String get onboardingNotifyReminders => 'تذكير لطيف بتسجيل ما أنفقته';

  @override
  String get onboardingNotifyBudget => 'تنبيه قبل أن تنفد الميزانية';

  @override
  String get onboardingNotifySummary => 'ملخص أسبوعي لوجهة أموالك';

  @override
  String get onboardingNotifyEnable => 'تفعيل الإشعارات';

  @override
  String get onboardingNotifyDone => 'تم حفظ إعدادات الإشعارات';

  @override
  String get onboardingNotifyLater =>
      'يمكنك تغيير كل هذا من الإعدادات، وقتما شئت.';

  @override
  String get onboardingReadyTitle => 'كل شيء جاهز';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'كل شيء جاهز يا $name';
  }

  @override
  String get onboardingReadyBody =>
      'انتهى الإعداد. هل تودّ جولة سريعة على طريقة عمل التطبيق؟';

  @override
  String get onboardingTakeTour => 'خذني في جولة';

  @override
  String get onboardingGoToApp => 'انتقل إلى التطبيق';

  @override
  String get onboardingTourLater =>
      'ليس الآن؟ يبقى الدليل في الإعدادات متى أردته.';

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
    return 'افتح $screen';
  }

  @override
  String get guideDashboardTitle => 'لوحتك الرئيسية';

  @override
  String get guideDashboardBody =>
      'كل شيء يبدأ هنا. البطاقة في الأعلى هي ما تبقّى لديك، وتحتها ما دخل وما خرج في هذه الفترة، ثم إنفاقك وميزانياتك وأهدافك.';

  @override
  String get guideDashboardTip1 =>
      'اسحب الشاشة للأسفل لتحديث كل شيء دفعة واحدة.';

  @override
  String get guideDashboardTip2 =>
      'المس بطاقة الدخل أو المصروفات للانتقال إلى تلك القائمة.';

  @override
  String get guideDashboardTip3 => 'تتحدّث الحلقات والرؤى لحظة تسجيلك لأي شيء.';

  @override
  String get guideAddTitle => 'تسجيل الأموال';

  @override
  String get guideAddBody =>
      'الزر في منتصف الشريط هو نقطة البداية لكل شيء. يفتح قائمة قصيرة: مصروف، دخل، دَين، ميزانية أو هدف ادخار.';

  @override
  String get guideAddTip1 => 'المس الزر الأوسط لتسجيل دخل أو مصروف.';

  @override
  String get guideAddTip2 =>
      'اضغط عليه مطوّلًا للانتقال مباشرة إلى مصروف جديد وتخطي القائمة.';

  @override
  String get guideAddTip3 =>
      'اختر فئة دائمًا — فهي ما يجعل الرسوم البيانية والميزانيات تعمل.';

  @override
  String get guideCategoriesTitle => 'الفئات';

  @override
  String get guideCategoriesBody =>
      'الفئات هي طريقة تجميع الإنفاق. الفئات المرفقة بالتطبيق تكفي معظم الناس، ويمكنك إعادة تسميتها أو إضافة فئاتك.';

  @override
  String get guideCategoriesTip1 =>
      'الإعدادات، ثم إدارة الفئات، لتعديل فئة أو إضافة واحدة.';

  @override
  String get guideCategoriesTip2 =>
      'كل ما يبقى بلا فئة يذهب إلى «أخرى»، لتبقى الرسوم صادقة.';

  @override
  String get guideBudgetTitle => 'الميزانيات';

  @override
  String get guideBudgetBody =>
      'الميزانية سقف شهري لفئة واحدة. يمتلئ الشريط كلما أنفقت ويتغيّر لونه عند الاقتراب، فتعرف قبل أن تتجاوزه.';

  @override
  String get guideBudgetTip1 => 'ابدأ بفئتين أو ثلاث، لا بكلها دفعة واحدة.';

  @override
  String get guideBudgetTip2 =>
      'اجعل الحد أعلى قليلًا مما تنفقه عادةً، ثم ضيّقه تدريجيًا.';

  @override
  String get guideBudgetTip3 =>
      'أبقِ تنبيهات الميزانية مفعّلة ليحذّرك التطبيق عند اقترابها من النفاد.';

  @override
  String get guideSavingsTitle => 'أهداف الادخار';

  @override
  String get guideSavingsBody =>
      'سمِّ ما تدّخر من أجله، وحدّد مبلغًا وتاريخًا، وسيحسب التطبيق ما تحتاج إلى تجنيبه شهريًا للوصول.';

  @override
  String get guideSavingsTip1 =>
      'الهدف المسمّى أسهل في الالتزام من نية غامضة بالادخار.';

  @override
  String get guideSavingsTip2 =>
      'عدة أهداف صغيرة تُنجَز أكثر من هدف واحد كبير.';

  @override
  String get guideLoansTitle => 'الديون والقروض';

  @override
  String get guideLoansBody =>
      'سجّل ما عليك، وكم يكلّفك، ومتى يحين القسط التالي. كل ما تسدّده يظهر في قائمة واحدة مع المتبقي عليه.';

  @override
  String get guideLoansTip1 =>
      'أضف تاريخ الاستحقاق وستتكفّل تذكيرات السداد بملاحقته عنك.';

  @override
  String get guideLoansTip2 =>
      'الدَّين المتأخر يظهر بالأحمر على اللوحة الرئيسية حتى يُسدَّد.';

  @override
  String get guideReportsTitle => 'التقارير';

  @override
  String get guideReportsBody =>
      'النظرة الأعمق: الدخل مقابل المصروفات، الإنفاق حسب الفئة، أداء ميزانياتك، والنسبة التي احتفظت بها من دخلك.';

  @override
  String get guideReportsTip1 =>
      'بدّل بين الأسبوع والشهر والربع من أعلى الشاشة.';

  @override
  String get guideReportsTip2 =>
      'صدّر التقرير أو شاركه بصيغة PDF — يخرج بلغتك وباتجاهها.';

  @override
  String get guideSettingsTitle => 'الإعدادات';

  @override
  String get guideSettingsBody =>
      'اللغة والعملة والألوان والتنبيهات كلها هنا، ولا شيء منها ثابت بعد الإعداد — غيّر ما تشاء متى شئت.';

  @override
  String get guideSettingsTip1 =>
      'أربعون لغة، والتخطيط بأكمله ينعكس مع اللغات من اليمين إلى اليسار.';

  @override
  String get guideSettingsTip2 =>
      'اختر التنبيهات التي تريدها والساعات التي قد تصل فيها.';

  @override
  String get guideSettingsTip3 => 'ساعات الهدوء تؤجّل كل شيء حتى الصباح.';

  @override
  String get guideHabitTitle => 'اجعلها عادة';

  @override
  String get guideHabitBody =>
      'التطبيق بقدر ما تضع فيه. دقيقة يوميًا أفضل من ساعة كل شهر، وبعد أسبوعين تبدأ الأرقام في إخبارك بشيء.';

  @override
  String get guideHabitTip1 =>
      'سجّل ما تنفقه لحظة إنفاقه، لا في نهاية الأسبوع.';

  @override
  String get guideHabitTip2 =>
      'ألقِ نظرة على اللوحة مرة يوميًا. عشر ثوانٍ تكفي.';

  @override
  String get guideHabitTip3 =>
      'يبقى هذا الدليل في الإعدادات — عد إليه متى شئت.';

  @override
  String get appearance => 'المظهر';

  @override
  String get themeCaption => 'فاتح أو داكن أو حسب إعداد هاتفك.';

  @override
  String get accentColor => 'لون التمييز';

  @override
  String get accentColorCaption =>
      'يلوّن الأزرار والعناصر المميّزة والرسوم البيانية.';

  @override
  String get accentSemanticsNote =>
      'يحتفظ الدخل والمصروف بلونيهما في كل السمات، فلا يتغيّر معنى أي رقم لمجرد تغييرك لون التمييز.';

  @override
  String get accentTeal => 'فيروزي';

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
  String get accentSlate => 'رمادي داكن';

  @override
  String get searchLanguages => 'ابحث عن لغة';

  @override
  String get suggestedLanguages => 'مقترحة';

  @override
  String get allLanguages => 'كل اللغات';

  @override
  String get noLanguagesFound => 'لم يُعثر على لغات';

  @override
  String get noLanguagesFoundMessage =>
      'جرّب الاسم بالإنجليزية أو الرمز المكوّن من حرفين.';

  @override
  String get rightToLeft => 'من اليمين إلى اليسار';

  @override
  String get replayGuide => 'إعادة تشغيل الدليل';

  @override
  String get replaySetup => 'إعادة الإعداد';

  @override
  String get replaySetupBody =>
      'أعد المرور بأسئلة البداية. لن يُحذف أي شيء سجّلته.';

  @override
  String get rateTitle => 'هل تستمتع بـ RainyPenny؟';

  @override
  String get rateBody =>
      'أنت مستمر في هذا منذ فترة الآن. التقييم يستغرق لحظة ويساعد الآخرين على اكتشاف التطبيق.';

  @override
  String get rateAction => 'قيّم التطبيق';

  @override
  String get rateLater => 'ربما لاحقًا';

  @override
  String get rateNever => 'لا، شكرًا';

  @override
  String get rateThanks => 'شكرًا لك';

  @override
  String get monthlySalary => 'الراتب الشهري';

  @override
  String get remainingAmount => 'المتبقي';

  @override
  String get carriedForward => 'مُرحَّل';

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
      'اليوم الذي يصل فيه راتبك. يبدأ شهرك المالي من هذا اليوم حتى اليوم السابق للراتب التالي.';

  @override
  String get paydayUpdated => 'تم تحديث يوم الراتب';

  @override
  String paydayDayOfMonth(int day) {
    return 'اليوم $day';
  }

  @override
  String get paydayShortMonthNote =>
      'في الأشهر القصيرة تبدأ الدورة في آخر يوم من الشهر بدلًا من ذلك.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم حتى الراتب',
      many: '$count يومًا حتى الراتب',
      few: '$count أيام حتى الراتب',
      two: 'يومان حتى الراتب',
      one: 'يوم واحد حتى الراتب',
      zero: 'آخر يوم في الدورة',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'الراتب القادم';

  @override
  String get spentSoFar => 'المُنفَق حتى الآن';

  @override
  String get dailyAllowance => 'الإنفاق اليومي الآمن';

  @override
  String get overspentNotice => 'لقد أنفقت أكثر مما دخل في هذه الدورة.';

  @override
  String get backToThisMonth => 'العودة إلى هذا الشهر';

  @override
  String get cycleRangeLabel => 'الدورة';

  @override
  String get noSalaryRecorded => 'لم يُسجَّل راتب بعد';

  @override
  String get addSalaryAction => 'أضف راتبك';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'ممتاز';

  @override
  String get healthGood => 'جيد';

  @override
  String get healthFair => 'مقبول';

  @override
  String get healthNeedsWork => 'يحتاج إلى تحسين';

  @override
  String get healthExcellentBody => 'أنت تدّخر جيدًا وتلتزم بميزانياتك.';

  @override
  String get healthGoodBody => 'أنت على المسار الصحيح في إنفاقك هذه الفترة.';

  @override
  String get healthFairBody =>
      'بعض الميزانيات تقترب من حدها. تغييرات بسيطة ستساعد.';

  @override
  String get healthNeedsWorkBody => 'الإنفاق يتجاوز خطتك. ابدأ بأكبر فئة لديك.';

  @override
  String get factorSavingsRate => 'معدل الادخار';

  @override
  String get factorBudgetControl => 'ضبط الميزانية';

  @override
  String get factorDebtLoad => 'عبء الديون';

  @override
  String get factorSpendingTrend => 'اتجاه الإنفاق';

  @override
  String factorKept(String percent) {
    return 'تم الاحتفاظ بـ $percent%';
  }

  @override
  String factorUsed(String percent) {
    return 'استُخدم $percent%';
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
  String get howScoreWorks => 'كيف تُحتسب هذه النتيجة';

  @override
  String get healthScoreExplainer =>
      'تجمع نتيجتك أربعة عوامل: نسبة ما تحتفظ به من دخلك، ومدى التزامك بميزانياتك، ونسبة ما يذهب من دخلك للديون، وما إذا كان إنفاقك يرتفع أم ينخفض.';

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
      'يظهر اسمك وصورتك في جميع أنحاء التطبيق. بريدك الإلكتروني هو العنوان الذي تسجّل الدخول به.';

  @override
  String get emailNotEditable => 'تواصل مع الدعم لتغيير عنوان تسجيل الدخول.';

  @override
  String get pressBackAgainToExit => 'اضغط رجوع مرة أخرى للخروج';

  @override
  String get categoryHousing => 'السكن';

  @override
  String get categoryFood => 'الطعام والمطاعم';

  @override
  String get categoryTransport => 'المواصلات';

  @override
  String get categoryShopping => 'التسوق';

  @override
  String get categoryBills => 'الفواتير والمرافق';

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
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'أخرى';

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
  String get addCategory => 'فئة جديدة';

  @override
  String get filterByCategory => 'تصفية حسب الفئة';

  @override
  String get allCategories => 'كل الفئات';

  @override
  String get clearFilters => 'مسح عوامل التصفية';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'كل الفترات';

  @override
  String get customRange => 'مخصص';

  @override
  String get selectDateRange => 'اختر فترة';

  @override
  String rangeApplied(String start, String end) {
    return 'عرض $start – $end';
  }
}
