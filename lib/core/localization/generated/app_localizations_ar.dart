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
  String get nameRequired => 'Give this a name';

  @override
  String get amountAboveZero => 'Enter an amount greater than zero';

  @override
  String get editTransaction => 'تعديل المعاملة';

  @override
  String get deleteTransaction => 'حذف المعاملة؟';

  @override
  String deleteTransactionBody(String title) {
    return '$title will be removed from your ledger.';
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
  String get deleteBudget => 'Delete budget?';

  @override
  String deleteBudgetBody(String category) {
    return 'The $category budget will be removed. Your transactions are not affected.';
  }

  @override
  String get budgetSaved => 'تم حفظ الميزانية';

  @override
  String get budgetDeleted => 'تم حذف الميزانية';

  @override
  String get allCategoriesBudgeted => 'Every category already has a budget';

  @override
  String get noBudgetsTitle => 'No budgets yet';

  @override
  String get noBudgetsBody =>
      'Set a monthly limit on a category to start tracking it.';

  @override
  String get newGoal => 'هدف جديد';

  @override
  String get editGoal => 'تعديل الهدف';

  @override
  String get goalName => 'اسم الهدف';

  @override
  String get goalNameHint => 'e.g. Emergency fund';

  @override
  String get targetAmount => 'المبلغ المستهدف';

  @override
  String get alreadySaved => 'المدخر حاليًا';

  @override
  String get deleteGoal => 'Delete goal?';

  @override
  String deleteGoalBody(String name) {
    return '$name and its progress will be removed.';
  }

  @override
  String get goalSaved => 'تم حفظ الهدف';

  @override
  String get goalDeleted => 'تم حذف الهدف';

  @override
  String get noGoalsTitle => 'No savings goals yet';

  @override
  String get noGoalsBody =>
      'Set a target and RainyPenny will track your progress.';

  @override
  String get fundsAdded => 'تمت إضافة المبلغ';

  @override
  String get newDebt => 'قرض أو بطاقة جديدة';

  @override
  String get editDebt => 'تعديل القرض';

  @override
  String get debtName => 'الاسم';

  @override
  String get debtNameHint => 'e.g. Car loan';

  @override
  String get lender => 'الجهة المقرضة';

  @override
  String get lenderHint => 'e.g. Meridian Bank';

  @override
  String get originalAmount => 'المبلغ الأصلي';

  @override
  String get creditLimit => 'حد الائتمان';

  @override
  String get remainingBalance => 'الرصيد المتبقي';

  @override
  String get interestRatePercent => 'نسبة الفائدة (%)';

  @override
  String get kindLoan => 'قرض';

  @override
  String get kindCreditCard => 'بطاقة ائتمان';

  @override
  String get recordPayment => 'تسجيل دفعة';

  @override
  String get paymentRecorded => 'تم تسجيل الدفعة';

  @override
  String get deleteDebt => 'Delete this debt?';

  @override
  String deleteDebtBody(String name) {
    return '$name will be removed from your debts.';
  }

  @override
  String get debtSaved => 'تم الحفظ';

  @override
  String get debtDeleted => 'تم الحذف';

  @override
  String get noDebtsTitle => 'No debts tracked';

  @override
  String get noDebtsBody =>
      'Add a loan or credit card to keep an eye on repayments.';

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
    return '$subject يقترب من الحد';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'تم استخدام $percent% من ميزانية $subject، وتبقّى $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'الإنفاق يتجاوز الدخل';

  @override
  String get insightOverIncomeBody =>
      'أنفقت أكثر مما كسبت في هذه الفترة. راجع أكبر فئات الإنفاق لديك.';

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
  String get insightSavingsStrongTitle => 'ادخار ممتاز هذه الفترة';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'احتفظت بنسبة $percent% من دخلك، وهي أعلى بكثير من هدف $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'معدل الادخار دون الهدف';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'احتفظت بنسبة $percent% من دخلك في هذه الفترة. استهدف $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject على وشك الاكتمال';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'لم يتبقَّ سوى $amount للوصول إلى $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'أنت على المسار نحو $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months أشهر',
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
      other: '$days أيام',
      one: 'يوم واحد',
    );
    return 'دفعة $subject البالغة $amount متأخرة منذ $_temp0.';
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
    return 'مبلغ $amount مستحق $_temp0.';
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
  String get insightWeeklySummaryTitle => 'أسبوعك في لمحة';

  @override
  String get insightWeeklySummaryBody =>
      'اطّلع على أوجه إنفاقك هذا الأسبوع وحالة ميزانياتك.';

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
  String get needsAttention => 'يحتاج إلى انتباه';
}
