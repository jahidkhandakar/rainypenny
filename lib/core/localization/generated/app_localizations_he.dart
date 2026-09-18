// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppL10nHe extends AppL10n {
  AppL10nHe([String locale = 'he']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'לחסוך ליום סגריר';

  @override
  String get navHome => 'בית';

  @override
  String get navTransactions => 'תנועות';

  @override
  String get navAdd => 'הוספה';

  @override
  String get navReports => 'דוחות';

  @override
  String get navProfile => 'פרופיל';

  @override
  String greetingMorning(String name) {
    return 'בוקר טוב, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'צהריים טובים, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'ערב טוב, $name';
  }

  @override
  String get greetingSubtitle => 'הנה התמונה הפיננסית שלך';

  @override
  String get totalBalance => 'יתרה כוללת';

  @override
  String get vsLastPeriod => 'לעומת התקופה הקודמת';

  @override
  String get income => 'הכנסות';

  @override
  String get expenses => 'הוצאות';

  @override
  String get netBalance => 'יתרה נטו';

  @override
  String get lastThirtyDays => '30 הימים האחרונים';

  @override
  String get quickActions => 'פעולות מהירות';

  @override
  String get addIncome => 'הוספת הכנסה';

  @override
  String get addExpense => 'הוספת הוצאה';

  @override
  String get spendingOverview => 'סקירת הוצאות';

  @override
  String get recentTransactions => 'תנועות אחרונות';

  @override
  String get seeAll => 'הצגת הכול';

  @override
  String get viewAll => 'לראות הכול';

  @override
  String get budgetProgress => 'התקדמות התקציב';

  @override
  String get savingsGoals => 'יעדי חיסכון';

  @override
  String get financialInsight => 'תובנה פיננסית';

  @override
  String get financialHealth => 'בריאות פיננסית';

  @override
  String ofTotal(String total) {
    return 'מתוך $total';
  }

  @override
  String get searchTransactions => 'חיפוש תנועות';

  @override
  String get filterAll => 'הכול';

  @override
  String get filterIncome => 'הכנסות';

  @override
  String get filterExpenses => 'הוצאות';

  @override
  String get today => 'היום';

  @override
  String get yesterday => 'אתמול';

  @override
  String get noTransactionsTitle => 'לא נמצאו תנועות';

  @override
  String get noTransactionsBody =>
      'נסו חיפוש או מסנן אחר כדי לראות עוד רשומות.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count תנועות',
      one: 'תנועה אחת',
      zero: 'אין תנועות',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'הוספת תנועה';

  @override
  String get amount => 'סכום';

  @override
  String get category => 'קטגוריה';

  @override
  String get date => 'תאריך';

  @override
  String get note => 'הערה';

  @override
  String get noteHint => 'הערה (לא חובה)';

  @override
  String get saveIncome => 'שמירת הכנסה';

  @override
  String get saveExpense => 'שמירת הוצאה';

  @override
  String get selectCategory => 'בחירת קטגוריה';

  @override
  String get transactionSaved => 'התנועה נשמרה';

  @override
  String get amountRequired => 'הזינו סכום גדול מאפס';

  @override
  String get titleRequired => 'תנו שם לתנועה הזו';

  @override
  String get descriptionLabel => 'תיאור';

  @override
  String get descriptionHint => 'למשל: קניות בסופר';

  @override
  String get budget => 'תקציב';

  @override
  String get budgets => 'תקציבים';

  @override
  String get totalBudget => 'סך התקציב';

  @override
  String get spent => 'הוצא';

  @override
  String get remaining => 'נותר';

  @override
  String budgetUsed(int percent) {
    return '$percent% נוצלו';
  }

  @override
  String get onTrack => 'במסלול';

  @override
  String get approachingLimit => 'מתקרב לתקרה';

  @override
  String get overBudget => 'חריגה מהתקציב';

  @override
  String get savings => 'חיסכון';

  @override
  String get yourGoals => 'היעדים שלך';

  @override
  String get saved => 'נחסך';

  @override
  String get target => 'יעד';

  @override
  String get monthlyContribution => 'חודשי';

  @override
  String get addFunds => 'הפקדה';

  @override
  String get goalComplete => 'היעד הושג';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נותרו $count חודשים',
      one: 'נותר חודש',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'הלוואות וחובות';

  @override
  String get totalOutstanding => 'סך החוב שנותר';

  @override
  String get monthlyPayment => 'חודשי';

  @override
  String get nextPayment => 'התשלום הבא';

  @override
  String paidOff(int percent) {
    return '$percent% שולמו';
  }

  @override
  String get interestRate => 'ריבית';

  @override
  String get upcomingPayments => 'תשלומים קרובים';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'בעוד $count ימים',
      one: 'בעוד יום',
      zero: 'לתשלום היום',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'באיחור';

  @override
  String get reports => 'דוחות';

  @override
  String get week => 'שבוע';

  @override
  String get month => 'חודש';

  @override
  String get quarter => 'רבעון';

  @override
  String get incomeVsExpenses => 'הכנסות מול הוצאות';

  @override
  String get spendingByCategory => 'הוצאות לפי קטגוריה';

  @override
  String get budgetPerformance => 'ביצועי התקציב';

  @override
  String get insights => 'תובנות';

  @override
  String get savingsRate => 'שיעור החיסכון';

  @override
  String get profile => 'פרופיל';

  @override
  String get account => 'חשבון';

  @override
  String get personalInformation => 'פרטים אישיים';

  @override
  String get changePassword => 'שינוי סיסמה';

  @override
  String get notifications => 'התראות';

  @override
  String get preferences => 'העדפות';

  @override
  String get language => 'שפה';

  @override
  String get currency => 'מטבע';

  @override
  String get theme => 'ערכת נושא';

  @override
  String get security => 'אבטחה';

  @override
  String get privacyAndSecurity => 'פרטיות ואבטחה';

  @override
  String get help => 'עזרה';

  @override
  String get helpAndSupport => 'עזרה ותמיכה';

  @override
  String get termsAndConditions => 'תנאים והגבלות';

  @override
  String get logOut => 'התנתקות';

  @override
  String memberSince(String date) {
    return 'חבר מאז $date';
  }

  @override
  String get themeSystem => 'לפי המערכת';

  @override
  String get themeLight => 'בהיר';

  @override
  String get themeDark => 'כהה';

  @override
  String get settings => 'הגדרות';

  @override
  String get noNotificationsTitle => 'הכול מעודכן';

  @override
  String get noNotificationsBody => 'תובנות ותזכורות חדשות יופיעו כאן.';

  @override
  String get cancel => 'ביטול';

  @override
  String get save => 'שמירה';

  @override
  String get done => 'סיום';

  @override
  String get retry => 'ניסיון נוסף';

  @override
  String get close => 'סגירה';

  @override
  String get somethingWentWrong => 'משהו השתבש';

  @override
  String get comingSoon => 'יגיע בגרסה המלאה';

  @override
  String get edit => 'עריכה';

  @override
  String get delete => 'מחיקה';

  @override
  String get undo => 'ביטול פעולה';

  @override
  String get add => 'הוספה';

  @override
  String get create => 'יצירה';

  @override
  String get nameRequired => 'תנו לזה שם';

  @override
  String get amountAboveZero => 'הזינו סכום גדול מאפס';

  @override
  String get editTransaction => 'עריכת תנועה';

  @override
  String get deleteTransaction => 'למחוק את התנועה?';

  @override
  String deleteTransactionBody(String title) {
    return '$title תוסר מהרישומים שלך.';
  }

  @override
  String get transactionDeleted => 'התנועה נמחקה';

  @override
  String get transactionUpdated => 'התנועה עודכנה';

  @override
  String get newBudget => 'תקציב חדש';

  @override
  String get editBudget => 'עריכת תקציב';

  @override
  String get budgetLimit => 'תקרה חודשית';

  @override
  String get deleteBudget => 'למחוק את התקציב?';

  @override
  String deleteBudgetBody(String category) {
    return 'תקציב $category יוסר. התנועות שלך לא ייפגעו.';
  }

  @override
  String get budgetSaved => 'התקציב נשמר';

  @override
  String get budgetDeleted => 'התקציב נמחק';

  @override
  String get allCategoriesBudgeted => 'לכל קטגוריה כבר יש תקציב';

  @override
  String get noBudgetsTitle => 'אין עדיין תקציבים';

  @override
  String get noBudgetsBody =>
      'קבעו תקרה חודשית לקטגוריה כדי להתחיל לעקוב אחריה.';

  @override
  String get newGoal => 'יעד חדש';

  @override
  String get editGoal => 'עריכת יעד';

  @override
  String get goalName => 'שם היעד';

  @override
  String get goalNameHint => 'למשל: קרן חירום';

  @override
  String get targetAmount => 'סכום היעד';

  @override
  String get alreadySaved => 'כבר נחסך';

  @override
  String get deleteGoal => 'למחוק את היעד?';

  @override
  String deleteGoalBody(String name) {
    return '$name וההתקדמות שלו יוסרו.';
  }

  @override
  String get goalSaved => 'היעד נשמר';

  @override
  String get goalDeleted => 'היעד נמחק';

  @override
  String get noGoalsTitle => 'אין עדיין יעדי חיסכון';

  @override
  String get noGoalsBody => 'קבעו יעד ו-RainyPenny יעקוב אחרי ההתקדמות שלכם.';

  @override
  String get fundsAdded => 'הכסף נוסף';

  @override
  String get newDebt => 'הלוואה או כרטיס חדשים';

  @override
  String get editDebt => 'עריכת הלוואה';

  @override
  String get debtName => 'שם';

  @override
  String get debtNameHint => 'למשל: הלוואת רכב';

  @override
  String get lender => 'המלווה';

  @override
  String get lenderHint => 'למשל: בנק הפועלים';

  @override
  String get originalAmount => 'סכום מקורי';

  @override
  String get creditLimit => 'מסגרת אשראי';

  @override
  String get remainingBalance => 'יתרה לתשלום';

  @override
  String get interestRatePercent => 'שיעור ריבית (%)';

  @override
  String get kindLoan => 'הלוואה';

  @override
  String get kindCreditCard => 'כרטיס אשראי';

  @override
  String get recordPayment => 'רישום תשלום';

  @override
  String get paymentRecorded => 'התשלום נרשם';

  @override
  String get deleteDebt => 'למחוק את החוב הזה?';

  @override
  String deleteDebtBody(String name) {
    return '$name יוסר מרשימת החובות שלך.';
  }

  @override
  String get debtSaved => 'נשמר';

  @override
  String get debtDeleted => 'נמחק';

  @override
  String get noDebtsTitle => 'אין חובות במעקב';

  @override
  String get noDebtsBody =>
      'הוסיפו הלוואה או כרטיס אשראי כדי לעקוב אחרי ההחזרים.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'חריגה מתקציב $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'חרגתם מתקציב $subject ב-$amount בתקופה הזו.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject מתקרב לתקרה';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'תקציב $subject נוצל ב-$percent%, נותרו $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'ההוצאות גבוהות מההכנסות';

  @override
  String get insightOverIncomeBody =>
      'בתקופה הזו הוצאתם יותר ממה שהרווחתם. עברו על הקטגוריות הגדולות כדי לאזן מחדש.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'ההוצאה על $subject עלתה';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'ההוצאה שלכם על $subject גבוהה ב-$percent% מהתקופה הקודמת.';
  }

  @override
  String get insightTrendDownTitle => 'ההוצאות במגמת ירידה';

  @override
  String insightTrendDownBody(int percent) {
    return 'סך ההוצאות נמוך ב-$percent% מהתקופה הקודמת.';
  }

  @override
  String get insightTrendUpTitle => 'ההוצאות במגמת עלייה';

  @override
  String insightTrendUpBody(int percent) {
    return 'סך ההוצאות גבוה ב-$percent% מהתקופה הקודמת.';
  }

  @override
  String get insightSavingsStrongTitle => 'חיסכון מצוין בתקופה הזו';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'שמרתם $percent% מההכנסה — הרבה מעל היעד של $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'שיעור החיסכון מתחת ליעד';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'בתקופה הזו שמרתם $percent% מההכנסה. כוונו ל-$target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject כמעט מלא';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'נותרו רק $amount כדי להגיע ל$subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject במסלול';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months חודשים',
      one: 'חודש',
    );
    return 'בקצב של $amount לחודש תגיעו ליעד הזה בעוד $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'תשלום $subject באיחור';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ימים',
      one: 'יום',
    );
    return 'התשלום של $amount עבור $subject באיחור של $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'תשלום $subject מתקרב';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'בעוד $days ימים',
      one: 'בעוד יום',
      zero: 'היום',
    );
    return '$amount לתשלום $_temp0.';
  }

  @override
  String get signIn => 'התחברות';

  @override
  String get signUp => 'יצירת חשבון';

  @override
  String get signInSubtitle => 'טוב לראות אתכם שוב. הכסף שלכם מחכה.';

  @override
  String get signUpSubtitle => 'כמה פרטים והכול מוכן.';

  @override
  String get emailLabel => 'אימייל';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'סיסמה';

  @override
  String get passwordHint => 'לפחות 8 תווים';

  @override
  String get fullNameLabel => 'שם מלא';

  @override
  String get fullNameHint => 'נועה לוי';

  @override
  String get forgotPassword => 'שכחתם סיסמה?';

  @override
  String get resetSent => 'בדקו את תיבת הדואר לקישור לאיפוס';

  @override
  String get noAccountYet => 'פעם ראשונה כאן?';

  @override
  String get haveAccount => 'כבר יש לכם חשבון?';

  @override
  String get emailInvalid => 'הזינו כתובת אימייל תקינה';

  @override
  String get passwordTooShort => 'השתמשו בלפחות 8 תווים';

  @override
  String get signOutConfirm => 'להתנתק?';

  @override
  String get signOutBody => 'כדי לראות שוב את הכספים שלכם תצטרכו להתחבר מחדש.';

  @override
  String get dataSource => 'מקור הנתונים';

  @override
  String get insightWeeklySummaryTitle => 'השבוע שלכם במבט';

  @override
  String get insightWeeklySummaryBody =>
      'ראו לאן הלך הכסף השבוע ואיך התקציבים מחזיקים מעמד.';

  @override
  String get notificationSettings => 'התראות';

  @override
  String get alertsSection => 'התרעות';

  @override
  String get budgetAlerts => 'התרעות תקציב';

  @override
  String get budgetAlertsBody => 'כשתקציב מתקרב לתקרה או חורג ממנה';

  @override
  String get paymentReminders => 'תזכורות תשלום';

  @override
  String get paymentRemindersBody => 'כמה ימים לפני מועד התשלום';

  @override
  String get savingsUpdates => 'עדכוני חיסכון';

  @override
  String get savingsUpdatesBody => 'התקדמות לעבר היעדים שלכם';

  @override
  String get weeklySummaryLabel => 'סיכום שבועי';

  @override
  String get weeklySummaryBody => 'תמצית השבוע שחלף';

  @override
  String get scheduleSection => 'תזמון';

  @override
  String get reminderTime => 'שעת התזכורת';

  @override
  String get quietHours => 'שעות שקט';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'יום הסיכום';

  @override
  String get permissionRequired => 'ההתראות כבויות';

  @override
  String get permissionRequiredBody =>
      'אפשרו התראות כדי ש-RainyPenny יוכל להזהיר אתכם לפני שתקציב או תשלום יוצאים משליטה.';

  @override
  String get allowNotifications => 'אפשר התראות';

  @override
  String get permissionDenied =>
      'ההתראות חסומות. אפשר להפעיל אותן בהגדרות המכשיר.';

  @override
  String get upcomingAlerts => 'מתוזמן';

  @override
  String get noScheduledAlerts => 'כרגע לא מתוזמן דבר';

  @override
  String get noScheduledAlertsBody =>
      'התרעות יופיעו כאן כשהתקציבים והתשלומים יתקרבו לגבולות שלהם.';

  @override
  String scheduledFor(String date) {
    return 'מתוזמן ל־$date';
  }

  @override
  String get everyWeek => 'כל שבוע';

  @override
  String get allNotificationsOff => 'כל ההתראות כבויות';

  @override
  String get needsAttention => 'דורש תשומת לב';

  @override
  String get quickActionsTitle => 'מה תרצו לעשות?';

  @override
  String get createSection => 'רישום';

  @override
  String get jumpToSection => 'מעבר אל';

  @override
  String get addLoanAction => 'הוספת הלוואה';

  @override
  String get addBudgetAction => 'הוספת תקציב';

  @override
  String get addGoalAction => 'הוספת יעד';

  @override
  String get longPressHint => 'טיפ: החזיקו את + כדי לרשום הוצאה מיד';

  @override
  String get searchCurrencies => 'חיפוש מטבעות';

  @override
  String get noCurrenciesFound => 'לא נמצאו מטבעות';

  @override
  String get noCurrenciesFoundMessage => 'נסו קוד, סמל או שם אחר.';

  @override
  String get popularCurrencies => 'נפוצים';

  @override
  String get allCurrencies => 'כל המטבעות';

  @override
  String get totalLoanAmount => 'סכום ההלוואה הכולל';

  @override
  String get installmentAmount => 'סכום התשלום';

  @override
  String get numberOfInstallments => 'מספר התשלומים';

  @override
  String get paidInstallments => 'תשלומים ששולמו';

  @override
  String get remainingInstallments => 'תשלומים שנותרו';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid מתוך $total שולמו';
  }

  @override
  String get finalPayment => 'התשלום האחרון';

  @override
  String get paymentDueDate => 'מועד התשלום';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ב-$day לכל חודש';
  }

  @override
  String get loanStatus => 'מצב';

  @override
  String get statusActive => 'במסלול';

  @override
  String get statusDueSoon => 'מועד קרוב';

  @override
  String get statusOverdue => 'באיחור';

  @override
  String get statusCompleted => 'שולם במלואו';

  @override
  String get repaymentProgress => 'התקדמות ההחזר';

  @override
  String get byAmount => 'לפי סכום';

  @override
  String get byInstallments => 'לפי תשלומים';

  @override
  String get startDate => 'תאריך התחלה';

  @override
  String get openEnded => 'ללא מועד סיום';

  @override
  String get loanDetails => 'פרטי ההלוואה';

  @override
  String get notSet => 'לא נקבע';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject לתשלום היום';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'התשלום של $amount מגיע היום. הקשה אחת והכול בזמן.';
  }

  @override
  String get remindMorningTitle => 'בוקר טוב ☀️';

  @override
  String get remindMorningBody =>
      'התחילו את היום עם שליטה על הכסף. יש משהו מאתמול להוסיף?';

  @override
  String get remindNoonTitle => 'בדיקת צהריים';

  @override
  String get remindNoonBody => 'ארוחה, קפה, נסיעה? רישום בכמה שניות.';

  @override
  String get remindAfternoonTitle => 'השלמה מהירה';

  @override
  String get remindAfternoonBody =>
      'רשמו מה הוצאתם עד עכשיו כדי שהמספרים של היום יהיו מדויקים.';

  @override
  String get remindEveningTitle => 'סוגרים את היום';

  @override
  String get remindEveningBody => 'שתי דקות עכשיו והרישומים של היום מלאים.';

  @override
  String get happyWeekendTitle => 'סוף שבוע נעים! 🎉';

  @override
  String get happyWeekendBody =>
      'תיהנו — ושימו עין גם על ההוצאות של סוף השבוע.';

  @override
  String get dailyReminders => 'תזכורות הוצאות יומיות';

  @override
  String get dailyRemindersBody => 'דחיפות עדינות כדי שההוצאות יישארו מעודכנות';

  @override
  String get weekendGreeting => 'ברכת סוף שבוע';

  @override
  String get weekendGreetingBody => 'ברכה חמה בתחילת סוף השבוע';

  @override
  String get reminderTimesSection => 'שעות התזכורות';

  @override
  String get slotMorning => 'בוקר';

  @override
  String get slotNoon => 'צהריים';

  @override
  String get slotAfternoon => 'אחר הצהריים';

  @override
  String get slotEvening => 'ערב';

  @override
  String get everyDay => 'כל יום';

  @override
  String get financialReport => 'דוח פיננסי';

  @override
  String get preparedFor => 'הוכן עבור';

  @override
  String get generatedOn => 'נוצר בתאריך';

  @override
  String get reportDisclaimer => 'נוצר על ידי RainyPenny מהרישומים שלכם.';

  @override
  String pageOf(int page, int total) {
    return 'עמוד $page מתוך $total';
  }

  @override
  String get overview => 'סקירה';

  @override
  String get description => 'תיאור';

  @override
  String get totalIncome => 'סך ההכנסות';

  @override
  String get totalExpenses => 'סך ההוצאות';

  @override
  String get totalSaved => 'סך החיסכון';

  @override
  String get shareOfTotal => 'חלק';

  @override
  String get used => 'נוצל';

  @override
  String get goal => 'יעד';

  @override
  String get targetDate => 'תאריך יעד';

  @override
  String get progress => 'התקדמות';

  @override
  String get paidOffShort => 'שולם';

  @override
  String get transactions => 'תנועות';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ועוד $count תנועות',
      one: 'ועוד תנועה אחת',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'ייצוא ל-PDF';

  @override
  String get sharePdf => 'שיתוף הדוח';

  @override
  String get preparingReport => 'מכינים את הדוח…';

  @override
  String get reportReady => 'הדוח מוכן';

  @override
  String get reportFailed => 'לא הצלחנו ליצור את הדוח';

  @override
  String get categories => 'קטגוריות';

  @override
  String get categoriesIntro =>
      'הוסיפו קטגוריות משלכם כדי לסדר הכנסות והוצאות בדיוק כמו שאתם חושבים עליהן.';

  @override
  String get expenseCategories => 'קטגוריות הוצאה';

  @override
  String get incomeCategories => 'קטגוריות הכנסה';

  @override
  String get newCategory => 'קטגוריה חדשה';

  @override
  String get editCategory => 'עריכת קטגוריה';

  @override
  String get categoryName => 'שם';

  @override
  String get categoryNameHint => 'למשל: חיות מחמד';

  @override
  String get icon => 'סמל';

  @override
  String get categorySaved => 'הקטגוריה נשמרה';

  @override
  String get categoryDeleted => 'הקטגוריה נמחקה';

  @override
  String get deleteCategory => 'למחוק את הקטגוריה?';

  @override
  String deleteCategoryBody(String name) {
    return '$name תוסר מהקטגוריות שלך.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count רשומות עדיין משתמשות בקטגוריה הזו',
      one: 'רשומה אחת עדיין משתמשת בקטגוריה הזו',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'אין כאן עדיין כלום.';

  @override
  String get builtIn => 'מובנית';

  @override
  String get manageCategories => 'ניהול קטגוריות';

  @override
  String get expense => 'הוצאה';

  @override
  String get languageNote =>
      'ערבית, אורדו, פרסית ועברית הופכות את כל הממשק לימין-לשמאל, כולל תרשימים ודוחות PDF.';

  @override
  String get next => 'הבא';

  @override
  String get back => 'חזרה';

  @override
  String get skip => 'דילוג';

  @override
  String get continueLabel => 'המשך';

  @override
  String get selected => 'נבחר';

  @override
  String get passwordRequired => 'הזינו את הסיסמה';

  @override
  String get newPasswordLabel => 'סיסמה חדשה';

  @override
  String get confirmPasswordLabel => 'אישור סיסמה';

  @override
  String get passwordsDoNotMatch => 'שתי הסיסמאות חייבות להיות זהות';

  @override
  String get showPassword => 'הצגת הסיסמה';

  @override
  String get hidePassword => 'הסתרת הסיסמה';

  @override
  String get savePassword => 'שמירת הסיסמה';

  @override
  String get backToSignIn => 'חזרה להתחברות';

  @override
  String get alreadyHaveAccount => 'כבר יש לי חשבון';

  @override
  String get getStarted => 'בואו נתחיל';

  @override
  String get acceptTerms => 'אני מסכים לתנאי השימוש ולמדיניות הפרטיות';

  @override
  String get acceptTermsRequired => 'אשרו כדי להמשיך';

  @override
  String get passwordStrengthTooShort => 'קצרה מדי';

  @override
  String get passwordStrengthWeak => 'חלשה';

  @override
  String get passwordStrengthFair => 'סבירה';

  @override
  String get passwordStrengthGood => 'טובה';

  @override
  String get passwordStrengthStrong => 'חזקה';

  @override
  String get passwordAdvice =>
      'משפט ארוך שתזכרו עדיף על סיסמה קצרה מלאה בסימנים. הימנעו ממשהו שאתם כבר משתמשים בו במקום אחר.';

  @override
  String get authInvalidCredentials =>
      'האימייל והסיסמה האלה לא מתאימים לאף חשבון';

  @override
  String get authEmailNotConfirmed => 'אשרו את כתובת האימייל לפני ההתחברות';

  @override
  String get authEmailAlreadyRegistered => 'כבר קיים חשבון עם האימייל הזה';

  @override
  String get authWeakPassword => 'בחרו סיסמה ארוכה יותר';

  @override
  String get authRateLimited => 'יותר מדי ניסיונות. נסו שוב בעוד כמה דקות';

  @override
  String get authNetworkError => 'אין חיבור. בדקו את הרשת ונסו שוב';

  @override
  String get authGenericError => 'משהו השתבש. נסו שוב';

  @override
  String get confirmEmailTitle => 'בדקו את האימייל';

  @override
  String confirmEmailBody(String email) {
    return 'שלחנו קישור אישור אל $email. פתחו אותו כדי לסיים את הקמת החשבון.';
  }

  @override
  String get resendConfirmation => 'שליחת אימייל האישור שוב';

  @override
  String get confirmationResent => 'אימייל האישור נשלח';

  @override
  String get forgotPasswordTitle => 'איפוס הסיסמה';

  @override
  String get forgotPasswordSubtitle =>
      'הזינו את האימייל שאיתו נרשמתם ונשלח לכם קישור לבחירת סיסמה חדשה.';

  @override
  String get sendResetLink => 'שליחת קישור';

  @override
  String get resetLinkSentTitle => 'הקישור נשלח';

  @override
  String resetLinkSentBody(String email) {
    return 'אם ל-$email יש חשבון, קישור האיפוס כבר בדרך.';
  }

  @override
  String get resetLinkSentHint =>
      'הקישור פג בתוך שעה. אם הוא לא הגיע, בדקו את תיקיית הספאם לפני שתבקשו חדש.';

  @override
  String get tryAnotherEmail => 'אימייל אחר';

  @override
  String get resetPasswordTitle => 'בחירת סיסמה חדשה';

  @override
  String get resetPasswordSubtitle => 'בחרו משהו שלא השתמשתם בו בחשבון הזה.';

  @override
  String get passwordChangedTitle => 'הסיסמה עודכנה';

  @override
  String get passwordChangedBody =>
      'הסיסמה החדשה נשמרה. אתם מחוברים ומוכנים להמשיך.';

  @override
  String get demoModeHint => 'גרסת הדגמה — לא נדרש חשבון';

  @override
  String get demoModeFill => 'מילוי';

  @override
  String get welcomeTrackTitle => 'ראו לאן הולך הכסף';

  @override
  String get welcomeTrackBody =>
      'רשמו מה נכנס ומה יוצא. RainyPenny הופך את זה לתמונה שאפשר באמת לקרוא.';

  @override
  String get welcomeBudgetTitle => 'גבולות שמחזיקים';

  @override
  String get welcomeBudgetBody =>
      'קבעו תקרה חודשית לכל חלק בהוצאות, ותדעו לפני שחרגתם — לא אחרי.';

  @override
  String get welcomeGoalsTitle => 'לחסוך למה שחשוב';

  @override
  String get welcomeGoalsBody =>
      'תנו שם ליעד, קבעו סכום, וצפו בו מתמלא. קרן לשעת חירום נבנית קל יותר כשרואים אותה.';

  @override
  String get welcomePrivacyTitle => 'הכסף שלכם נשאר שלכם';

  @override
  String get welcomePrivacyBody =>
      'המספרים שלכם שייכים רק לכם. שום דבר לא נמכר ולא משותף עם אף אחד.';

  @override
  String stepOf(int step, int total) {
    return 'שלב $step מתוך $total';
  }

  @override
  String get onboardingNameTitle => 'איך לקרוא לכם?';

  @override
  String get onboardingNameBody =>
      'נשתמש בזה רק כדי לברך אתכם, ולא בשום מקום אחר.';

  @override
  String get onboardingNameHint => 'שם פרטי מספיק. אפשר לשנות אחר כך.';

  @override
  String get onboardingCurrencyTitle => 'באיזה מטבע אתם משתמשים?';

  @override
  String get onboardingCurrencyBody =>
      'כל הסכומים באפליקציה יוצגו במטבע הזה. הבחירה לא ממירה כלום.';

  @override
  String get onboardingCurrencySearch => 'חיפוש בכל המטבעות';

  @override
  String get onboardingAppearanceTitle => 'התאימו לעצמכם';

  @override
  String get onboardingAppearanceBody =>
      'בחרו מראה. הכול משתנה תוך כדי נגיעה, ואפשר לחזור לכאן מתי שתרצו.';

  @override
  String get onboardingNotificationsTitle => 'תישארו מעודכנים';

  @override
  String get onboardingNotificationsBody =>
      'תזכורת שקטה ברגע הנכון היא מה שהופך את זה להרגל.';

  @override
  String get onboardingNotifyReminders => 'תזכורת עדינה לרשום את מה שהוצאתם';

  @override
  String get onboardingNotifyBudget => 'התרעה לפני שתקציב נגמר';

  @override
  String get onboardingNotifySummary => 'סיכום שבועי של לאן הלך הכסף';

  @override
  String get onboardingNotifyEnable => 'הפעלת התראות';

  @override
  String get onboardingNotifyDone => 'הגדרות ההתראות נשמרו';

  @override
  String get onboardingNotifyLater => 'אפשר לשנות את כל זה בהגדרות, מתי שתרצו.';

  @override
  String get onboardingReadyTitle => 'הכול מוכן';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'הכול מוכן, $name';
  }

  @override
  String get onboardingReadyBody =>
      'ההגדרה הסתיימה. רוצים סיור קצר על איך הכול עובד?';

  @override
  String get onboardingTakeTour => 'תראו לי';

  @override
  String get onboardingGoToApp => 'קחו אותי לאפליקציה';

  @override
  String get onboardingTourLater => 'לא עכשיו? המדריך נשאר בהגדרות, מתי שתרצו.';

  @override
  String get beginnersGuide => 'מדריך למתחילים';

  @override
  String get guideFinish => 'סיום';

  @override
  String chapterOf(int number, int total) {
    return 'פרק $number מתוך $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'פתיחת $screen';
  }

  @override
  String get guideDashboardTitle => 'מסך הבית';

  @override
  String get guideDashboardBody =>
      'הכול מתחיל כאן. הכרטיס למעלה הוא מה שנשאר לכם; מתחתיו מה נכנס ומה יצא בתקופה, ואז ההוצאות, התקציבים והיעדים.';

  @override
  String get guideDashboardTip1 => 'משכו את המסך למטה כדי לרענן הכול בבת אחת.';

  @override
  String get guideDashboardTip2 =>
      'הקישו על כרטיס ההכנסות או ההוצאות כדי לקפוץ ישר לרשימה.';

  @override
  String get guideDashboardTip3 =>
      'הטבעות והתובנות מתעדכנות ברגע שרושמים משהו.';

  @override
  String get guideAddTitle => 'רישום כסף';

  @override
  String get guideAddBody =>
      'הכפתור באמצע הסרגל הוא נקודת ההתחלה. הוא פותח תפריט קצר: הוצאה, הכנסה, חוב, תקציב או יעד חיסכון.';

  @override
  String get guideAddTip1 =>
      'הקישו על הכפתור האמצעי כדי לרשום כסף שנכנס או שיצא.';

  @override
  String get guideAddTip2 =>
      'החזיקו אותו כדי לדלג על התפריט ולעבור ישר להוצאה חדשה.';

  @override
  String get guideAddTip3 =>
      'תמיד בחרו קטגוריה — עליה עובדים התרשימים והתקציבים.';

  @override
  String get guideCategoriesTitle => 'קטגוריות';

  @override
  String get guideCategoriesBody =>
      'קטגוריות הן הדרך שבה ההוצאות מקובצות. אלה שמגיעות עם האפליקציה מספיקות לרוב האנשים, ואפשר לשנות להן שם או להוסיף משלכם.';

  @override
  String get guideCategoriesTip1 =>
      'הגדרות, ואז ניהול קטגוריות, כדי לשנות או להוסיף.';

  @override
  String get guideCategoriesTip2 =>
      'כל מה שנשאר ללא קטגוריה נופל ל«אחר», כדי שהתרשימים יישארו כנים.';

  @override
  String get guideBudgetTitle => 'תקציבים';

  @override
  String get guideBudgetBody =>
      'תקציב הוא תקרה חודשית לקטגוריה אחת. הפס מתמלא ככל שמוציאים ומשנה צבע כשמתקרבים, כך שתדעו לפני שחרגתם.';

  @override
  String get guideBudgetTip1 =>
      'התחילו משתיים-שלוש קטגוריות, לא מכולן בבת אחת.';

  @override
  String get guideBudgetTip2 =>
      'קבעו תקרה מעט מעל ההוצאה הרגילה שלכם, ואז הדקו אותה.';

  @override
  String get guideBudgetTip3 =>
      'השאירו את התרעות התקציב פועלות והאפליקציה תזהיר כשתקציב אוזל.';

  @override
  String get guideSavingsTitle => 'יעדי חיסכון';

  @override
  String get guideSavingsBody =>
      'תנו שם למה שאתם חוסכים בשבילו, קבעו סכום ותאריך, והאפליקציה תחשב כמה צריך להפריש כל חודש.';

  @override
  String get guideSavingsTip1 =>
      'יעד עם שם קל יותר לשמור עליו מכוונה מעורפלת לחסוך.';

  @override
  String get guideSavingsTip2 =>
      'כמה יעדים קטנים מסתיימים לעתים קרובות יותר מיעד גדול אחד.';

  @override
  String get guideLoansTitle => 'חובות והלוואות';

  @override
  String get guideLoansBody =>
      'רשמו כמה אתם חייבים, כמה זה עולה ומתי התשלום הבא. כל מה שאתם מחזירים נמצא ברשימה אחת עם היתרה.';

  @override
  String get guideLoansTip1 =>
      'הוסיפו את מועד התשלום ותזכורות התשלום ירדפו אחריו במקומכם.';

  @override
  String get guideLoansTip2 => 'חוב באיחור מוצג באדום במסך הבית עד שהוא משולם.';

  @override
  String get guideReportsTitle => 'דוחות';

  @override
  String get guideReportsBody =>
      'המבט לעומק: הכנסות מול הוצאות, הוצאות לפי קטגוריה, איך התקציבים החזיקו מעמד, ואיזה חלק מההכנסה נשאר אצלכם.';

  @override
  String get guideReportsTip1 => 'עברו בין שבוע, חודש ורבעון בראש המסך.';

  @override
  String get guideReportsTip2 =>
      'ייצאו או שתפו PDF — הוא יוצא בשפה ובכיוון הכתיבה שלכם.';

  @override
  String get guideSettingsTitle => 'הגדרות';

  @override
  String get guideSettingsBody =>
      'שפה, מטבע, צבעים והתרעות נמצאים כאן, ושום דבר מהם לא ננעל בהגדרה הראשונית — שנו מה שתרצו, מתי שתרצו.';

  @override
  String get guideSettingsTip1 =>
      'ארבעים שפות, וכל הפריסה מתהפכת בשפות שנכתבות מימין לשמאל.';

  @override
  String get guideSettingsTip2 =>
      'בחרו אילו התרעות תרצו ובאילו שעות מותר להן להגיע.';

  @override
  String get guideSettingsTip3 => 'שעות שקט מעכבות הכול עד הבוקר.';

  @override
  String get guideHabitTitle => 'שיישאר הרגל';

  @override
  String get guideHabitBody =>
      'האפליקציה שווה בדיוק כמו מה שתכניסו לתוכה. דקה ביום עדיפה על שעה בחודש, ואחרי שבועיים המספרים מתחילים לספר לכם משהו.';

  @override
  String get guideHabitTip1 => 'רשמו הוצאות ברגע שהן קורות, לא בסוף השבוע.';

  @override
  String get guideHabitTip2 => 'הציצו במסך הבית פעם ביום. עשר שניות מספיקות.';

  @override
  String get guideHabitTip3 => 'המדריך הזה נשאר בהגדרות — חזרו אליו מתי שתרצו.';

  @override
  String get appearance => 'מראה';

  @override
  String get themeCaption => 'בהיר, כהה, או מה שהטלפון עושה.';

  @override
  String get accentColor => 'צבע הדגשה';

  @override
  String get accentColorCaption => 'צובע את הכפתורים, ההדגשות והתרשימים.';

  @override
  String get accentSemanticsNote =>
      'כסף שנכנס וכסף שיוצא שומרים על הצבעים שלהם בכל ערכת נושא, כך שמספר לעולם לא משנה משמעות רק כי שיניתם את צבע ההדגשה.';

  @override
  String get accentTeal => 'טורקיז';

  @override
  String get accentGreen => 'ירוק';

  @override
  String get accentSky => 'תכלת';

  @override
  String get accentBlue => 'כחול';

  @override
  String get accentIndigo => 'אינדיגו';

  @override
  String get accentViolet => 'סגול';

  @override
  String get accentPink => 'ורוד';

  @override
  String get accentCrimson => 'ארגמן';

  @override
  String get accentOrange => 'כתום';

  @override
  String get accentSlate => 'אפור צפחה';

  @override
  String get searchLanguages => 'חיפוש שפות';

  @override
  String get suggestedLanguages => 'מוצעות';

  @override
  String get allLanguages => 'כל השפות';

  @override
  String get noLanguagesFound => 'לא נמצאו שפות';

  @override
  String get noLanguagesFoundMessage =>
      'נסו את השם באנגלית, או את קוד שתי האותיות.';

  @override
  String get rightToLeft => 'מימין לשמאל';

  @override
  String get replayGuide => 'צפייה במדריך שוב';

  @override
  String get replaySetup => 'הרצת ההגדרה מחדש';

  @override
  String get replaySetupBody =>
      'עברו שוב על שאלות ההתחלה. שום דבר שרשמתם לא נמחק.';

  @override
  String get rateTitle => 'נהנים מ-RainyPenny?';

  @override
  String get rateBody =>
      'אתם כבר זמן מה עם זה. דירוג לוקח רגע ועוזר לאחרים למצוא את האפליקציה.';

  @override
  String get rateAction => 'דרגו את האפליקציה';

  @override
  String get rateLater => 'אולי מאוחר יותר';

  @override
  String get rateNever => 'לא תודה';

  @override
  String get rateThanks => 'תודה';

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
  String get categoryOther => 'Other';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investments';

  @override
  String get categoryRefunds => 'Refunds & Gifts';

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
}
