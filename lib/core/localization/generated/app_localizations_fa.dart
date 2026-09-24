// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppL10nFa extends AppL10n {
  AppL10nFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'برای روز مبادا پس‌انداز کنید';

  @override
  String get navHome => 'خانه';

  @override
  String get navTransactions => 'تراکنش‌ها';

  @override
  String get navAdd => 'افزودن';

  @override
  String get navReports => 'گزارش‌ها';

  @override
  String get navProfile => 'نمایه';

  @override
  String greetingMorning(String name) {
    return 'صبح بخیر، $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'ظهر بخیر، $name';
  }

  @override
  String greetingEvening(String name) {
    return 'عصر بخیر، $name';
  }

  @override
  String get greetingSubtitle => 'این تصویر مالی شماست';

  @override
  String get totalBalance => 'مانده کل';

  @override
  String get vsLastPeriod => 'نسبت به دوره قبل';

  @override
  String get income => 'درآمد';

  @override
  String get expenses => 'هزینه‌ها';

  @override
  String get netBalance => 'مانده خالص';

  @override
  String get lastThirtyDays => '۳۰ روز گذشته';

  @override
  String get quickActions => 'کارهای سریع';

  @override
  String get addIncome => 'افزودن درآمد';

  @override
  String get addExpense => 'افزودن هزینه';

  @override
  String get spendingOverview => 'نمای کلی هزینه‌ها';

  @override
  String get recentTransactions => 'تراکنش‌های اخیر';

  @override
  String get seeAll => 'دیدن همه';

  @override
  String get viewAll => 'نمایش همه';

  @override
  String get budgetProgress => 'پیشرفت بودجه';

  @override
  String get savingsGoals => 'هدف‌های پس‌انداز';

  @override
  String get financialInsight => 'نکته مالی';

  @override
  String get financialHealth => 'سلامت مالی';

  @override
  String ofTotal(String total) {
    return 'از $total';
  }

  @override
  String get searchTransactions => 'جست‌وجوی تراکنش';

  @override
  String get filterAll => 'همه';

  @override
  String get filterIncome => 'درآمد';

  @override
  String get filterExpenses => 'هزینه';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String get noTransactionsTitle => 'تراکنشی پیدا نشد';

  @override
  String get noTransactionsBody =>
      'جست‌وجو یا فیلتر دیگری را امتحان کنید تا رکوردهای بیشتری ببینید.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تراکنش',
      one: '$count تراکنش',
      zero: 'تراکنشی نیست',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'افزودن تراکنش';

  @override
  String get amount => 'مبلغ';

  @override
  String get category => 'دسته';

  @override
  String get date => 'تاریخ';

  @override
  String get note => 'یادداشت';

  @override
  String get noteHint => 'یادداشت (اختیاری)';

  @override
  String get saveIncome => 'ذخیره درآمد';

  @override
  String get saveExpense => 'ذخیره هزینه';

  @override
  String get selectCategory => 'انتخاب دسته';

  @override
  String get transactionSaved => 'تراکنش ذخیره شد';

  @override
  String get amountRequired => 'مبلغی بزرگ‌تر از صفر وارد کنید';

  @override
  String get titleRequired => 'برای این تراکنش نامی بگذارید';

  @override
  String get descriptionLabel => 'شرح';

  @override
  String get descriptionHint => 'مثلاً خرید خانه';

  @override
  String get budget => 'بودجه';

  @override
  String get budgets => 'بودجه‌ها';

  @override
  String get totalBudget => 'بودجه کل';

  @override
  String get spent => 'خرج‌شده';

  @override
  String get remaining => 'باقی‌مانده';

  @override
  String budgetUsed(int percent) {
    return '$percent% مصرف شده';
  }

  @override
  String get onTrack => 'طبق برنامه';

  @override
  String get approachingLimit => 'نزدیک سقف';

  @override
  String get overBudget => 'فراتر از بودجه';

  @override
  String get savings => 'پس‌انداز';

  @override
  String get yourGoals => 'هدف‌های شما';

  @override
  String get saved => 'پس‌انداز شده';

  @override
  String get target => 'هدف';

  @override
  String get monthlyContribution => 'ماهانه';

  @override
  String get addFunds => 'واریز';

  @override
  String get goalComplete => 'هدف محقق شد';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ماه مانده',
      one: '$count ماه مانده',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'وام‌ها و بدهی‌ها';

  @override
  String get totalOutstanding => 'کل بدهی باقی‌مانده';

  @override
  String get monthlyPayment => 'ماهانه';

  @override
  String get nextPayment => 'قسط بعدی';

  @override
  String paidOff(int percent) {
    return '$percent% پرداخت شده';
  }

  @override
  String get interestRate => 'سود';

  @override
  String get upcomingPayments => 'پرداخت‌های پیش‌رو';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز دیگر',
      one: '$count روز دیگر',
      zero: 'سررسید امروز',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'معوق';

  @override
  String get reports => 'گزارش‌ها';

  @override
  String get week => 'هفته';

  @override
  String get month => 'ماه';

  @override
  String get quarter => 'فصل';

  @override
  String get incomeVsExpenses => 'درآمد و هزینه';

  @override
  String get spendingByCategory => 'هزینه بر پایه دسته';

  @override
  String get budgetPerformance => 'عملکرد بودجه';

  @override
  String get insights => 'نکته‌ها';

  @override
  String get savingsRate => 'نرخ پس‌انداز';

  @override
  String get profile => 'نمایه';

  @override
  String get account => 'حساب';

  @override
  String get personalInformation => 'اطلاعات شخصی';

  @override
  String get changePassword => 'تغییر گذرواژه';

  @override
  String get notifications => 'اعلان‌ها';

  @override
  String get preferences => 'ترجیحات';

  @override
  String get language => 'زبان';

  @override
  String get currency => 'واحد پول';

  @override
  String get theme => 'پوسته';

  @override
  String get security => 'امنیت';

  @override
  String get privacyAndSecurity => 'حریم خصوصی و امنیت';

  @override
  String get help => 'راهنما';

  @override
  String get helpAndSupport => 'راهنما و پشتیبانی';

  @override
  String get termsAndConditions => 'شرایط و ضوابط';

  @override
  String get logOut => 'خروج';

  @override
  String memberSince(String date) {
    return 'عضو از $date';
  }

  @override
  String get themeSystem => 'مطابق سیستم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تیره';

  @override
  String get settings => 'تنظیمات';

  @override
  String get noNotificationsTitle => 'همه‌چیز دیده شد';

  @override
  String get noNotificationsBody =>
      'نکته‌ها و یادآوری‌های تازه اینجا نمایش داده می‌شوند.';

  @override
  String get cancel => 'انصراف';

  @override
  String get save => 'ذخیره';

  @override
  String get done => 'انجام شد';

  @override
  String get retry => 'تلاش دوباره';

  @override
  String get close => 'بستن';

  @override
  String get somethingWentWrong => 'مشکلی پیش آمد';

  @override
  String get comingSoon => 'در نسخه کامل خواهد آمد';

  @override
  String get edit => 'ویرایش';

  @override
  String get delete => 'حذف';

  @override
  String get undo => 'برگرداندن';

  @override
  String get add => 'افزودن';

  @override
  String get create => 'ساختن';

  @override
  String get nameRequired => 'برای این نامی بگذارید';

  @override
  String get amountAboveZero => 'مبلغی بزرگ‌تر از صفر وارد کنید';

  @override
  String get editTransaction => 'ویرایش تراکنش';

  @override
  String get deleteTransaction => 'تراکنش حذف شود؟';

  @override
  String deleteTransactionBody(String title) {
    return '$title از دفتر شما حذف می‌شود.';
  }

  @override
  String get transactionDeleted => 'تراکنش حذف شد';

  @override
  String get transactionUpdated => 'تراکنش به‌روزرسانی شد';

  @override
  String get newBudget => 'بودجه تازه';

  @override
  String get editBudget => 'ویرایش بودجه';

  @override
  String get budgetLimit => 'سقف ماهانه';

  @override
  String get deleteBudget => 'بودجه حذف شود؟';

  @override
  String deleteBudgetBody(String category) {
    return 'بودجه $category حذف می‌شود. تراکنش‌های شما دست‌نخورده می‌مانند.';
  }

  @override
  String get budgetSaved => 'بودجه ذخیره شد';

  @override
  String get budgetDeleted => 'بودجه حذف شد';

  @override
  String get allCategoriesBudgeted => 'همه دسته‌ها بودجه دارند';

  @override
  String get noBudgetsTitle => 'هنوز بودجه‌ای نیست';

  @override
  String get noBudgetsBody =>
      'برای یک دسته سقف ماهانه بگذارید تا پیگیری آغاز شود.';

  @override
  String get newGoal => 'هدف تازه';

  @override
  String get editGoal => 'ویرایش هدف';

  @override
  String get goalName => 'نام هدف';

  @override
  String get goalNameHint => 'مثلاً صندوق اضطراری';

  @override
  String get targetAmount => 'مبلغ هدف';

  @override
  String get alreadySaved => 'پس‌انداز شده';

  @override
  String get deleteGoal => 'هدف حذف شود؟';

  @override
  String deleteGoalBody(String name) {
    return '$name و پیشرفت آن حذف می‌شود.';
  }

  @override
  String get goalSaved => 'هدف ذخیره شد';

  @override
  String get goalDeleted => 'هدف حذف شد';

  @override
  String get noGoalsTitle => 'هنوز هدف پس‌اندازی نیست';

  @override
  String get noGoalsBody =>
      'هدفی بگذارید تا RainyPenny پیشرفت شما را دنبال کند.';

  @override
  String get fundsAdded => 'مبلغ واریز شد';

  @override
  String get newDebt => 'وام یا کارت تازه';

  @override
  String get editDebt => 'ویرایش وام';

  @override
  String get debtName => 'نام';

  @override
  String get debtNameHint => 'مثلاً وام خودرو';

  @override
  String get lender => 'وام‌دهنده';

  @override
  String get lenderHint => 'مثلاً بانک ملت';

  @override
  String get originalAmount => 'مبلغ اولیه';

  @override
  String get creditLimit => 'سقف اعتبار';

  @override
  String get remainingBalance => 'مانده بدهی';

  @override
  String get interestRatePercent => 'نرخ سود (٪)';

  @override
  String get kindLoan => 'وام';

  @override
  String get kindCreditCard => 'کارت اعتباری';

  @override
  String get recordPayment => 'ثبت پرداخت';

  @override
  String get paymentRecorded => 'پرداخت ثبت شد';

  @override
  String get deleteDebt => 'این بدهی حذف شود؟';

  @override
  String deleteDebtBody(String name) {
    return '$name از فهرست بدهی‌های شما حذف می‌شود.';
  }

  @override
  String get debtSaved => 'ذخیره شد';

  @override
  String get debtDeleted => 'حذف شد';

  @override
  String get noDebtsTitle => 'بدهی‌ای پیگیری نمی‌شود';

  @override
  String get noDebtsBody =>
      'وام یا کارت اعتباری اضافه کنید تا اقساط از دستتان در نرود.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'بودجه $subject فراتر رفت';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'در این دوره $amount بیشتر از بودجه $subject خرج کرده‌اید.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject به سقف نزدیک است';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'بودجه $subject شما $percent% مصرف شده و $amount باقی مانده است.';
  }

  @override
  String get insightOverIncomeTitle => 'هزینه بیش از درآمد';

  @override
  String get insightOverIncomeBody =>
      'در این دوره بیش از آنچه به دست آورده‌اید خرج کرده‌اید. بزرگ‌ترین دسته‌ها را ببینید تا اوضاع به تعادل برگردد.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'هزینه $subject بالا رفته';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'هزینه $subject شما $percent% بیشتر از دوره قبل است.';
  }

  @override
  String get insightTrendDownTitle => 'هزینه‌ها رو به کاهش است';

  @override
  String insightTrendDownBody(int percent) {
    return 'هزینه کلی $percent% کمتر از دوره قبل است.';
  }

  @override
  String get insightTrendUpTitle => 'هزینه‌ها رو به افزایش است';

  @override
  String insightTrendUpBody(int percent) {
    return 'هزینه کلی $percent% بیشتر از دوره قبل است.';
  }

  @override
  String get insightSavingsStrongTitle => 'پس‌انداز این دوره عالی بود';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '$percent% از درآمدتان را نگه داشتید — بسیار بالاتر از هدف $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'نرخ پس‌انداز کمتر از هدف';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'در این دوره $percent% از درآمدتان را نگه داشتید. هدف $target% است.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject تقریباً کامل شد';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'تا رسیدن به $subject تنها $amount مانده است.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject طبق برنامه پیش می‌رود';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ماه',
      one: '$months ماه',
    );
    return 'با ماهی $amount در $_temp0 به این هدف می‌رسید.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'پرداخت $subject معوق شده';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز',
      one: '$days روز',
    );
    return 'پرداخت $amount مربوط به $subject به مدت $_temp0 معوق است.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'پرداخت $subject نزدیک است';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز دیگر',
      one: '$days روز دیگر',
      zero: 'امروز',
    );
    return '$amount $_temp0 سررسید می‌شود.';
  }

  @override
  String get signIn => 'ورود';

  @override
  String get signUp => 'ساخت حساب';

  @override
  String get signInSubtitle => 'خوش برگشتید. پولتان منتظر شماست.';

  @override
  String get signUpSubtitle => 'چند مورد و کارتان راه می‌افتد.';

  @override
  String get emailLabel => 'ایمیل';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'گذرواژه';

  @override
  String get passwordHint => 'دست‌کم ۸ نویسه';

  @override
  String get fullNameLabel => 'نام کامل';

  @override
  String get fullNameHint => 'علی رضایی';

  @override
  String get forgotPassword => 'گذرواژه را فراموش کرده‌اید؟';

  @override
  String get resetSent => 'برای پیوند بازنشانی، صندوق ایمیل را ببینید';

  @override
  String get noAccountYet => 'تازه آمده‌اید؟';

  @override
  String get haveAccount => 'از قبل حساب دارید؟';

  @override
  String get emailInvalid => 'نشانی ایمیل معتبری وارد کنید';

  @override
  String get passwordTooShort => 'دست‌کم ۸ نویسه بگذارید';

  @override
  String get signOutConfirm => 'خارج می‌شوید؟';

  @override
  String get signOutBody =>
      'برای دیدن دوباره وضعیت مالی‌تان باید دوباره وارد شوید.';

  @override
  String get dataSource => 'منبع داده';

  @override
  String get insightWeeklySummaryTitle => 'مرور هفته شما';

  @override
  String get insightWeeklySummaryBody =>
      'ببینید این هفته پولتان کجا رفت و بودجه‌ها چطور دوام آوردند.';

  @override
  String get notificationSettings => 'اعلان‌ها';

  @override
  String get alertsSection => 'هشدارها';

  @override
  String get budgetAlerts => 'هشدار بودجه';

  @override
  String get budgetAlertsBody => 'وقتی بودجه به سقف نزدیک یا از آن رد شود';

  @override
  String get paymentReminders => 'یادآوری پرداخت';

  @override
  String get paymentRemindersBody => 'چند روز پیش از سررسید';

  @override
  String get savingsUpdates => 'خبرهای پس‌انداز';

  @override
  String get savingsUpdatesBody => 'پیشرفت به‌سوی هدف‌هایتان';

  @override
  String get weeklySummaryLabel => 'خلاصه هفتگی';

  @override
  String get weeklySummaryBody => 'جمع‌بندی هفته‌ای که گذشت';

  @override
  String get scheduleSection => 'زمان‌بندی';

  @override
  String get reminderTime => 'زمان یادآوری';

  @override
  String get quietHours => 'ساعت‌های سکوت';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'روز خلاصه';

  @override
  String get permissionRequired => 'اعلان‌ها خاموش است';

  @override
  String get permissionRequiredBody =>
      'اجازه اعلان بدهید تا RainyPenny پیش از آنکه بودجه یا پرداختی از دستتان در برود به شما هشدار دهد.';

  @override
  String get allowNotifications => 'اجازه اعلان';

  @override
  String get permissionDenied =>
      'اعلان‌ها مسدود شده‌اند. می‌توانید از تنظیمات دستگاه روشنشان کنید.';

  @override
  String get upcomingAlerts => 'زمان‌بندی‌شده';

  @override
  String get noScheduledAlerts => 'اکنون چیزی زمان‌بندی نشده';

  @override
  String get noScheduledAlertsBody =>
      'وقتی بودجه‌ها و پرداخت‌ها به سررسید نزدیک شوند، هشدارها اینجا می‌آیند.';

  @override
  String scheduledFor(String date) {
    return 'زمان‌بندی برای $date';
  }

  @override
  String get everyWeek => 'هر هفته';

  @override
  String get allNotificationsOff => 'همه اعلان‌ها خاموش است';

  @override
  String get needsAttention => 'نیازمند توجه';

  @override
  String get quickActionsTitle => 'چه کاری می‌خواهید بکنید؟';

  @override
  String get createSection => 'ثبت';

  @override
  String get jumpToSection => 'رفتن به';

  @override
  String get addLoanAction => 'افزودن وام';

  @override
  String get addBudgetAction => 'افزودن بودجه';

  @override
  String get addGoalAction => 'افزودن هدف';

  @override
  String get longPressHint =>
      'نکته: دکمه + را نگه دارید تا مستقیم هزینه ثبت شود';

  @override
  String get searchCurrencies => 'جست‌وجوی واحد پول';

  @override
  String get noCurrenciesFound => 'واحد پولی پیدا نشد';

  @override
  String get noCurrenciesFoundMessage =>
      'کد، نماد یا نام دیگری را امتحان کنید.';

  @override
  String get popularCurrencies => 'پرکاربرد';

  @override
  String get allCurrencies => 'همه واحدهای پول';

  @override
  String get totalLoanAmount => 'مبلغ کل وام';

  @override
  String get installmentAmount => 'مبلغ هر قسط';

  @override
  String get numberOfInstallments => 'تعداد اقساط';

  @override
  String get paidInstallments => 'اقساط پرداخت‌شده';

  @override
  String get remainingInstallments => 'اقساط باقی‌مانده';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid از $total پرداخت شده';
  }

  @override
  String get finalPayment => 'قسط آخر';

  @override
  String get paymentDueDate => 'تاریخ سررسید';

  @override
  String dueOnDayOfMonth(int day) {
    return 'روز $day هر ماه';
  }

  @override
  String get loanStatus => 'وضعیت';

  @override
  String get statusActive => 'طبق برنامه';

  @override
  String get statusDueSoon => 'نزدیک سررسید';

  @override
  String get statusOverdue => 'معوق';

  @override
  String get statusCompleted => 'تسویه‌شده';

  @override
  String get repaymentProgress => 'پیشرفت بازپرداخت';

  @override
  String get byAmount => 'بر پایه مبلغ';

  @override
  String get byInstallments => 'بر پایه اقساط';

  @override
  String get startDate => 'تاریخ شروع';

  @override
  String get openEnded => 'بدون سررسید';

  @override
  String get loanDetails => 'جزئیات وام';

  @override
  String get notSet => 'تعیین‌نشده';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject امروز سررسید است';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'پرداخت $amount امروز سررسید می‌شود. یک ضربه کافی است تا به‌موقع انجام شود.';
  }

  @override
  String get remindMorningTitle => 'صبح بخیر ☀️';

  @override
  String get remindMorningBody =>
      'روز را با تسلط بر پولتان آغاز کنید. از دیروز چیزی مانده که ثبت کنید؟';

  @override
  String get remindNoonTitle => 'وارسی نیم‌روز';

  @override
  String get remindNoonBody => 'ناهار، قهوه، کرایه؟ در چند ثانیه ثبتش کنید.';

  @override
  String get remindAfternoonTitle => 'یک جمع‌بندی کوتاه';

  @override
  String get remindAfternoonBody =>
      'آنچه تا حالا خرج کرده‌اید را ثبت کنید تا عدد امروز دقیق بماند.';

  @override
  String get remindEveningTitle => 'بستن پرونده امروز';

  @override
  String get remindEveningBody =>
      'دو دقیقه همین حالا و حساب امروز کامل می‌شود.';

  @override
  String get happyWeekendTitle => 'آخر هفته خوش! 🎉';

  @override
  String get happyWeekendBody =>
      'خوش بگذرد — و حواستان به خرج آخر هفته هم باشد.';

  @override
  String get dailyReminders => 'یادآوری روزانه هزینه‌ها';

  @override
  String get dailyRemindersBody => 'تلنگرهای ملایم تا هزینه‌ها به‌روز بماند';

  @override
  String get weekendGreeting => 'سلام آخر هفته';

  @override
  String get weekendGreetingBody => 'یک سلام دوستانه در آغاز آخر هفته';

  @override
  String get reminderTimesSection => 'زمان‌های یادآوری';

  @override
  String get slotMorning => 'صبح';

  @override
  String get slotNoon => 'ظهر';

  @override
  String get slotAfternoon => 'بعدازظهر';

  @override
  String get slotEvening => 'شب';

  @override
  String get everyDay => 'هر روز';

  @override
  String get financialReport => 'گزارش مالی';

  @override
  String get preparedFor => 'تهیه‌شده برای';

  @override
  String get generatedOn => 'تاریخ تهیه';

  @override
  String get reportDisclaimer =>
      'RainyPenny این را از روی رکوردهای خود شما ساخته است.';

  @override
  String pageOf(int page, int total) {
    return 'صفحه $page از $total';
  }

  @override
  String get overview => 'نمای کلی';

  @override
  String get description => 'شرح';

  @override
  String get totalIncome => 'کل درآمد';

  @override
  String get totalExpenses => 'کل هزینه';

  @override
  String get totalSaved => 'کل پس‌انداز';

  @override
  String get shareOfTotal => 'سهم';

  @override
  String get used => 'مصرف‌شده';

  @override
  String get goal => 'هدف';

  @override
  String get targetDate => 'تاریخ هدف';

  @override
  String get progress => 'پیشرفت';

  @override
  String get paidOffShort => 'پرداخت‌شده';

  @override
  String get transactions => 'تراکنش‌ها';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'و $count تراکنش دیگر',
      one: 'و $count تراکنش دیگر',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'خروجی PDF';

  @override
  String get sharePdf => 'هم‌رسانی گزارش';

  @override
  String get preparingReport => 'در حال آماده‌سازی گزارش…';

  @override
  String get reportReady => 'گزارش آماده است';

  @override
  String get reportFailed => 'گزارش ساخته نشد';

  @override
  String get categories => 'دسته‌ها';

  @override
  String get categoriesIntro =>
      'دسته‌های خودتان را بسازید تا درآمد و هزینه دقیقاً همان‌طور که در ذهن دارید مرتب شود.';

  @override
  String get expenseCategories => 'دسته‌های هزینه';

  @override
  String get incomeCategories => 'دسته‌های درآمد';

  @override
  String get newCategory => 'دسته تازه';

  @override
  String get editCategory => 'ویرایش دسته';

  @override
  String get categoryName => 'نام';

  @override
  String get categoryNameHint => 'مثلاً حیوان خانگی';

  @override
  String get icon => 'نماد';

  @override
  String get categorySaved => 'دسته ذخیره شد';

  @override
  String get categoryDeleted => 'دسته حذف شد';

  @override
  String get deleteCategory => 'این دسته حذف شود؟';

  @override
  String deleteCategoryBody(String name) {
    return '$name از دسته‌های شما حذف می‌شود.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رکورد هنوز از این دسته استفاده می‌کنند',
      one: '$count رکورد هنوز از این دسته استفاده می‌کند',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'اینجا هنوز چیزی نیست.';

  @override
  String get builtIn => 'پیش‌فرض';

  @override
  String get manageCategories => 'مدیریت دسته‌ها';

  @override
  String get expense => 'هزینه';

  @override
  String get languageNote =>
      'عربی، اردو، فارسی و عبری کل رابط کاربری را راست‌به‌چپ می‌کنند — از جمله نمودارها و گزارش‌های PDF.';

  @override
  String get next => 'بعدی';

  @override
  String get back => 'بازگشت';

  @override
  String get skip => 'رد کردن';

  @override
  String get continueLabel => 'ادامه';

  @override
  String get selected => 'انتخاب‌شده';

  @override
  String get passwordRequired => 'گذرواژه‌تان را وارد کنید';

  @override
  String get newPasswordLabel => 'گذرواژه تازه';

  @override
  String get confirmPasswordLabel => 'تکرار گذرواژه';

  @override
  String get passwordsDoNotMatch => 'هر دو گذرواژه باید یکی باشند';

  @override
  String get showPassword => 'نمایش گذرواژه';

  @override
  String get hidePassword => 'پنهان کردن گذرواژه';

  @override
  String get savePassword => 'ذخیره گذرواژه';

  @override
  String get backToSignIn => 'بازگشت به ورود';

  @override
  String get alreadyHaveAccount => 'از قبل حساب دارم';

  @override
  String get getStarted => 'شروع کنیم';

  @override
  String get acceptTerms => 'با شرایط خدمات و سیاست حریم خصوصی موافقم';

  @override
  String get acceptTermsRequired => 'برای ادامه موافقت کنید';

  @override
  String get passwordStrengthTooShort => 'خیلی کوتاه';

  @override
  String get passwordStrengthWeak => 'ضعیف';

  @override
  String get passwordStrengthFair => 'متوسط';

  @override
  String get passwordStrengthGood => 'خوب';

  @override
  String get passwordStrengthStrong => 'قوی';

  @override
  String get passwordAdvice =>
      'عبارتی بلند که به یاد می‌سپارید بهتر از گذرواژه‌ای کوتاه پر از نماد است. چیزی را که جای دیگری به کار می‌برید انتخاب نکنید.';

  @override
  String get authInvalidCredentials =>
      'این ایمیل و گذرواژه با هیچ حسابی نمی‌خواند';

  @override
  String get authEmailNotConfirmed =>
      'پیش از ورود، نشانی ایمیل‌تان را تأیید کنید';

  @override
  String get authEmailAlreadyRegistered =>
      'حسابی با این ایمیل از قبل وجود دارد';

  @override
  String get authWeakPassword => 'گذرواژه بلندتری انتخاب کنید';

  @override
  String get authRateLimited =>
      'تلاش‌های بیش از حد. چند دقیقه دیگر دوباره امتحان کنید';

  @override
  String get authNetworkError =>
      'اتصالی نیست. شبکه را بررسی و دوباره تلاش کنید';

  @override
  String get authGenericError => 'مشکلی پیش آمد. لطفاً دوباره تلاش کنید';

  @override
  String get confirmEmailTitle => 'ایمیل‌تان را ببینید';

  @override
  String confirmEmailBody(String email) {
    return 'پیوند تأیید را به $email فرستادیم. برای کامل کردن حساب، آن را باز کنید.';
  }

  @override
  String get resendConfirmation => 'ارسال دوباره ایمیل تأیید';

  @override
  String get confirmationResent => 'ایمیل تأیید فرستاده شد';

  @override
  String get forgotPasswordTitle => 'بازنشانی گذرواژه';

  @override
  String get forgotPasswordSubtitle =>
      'ایمیلی را که با آن ثبت‌نام کرده‌اید وارد کنید تا پیوند انتخاب گذرواژه تازه را برایتان بفرستیم.';

  @override
  String get sendResetLink => 'ارسال پیوند بازنشانی';

  @override
  String get resetLinkSentTitle => 'پیوند فرستاده شد';

  @override
  String resetLinkSentBody(String email) {
    return 'اگر $email حسابی داشته باشد، پیوند بازنشانی در راه است.';
  }

  @override
  String get resetLinkSentHint =>
      'پیوند یک ساعت اعتبار دارد. اگر نرسید، پیش از درخواست دوباره، پوشه هرزنامه را ببینید.';

  @override
  String get tryAnotherEmail => 'ایمیل دیگری به کار ببرید';

  @override
  String get resetPasswordTitle => 'گذرواژه تازه‌ای انتخاب کنید';

  @override
  String get resetPasswordSubtitle =>
      'چیزی را برگزینید که پیش‌تر روی این حساب به کار نبرده‌اید.';

  @override
  String get passwordChangedTitle => 'گذرواژه به‌روزرسانی شد';

  @override
  String get passwordChangedBody =>
      'گذرواژه تازه‌تان ذخیره شد. وارد شده‌اید و همه‌چیز آماده است.';

  @override
  String get demoModeHint => 'نسخه نمایشی — نیازی به حساب نیست';

  @override
  String get demoModeFill => 'پر کن';

  @override
  String get welcomeTrackTitle => 'ببینید پولتان کجا می‌رود';

  @override
  String get welcomeTrackBody =>
      'آنچه می‌آید و آنچه می‌رود را ثبت کنید. RainyPenny آن را به تصویری تبدیل می‌کند که واقعاً خوانده می‌شود.';

  @override
  String get welcomeBudgetTitle => 'مرزهایی که دوام می‌آورند';

  @override
  String get welcomeBudgetBody =>
      'برای هر بخش از خرجتان سقفی ماهانه بگذارید و پیش از رد شدن از آن باخبر شوید، نه پس از آن.';

  @override
  String get welcomeGoalsTitle => 'برای آنچه مهم است پس‌انداز کنید';

  @override
  String get welcomeGoalsBody =>
      'به هدفی نام بدهید، مبلغی تعیین کنید و پر شدنش را تماشا کنید. صندوق روز مبادا وقتی دیده شود آسان‌تر ساخته می‌شود.';

  @override
  String get welcomePrivacyTitle => 'پول شما از آنِ شما می‌ماند';

  @override
  String get welcomePrivacyBody =>
      'عددهای شما فقط مال خودتان است. چیزی فروخته و با کسی به اشتراک گذاشته نمی‌شود.';

  @override
  String stepOf(int step, int total) {
    return 'گام $step از $total';
  }

  @override
  String get onboardingNameTitle => 'شما را چه صدا کنیم؟';

  @override
  String get onboardingNameBody =>
      'فقط برای سلام گفتن به کار می‌رود، جای دیگری نه.';

  @override
  String get onboardingNameHint =>
      'نام کوچک کافی است. بعداً می‌توانید تغییرش دهید.';

  @override
  String get onboardingCurrencyTitle => 'از چه واحد پولی استفاده می‌کنید؟';

  @override
  String get onboardingCurrencyBody =>
      'همه مبالغ برنامه با این واحد نشان داده می‌شوند. انتخاب آن چیزی را تبدیل نمی‌کند.';

  @override
  String get onboardingCurrencySearch => 'جست‌وجو در همه واحدهای پول';

  @override
  String get onboardingAppearanceTitle => 'به سلیقه خودتان درآورید';

  @override
  String get onboardingAppearanceBody =>
      'ظاهری برگزینید. با هر لمس همه‌چیز عوض می‌شود و هر وقت خواستید می‌توانید برگردید.';

  @override
  String get onboardingNotificationsTitle => 'از اوضاع باخبر بمانید';

  @override
  String get onboardingNotificationsBody =>
      'یک تلنگر آرام در لحظه درست، همان چیزی است که این کار را به عادت تبدیل می‌کند.';

  @override
  String get onboardingNotifyReminders =>
      'یادآوری ملایم برای ثبت آنچه خرج کرده‌اید';

  @override
  String get onboardingNotifyBudget => 'خبر دادن پیش از آنکه بودجه‌ای تمام شود';

  @override
  String get onboardingNotifySummary => 'خلاصه هفتگی از اینکه پولتان کجا رفت';

  @override
  String get onboardingNotifyEnable => 'روشن کردن اعلان‌ها';

  @override
  String get onboardingNotifyDone => 'تنظیمات اعلان ذخیره شد';

  @override
  String get onboardingNotifyLater =>
      'همه اینها را هر وقت خواستید در تنظیمات تغییر می‌دهید.';

  @override
  String get onboardingReadyTitle => 'همه‌چیز آماده است';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'همه‌چیز آماده است، $name';
  }

  @override
  String get onboardingReadyBody =>
      'راه‌اندازی تمام شد. مایل‌اید نگاهی سریع به شیوه کار بیندازیم؟';

  @override
  String get onboardingTakeTour => 'نشانم بده';

  @override
  String get onboardingGoToApp => 'برو به برنامه';

  @override
  String get onboardingTourLater =>
      'الان نه؟ راهنما در تنظیمات می‌ماند، هر وقت خواستید.';

  @override
  String get beginnersGuide => 'راهنمای تازه‌واردها';

  @override
  String get guideFinish => 'پایان';

  @override
  String chapterOf(int number, int total) {
    return 'فصل $number از $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'باز کردن $screen';
  }

  @override
  String get guideDashboardTitle => 'داشبورد شما';

  @override
  String get guideDashboardBody =>
      'همه‌چیز از اینجا آغاز می‌شود. کارت بالا نشان می‌دهد چقدر برایتان مانده؛ زیر آن، آنچه در این دوره آمده و رفته، سپس خرج، بودجه‌ها و هدف‌هایتان.';

  @override
  String get guideDashboardTip1 =>
      'برای تازه‌سازی همه‌چیز، صفحه را پایین بکشید.';

  @override
  String get guideDashboardTip2 =>
      'برای رفتن مستقیم به آن فهرست، روی کارت درآمد یا هزینه بزنید.';

  @override
  String get guideDashboardTip3 =>
      'همین که چیزی ثبت کنید، حلقه‌ها و نکته‌ها به‌روز می‌شوند.';

  @override
  String get guideAddTitle => 'ثبت پول';

  @override
  String get guideAddBody =>
      'دکمه میان نوار پایین، نقطه شروع همه‌چیز است. منویی کوتاه باز می‌کند: هزینه، درآمد، بدهی، بودجه یا هدف پس‌انداز.';

  @override
  String get guideAddTip1 => 'برای ثبت ورود یا خروج پول، دکمه میانی را بزنید.';

  @override
  String get guideAddTip2 =>
      'نگهش دارید تا منو رد شود و مستقیم به هزینه تازه بروید.';

  @override
  String get guideAddTip3 =>
      'همیشه دسته‌ای انتخاب کنید — نمودارها و بودجه‌ها بر همین استوارند.';

  @override
  String get guideCategoriesTitle => 'دسته‌ها';

  @override
  String get guideCategoriesBody =>
      'دسته‌ها همان شیوه گروه‌بندی خرج هستند. آنچه با برنامه می‌آید برای بیشتر مردم کافی است و می‌توانید نامشان را عوض کنید یا دسته خودتان را بسازید.';

  @override
  String get guideCategoriesTip1 =>
      'تنظیمات، سپس مدیریت دسته‌ها، برای تغییر یا افزودن.';

  @override
  String get guideCategoriesTip2 =>
      'هر چیزی بی‌دسته بماند به «سایر» می‌رود تا نمودارها صادق بمانند.';

  @override
  String get guideBudgetTitle => 'بودجه‌ها';

  @override
  String get guideBudgetBody =>
      'بودجه سقف ماهانه یک دسته است. نوار با خرج کردن پر می‌شود و نزدیک سقف رنگ عوض می‌کند، پس پیش از رد شدن باخبر می‌شوید.';

  @override
  String get guideBudgetTip1 => 'با دو سه دسته شروع کنید، نه همه با هم.';

  @override
  String get guideBudgetTip2 =>
      'سقف را کمی بالاتر از خرج معمولتان بگذارید و بعد تنگ‌ترش کنید.';

  @override
  String get guideBudgetTip3 =>
      'هشدار بودجه را روشن بگذارید تا برنامه هنگام کم شدن خبرتان کند.';

  @override
  String get guideSavingsTitle => 'هدف‌های پس‌انداز';

  @override
  String get guideSavingsBody =>
      'نام آنچه برایش پس‌انداز می‌کنید را بنویسید، مبلغ و تاریخ بگذارید و برنامه حساب می‌کند ماهی چقدر باید کنار بگذارید.';

  @override
  String get guideSavingsTip1 =>
      'هدفی که نام دارد آسان‌تر از نیتی مبهم برای پس‌انداز دوام می‌آورد.';

  @override
  String get guideSavingsTip2 =>
      'چند هدف کوچک بیشتر از یک هدف بزرگ به سرانجام می‌رسند.';

  @override
  String get guideLoansTitle => 'بدهی‌ها و وام‌ها';

  @override
  String get guideLoansBody =>
      'ثبت کنید چقدر بدهکارید، چقدر خرج برمی‌دارد و قسط بعدی کی سررسید می‌شود. هر چه در حال بازپرداختش هستید با مانده‌اش در یک فهرست است.';

  @override
  String get guideLoansTip1 =>
      'تاریخ سررسید را بگذارید تا یادآوری‌های پرداخت به جای شما پیگیرش باشند.';

  @override
  String get guideLoansTip2 =>
      'بدهی معوق تا پرداخت شدن، روی داشبورد قرمز می‌ماند.';

  @override
  String get guideReportsTitle => 'گزارش‌ها';

  @override
  String get guideReportsBody =>
      'نگاهی ژرف‌تر: درآمد در برابر هزینه، خرج بر پایه دسته، اینکه بودجه‌ها چقدر دوام آوردند و چه سهمی از درآمدتان نزد خودتان ماند.';

  @override
  String get guideReportsTip1 =>
      'در بالای صفحه میان هفته، ماه و فصل جابه‌جا شوید.';

  @override
  String get guideReportsTip2 =>
      'PDF بگیرید یا هم‌رسانی کنید — به زبان و جهت نوشتار خودتان درمی‌آید.';

  @override
  String get guideSettingsTitle => 'تنظیمات';

  @override
  String get guideSettingsBody =>
      'زبان، واحد پول، رنگ‌ها و هشدارها همه اینجا هستند و هیچ‌کدام با راه‌اندازی اولیه قفل نمی‌شوند — هر وقت خواستید عوضشان کنید.';

  @override
  String get guideSettingsTip1 =>
      'چهل زبان، و برای زبان‌های راست‌به‌چپ کل چیدمان آینه می‌شود.';

  @override
  String get guideSettingsTip2 =>
      'انتخاب کنید چه هشدارهایی می‌خواهید و در چه ساعت‌هایی برسند.';

  @override
  String get guideSettingsTip3 =>
      'ساعت‌های سکوت همه‌چیز را تا صبح نگه می‌دارد.';

  @override
  String get guideHabitTitle => 'ماندگارش کنید';

  @override
  String get guideHabitBody =>
      'این برنامه به اندازه‌ای خوب است که در آن بگذارید. روزی یک دقیقه بهتر از ماهی یک ساعت است و پس از دو هفته عددها چیزی به شما می‌گویند.';

  @override
  String get guideHabitTip1 => 'خرج را همان لحظه ثبت کنید، نه آخر هفته.';

  @override
  String get guideHabitTip2 =>
      'روزی یک بار نگاهی به داشبورد بیندازید. ده ثانیه بس است.';

  @override
  String get guideHabitTip3 =>
      'این راهنما در تنظیمات می‌ماند — هر وقت خواستید برگردید.';

  @override
  String get appearance => 'ظاهر';

  @override
  String get themeCaption => 'روشن، تیره، یا هر چه گوشی‌تان انجام می‌دهد.';

  @override
  String get accentColor => 'رنگ شاخص';

  @override
  String get accentColorCaption =>
      'به دکمه‌ها، برجسته‌ها و نمودارها رنگ می‌دهد.';

  @override
  String get accentSemanticsNote =>
      'پول ورودی و خروجی در هر پوسته رنگ خودشان را نگه می‌دارند، پس هیچ عددی تنها به خاطر تغییر رنگ شاخص معنایش عوض نمی‌شود.';

  @override
  String get accentTeal => 'فیروزه‌ای';

  @override
  String get accentGreen => 'سبز';

  @override
  String get accentSky => 'آبی آسمانی';

  @override
  String get accentBlue => 'آبی';

  @override
  String get accentIndigo => 'نیلی';

  @override
  String get accentViolet => 'بنفش';

  @override
  String get accentPink => 'صورتی';

  @override
  String get accentCrimson => 'قرمز تند';

  @override
  String get accentOrange => 'نارنجی';

  @override
  String get accentSlate => 'خاکستری تیره';

  @override
  String get searchLanguages => 'جست‌وجوی زبان';

  @override
  String get suggestedLanguages => 'پیشنهادی';

  @override
  String get allLanguages => 'همه زبان‌ها';

  @override
  String get noLanguagesFound => 'زبانی پیدا نشد';

  @override
  String get noLanguagesFoundMessage =>
      'نام انگلیسی یا کد دوحرفی را امتحان کنید.';

  @override
  String get rightToLeft => 'راست به چپ';

  @override
  String get replayGuide => 'دیدن دوباره راهنما';

  @override
  String get replaySetup => 'اجرای دوباره راه‌اندازی';

  @override
  String get replaySetupBody =>
      'دوباره از پرسش‌های آغازین بگذرید. هیچ‌یک از آنچه ثبت کرده‌اید پاک نمی‌شود.';

  @override
  String get rateTitle => 'از RainyPenny راضی هستید؟';

  @override
  String get rateBody =>
      'مدتی است که از آن استفاده می‌کنید. امتیازدادن لحظه‌ای طول می‌کشد و به دیگران کمک می‌کند برنامه را پیدا کنند.';

  @override
  String get rateAction => 'امتیاز به برنامه';

  @override
  String get rateLater => 'شاید بعداً';

  @override
  String get rateNever => 'نه، ممنون';

  @override
  String get rateThanks => 'سپاسگزاریم';

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
