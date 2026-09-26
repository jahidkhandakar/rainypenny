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
  String get appTagline => 'חיסכון ליום סגריר';

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
  String get greetingSubtitle => 'הנה הסקירה הפיננסית שלך';

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
  String get seeAll => 'הצג הכול';

  @override
  String get viewAll => 'הצג הכול';

  @override
  String get budgetProgress => 'התקדמות התקציב';

  @override
  String get savingsGoals => 'יעדי חיסכון';

  @override
  String get financialInsight => 'תובנה פיננסית';

  @override
  String get financialHealth => 'חוסן פיננסי';

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
      'נסה לחפש או לסנן אחרת כדי לראות פעילות נוספת.';

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
  String get noteHint => 'הערה אופציונלית';

  @override
  String get saveIncome => 'שמירת הכנסה';

  @override
  String get saveExpense => 'שמירת הוצאה';

  @override
  String get selectCategory => 'בחירת קטגוריה';

  @override
  String get transactionSaved => 'התנועה נשמרה';

  @override
  String get amountRequired => 'יש להזין סכום גדול מאפס';

  @override
  String get titleRequired => 'יש לתת שם לתנועה זו';

  @override
  String get descriptionLabel => 'תיאור';

  @override
  String get descriptionHint => 'למשל, קניות בסופר';

  @override
  String get budget => 'תקציב';

  @override
  String get budgets => 'תקציבים';

  @override
  String get totalBudget => 'סך כל התקציב';

  @override
  String get spent => 'הוצאו';

  @override
  String get remaining => 'נותר';

  @override
  String budgetUsed(int percent) {
    return '$percent% נוצלו';
  }

  @override
  String get onTrack => 'במסלול הנכון';

  @override
  String get approachingLimit => 'מתקרב למגבלה';

  @override
  String get overBudget => 'חריגה מהתקציב';

  @override
  String get savings => 'חסכונות';

  @override
  String get yourGoals => 'היעדים שלך';

  @override
  String get saved => 'נחסך';

  @override
  String get target => 'יעד';

  @override
  String get monthlyContribution => 'חודשי';

  @override
  String get addFunds => 'הפקדת כספים';

  @override
  String get goalComplete => 'היעד הושג';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'עוד $count חודשים',
      one: 'חודש אחד נותר',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'הלוואות וחובות';

  @override
  String get totalOutstanding => 'סך כל החוב הנותר';

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
      other: 'לתשלום בעוד $count ימים',
      one: 'לתשלום מחר',
      zero: 'לתשלום היום',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'בפיגור';

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
  String get budgetPerformance => 'ביצועי תקציב';

  @override
  String get insights => 'תובנות';

  @override
  String get savingsRate => 'שיעור חיסכון';

  @override
  String get profile => 'פרופיל';

  @override
  String get account => 'חשבון';

  @override
  String get personalInformation => 'מידע אישי';

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
  String get termsAndConditions => 'תנאי שימוש';

  @override
  String get logOut => 'התנתקות';

  @override
  String memberSince(String date) {
    return 'חבר מאז $date';
  }

  @override
  String get themeSystem => 'מערכת';

  @override
  String get themeLight => 'בהיר';

  @override
  String get themeDark => 'כהה';

  @override
  String get settings => 'הגדרות';

  @override
  String get noNotificationsTitle => 'אין התראות חדשות';

  @override
  String get noNotificationsBody => 'תובנות ותזכורות חדשות יופיעו כאן.';

  @override
  String get cancel => 'ביטול';

  @override
  String get save => 'שמירה';

  @override
  String get done => 'בוצע';

  @override
  String get retry => 'ניסיון חוזר';

  @override
  String get close => 'סגירה';

  @override
  String get somethingWentWrong => 'משהו השתבש';

  @override
  String get comingSoon => 'בקרוב בגרסה המלאה';

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
  String get nameRequired => 'יש להזין את שמך';

  @override
  String get amountAboveZero => 'יש להזין סכום גדול מאפס';

  @override
  String get editTransaction => 'עריכת תנועה';

  @override
  String get deleteTransaction => 'למחוק את התנועה?';

  @override
  String deleteTransactionBody(String title) {
    return 'התנועה «$title» תוסר מיומן התנועות שלך.';
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
  String get budgetLimit => 'מגבלה חודשית';

  @override
  String get deleteBudget => 'למחוק את התקציב?';

  @override
  String deleteBudgetBody(String category) {
    return 'תקציב «$category» יימחק. התנועות שלך לא יושפעו.';
  }

  @override
  String get budgetSaved => 'התקציב נשמר';

  @override
  String get budgetDeleted => 'התקציב נמחק';

  @override
  String get allCategoriesBudgeted => 'לכל הקטגוריות כבר יש תקציב';

  @override
  String get noBudgetsTitle => 'אין עדיין תקציבים';

  @override
  String get noBudgetsBody =>
      'הגדר מגבלה חודשית לקטגוריה כדי להתחיל לעקוב אחריה.';

  @override
  String get newGoal => 'יעד חדש';

  @override
  String get editGoal => 'עריכת יעד';

  @override
  String get goalName => 'שם היעד';

  @override
  String get goalNameHint => 'למשל, קרן חירום';

  @override
  String get targetAmount => 'סכום היעד';

  @override
  String get alreadySaved => 'כבר נחסך';

  @override
  String get deleteGoal => 'למחוק את היעד?';

  @override
  String deleteGoalBody(String name) {
    return 'היעד «$name» וההתקדמות בו יימחקו.';
  }

  @override
  String get goalSaved => 'היעד נשמר';

  @override
  String get goalDeleted => 'היעד נמחק';

  @override
  String get noGoalsTitle => 'אין עדיין יעדי חיסכון';

  @override
  String get noGoalsBody => 'הגדר יעד ו-RainyPenny תעקוב אחר ההתקדמות שלך.';

  @override
  String get fundsAdded => 'הכספים נוספו';

  @override
  String get newDebt => 'הלוואה או כרטיס אשראי חדש';

  @override
  String get editDebt => 'עריכת הלוואה';

  @override
  String get debtName => 'שם';

  @override
  String get debtNameHint => 'למשל, הלוואת רכב';

  @override
  String get lender => 'מלווה';

  @override
  String get lenderHint => 'למשל, בנק לאומי';

  @override
  String get originalAmount => 'סכום מקורי';

  @override
  String get creditLimit => 'מסגרת אשראי';

  @override
  String get remainingBalance => 'יתרת חוב';

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
  String get deleteDebt => 'למחוק חוב זה?';

  @override
  String deleteDebtBody(String name) {
    return '«$name» יוסר מרשימת החובות שלך.';
  }

  @override
  String get debtSaved => 'נשמר';

  @override
  String get debtDeleted => 'נמחק';

  @override
  String get noDebtsTitle => 'אין חובות במעקב';

  @override
  String get noDebtsBody => 'הוסף הלוואה או כרטיס אשראי כדי לעקוב אחר ההחזרים.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'חריגה מתקציב $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'חרגת ב-$amount מתקציב $subject לתקופה זו.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'קטגוריית $subject קרובה למגבלה';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$percent% מתקציב $subject כבר נוצלו, נותרו $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'ההוצאות עולות על ההכנסות';

  @override
  String get insightOverIncomeBody =>
      'הוצאת יותר ממה שהרווחת בתקופה זו. כדאי לעבור על הקטגוריות הגדולות ביותר כדי לאזן את המצב.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'ההוצאות על $subject עלו';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'ההוצאות שלך על $subject גבוהות ב-$percent% בהשוואה לתקופה הקודמת.';
  }

  @override
  String get insightTrendDownTitle => 'ההוצאות במגמת ירידה';

  @override
  String insightTrendDownBody(int percent) {
    return 'סך כל ההוצאות נמוך ב-$percent% בהשוואה לתקופה הקודמת.';
  }

  @override
  String get insightTrendUpTitle => 'ההוצאות במגמת עלייה';

  @override
  String insightTrendUpBody(int percent) {
    return 'סך כל ההוצאות גבוה ב-$percent% בהשוואה לתקופה הקודמת.';
  }

  @override
  String get insightSavingsStrongTitle => 'חיסכון מעולה בתקופה זו';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'שמרת $percent% מההכנסה שלך — הרבה מעל יעד ה-$target%.';
  }

  @override
  String get insightSavingsLowTitle => 'שיעור החיסכון נמוך מהיעד';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'שמרת $percent% מההכנסה שלך בתקופה זו. היעד המומלץ הוא $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'היעד «$subject» כמעט הושלם';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'נותרו רק $amount להשגת היעד «$subject».';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'במסלול הנכון להשגת «$subject»';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months חודשים',
      one: 'חודש אחד',
    );
    return 'בחיסכון של $amount בחודש, תגיע ליעד זה בעוד $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'התשלום עבור «$subject» בפיגור';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ימים',
      one: 'יום אחד',
    );
    return 'התשלום בסך $amount עבור «$subject» מתעכב ב-$_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'תשלום עבור «$subject» מתקרב';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'בעוד $days ימים',
      one: 'מחר',
      zero: 'היום',
    );
    return 'סך של $amount לתשלום $_temp0.';
  }

  @override
  String get signIn => 'התחברות';

  @override
  String get signUp => 'הרשמה';

  @override
  String get signInSubtitle => 'ברוך שובך. הנתונים שלך מחכים לך.';

  @override
  String get signUpSubtitle => 'כמה פרטים קצרים ואתה מוכן.';

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
  String get fullNameHint => 'ישראל ישראלי';

  @override
  String get forgotPassword => 'שכחת סיסמה?';

  @override
  String get resetSent => 'בדוק את תיבת הדואר שלך לקבלת קישור לאיפוס';

  @override
  String get noAccountYet => 'חדש כאן?';

  @override
  String get haveAccount => 'כבר יש לך חשבון?';

  @override
  String get emailInvalid => 'יש להזין כתובת אימייל תקינה';

  @override
  String get passwordTooShort => 'יש להשתמש בלפחות 8 תווים';

  @override
  String get signOutConfirm => 'להתנתק מהחשבון?';

  @override
  String get signOutBody =>
      'יהיה עליך להתחבר שוב כדי לצפות בנתונים הפיננסיים שלך.';

  @override
  String get dataSource => 'מקור נתונים';

  @override
  String get insightWeeklySummaryTitle => 'סיכום השבוע שלך';

  @override
  String get insightWeeklySummaryBody =>
      'ראה לאן הלך הכסף שלך השבוע ומה מצב התקציבים שלך.';

  @override
  String get notificationSettings => 'התראות';

  @override
  String get alertsSection => 'התראות';

  @override
  String get budgetAlerts => 'התראות תקציב';

  @override
  String get budgetAlertsBody => 'כשתקציב מתקרב למגבלה שלו או עובר אותה';

  @override
  String get paymentReminders => 'תזכורות תשלום';

  @override
  String get paymentRemindersBody => 'כמה ימים לפני מועד הפירעון של תשלום';

  @override
  String get savingsUpdates => 'עדכוני חיסכון';

  @override
  String get savingsUpdatesBody => 'התקדמות לקראת היעדים שלך';

  @override
  String get weeklySummaryLabel => 'סיכום שבועי';

  @override
  String get weeklySummaryBody => 'תקציר השבוע שחלף';

  @override
  String get scheduleSection => 'תזמון';

  @override
  String get reminderTime => 'שעת תזכורת';

  @override
  String get quietHours => 'שעות שקטות';

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
      'אפשר התראות כדי ש-RainyPenny תוכל להזהיר אותך לפני שתקציב או תשלום יחרגו משליטה.';

  @override
  String get allowNotifications => 'אפשר התראות';

  @override
  String get permissionDenied =>
      'ההתראות חסומות. ניתן להפעיל אותן בהגדרות המכשיר.';

  @override
  String get upcomingAlerts => 'מתוזמנות';

  @override
  String get noScheduledAlerts => 'אין שום דבר מתוזמן כרגע';

  @override
  String get noScheduledAlertsBody =>
      'התראות יופיעו כאן ככל שהתקציבים והתשלומים יתקרבו למגבלות שלהם.';

  @override
  String scheduledFor(String date) {
    return 'מתוזמן ל-$date';
  }

  @override
  String get everyWeek => 'בכל שבוע';

  @override
  String get allNotificationsOff => 'כל ההתראות כבויות';

  @override
  String get needsAttention => 'דורש תשומת לב';

  @override
  String get quickActionsTitle => 'מה תרצה לעשות?';

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
  String get longPressHint => 'טיפ: לחיצה ארוכה על + לרישום הוצאה מיידי';

  @override
  String get searchCurrencies => 'חיפוש מטבעות';

  @override
  String get noCurrenciesFound => 'לא נמצאו מטבעות';

  @override
  String get noCurrenciesFoundMessage => 'נסה קוד, סמל או שם אחר.';

  @override
  String get popularCurrencies => 'פופולריים';

  @override
  String get allCurrencies => 'כל המטבעות';

  @override
  String get totalLoanAmount => 'סכום ההלוואה הכולל';

  @override
  String get installmentAmount => 'סכום התשלום התקופתי';

  @override
  String get numberOfInstallments => 'מספר תשלומים';

  @override
  String get paidInstallments => 'תשלומים ששולמו';

  @override
  String get remainingInstallments => 'תשלומים שנותרו';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'שולמו $paid מתוך $total';
  }

  @override
  String get finalPayment => 'תשלום אחרון';

  @override
  String get paymentDueDate => 'מועד פירעון התשלום';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ב-$day בכל חודש';
  }

  @override
  String get loanStatus => 'סטטוס';

  @override
  String get statusActive => 'פעיל';

  @override
  String get statusDueSoon => 'מועד הפירעון קרוב';

  @override
  String get statusOverdue => 'בפיגור';

  @override
  String get statusCompleted => 'נפרע במלואו';

  @override
  String get repaymentProgress => 'התקדמות ההחזר';

  @override
  String get byAmount => 'לפי סכום';

  @override
  String get byInstallments => 'לפי תשלומים';

  @override
  String get startDate => 'תאריך התחלה';

  @override
  String get openEnded => 'ללא מועד סיום מוגדר';

  @override
  String get loanDetails => 'פרטי הלוואה';

  @override
  String get notSet => 'לא הוגדר';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'התשלום עבור «$subject» חל היום';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'התשלום שלך בסך $amount חל היום. הקש כדי לשמור עליו בזמן.';
  }

  @override
  String get remindMorningTitle => 'בוקר טוב ☀️';

  @override
  String get remindMorningBody =>
      'התחל את היום בשליטה על הכסף שלך. יש משהו להוסיף מאתמול?';

  @override
  String get remindNoonTitle => 'בדיקת צהריים';

  @override
  String get remindNoonBody =>
      'ארוחת צהריים, קפה, או נסיעה? רשום אותם בכמה שניות.';

  @override
  String get remindAfternoonTitle => 'עדכון מהיר';

  @override
  String get remindAfternoonBody =>
      'רשום את מה שהוצאת עד כה ושמור על יומן תנועות מדויק.';

  @override
  String get remindEveningTitle => 'סיכום היום';

  @override
  String get remindEveningBody => 'שתי דקות עכשיו והנתונים של היום מושלמים.';

  @override
  String get happyWeekendTitle => 'סוף שבוע נעים! 🎉';

  @override
  String get happyWeekendBody => 'תיהנה ממנו — ושים עין על הוצאות סוף השבוע.';

  @override
  String get dailyReminders => 'תזכורות יומיות להוצאות';

  @override
  String get dailyRemindersBody => 'תזכורות עדינות לשמירה על הוצאות מעודכנות';

  @override
  String get weekendGreeting => 'ברכת סוף שבוע';

  @override
  String get weekendGreetingBody => 'ברכה ידידותית בתחילת סוף השבוע שלך';

  @override
  String get reminderTimesSection => 'זמני תזכורות';

  @override
  String get slotMorning => 'בוקר';

  @override
  String get slotNoon => 'צהריים';

  @override
  String get slotAfternoon => 'אחר הצהריים';

  @override
  String get slotEvening => 'ערב';

  @override
  String get everyDay => 'בכל יום';

  @override
  String get financialReport => 'דוח פיננסי';

  @override
  String get preparedFor => 'הוכן עבור';

  @override
  String get generatedOn => 'הופק בתאריך';

  @override
  String get reportDisclaimer => 'הופק על ידי RainyPenny מתוך הרישומים שלך.';

  @override
  String pageOf(int page, int total) {
    return 'עמוד $page מתוך $total';
  }

  @override
  String get overview => 'סקירה כללית';

  @override
  String get description => 'תיאור';

  @override
  String get totalIncome => 'סך כל ההכנסות';

  @override
  String get totalExpenses => 'סך כל ההוצאות';

  @override
  String get totalSaved => 'סך הכול נחסך';

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
  String get exportPdf => 'ייצוא PDF';

  @override
  String get sharePdf => 'שיתוף דוח';

  @override
  String get preparingReport => 'מכין את הדוח שלך…';

  @override
  String get reportReady => 'הדוח מוכן';

  @override
  String get reportFailed => 'לא ניתן היה ליצור את הדוח';

  @override
  String get categories => 'קטגוריות';

  @override
  String get categoriesIntro =>
      'הוסף קטגוריות משלך כדי לתייג הכנסות והוצאות בדיוק כפי שנוח לך.';

  @override
  String get expenseCategories => 'קטגוריות הוצאות';

  @override
  String get incomeCategories => 'קטגוריות הכנסות';

  @override
  String get newCategory => 'קטגוריה חדשה';

  @override
  String get editCategory => 'עריכת קטגוריה';

  @override
  String get categoryName => 'שם';

  @override
  String get categoryNameHint => 'למשל, טיפול בחיות מחמד';

  @override
  String get icon => 'סמל';

  @override
  String get categorySaved => 'הקטגוריה נשמרה';

  @override
  String get categoryDeleted => 'הקטגוריה נמחקה';

  @override
  String get deleteCategory => 'למחוק קטגוריה זו?';

  @override
  String deleteCategoryBody(String name) {
    return '«$name» תוסר מרשימת הקטגוריות שלך.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count רשומות עדיין משתמשות בקטגוריה זו',
      one: 'רשומה אחת עדיין משתמשת בקטגוריה זו',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'אין כאן שום דבר עדיין.';

  @override
  String get builtIn => 'מובנית';

  @override
  String get manageCategories => 'ניהול קטגוריות';

  @override
  String get expense => 'הוצאה';

  @override
  String get languageNote =>
      'ערבית, אורדו, פרסית ועברית משנות את הממשק כולו לימין-לשמאל, כולל תרשימים ודוחות PDF.';

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
  String get passwordRequired => 'יש להזין סיסמה';

  @override
  String get newPasswordLabel => 'סיסמה חדשה';

  @override
  String get confirmPasswordLabel => 'אימות סיסמה';

  @override
  String get passwordsDoNotMatch => 'הסיסמאות חייבות להתאים';

  @override
  String get showPassword => 'הצגת סיסמה';

  @override
  String get hidePassword => 'הסתרת סיסמה';

  @override
  String get savePassword => 'שמירת סיסמה';

  @override
  String get backToSignIn => 'חזרה להתחברות';

  @override
  String get alreadyHaveAccount => 'כבר יש לי חשבון';

  @override
  String get getStarted => 'בואו נתחיל';

  @override
  String get acceptTerms => 'אני מסכים לתנאי השירות ולמדיניות הפרטיות';

  @override
  String get acceptTermsRequired => 'יש לאשר כדי להמשיך';

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
      'ביטוי ארוך שתזכור עדיף על ביטוי קצר מלא בסמלים. הימנע משימוש בסיסמה שבה אתה משתמש במקום אחר.';

  @override
  String get authInvalidCredentials =>
      'כתובת האימייל והסיסמה אינן תואמות לחשבון קיים';

  @override
  String get authEmailNotConfirmed => 'יש לאמת את כתובת האימייל לפני ההתחברות';

  @override
  String get authEmailAlreadyRegistered => 'כבר קיים חשבון עם כתובת אימייל זו';

  @override
  String get authWeakPassword => 'בחר סיסמה ארוכה יותר';

  @override
  String get authRateLimited => 'יותר מדי ניסיונות. נסה שוב בעוד מספר דקות';

  @override
  String get authNetworkError => 'אין חיבור. בדוק את החיבור לרשת ונסה שוב';

  @override
  String get authGenericError => 'משהו השתבש. אנא נסה שוב';

  @override
  String get confirmEmailTitle => 'בדוק את האימייל שלך';

  @override
  String confirmEmailBody(String email) {
    return 'שלחנו קישור אימות אל $email. פתח אותו כדי לסיים את הגדרת החשבון.';
  }

  @override
  String get resendConfirmation => 'שליחה חוזרת של אימייל אימות';

  @override
  String get confirmationResent => 'אימייל אימות נשלח שוב';

  @override
  String get forgotPasswordTitle => 'איפוס סיסמה';

  @override
  String get forgotPasswordSubtitle =>
      'הזן את האימייל שאיתו נרשמת ונשלח לך קישור לבחירת סיסמה חדשה.';

  @override
  String get sendResetLink => 'שליחת קישור לאיפוס';

  @override
  String get resetLinkSentTitle => 'קישור לאיפוס נשלח';

  @override
  String resetLinkSentBody(String email) {
    return 'אם קיים חשבון עבור $email, קישור לאיפוס בדרך אליך.';
  }

  @override
  String get resetLinkSentHint =>
      'תוקף הקישור יפוג בעוד שעה. אם הוא לא מגיע, בדוק את תיקיית הספאם לפני שתבקש שוב.';

  @override
  String get tryAnotherEmail => 'שימוש באימייל אחר';

  @override
  String get resetPasswordTitle => 'בחירת סיסמה חדשה';

  @override
  String get resetPasswordSubtitle => 'בחר סיסמה שלא השתמשת בה בחשבון זה בעבר.';

  @override
  String get passwordChangedTitle => 'הסיסמה עודכנה';

  @override
  String get passwordChangedBody =>
      'הסיסמה החדשה שלך נשמרה. אתה מחובר ומוכן להמשיך.';

  @override
  String get demoModeHint => 'גרסת הדגמה — אין צורך בחשבון';

  @override
  String get demoModeFill => 'מילוי אוטומטי';

  @override
  String get welcomeTrackTitle => 'ראה לאן הולך הכסף שלך';

  @override
  String get welcomeTrackBody =>
      'רשום מה נכנס ומה יוצא. RainyPenny תהפוך את זה לתמונה ברורה שתוכל להבין באמת.';

  @override
  String get welcomeBudgetTitle => 'הגדר גבולות שמחזיקים מעמד';

  @override
  String get welcomeBudgetBody =>
      'תן לכל חלק בהוצאות שלך תקרת גג חודשית, וקבל התראה לפני שתחרוג ממנה במקום אחרי.';

  @override
  String get welcomeGoalsTitle => 'חסוך למה שחשוב באמת';

  @override
  String get welcomeGoalsBody =>
      'תן שם ליעד, הגדר סכום, וצפה בו מתמלא. קל יותר לבנות קרן ליום סגריר כשרואים אותה גדלה.';

  @override
  String get welcomePrivacyTitle => 'הכסף והנתונים שלך נשארים שלך';

  @override
  String get welcomePrivacyBody =>
      'הנתונים שייכים אך ורק לך. דבר אינו נמכר, ודבר אינו משותף עם אף אחד.';

  @override
  String stepOf(int step, int total) {
    return 'שלב $step מתוך $total';
  }

  @override
  String get onboardingNameTitle => 'איך לקרוא לך?';

  @override
  String get onboardingNameBody =>
      'נשתמש בשם זה רק כדי לברך אותך, ובשום מקום אחר.';

  @override
  String get onboardingNameHint =>
      'שם פרטי מספיק בהחלט. תוכל לשנות אותו בהמשך.';

  @override
  String get onboardingCurrencyTitle => 'באיזה מטבע אתה משתמש?';

  @override
  String get onboardingCurrencyBody =>
      'כל סכום באפליקציה יוצג במטבע זה. הבחירה בו אינה מבצעת המרה כלשהי.';

  @override
  String get onboardingCurrencySearch => 'חיפוש בכל המטבעות';

  @override
  String get onboardingAppearanceTitle => 'התאם את המראה לטעמך';

  @override
  String get onboardingAppearanceBody =>
      'בחר סגנון עיצוב. הכול משתנה תוך כדי הקשה, ותוכל לשנות זאת שוב בכל עת.';

  @override
  String get onboardingNotificationsTitle => 'הישאר בשליטה';

  @override
  String get onboardingNotificationsBody =>
      'תזכורת שקטה ברגע הנכון היא מה שהופך את המעקב להרגל קבוע.';

  @override
  String get onboardingNotifyReminders => 'תזכורת עדינה לרשום מה שהוצאת';

  @override
  String get onboardingNotifyBudget => 'התראה מוקדמת לפני שתקציב יאזל';

  @override
  String get onboardingNotifySummary => 'סיכום שבועי על לאן הלך הכסף שלך';

  @override
  String get onboardingNotifyEnable => 'הפעלת התראות';

  @override
  String get onboardingNotifyDone => 'הגדרות ההתראות נשמרו';

  @override
  String get onboardingNotifyLater => 'תוכל לשנות את כל זה בהגדרות בכל עת.';

  @override
  String get onboardingReadyTitle => 'הכול מוכן';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'הכול מוכן, $name';
  }

  @override
  String get onboardingReadyBody =>
      'סיימנו את ההגדרה. רוצה סיור קצר על איך הכול עובד?';

  @override
  String get onboardingTakeTour => 'הראה לי את האפליקציה';

  @override
  String get onboardingGoToApp => 'מעבר לאפליקציה';

  @override
  String get onboardingTourLater =>
      'לא עכשיו? המדריך נשאר בהגדרות לכל עת שתרצה.';

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
  String get guideDashboardTitle => 'לוח הבקרה שלך';

  @override
  String get guideDashboardBody =>
      'הכול מתחיל כאן. הכרטיס בראש העמוד מציג מה נותר לך; תחתיו מוצג מה שנכנס ומה שיצא בתקופה זו, ולאחר מכן ההוצאות, התקציבים והיעדים שלך.';

  @override
  String get guideDashboardTip1 =>
      'משוך את המסך כלפי מטה כדי לרענן הכול בבת אחת.';

  @override
  String get guideDashboardTip2 =>
      'הקש על כרטיס ההכנסות או ההוצאות כדי לעבור לרשימה המלאה.';

  @override
  String get guideDashboardTip3 =>
      'התרשימים והתובנות מתעדכנים ברגע שאתה רושם משהו.';

  @override
  String get guideAddTitle => 'רישום כספים';

  @override
  String get guideAddBody =>
      'הכפתור במרכז הסרגל הוא המקום שבו הכול מתחיל. הוא פותח תפריט קצר: הוצאה, הכנסה, חוב, תקציב או יעד חיסכון.';

  @override
  String get guideAddTip1 => 'הקש על הכפתור המרכזי כדי לרשום הכנסה או הוצאה.';

  @override
  String get guideAddTip2 =>
      'החזק אותו לחוץ כדי לעבור ישירות להוצאה חדשה ולדלג על התפריט.';

  @override
  String get guideAddTip3 =>
      'בחר תמיד קטגוריה — זה מה שגורם לתרשימים ולתקציבים לפעול כראוי.';

  @override
  String get guideCategoriesTitle => 'קטגוריות';

  @override
  String get guideCategoriesBody =>
      'קטגוריות הן הדרך שבה הוצאות מקובצות יחד. אלו שמגיעות עם האפליקציה מכסות את רוב הצרכים, ותוכל לשנות את שמן או להוסיף משלך.';

  @override
  String get guideCategoriesTip1 =>
      'עבור להגדרות ואז לניהול קטגוריות כדי לשנות או להוסיף.';

  @override
  String get guideCategoriesTip2 =>
      'כל מה שנשאר ללא קטגוריה נכנס ל«אחר», כך שהתרשימים נשארים מדויקים.';

  @override
  String get guideBudgetTitle => 'תקציבים';

  @override
  String get guideBudgetBody =>
      'תקציב הוא תקרת הוצאה חודשית לקטגוריה אחת. הפס מתמלא ככל שאתה מוציא ומשנה צבע כשמתקרבים למגבלה, כך שתדע לפני שתחרוג.';

  @override
  String get guideBudgetTip1 =>
      'התחל עם שתיים או שלוש קטגוריות, לא עם כולן בבת אחת.';

  @override
  String get guideBudgetTip2 =>
      'קבע את המגבלה מעט מעל מה שאתה מוציא בדרך כלל, ואז הדק אותה.';

  @override
  String get guideBudgetTip3 =>
      'השאר את התראות התקציב פועלות והאפליקציה תזהיר אותך כשהתקציב עומד להסתיים.';

  @override
  String get guideSavingsTitle => 'יעדי חיסכון';

  @override
  String get guideSavingsBody =>
      'ציין עבור מה אתה חוסך, קבע סכום ותאריך יעד, והאפליקציה תחשב כמה עליך לשים בצד בכל חודש כדי להגיע לשם.';

  @override
  String get guideSavingsTip1 =>
      'קל יותר להתמיד ביעד מוגדר מאשר בכוונה כללית לחסוך.';

  @override
  String get guideSavingsTip2 =>
      'כמה יעדים קטנים מושגים לעיתים קרובות יותר מאשר יעד אחד גדול.';

  @override
  String get guideLoansTitle => 'חובות והלוואות';

  @override
  String get guideLoansBody =>
      'רשום מה אתה חייב, כמה זה עולה ומתי מועד התשלום הבא. כל מה שאתה מחזיר נמצא ברשימה אחת עם הסכום הכולל שנותר.';

  @override
  String get guideLoansTip1 =>
      'הוסף את תאריך הפירעון ותזכורות התשלום יעקבו אחריו עבורך.';

  @override
  String get guideLoansTip2 =>
      'חוב שמסומן בפיגור מופיע באדום בלוח הבקרה עד לתשלומו.';

  @override
  String get guideReportsTitle => 'דוחות';

  @override
  String get guideReportsBody =>
      'המבט המעמיק: הכנסות מול הוצאות, הוצאות לפי קטגוריה, עמידה בתקציבים ואיזה חלק מההכנסה הצלחת לשמור.';

  @override
  String get guideReportsTip1 => 'עבור בין תצוגת שבוע, חודש ורבעון בראש המסך.';

  @override
  String get guideReportsTip2 =>
      'ייצא או שתף קובץ PDF — הוא נוצר בשפה ובכיוון הקריאה שלך.';

  @override
  String get guideSettingsTitle => 'הגדרות';

  @override
  String get guideSettingsBody =>
      'שפה, מטבע, צבעים והתראות נמצאים כאן, ושום דבר אינו נעול — שנה כל דבר מתי שתרצה.';

  @override
  String get guideSettingsTip1 =>
      'ארבעים שפות נתמכות, עם התאמה מלאה של כיוון הממשק לשפות מימין לשמאל.';

  @override
  String get guideSettingsTip2 =>
      'בחר אילו התראות תרצה לקבל ובאילו שעות מותר להן להגיע.';

  @override
  String get guideSettingsTip3 =>
      'שעות שקטות מעכבות את כל ההתראות עד לשעות הבוקר.';

  @override
  String get guideHabitTitle => 'הפוך את זה להרגל';

  @override
  String get guideHabitBody =>
      'האפליקציה טובה רק כמו הנתונים שאתה מזין בה. דקה ביום עדיפה על שעה פעם בחודש, ולאחר שבועיים המספרים יתחילו לספר לך סיפור אמיתי.';

  @override
  String get guideHabitTip1 => 'רשום הוצאות ברגע שהן קורות, לא בסוף השבוע.';

  @override
  String get guideHabitTip2 => 'הצץ בלוח הבקרה פעם ביום. עשר שניות יספיקו.';

  @override
  String get guideHabitTip3 =>
      'מדריך זה נשאר בהגדרות — חזור אליו בכל עת שתרצה.';

  @override
  String get appearance => 'מראה';

  @override
  String get themeCaption => 'בהיר, כהה או לפי הגדרות הטלפון שלך.';

  @override
  String get accentColor => 'צבע הדגשה';

  @override
  String get accentColorCaption => 'קובע את צבע הכפתורים, ההדגשות והתרשימים.';

  @override
  String get accentSemanticsNote =>
      'הכנסות והוצאות שומרות על הצבעים המקוריים שלהן בכל ערכת נושא, כך שמשמעות המספרים אינה משתנה לעולם בעקבות שינוי צבע ההדגשה.';

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
  String get suggestedLanguages => 'מומלצות';

  @override
  String get allLanguages => 'כל השפות';

  @override
  String get noLanguagesFound => 'לא נמצאו שפות';

  @override
  String get noLanguagesFoundMessage =>
      'נסה לחפש את השם באנגלית או את קוד השפה בן שתי האותיות.';

  @override
  String get rightToLeft => 'מימין לשמאל';

  @override
  String get replayGuide => 'הצג שוב את המדריך';

  @override
  String get replaySetup => 'הפעל שוב את ההגדרה הראשונית';

  @override
  String get replaySetupBody =>
      'עבור שוב על שאלות ההגדרה הראשונית. שום מידע שרשמת לא יימחק.';

  @override
  String get rateTitle => 'נהנה מ-RainyPenny?';

  @override
  String get rateBody =>
      'אתה משתמש באפליקציה כבר זמן מה. דירוג קצר לוקח רק רגע ועוזר לאחרים למצוא אותה.';

  @override
  String get rateAction => 'דרג את האפליקציה';

  @override
  String get rateLater => 'אולי מאוחר יותר';

  @override
  String get rateNever => 'לא, תודה';

  @override
  String get rateThanks => 'תודה רבה';

  @override
  String get monthlySalary => 'משכורת חודשית';

  @override
  String get remainingAmount => 'נותר';

  @override
  String get carriedForward => 'הועבר מחודש קודם';

  @override
  String get carriedForwardHint => 'יתרה שנותרה מהמחזור הקודם';

  @override
  String get totalSpending => 'סך כל ההוצאות';

  @override
  String get salaryCycle => 'מחזור משכורת';

  @override
  String get payday => 'יום המשכורת';

  @override
  String get paydayDescription =>
      'היום שבו נכנסת המשכורת שלך. החודש הפיננסי שלך מחושב מיום זה ועד ליום שלפני המשכורת הבאה.';

  @override
  String get paydayUpdated => 'יום המשכורת עודכן';

  @override
  String paydayDayOfMonth(int day) {
    return 'ה-$day בחודש';
  }

  @override
  String get paydayShortMonthNote =>
      'בחודשים קצרים יותר המחזור מתחיל ביום האחרון של החודש.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'עוד $count ימים ליום המשכורת',
      one: 'יום אחד ליום המשכורת',
      zero: 'היום האחרון במחזור',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'יום המשכורת הבא';

  @override
  String get spentSoFar => 'הוצא עד כה';

  @override
  String get dailyAllowance => 'תקציב הוצאה יומי בטוח';

  @override
  String get overspentNotice => 'הוצאת יותר ממה שנכנס במחזור זה.';

  @override
  String get backToThisMonth => 'חזרה לחודש הנוכחי';

  @override
  String get cycleRangeLabel => 'מחזור';

  @override
  String get noSalaryRecorded => 'עדיין לא נרשמה משכורת';

  @override
  String get addSalaryAction => 'הוסף את המשכורת שלך';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'מצוין';

  @override
  String get healthGood => 'טוב';

  @override
  String get healthFair => 'סביר';

  @override
  String get healthNeedsWork => 'טעון שיפור';

  @override
  String get healthExcellentBody =>
      'אתה חוסך היטב ועומד בתוך מסגרות התקציב שלך.';

  @override
  String get healthGoodBody => 'אתה במסלול הנכון עם ההוצאות שלך בתקופה זו.';

  @override
  String get healthFairBody => 'כמה תקציבים מתקרבים לקצה. שינויים קטנים יעזרו.';

  @override
  String get healthNeedsWorkBody =>
      'ההוצאות חורגות מהתוכנית שלך. כדאי להתחיל מהקטגוריה הגדולה ביותר.';

  @override
  String get factorSavingsRate => 'שיעור חיסכון';

  @override
  String get factorBudgetControl => 'בקרת תקציב';

  @override
  String get factorDebtLoad => 'עומס חובות';

  @override
  String get factorSpendingTrend => 'מגמת הוצאות';

  @override
  String factorKept(String percent) {
    return '$percent% נשמרו';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% נוצלו';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% מההכנסה';
  }

  @override
  String factorTrendUp(String percent) {
    return 'עלייה של $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'ירידה של $percent%';
  }

  @override
  String get howScoreWorks => 'איך הציון הזה מחושב';

  @override
  String get healthScoreExplainer =>
      'הציון שלך משלב ארבעה מדדים: איזה חלק מהכנסתך אתה שומר, עד כמה אתה עומד בתקציבים, איזה חלק מההכנסה מופנה לחובות, והאם ההוצאות שלך במגמת עלייה או ירידה.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% מהציון';
  }

  @override
  String get viewHealthDetails => 'צפה בפירוט המלא';

  @override
  String get saveChanges => 'שמירת שינויים';

  @override
  String get profileUpdated => 'הפרופיל עודכן';

  @override
  String get changePhoto => 'שינוי תמונה';

  @override
  String get removePhoto => 'הסרת תמונה';

  @override
  String get personalInformationIntro =>
      'השם והתמונה שלך מופיעים ברחבי האפליקציה. כתובת האימייל היא זו שאיתה אתה מתחבר.';

  @override
  String get emailNotEditable =>
      'פנה לתמיכה כדי לשנות את כתובת האימייל שבאמצעותה אתה מתחבר.';

  @override
  String get pressBackAgainToExit => 'לחץ שוב על חזרה כדי לצאת';

  @override
  String get categoryHousing => 'דיור';

  @override
  String get categoryFood => 'מזון ומסעדות';

  @override
  String get categoryTransport => 'תחבורה';

  @override
  String get categoryShopping => 'קניות';

  @override
  String get categoryBills => 'חשבונות ושירותים';

  @override
  String get categoryEntertainment => 'בידור ופנאי';

  @override
  String get categoryHealth => 'בריאות וכושר';

  @override
  String get categoryEducation => 'חינוך והשכלה';

  @override
  String get categoryTravel => 'נסיעות וטיולים';

  @override
  String get categorySalary => 'משכורת';

  @override
  String get categoryFreelance => 'עבודה עצמאית';

  @override
  String get categoryInvestments => 'השקעות';

  @override
  String get categoryGift => 'מתנה';

  @override
  String get categoryOther => 'אחר';

  @override
  String get categoryGroceries => 'מכולת וסופרמרקט';

  @override
  String get categoryDining => 'מסעדות';

  @override
  String get categoryCoffee => 'קפה';

  @override
  String get categoryUtilities => 'חשבונות בית';

  @override
  String get categoryInternet => 'אינטרנט';

  @override
  String get categoryPhone => 'טלפון';

  @override
  String get categoryInsurance => 'ביטוח';

  @override
  String get categorySubscriptions => 'מנויים';

  @override
  String get categoryPersonalCare => 'טיפוח אישי';

  @override
  String get categoryClothing => 'ביגוד';

  @override
  String get categoryElectronics => 'אלקטרוניקה';

  @override
  String get categoryHomeSupplies => 'ציוד לבית';

  @override
  String get categoryPets => 'חיות מחמד';

  @override
  String get categoryChildcare => 'טיפול בילדים';

  @override
  String get categoryFamily => 'משפחה';

  @override
  String get categoryFitness => 'כושר';

  @override
  String get categorySports => 'ספורט';

  @override
  String get categoryMedicine => 'תרופות';

  @override
  String get categoryMedical => 'טיפול רפואי';

  @override
  String get categoryCharity => 'תרומות וצדקה';

  @override
  String get categoryTaxes => 'מיסים';

  @override
  String get categoryFees => 'עמלות';

  @override
  String get categoryDebt => 'חובות';

  @override
  String get categorySavings => 'חיסכון';

  @override
  String get categoryRepairs => 'תיקונים';

  @override
  String get categoryCarMaintenance => 'תחזוקת רכב';

  @override
  String get categoryFuel => 'דלק';

  @override
  String get categoryParking => 'חניה';

  @override
  String get categoryPublicTransport => 'תחבורה ציבורית';

  @override
  String get categoryRent => 'שכר דירה';

  @override
  String get categoryMortgage => 'משכנתה';

  @override
  String get categoryBonus => 'בונוס';

  @override
  String get categoryCommission => 'עמלות מכירה';

  @override
  String get categoryPension => 'פנסיה';

  @override
  String get categoryInterest => 'ריבית';

  @override
  String get categoryDividends => 'דיבידנדים';

  @override
  String get categoryCashback => 'החזר כספי';

  @override
  String get categoryRefund => 'החזר';

  @override
  String get categoryRentalIncome => 'הכנסה משכירות';

  @override
  String get addCategory => 'קטגוריה חדשה';

  @override
  String get filterByCategory => 'סינון לפי קטגוריה';

  @override
  String get allCategories => 'כל הקטגוריות';

  @override
  String get clearFilters => 'ניקוי מסננים';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'כל הזמנים';

  @override
  String get customRange => 'טווח מותאם אישית';

  @override
  String get selectDateRange => 'בחר תקופה';

  @override
  String rangeApplied(String start, String end) {
    return 'מציג $start – $end';
  }

  @override
  String get loans => 'הלוואות';

  @override
  String get debts => 'חובות';

  @override
  String get noLoansTitle => 'אין הלוואות';

  @override
  String get noLoansBody => 'אין לך הלוואות פעילות.';

  @override
  String get emptyHealthTitle => 'אין עדיין ציון חוסן פיננסי';

  @override
  String get emptyHealthDescription =>
      'אנו זקוקים לקצת פעילות פיננסית כדי לחשב ציון חוסן פיננסי מדויק.';

  @override
  String get emptyHealthAddTransactions => 'הוסף תנועות הכנסה או הוצאה';

  @override
  String get emptyHealthSetBudgets => 'הגדר את התקציבים החודשיים שלך';

  @override
  String get emptyHealthTrackLoans => 'עקוב אחר הלוואות או חובות (אופציונלי)';

  @override
  String get emptyHealthCardSubtitle =>
      'הוסף תנועות כדי לחשב את הציון שלך ולקבל תובנות.';

  @override
  String get smartBudgetSplit => 'חלוקת תקציב חכמה';

  @override
  String get smartBudgetSplitSubtitle =>
      'הזן את המשכורת החודשית שלך כדי לחשב מגבלות מומלצות';

  @override
  String get monthlyNetSalary => 'משכורת חודשית נטו';

  @override
  String get categoryAllocations => 'הקצאות לפי קטגוריה';

  @override
  String totalBudgeted(String amount) {
    return 'סה״כ: $amount';
  }

  @override
  String get applyAllBudgets => 'החל את כל התקציבים';

  @override
  String get applyingBudgets => 'מחיל תקציבים...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נוצרו $count תקציבי קטגוריות.',
      one: 'נוצר תקציב קטגוריה אחד.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'שמירת התקציבים נכשלה.';

  @override
  String get recommendedBudget => 'תקציב מומלץ';
}
