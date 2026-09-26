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
  String get appTagline => 'پس‌انداز برای روز مبادا';

  @override
  String get navHome => 'خانه';

  @override
  String get navTransactions => 'تراکنش‌ها';

  @override
  String get navAdd => 'افزودن';

  @override
  String get navReports => 'گزارش‌ها';

  @override
  String get navProfile => 'پروفایل';

  @override
  String greetingMorning(String name) {
    return 'صبح بخیر، $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'عصر بخیر، $name';
  }

  @override
  String greetingEvening(String name) {
    return 'شب بخیر، $name';
  }

  @override
  String get greetingSubtitle => 'نمای کلی وضعیت مالی شما';

  @override
  String get totalBalance => 'موجودی کل';

  @override
  String get vsLastPeriod => 'نسبت به دوره قبل';

  @override
  String get income => 'درآمد';

  @override
  String get expenses => 'هزینه‌ها';

  @override
  String get netBalance => 'موجودی خالص';

  @override
  String get lastThirtyDays => '۳۰ روز گذشته';

  @override
  String get quickActions => 'دسترسی سریع';

  @override
  String get addIncome => 'ثبت درآمد';

  @override
  String get addExpense => 'ثبت هزینه';

  @override
  String get spendingOverview => 'نمای کلی مخارج';

  @override
  String get recentTransactions => 'تراکنش‌های اخیر';

  @override
  String get seeAll => 'مشاهده همه';

  @override
  String get viewAll => 'نمایش همه';

  @override
  String get budgetProgress => 'وضعیت بودجه';

  @override
  String get savingsGoals => 'اهداف پس‌انداز';

  @override
  String get financialInsight => 'بینش مالی';

  @override
  String get financialHealth => 'سلامت مالی';

  @override
  String ofTotal(String total) {
    return 'از $total';
  }

  @override
  String get searchTransactions => 'جستجوی تراکنش‌ها';

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
  String get noTransactionsTitle => 'تراکندی یافت نشد';

  @override
  String get noTransactionsBody =>
      'برای دیدن فعالیت‌های بیشتر، عبارت جستجو یا فیلتر دیگری را امتحان کنید.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تراکنش',
      one: '۱ تراکنش',
      zero: 'بدون تراکنش',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'افزودن تراکنش';

  @override
  String get amount => 'مبلغ';

  @override
  String get category => 'دسته‌بندی';

  @override
  String get date => 'تاریخ';

  @override
  String get note => 'یادداشت';

  @override
  String get noteHint => 'یادداشت اختیاری';

  @override
  String get saveIncome => 'ذخیره درآمد';

  @override
  String get saveExpense => 'ذخیره هزینه';

  @override
  String get selectCategory => 'انتخاب دسته‌بندی';

  @override
  String get transactionSaved => 'تراکنش ذخیره شد';

  @override
  String get amountRequired => 'مبلغی بیشتر از صفر وارد کنید';

  @override
  String get titleRequired => 'برای این تراکنش نامی تعیین کنید';

  @override
  String get descriptionLabel => 'توضیحات';

  @override
  String get descriptionHint => 'مثلاً خرید خواربار';

  @override
  String get budget => 'بودجه';

  @override
  String get budgets => 'بودجه‌ها';

  @override
  String get totalBudget => 'کل بودجه';

  @override
  String get spent => 'خرج‌شده';

  @override
  String get remaining => 'باقیمانده';

  @override
  String budgetUsed(int percent) {
    return '$percent٪ مصرف شده';
  }

  @override
  String get onTrack => 'طبق برنامه';

  @override
  String get approachingLimit => 'نزدیک به سقف بودجه';

  @override
  String get overBudget => 'فراتر از بودجه';

  @override
  String get savings => 'پس‌انداز';

  @override
  String get yourGoals => 'اهداف شما';

  @override
  String get saved => 'پس‌انداز شده';

  @override
  String get target => 'هدف';

  @override
  String get monthlyContribution => 'ماهانه';

  @override
  String get addFunds => 'افزایش موجودی';

  @override
  String get goalComplete => 'هدف محقق شد';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ماه مانده',
      one: '۱ ماه مانده',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'وام‌ها و بدهی‌ها';

  @override
  String get totalOutstanding => 'کل بدهی باقیمانده';

  @override
  String get monthlyPayment => 'قسط ماهانه';

  @override
  String get nextPayment => 'پرداخت بعدی';

  @override
  String paidOff(int percent) {
    return '$percent٪ پرداخت شده';
  }

  @override
  String get interestRate => 'نرخ سود';

  @override
  String get upcomingPayments => 'پرداخت‌های پیش‌رو';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'سررسید تا $count روز دیگر',
      one: 'سررسید فردا',
      zero: 'سررسید امروز',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'معوقه';

  @override
  String get reports => 'گزارش‌ها';

  @override
  String get week => 'هفته';

  @override
  String get month => 'ماه';

  @override
  String get quarter => 'فصل';

  @override
  String get incomeVsExpenses => 'درآمد در برابر هزینه';

  @override
  String get spendingByCategory => 'هزینه‌ها بر اساس دسته‌بندی';

  @override
  String get budgetPerformance => 'عملکرد بودجه';

  @override
  String get insights => 'بینش‌ها';

  @override
  String get savingsRate => 'نرخ پس‌انداز';

  @override
  String get profile => 'پروفایل';

  @override
  String get account => 'حساب کاربری';

  @override
  String get personalInformation => 'اطلاعات فردی';

  @override
  String get changePassword => 'تغییر رمز عبور';

  @override
  String get notifications => 'اعلان‌ها';

  @override
  String get preferences => 'تنظیمات ترجیحی';

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
  String get termsAndConditions => 'شرایط و قوانین';

  @override
  String get logOut => 'خروج از حساب';

  @override
  String memberSince(String date) {
    return 'عضویت از $date';
  }

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تاریک';

  @override
  String get settings => 'تنظیمات';

  @override
  String get noNotificationsTitle => 'اعلان جدیدی وجود ندارد';

  @override
  String get noNotificationsBody =>
      'بینش‌ها و یادآورهای جدید در اینجا نمایش داده می‌شوند.';

  @override
  String get cancel => 'انصراف';

  @override
  String get save => 'ذخیره';

  @override
  String get done => 'انجام شد';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get close => 'بستن';

  @override
  String get somethingWentWrong => 'مشکلی پیش آمد';

  @override
  String get comingSoon => 'به‌زودی در نسخه کامل';

  @override
  String get edit => 'ویرایش';

  @override
  String get delete => 'حذف';

  @override
  String get undo => 'واگرد';

  @override
  String get add => 'افزودن';

  @override
  String get create => 'ایجاد';

  @override
  String get nameRequired => 'نام خود را وارد کنید';

  @override
  String get amountAboveZero => 'مبلغی بیشتر از صفر وارد کنید';

  @override
  String get editTransaction => 'ویرایش تراکنش';

  @override
  String get deleteTransaction => 'حذف تراکنش؟';

  @override
  String deleteTransactionBody(String title) {
    return 'تراکنش «$title» از دفتر حساب شما حذف خواهد شد.';
  }

  @override
  String get transactionDeleted => 'تراکنش حذف شد';

  @override
  String get transactionUpdated => 'تراکنش به‌روزرسانی شد';

  @override
  String get newBudget => 'بودجه جدید';

  @override
  String get editBudget => 'ویرایش بودجه';

  @override
  String get budgetLimit => 'سقف ماهانه';

  @override
  String get deleteBudget => 'حذف بودجه؟';

  @override
  String deleteBudgetBody(String category) {
    return 'بودجه دسته‌بندی «$category» حذف خواهد شد. تراکنش‌های شما تغییری نمی‌کنند.';
  }

  @override
  String get budgetSaved => 'بودجه ذخیره شد';

  @override
  String get budgetDeleted => 'بودجه حذف شد';

  @override
  String get allCategoriesBudgeted => 'تمام دسته‌بندی‌ها دارای بودجه هستند';

  @override
  String get noBudgetsTitle => 'هنوز بودجه‌ای تعریف نشده است';

  @override
  String get noBudgetsBody =>
      'برای شروع ردیابی، برای یکی از دسته‌بندی‌ها سقف ماهانه تعیین کنید.';

  @override
  String get newGoal => 'هدف جدید';

  @override
  String get editGoal => 'ویرایش هدف';

  @override
  String get goalName => 'نام هدف';

  @override
  String get goalNameHint => 'مثلاً صندوق اضطراری';

  @override
  String get targetAmount => 'مبلغ هدف';

  @override
  String get alreadySaved => 'پس‌انداز شده تاکنون';

  @override
  String get deleteGoal => 'حذف هدف؟';

  @override
  String deleteGoalBody(String name) {
    return 'هدف «$name» و پیشرفت آن حذف خواهد شد.';
  }

  @override
  String get goalSaved => 'هدف ذخیره شد';

  @override
  String get goalDeleted => 'هدف حذف شد';

  @override
  String get noGoalsTitle => 'هنوز هدف پس‌اندازی ثبت نشده است';

  @override
  String get noGoalsBody =>
      'مبلغ هدفی تعیین کنید تا RainyPenny مسیر پیشرفت شما را دنبال کند.';

  @override
  String get fundsAdded => 'مبلغ افزوده شد';

  @override
  String get newDebt => 'وام یا کارت اعتباری جدید';

  @override
  String get editDebt => 'ویرایش وام';

  @override
  String get debtName => 'نام';

  @override
  String get debtNameHint => 'مثلاً وام خودرو';

  @override
  String get lender => 'وام‌دهنده';

  @override
  String get lenderHint => 'مثلاً بانک ملی';

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
  String get deleteDebt => 'حذف این بدهی؟';

  @override
  String deleteDebtBody(String name) {
    return '«$name» از فهرست بدهی‌های شما حذف خواهد شد.';
  }

  @override
  String get debtSaved => 'ذخیره شد';

  @override
  String get debtDeleted => 'حذف شد';

  @override
  String get noDebtsTitle => 'بدهی ثبت‌شده‌ای وجود ندارد';

  @override
  String get noDebtsBody =>
      'برای نظارت بر بازپرداخت‌ها، یک وام یا کارت اعتباری اضافه کنید.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'تجاوز از بودجه $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'در این دوره، مخارج شما $amount بیشتر از بودجه تعیین‌شده برای $subject بوده است.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject نزدیک به سقف بودجه است';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$percent٪ از بودجه $subject مصرف شده و $amount باقیمانده است.';
  }

  @override
  String get insightOverIncomeTitle => 'مخارج بیشتر از درآمد است';

  @override
  String get insightOverIncomeBody =>
      'در این دوره بیش از درآمدتان خرج کرده‌اید. بزرگ‌ترین دسته‌های هزینه‌ای خود را برای تعادل مجدد بررسی کنید.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'افزایش هزینه‌های $subject';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'مخارج شما در بخش $subject نسبت به دوره قبل $percent٪ افزایش یافته است.';
  }

  @override
  String get insightTrendDownTitle => 'روند مخارج رو به کاهش است';

  @override
  String insightTrendDownBody(int percent) {
    return 'مجموع مخارج شما نسبت به دوره قبل $percent٪ کمتر شده است.';
  }

  @override
  String get insightTrendUpTitle => 'روند مخارج رو به افزایش است';

  @override
  String insightTrendUpBody(int percent) {
    return 'مجموع مخارج شما نسبت به دوره قبل $percent٪ بیشتر شده است.';
  }

  @override
  String get insightSavingsStrongTitle => 'پس‌انداز عالی در این دوره';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'شما $percent٪ از درآمد خود را حفظ کرده‌اید — که بالاتر از هدف $target٪ است.';
  }

  @override
  String get insightSavingsLowTitle => 'نرخ پس‌انداز کمتر از حد انتظار است';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'در این دوره $percent٪ از درآمدتان را پس‌انداز کرده‌اید. تلاش کنید به هدف $target٪ برسید.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'هدف «$subject» در آستانه تکمیل است';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'تنها $amount تا رسیدن به هدف $subject باقی مانده است.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'در مسیر دستیابی به $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ماه',
      one: '۱ ماه',
    );
    return 'با پرداخت ماهانه $amount، ظرف مدت $_temp0 به این هدف خواهید رسید.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'سررسید پرداخت $subject گذشته است';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز',
      one: '۱ روز',
    );
    return 'پرداخت مبلغ $amount مربوط به $subject به مدت $_temp0 به تعویق افتاده است.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'سررسید قسط $subject نزدیک است';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز دیگر',
      one: 'فردا',
      zero: 'امروز',
    );
    return 'مبلغ $amount در موعد $_temp0 سررسید می‌شود.';
  }

  @override
  String get signIn => 'ورود';

  @override
  String get signUp => 'ایجاد حساب کاربری';

  @override
  String get signInSubtitle => 'خوش آمدید. حساب‌های شما آماده بررسی است.';

  @override
  String get signUpSubtitle => 'با چند مرحله ساده حساب شما راه‌اندازی می‌شود.';

  @override
  String get emailLabel => 'ایمیل';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'رمز عبور';

  @override
  String get passwordHint => 'حداقل ۸ نویسه';

  @override
  String get fullNameLabel => 'نام و نام خانوادگی';

  @override
  String get fullNameHint => 'علی محمدی';

  @override
  String get forgotPassword => 'رمز عبور را فراموش کرده‌اید؟';

  @override
  String get resetSent => 'پیوند بازنشانی رمز عبور به ایمیل شما ارسال شد';

  @override
  String get noAccountYet => 'حساب کاربری ندارید؟';

  @override
  String get haveAccount => 'از قبل حساب کاربری دارید؟';

  @override
  String get emailInvalid => 'یک ایمیل معتبر وارد کنید';

  @override
  String get passwordTooShort => 'حداقل از ۸ نویسه استفاده کنید';

  @override
  String get signOutConfirm => 'خروج از حساب؟';

  @override
  String get signOutBody =>
      'برای مشاهده وضعیت مالی، باید دوباره وارد حساب شوید.';

  @override
  String get dataSource => 'منبع داده';

  @override
  String get insightWeeklySummaryTitle => 'مرور هفتگی شما';

  @override
  String get insightWeeklySummaryBody =>
      'ببینید پول شما در این هفته کجا صرف شده و وضعیت بودجه‌های شما چگونه است.';

  @override
  String get notificationSettings => 'تنظیمات اعلان‌ها';

  @override
  String get alertsSection => 'هشدارها';

  @override
  String get budgetAlerts => 'هشدارهای بودجه';

  @override
  String get budgetAlertsBody =>
      'هنگامی که یک بودجه نزدیک به سقف است یا از آن عبور می‌کند';

  @override
  String get paymentReminders => 'یادآورهای پرداخت';

  @override
  String get paymentRemindersBody => 'چند روز قبل از موعد سررسید اقساط';

  @override
  String get savingsUpdates => 'گزارش وضعیت پس‌انداز';

  @override
  String get savingsUpdatesBody => 'پیشرفت به سمت اهداف شما';

  @override
  String get weeklySummaryLabel => 'خلاصه هفتگی';

  @override
  String get weeklySummaryBody => 'گزارشی از عملکرد مالی هفته گذشته';

  @override
  String get scheduleSection => 'زمان‌بندی';

  @override
  String get reminderTime => 'زمان یادآوری';

  @override
  String get quietHours => 'ساعات سکوت';

  @override
  String quietHoursValue(String start, String end) {
    return '$start تا $end';
  }

  @override
  String get summaryDay => 'روز دریافت خلاصه';

  @override
  String get permissionRequired => 'اعلان‌ها غیرفعال هستند';

  @override
  String get permissionRequiredBody =>
      'دسترسی اعلان‌ها را فعال کنید تا RainyPenny قبل از خارج شدن بودجه یا پرداخت‌ها از کنترل، به شما هشدار دهد.';

  @override
  String get allowNotifications => 'فعال‌سازی اعلان‌ها';

  @override
  String get permissionDenied =>
      'اعلان‌ها مسدود شده‌اند. می‌توانید آن‌ها را از تنظیمات دستگاه فعال کنید.';

  @override
  String get upcomingAlerts => 'برنامه‌ریزی‌شده';

  @override
  String get noScheduledAlerts => 'در حال حاضر رویداد برنامه‌ریزی‌شده‌ای نیست';

  @override
  String get noScheduledAlertsBody =>
      'با نزدیک شدن بودجه‌ها و اقساط به سررسید، هشدارها در اینجا نمایان می‌شوند.';

  @override
  String scheduledFor(String date) {
    return 'برنامه‌ریزی‌شده برای $date';
  }

  @override
  String get everyWeek => 'هر هفته';

  @override
  String get allNotificationsOff => 'تمام اعلان‌ها خاموش هستند';

  @override
  String get needsAttention => 'نیاز به توجه';

  @override
  String get quickActionsTitle => 'چه کاری می‌خواهید انجام دهید؟';

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
  String get longPressHint => 'نکته: برای ثبت سریع هزینه، دکمه + را نگه دارید';

  @override
  String get searchCurrencies => 'جستجوی ارزها';

  @override
  String get noCurrenciesFound => 'ارزی یافت نشد';

  @override
  String get noCurrenciesFoundMessage => 'کد، نماد یا نام دیگری را جستجو کنید.';

  @override
  String get popularCurrencies => 'محبوب';

  @override
  String get allCurrencies => 'همه ارزها';

  @override
  String get totalLoanAmount => 'مبلغ کل وام';

  @override
  String get installmentAmount => 'مبلغ قسط';

  @override
  String get numberOfInstallments => 'تعداد اقساط';

  @override
  String get paidInstallments => 'اقساط پرداخت‌شده';

  @override
  String get remainingInstallments => 'اقساط باقیمانده';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid از $total پرداخت شده';
  }

  @override
  String get finalPayment => 'آخرین قسط';

  @override
  String get paymentDueDate => 'تاریخ سررسید پرداخت';

  @override
  String dueOnDayOfMonth(int day) {
    return 'روز $day هر ماه';
  }

  @override
  String get loanStatus => 'وضعیت';

  @override
  String get statusActive => 'جاری';

  @override
  String get statusDueSoon => 'سررسید نزدیک';

  @override
  String get statusOverdue => 'معوقه';

  @override
  String get statusCompleted => 'تسویه‌شده';

  @override
  String get repaymentProgress => 'پیشرفت بازپرداخت';

  @override
  String get byAmount => 'بر اساس مبلغ';

  @override
  String get byInstallments => 'بر اساس تعداد اقساط';

  @override
  String get startDate => 'تاریخ شروع';

  @override
  String get openEnded => 'بدون سررسید مشخص';

  @override
  String get loanDetails => 'جزئیات وام';

  @override
  String get notSet => 'تنظیم‌نشده';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'امروز سررسید قسط $subject است';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'قسط $amount شما امروز سررسید می‌شود. با یک لمس آن را به‌موقع پرداخت کنید.';
  }

  @override
  String get remindMorningTitle => 'صبح بخیر ☀️';

  @override
  String get remindMorningBody =>
      'روز خود را با مدیریت دقیق مالی آغاز کنید. آیا هزینه‌ای از دیروز مانده که ثبت نشده باشد؟';

  @override
  String get remindNoonTitle => 'بررسی نیمروزی';

  @override
  String get remindNoonBody =>
      'ناهار، قهوه یا کرایه رفت‌وآمد؟ در چند ثانیه آن را ثبت کنید.';

  @override
  String get remindAfternoonTitle => 'مرور سریع';

  @override
  String get remindAfternoonBody =>
      'مخارجی را که تا الان داشته‌اید ثبت کنید تا حساب امروز دقیق بماند.';

  @override
  String get remindEveningTitle => 'پایان روز';

  @override
  String get remindEveningBody =>
      'با دو دقیقه وقت، گزارش مالی امروزتان کامل می‌شود.';

  @override
  String get happyWeekendTitle => 'آخر هفته خوش! 🎉';

  @override
  String get happyWeekendBody =>
      'از تعطیلات لذت ببرید — و حواستان به هزینه‌های آخر هفته هم باشد.';

  @override
  String get dailyReminders => 'یادآورهای روزانه مخارج';

  @override
  String get dailyRemindersBody =>
      'پیام‌های کوتاه برای به‌روز نگه‌داشتن حساب هزینه‌ها';

  @override
  String get weekendGreeting => 'پیام تبریک آخر هفته';

  @override
  String get weekendGreetingBody => 'پیام آغاز تعطیلات آخر هفته';

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
  String get generatedOn => 'تاریخ گزارش';

  @override
  String get reportDisclaimer =>
      'تولیدشده توسط RainyPenny بر اساس سوابق حساب شما.';

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
  String get totalExpenses => 'کل هزینه‌ها';

  @override
  String get totalSaved => 'کل پس‌انداز';

  @override
  String get shareOfTotal => 'سهم از کل';

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
      one: 'و ۱ تراکنش دیگر',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'خروجی PDF';

  @override
  String get sharePdf => 'اشتراک‌گذاری گزارش';

  @override
  String get preparingReport => 'در حال آماده‌سازی گزارش…';

  @override
  String get reportReady => 'گزارش آماده است';

  @override
  String get reportFailed => 'خطا در ایجاد گزارش';

  @override
  String get categories => 'دسته‌بندی‌ها';

  @override
  String get categoriesIntro =>
      'دسته‌بندی‌های اختصاصی خود را بسازید تا درآمدها و هزینه‌ها را مطابق سلیقه خود ثبت کنید.';

  @override
  String get expenseCategories => 'دسته‌بندی‌های هزینه';

  @override
  String get incomeCategories => 'دسته‌بندی‌های درآمد';

  @override
  String get newCategory => 'دسته‌بندی جدید';

  @override
  String get editCategory => 'ویرایش دسته‌بندی';

  @override
  String get categoryName => 'نام';

  @override
  String get categoryNameHint => 'مثلاً حیوانات خانگی';

  @override
  String get icon => 'آیکون';

  @override
  String get categorySaved => 'دسته‌بندی ذخیره شد';

  @override
  String get categoryDeleted => 'دسته‌بندی حذف شد';

  @override
  String get deleteCategory => 'حذف این دسته‌بندی؟';

  @override
  String deleteCategoryBody(String name) {
    return 'دسته‌بندی «$name» از لیست دسته‌های شما حذف خواهد شد.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رکورد هنوز از این دسته‌بندی استفاده می‌کنند',
      one: '۱ رکورد هنوز از این دسته‌بندی استفاده می‌کند',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'هنوز موردی اضافه نشده است.';

  @override
  String get builtIn => 'پیش‌فرض';

  @override
  String get manageCategories => 'مدیریت دسته‌بندی‌ها';

  @override
  String get expense => 'هزینه';

  @override
  String get languageNote =>
      'زبان‌های فارسی، عربی، اردو و عبری تمام محیط برنامه از جمله نمودارها و گزارش‌های PDF را به حالت راست‌به‌چپ تغییر می‌دهند.';

  @override
  String get next => 'بعدی';

  @override
  String get back => 'قبلی';

  @override
  String get skip => 'رد شدن';

  @override
  String get continueLabel => 'ادامه';

  @override
  String get selected => 'انتخاب‌شده';

  @override
  String get passwordRequired => 'رمز عبور خود را وارد کنید';

  @override
  String get newPasswordLabel => 'رمز عبور جدید';

  @override
  String get confirmPasswordLabel => 'تکرار رمز عبور';

  @override
  String get passwordsDoNotMatch => 'هر دو رمز عبور باید یکسان باشند';

  @override
  String get showPassword => 'نمایش رمز عبور';

  @override
  String get hidePassword => 'مخفی کردن رمز عبور';

  @override
  String get savePassword => 'ذخیره رمز عبور';

  @override
  String get backToSignIn => 'بازگشت به صفحه ورود';

  @override
  String get alreadyHaveAccount => 'قبلاً حساب کاربری ساخته‌ام';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get acceptTerms =>
      'شرایط استفاده از خدمات و سیاست حفظ حریم خصوصی را می‌پذیرم';

  @override
  String get acceptTermsRequired => 'برای ادامه لطفاً شرایط را بپذیرید';

  @override
  String get passwordStrengthTooShort => 'بسیار کوتاه';

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
      'یک عبارت طولانی و قابل‌به‌خاطرسپاری بسیار بهتر از یک رمز کوتاه با نمادهای پیچیده است. از رمزی که در جای دیگری استفاده کرده‌اید پرهیز کنید.';

  @override
  String get authInvalidCredentials => 'ایمیل یا رمز عبور اشتباه است';

  @override
  String get authEmailNotConfirmed =>
      'لطفاً قبل از ورود، ایمیل خود را تأیید کنید';

  @override
  String get authEmailAlreadyRegistered =>
      'حسابی با این ایمیل از قبل وجود دارد';

  @override
  String get authWeakPassword => 'رمز عبور طولانی‌تری انتخاب کنید';

  @override
  String get authRateLimited =>
      'تلاش‌های بیش از حد مجاز. لطفاً چند دقیقه بعد امتحان کنید';

  @override
  String get authNetworkError =>
      'عدم برقراری ارتباط. اتصال اینترنت خود را بررسی کنید';

  @override
  String get authGenericError => 'خطایی رخ داد. لطفاً دوباره تلاش کنید';

  @override
  String get confirmEmailTitle => 'ایمیل خود را بررسی کنید';

  @override
  String confirmEmailBody(String email) {
    return 'پیوند تأیید به $email ارسال شد. آن را باز کنید تا حساب شما تکمیل شود.';
  }

  @override
  String get resendConfirmation => 'ارسال مجدد ایمیل تأیید';

  @override
  String get confirmationResent => 'ایمیل تأیید مجدداً ارسال شد';

  @override
  String get forgotPasswordTitle => 'بازیابی رمز عبور';

  @override
  String get forgotPasswordSubtitle =>
      'ایمیلی را که با آن ثبت‌نام کرده‌اید وارد کنید تا پیوند تغییر رمز عبور را بفرستیم.';

  @override
  String get sendResetLink => 'ارسال پیوند بازیابی';

  @override
  String get resetLinkSentTitle => 'پیوند بازنشانی ارسال شد';

  @override
  String resetLinkSentBody(String email) {
    return 'اگر حسابی با ایمیل $email وجود داشته باشد، پیوند بازیابی برای آن ارسال شده است.';
  }

  @override
  String get resetLinkSentHint =>
      'این پیوند تا یک ساعت معتبر است. در صورت دریافت نشدن، پوشه هرزنامه (Spam) را بررسی کنید.';

  @override
  String get tryAnotherEmail => 'استفاده از ایمیل دیگر';

  @override
  String get resetPasswordTitle => 'انتخاب رمز عبور جدید';

  @override
  String get resetPasswordSubtitle =>
      'رمزی را انتخاب کنید که قبلاً برای این حساب استفاده نکرده‌اید.';

  @override
  String get passwordChangedTitle => 'رمز عبور به‌روز شد';

  @override
  String get passwordChangedBody =>
      'رمز عبور جدید با موفقیت ذخیره شد. وارد حساب شدید و آماده استفاده هستید.';

  @override
  String get demoModeHint => 'نسخه نمایشی — بدون نیاز به حساب کاربری';

  @override
  String get demoModeFill => 'تکمیل آزمایشی';

  @override
  String get welcomeTrackTitle => 'مسیر حرکت پول‌هایتان را ببینید';

  @override
  String get welcomeTrackBody =>
      'درآمدها و مخارج را ثبت کنید. RainyPenny آن‌ها را به تصویری واضح و خوانا تبدیل می‌کند.';

  @override
  String get welcomeBudgetTitle => 'سقف‌های ماندگار تعیین کنید';

  @override
  String get welcomeBudgetBody =>
      'برای هر بخش از هزینه‌هایتان سقفی ماهانه تعیین کنید و قبل از رد شدن از آن مطلع شوید، نه بعد از آن.';

  @override
  String get welcomeGoalsTitle => 'برای آنچه ارزش دارد پس‌انداز کنید';

  @override
  String get welcomeGoalsBody =>
      'هدفی نام‌گذاری کنید، مبلغش را مشخص کنید و رشد آن را ببینید. وقتی مسیر را ببینید، پس‌انداز آسان‌تر می‌شود.';

  @override
  String get welcomePrivacyTitle => 'پول و اطلاعات شما، متعلق به شماست';

  @override
  String get welcomePrivacyBody =>
      'ارقام و داده‌ها تنها متعلق به شما هستند. هیچ داده‌ای فروخته نمی‌شود و با کسی به اشتراک گذاشته نخواهد شد.';

  @override
  String stepOf(int step, int total) {
    return 'مرحله $step از $total';
  }

  @override
  String get onboardingNameTitle => 'شما را چه بنامیم؟';

  @override
  String get onboardingNameBody =>
      'ما از آن تنها برای خوش‌آمدگویی به شما استفاده می‌کنیم و جای دیگری استفاده نمی‌شود.';

  @override
  String get onboardingNameHint =>
      'نام کوچک کافیست. بعداً می‌توانید آن را تغییر دهید.';

  @override
  String get onboardingCurrencyTitle => 'واحد پول شما چیست؟';

  @override
  String get onboardingCurrencyBody =>
      'تمام مبالغ برنامه با این واحد پولی نشان داده می‌شوند. این انتخاب باعث تبدیل مبالغ نمی‌شود.';

  @override
  String get onboardingCurrencySearch => 'جستجوی همه ارزها';

  @override
  String get onboardingAppearanceTitle => 'ظاهر برنامه را شخصی کنید';

  @override
  String get onboardingAppearanceBody =>
      'یک ظاهر را انتخاب کنید. با هر انتخاب محیط برنامه عوض می‌شود و هر زمان می‌توانید آن را تغییر دهید.';

  @override
  String get onboardingNotificationsTitle => 'همیشه در جریان باشید';

  @override
  String get onboardingNotificationsBody =>
      'یک یادآوری آرام و به‌موقع چیزی است که این کار را به یک عادت ماندگار تبدیل می‌کند.';

  @override
  String get onboardingNotifyReminders =>
      'یادآوری ملایم برای ثبت هزینه‌های روزمره';

  @override
  String get onboardingNotifyBudget => 'هشدار زودهنگام قبل از اتمام بودجه';

  @override
  String get onboardingNotifySummary => 'گزارش هفتگی از مسیر هزینه‌ها';

  @override
  String get onboardingNotifyEnable => 'فعال‌سازی اعلان‌ها';

  @override
  String get onboardingNotifyDone => 'تنظیمات اعلان‌ها ذخیره شد';

  @override
  String get onboardingNotifyLater =>
      'هر زمان که مایل باشید می‌توانید این موارد را در تنظیمات تغییر دهید.';

  @override
  String get onboardingReadyTitle => 'همه چیز آماده است';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'همه چیز آماده است، $name';
  }

  @override
  String get onboardingReadyBody =>
      'راه‌اندازی به پایان رسید. مایلید یک تور سریع از نحوه کار برنامه داشته باشیم؟';

  @override
  String get onboardingTakeTour => 'راهنمایی‌ام کن';

  @override
  String get onboardingGoToApp => 'رفتن به محیط برنامه';

  @override
  String get onboardingTourLater =>
      'الان نه؟ راهنما همیشه در بخش تنظیمات در دسترس شماست.';

  @override
  String get beginnersGuide => 'راهنمای مبتدیان';

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
  String get guideDashboardTitle => 'پیشخوان شما';

  @override
  String get guideDashboardBody =>
      'همه چیز از اینجا شروع می‌شود. کارت بالای صفحه مانده حساب شماست؛ زیر آن ورودی و خروجی دوره و سپس هزینه‌ها، بودجه‌ها و اهداف قرار دارند.';

  @override
  String get guideDashboardTip1 =>
      'صفحه را به پایین بکشید تا همه موارد به‌یک‌باره به‌روزرسانی شوند.';

  @override
  String get guideDashboardTip2 =>
      'برای رفتن به لیست، روی کارت درآمد یا هزینه ضربه بزنید.';

  @override
  String get guideDashboardTip3 =>
      'نمودارها و بینش‌ها بلافاصله پس از ثبت هر تراکنش به‌روز می‌شوند.';

  @override
  String get guideAddTitle => 'ثبت تراکنش‌ها';

  @override
  String get guideAddBody =>
      'دکمه وسط نوار پایین شروع همه چیز است. یک منوی کاربردی باز می‌شود: هزینه، درآمد، بدهی، بودجه یا هدف پس‌انداز.';

  @override
  String get guideAddTip1 => 'برای ثبت درآمد یا هزینه دکمه مرکزی را لمس کنید.';

  @override
  String get guideAddTip2 =>
      'با نگه داشتن دکمه مستقیم به صفحه ثبت هزینه جدید می‌روید.';

  @override
  String get guideAddTip3 =>
      'همیشه یک دسته‌بندی انتخاب کنید — این کار عملکرد صحیح نمودارها و بودجه را تضمین می‌کند.';

  @override
  String get guideCategoriesTitle => 'دسته‌بندی‌ها';

  @override
  String get guideCategoriesBody =>
      'هزینه‌ها از طریق دسته‌ها گروه‌بندی می‌شوند. دسته‌های پیش‌فرض برنامه اکثر نیازها را برطرف می‌کنند و می‌توانید نام آن‌ها را تغییر دهید یا دسته جدید بسازید.';

  @override
  String get guideCategoriesTip1 =>
      'از مسیر تنظیمات > مدیریت دسته‌بندی‌ها می‌توانید دسته‌ها را تغییر دهید.';

  @override
  String get guideCategoriesTip2 =>
      'موارد بدون دسته به دسته‌بندی «سایر» منتقل می‌شوند تا گزارش‌ها شفاف بمانند.';

  @override
  String get guideBudgetTitle => 'بودجه‌ها';

  @override
  String get guideBudgetBody =>
      'بودجه سقف ماهیانه برای یک دسته مشخص است. نوار آن با خرج کردن پر شده و با نزدیک شدن به سقف رنگش عوض می‌شود تا قبل از اتمام باخبر شوید.';

  @override
  String get guideBudgetTip1 =>
      'با دو یا سه دسته شروع کنید، نه همه آن‌ها به‌طور همزمان.';

  @override
  String get guideBudgetTip2 =>
      'سقف را کمی بیشتر از هزینه معمول بگذارید، سپس آن را محدودتر کنید.';

  @override
  String get guideBudgetTip3 =>
      'هشدارهای بودجه را روشن بگذارید تا برنامه پیش از تمام شدن به شما اطلاع دهد.';

  @override
  String get guideSavingsTitle => 'اهداف پس‌انداز';

  @override
  String get guideSavingsBody =>
      'هدف را نام‌گذاری کنید، مبلغ و تاریخ را مشخص کنید و برنامه سهم ماهانه لازم برای رسیدن به آن را محاسبه می‌کند.';

  @override
  String get guideSavingsTip1 =>
      'پایبندی به هدفی مشخص بسیار آسان‌تر از نیت مبهم پس‌انداز است.';

  @override
  String get guideSavingsTip2 =>
      'دستیابی به چند هدف کوچک‌تر معمولاً موفق‌تر از یک هدف بسیار بزرگ است.';

  @override
  String get guideLoansTitle => 'بدهی‌ها و وام‌ها';

  @override
  String get guideLoansBody =>
      'بدهی، هزینه اقساط و موعد پرداخت بعدی را ثبت کنید. همه پرداخت‌ها با مبلغ باقیمانده در یک فهرست منظم گردآوری می‌شوند.';

  @override
  String get guideLoansTip1 =>
      'تاریخ سررسید را ثبت کنید تا یادآورهای پرداخت به موقع شما را مطلع کنند.';

  @override
  String get guideLoansTip2 =>
      'بدهی معوق تا زمان پرداخت، با رنگ قرمز روی پیشخوان مشخص می‌ماند.';

  @override
  String get guideReportsTitle => 'گزارش‌ها';

  @override
  String get guideReportsBody =>
      'نمای عمیق‌تر: مقایسه درآمد با هزینه، هزینه‌ها بر پایه دسته، نحوه رعایت بودجه و سهمی از درآمد که پس‌انداز کرده‌اید.';

  @override
  String get guideReportsTip1 =>
      'در بالای صفحه بین بازه‌های هفتگی، ماهانه و فصلی جابجا شوید.';

  @override
  String get guideReportsTip2 =>
      'خروجی PDF بگیرید یا آن را به اشتراک بگذارید — به زبان و جهت خوانش خودتان تولید می‌شود.';

  @override
  String get guideSettingsTitle => 'تنظیمات';

  @override
  String get guideSettingsBody =>
      'زبان، واحد پول، رنگ‌ها و هشدارها در اینجا قرار دارند و هیچ‌کدام قفل نیستند — هر زمان مایل بودید تغییرشان دهید.';

  @override
  String get guideSettingsTip1 =>
      'پشتیبانی از چهل زبان همراه با چیدمان قرینه برای زبان‌های راست‌به‌چپ.';

  @override
  String get guideSettingsTip2 =>
      'انتخاب کنید کدام هشدارها و در چه بازه زمانی به دستتان برسند.';

  @override
  String get guideSettingsTip3 =>
      'ساعات سکوت همه اعلان‌ها را تا صبح به تأخیر می‌اندازد.';

  @override
  String get guideHabitTitle => 'پایبند باشید';

  @override
  String get guideHabitBody =>
      'برنامه تنها به اندازه داده‌هایی که وارد می‌کنید مفید است. یک دقیقه در روز از یک ساعت در ماه مؤثرتر است و بعد از دو هفته اعداد پیام روشنی برایتان خواهند داشت.';

  @override
  String get guideHabitTip1 =>
      'هزینه‌ها را همان لحظه ثبت کنید، نه در انتهای هفته.';

  @override
  String get guideHabitTip2 =>
      'روزی یک بار نگاهی به پیشخوان بیندازید. ده ثانیه کافی است.';

  @override
  String get guideHabitTip3 =>
      'این راهنما در بخش تنظیمات در دسترس است — هر زمان مایل بودید برگردید.';

  @override
  String get appearance => 'ظاهر برنامه';

  @override
  String get themeCaption => 'روشن، تاریک، یا هماهنگ با تم گوشی شما.';

  @override
  String get accentColor => 'رنگ شاخص';

  @override
  String get accentColorCaption =>
      'رنگ دکمه‌ها، نشانگرها و نمودارها را مشخص می‌کند.';

  @override
  String get accentSemanticsNote =>
      'درآمد و هزینه در هر پوسته‌ای رنگ ویژه خود را حفظ می‌کنند تا با تغییر تم، مفهوم اعداد دگرگون نشود.';

  @override
  String get accentTeal => 'فیروزه‌ای';

  @override
  String get accentGreen => 'سبز';

  @override
  String get accentSky => 'آسمانی';

  @override
  String get accentBlue => 'آبی';

  @override
  String get accentIndigo => 'نیلی';

  @override
  String get accentViolet => 'بنفش';

  @override
  String get accentPink => 'صورتی';

  @override
  String get accentCrimson => 'زرشکی';

  @override
  String get accentOrange => 'نارنجی';

  @override
  String get accentSlate => 'سربی';

  @override
  String get searchLanguages => 'جستجوی زبان‌ها';

  @override
  String get suggestedLanguages => 'پیشنهادی';

  @override
  String get allLanguages => 'همه زبان‌ها';

  @override
  String get noLanguagesFound => 'زبانی یافت نشد';

  @override
  String get noLanguagesFoundMessage =>
      'نام زبان را به انگلیسی یا کد دورقمی آن را امتحان کنید.';

  @override
  String get rightToLeft => 'راست به چپ';

  @override
  String get replayGuide => 'نمایش دوباره راهنما';

  @override
  String get replaySetup => 'اجرای مجدد راه‌اندازی اولیه';

  @override
  String get replaySetupBody =>
      'پرسش‌های اولیه را دوباره پاسخ دهید. هیچ‌کدام از اطلاعات ثبت‌شده حذف نخواهند شد.';

  @override
  String get rateTitle => 'از RainyPenny راضی هستید؟';

  @override
  String get rateBody =>
      'مدتی است که از برنامه استفاده می‌کنید. ثبت یک امتیاز تنها یک لحظه زمان می‌برد و به دیگران در پیدا کردن برنامه کمک می‌کند.';

  @override
  String get rateAction => 'امتیاز دادن به برنامه';

  @override
  String get rateLater => 'شاید بعداً';

  @override
  String get rateNever => 'خیر، ممنون';

  @override
  String get rateThanks => 'با تشکر از شما';

  @override
  String get monthlySalary => 'حقوق ماهانه';

  @override
  String get remainingAmount => 'باقیمانده';

  @override
  String get carriedForward => 'انتقال از دوره قبل';

  @override
  String get carriedForwardHint => 'مانده از دوره حقوقی پیشین';

  @override
  String get totalSpending => 'مجموع هزینه‌ها';

  @override
  String get salaryCycle => 'دوره حقوق';

  @override
  String get payday => 'روز واریز حقوق';

  @override
  String get paydayDescription =>
      'روزی که حقوق دریافت می‌کنید. ماه مالی شما از این روز تا روز قبل از واریز بعدی محاسبه می‌شود.';

  @override
  String get paydayUpdated => 'روز حقوق به‌روزرسانی شد';

  @override
  String paydayDayOfMonth(int day) {
    return 'روز $day ماه';
  }

  @override
  String get paydayShortMonthNote =>
      'در ماه‌های کوتاه‌تر، دوره از آخرین روز ماه آغاز می‌شود.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز تا روز حقوق',
      one: '۱ روز تا روز حقوق',
      zero: 'آخرین روز دوره',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'روز حقوق بعدی';

  @override
  String get spentSoFar => 'خرج‌شده تا این لحظه';

  @override
  String get dailyAllowance => 'سقف مجاز مخارج روزانه';

  @override
  String get overspentNotice => 'در این دوره بیش از دریافتی‌تان خرج کرده‌اید.';

  @override
  String get backToThisMonth => 'بازگشت به ماه جاری';

  @override
  String get cycleRangeLabel => 'دوره';

  @override
  String get noSalaryRecorded => 'هنوز حقوقی ثبت نشده است';

  @override
  String get addSalaryAction => 'ثبت حقوق';

  @override
  String cycleOf(String start, String end) {
    return '$start تا $end';
  }

  @override
  String get healthExcellent => 'عالی';

  @override
  String get healthGood => 'خوب';

  @override
  String get healthFair => 'متوسط';

  @override
  String get healthNeedsWork => 'نیازمند بهبود';

  @override
  String get healthExcellentBody =>
      'پس‌انداز خوبی دارید و سقف بودجه‌ها را کاملاً رعایت می‌کنید.';

  @override
  String get healthGoodBody =>
      'مخارج شما در این دوره در مسیری مناسب و متعادل قرار دارد.';

  @override
  String get healthFairBody =>
      'چند بودجه نزدیک به سقف هستند. تغییراتی اندک کمک‌کننده خواهد بود.';

  @override
  String get healthNeedsWorkBody =>
      'مخارج فراتر از برنامه پیش می‌رود. از بررسی بزرگ‌ترین دسته‌بندی هزینه‌ای شروع کنید.';

  @override
  String get factorSavingsRate => 'نرخ پس‌انداز';

  @override
  String get factorBudgetControl => 'کنترل بودجه';

  @override
  String get factorDebtLoad => 'بار بدهی‌ها';

  @override
  String get factorSpendingTrend => 'روند مخارج';

  @override
  String factorKept(String percent) {
    return '$percent٪ ذخیره‌شده';
  }

  @override
  String factorUsed(String percent) {
    return '$percent٪ مصرف‌شده';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent٪ از درآمد';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent٪ افزایش';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent٪ کاهش';
  }

  @override
  String get howScoreWorks => 'نحوه محاسبه این امتیاز';

  @override
  String get healthScoreExplainer =>
      'امتیاز شما ترکیبی از چهار عامل است: چه میزان از درآمدتان را حفظ می‌کنید، چقدر به بودجه پایبندید، چه درصدی از درآمد صرف بدهی می‌شود و آیا هزینه‌هایتان روندی افزایشی دارند یا کاهشی.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent٪ از امتیاز کل';
  }

  @override
  String get viewHealthDetails => 'مشاهده جزئیات';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get profileUpdated => 'پروفایل به‌روزرسانی شد';

  @override
  String get changePhoto => 'تغییر تصویر';

  @override
  String get removePhoto => 'حذف تصویر';

  @override
  String get personalInformationIntro =>
      'نام و تصویر شما در بخش‌های مختلف برنامه نمایش داده می‌شود. ایمیل شما همان نشانی ورود به حساب است.';

  @override
  String get emailNotEditable =>
      'برای تغییر نشانی ایمیل ورود، با پشتیبانی تماس بگیرید.';

  @override
  String get pressBackAgainToExit => 'برای خروج، دوباره دکمه بازگشت را بزنید';

  @override
  String get categoryHousing => 'مسکن';

  @override
  String get categoryFood => 'خوراک و رستوران';

  @override
  String get categoryTransport => 'حمل و نقل';

  @override
  String get categoryShopping => 'خرید';

  @override
  String get categoryBills => 'قبوض و خدمات';

  @override
  String get categoryEntertainment => 'سرگرمی';

  @override
  String get categoryHealth => 'سلامت و ورزش';

  @override
  String get categoryEducation => 'آموزش';

  @override
  String get categoryTravel => 'سفر';

  @override
  String get categorySalary => 'حقوق';

  @override
  String get categoryFreelance => 'دورکاری و فریلنسری';

  @override
  String get categoryInvestments => 'سرمایه‌گذاری';

  @override
  String get categoryGift => 'هدیه';

  @override
  String get categoryOther => 'سایر';

  @override
  String get categoryGroceries => 'خواربار';

  @override
  String get categoryDining => 'رستوران';

  @override
  String get categoryCoffee => 'کافه';

  @override
  String get categoryUtilities => 'آب، برق و گاز';

  @override
  String get categoryInternet => 'اینترنت';

  @override
  String get categoryPhone => 'تلفن';

  @override
  String get categoryInsurance => 'بیمه';

  @override
  String get categorySubscriptions => 'اشتراک‌ها';

  @override
  String get categoryPersonalCare => 'مراقبت فردی';

  @override
  String get categoryClothing => 'پوشاک';

  @override
  String get categoryElectronics => 'لوازم الکترونیکی';

  @override
  String get categoryHomeSupplies => 'وسایل خانه';

  @override
  String get categoryPets => 'حیوانات خانگی';

  @override
  String get categoryChildcare => 'مراقبت از کودک';

  @override
  String get categoryFamily => 'خانواده';

  @override
  String get categoryFitness => 'تناسب اندام';

  @override
  String get categorySports => 'ورزش';

  @override
  String get categoryMedicine => 'دارو';

  @override
  String get categoryMedical => 'خدمات درمانی';

  @override
  String get categoryCharity => 'خیریه';

  @override
  String get categoryTaxes => 'مالیات';

  @override
  String get categoryFees => 'کارمزدها';

  @override
  String get categoryDebt => 'بدهی';

  @override
  String get categorySavings => 'پس‌انداز';

  @override
  String get categoryRepairs => 'تعمیرات';

  @override
  String get categoryCarMaintenance => 'نگهداری خودرو';

  @override
  String get categoryFuel => 'سوخت';

  @override
  String get categoryParking => 'پارکینگ';

  @override
  String get categoryPublicTransport => 'حمل‌ونقل عمومی';

  @override
  String get categoryRent => 'اجاره';

  @override
  String get categoryMortgage => 'وام مسکن';

  @override
  String get categoryBonus => 'پاداش';

  @override
  String get categoryCommission => 'پورسانت';

  @override
  String get categoryPension => 'مستمری';

  @override
  String get categoryInterest => 'سود بانکی';

  @override
  String get categoryDividends => 'سود سهام';

  @override
  String get categoryCashback => 'بازگشت وجه';

  @override
  String get categoryRefund => 'استرداد وجه';

  @override
  String get categoryRentalIncome => 'درآمد اجاره';

  @override
  String get addCategory => 'دسته‌بندی جدید';

  @override
  String get filterByCategory => 'فیلتر بر اساس دسته‌بندی';

  @override
  String get allCategories => 'همه دسته‌بندی‌ها';

  @override
  String get clearFilters => 'پاک کردن فیلترها';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'کل دوره';

  @override
  String get customRange => 'سفارشی';

  @override
  String get selectDateRange => 'انتخاب بازه زمانی';

  @override
  String rangeApplied(String start, String end) {
    return 'نمایش بازه $start تا $end';
  }

  @override
  String get loans => 'وام‌ها';

  @override
  String get debts => 'بدهی‌ها';

  @override
  String get noLoansTitle => 'وامی وجود ندارد';

  @override
  String get noLoansBody => 'در حال حاضر هیچ وام فعالی ندارید.';

  @override
  String get emptyHealthTitle => 'هنوز امتیاز مالی ثبت نشده است';

  @override
  String get emptyHealthDescription =>
      'برای محاسبه دقیق امتیاز سلامت مالی، به مقداری فعالیت و ثبت تراکنش نیاز داریم.';

  @override
  String get emptyHealthAddTransactions =>
      'تراکنش‌های درآمد یا هزینه را وارد کنید';

  @override
  String get emptyHealthSetBudgets => 'بودجه‌های ماهانه خود را مشخص کنید';

  @override
  String get emptyHealthTrackLoans =>
      'وام‌ها یا بدهی‌ها را پیگیری کنید (اختیاری)';

  @override
  String get emptyHealthCardSubtitle =>
      'برای محاسبه امتیاز و دریافت تحلیل‌ها، تراکنش‌ها را ثبت کنید.';

  @override
  String get smartBudgetSplit => 'تقسیم هوشمند بودجه';

  @override
  String get smartBudgetSplitSubtitle =>
      'حقوق ماهانه خود را وارد کنید تا سقف‌های پیشنهادی محاسبه شوند';

  @override
  String get monthlyNetSalary => 'حقوق خالص ماهانه';

  @override
  String get categoryAllocations => 'تخصیص سهم دسته‌بندی‌ها';

  @override
  String totalBudgeted(String amount) {
    return 'مجموع: $amount';
  }

  @override
  String get applyAllBudgets => 'اعمال تمام بودجه‌ها';

  @override
  String get applyingBudgets => 'در حال اعمال بودجه‌ها...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بودجه $count دسته‌بندی ایجاد شد.',
      one: 'بودجه ۱ دسته‌بندی ایجاد شد.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'ذخیره بودجه‌ها انجام نشد.';

  @override
  String get recommendedBudget => 'بودجه پیشنهادی';
}
