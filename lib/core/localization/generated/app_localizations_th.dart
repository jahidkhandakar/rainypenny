// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppL10nTh extends AppL10n {
  AppL10nTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'เก็บออมไว้ยามฉุกเฉิน';

  @override
  String get navHome => 'หน้าหลัก';

  @override
  String get navTransactions => 'รายการ';

  @override
  String get navAdd => 'เพิ่ม';

  @override
  String get navReports => 'รายงาน';

  @override
  String get navProfile => 'โปรไฟล์';

  @override
  String greetingMorning(String name) {
    return 'สวัสดีตอนเช้า $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'สวัสดีตอนบ่าย $name';
  }

  @override
  String greetingEvening(String name) {
    return 'สวัสดีตอนเย็น $name';
  }

  @override
  String get greetingSubtitle => 'นี่คือภาพรวมการเงินของคุณ';

  @override
  String get totalBalance => 'ยอดคงเหลือรวม';

  @override
  String get vsLastPeriod => 'เทียบกับงวดก่อน';

  @override
  String get income => 'รายรับ';

  @override
  String get expenses => 'รายจ่าย';

  @override
  String get netBalance => 'ยอดสุทธิ';

  @override
  String get lastThirtyDays => '30 วันล่าสุด';

  @override
  String get quickActions => 'ทางลัด';

  @override
  String get addIncome => 'เพิ่มรายรับ';

  @override
  String get addExpense => 'เพิ่มรายจ่าย';

  @override
  String get spendingOverview => 'ภาพรวมการใช้จ่าย';

  @override
  String get recentTransactions => 'รายการล่าสุด';

  @override
  String get seeAll => 'ดูทั้งหมด';

  @override
  String get viewAll => 'แสดงทั้งหมด';

  @override
  String get budgetProgress => 'ความคืบหน้างบประมาณ';

  @override
  String get savingsGoals => 'เป้าหมายการออม';

  @override
  String get financialInsight => 'ข้อสังเกตทางการเงิน';

  @override
  String get financialHealth => 'สุขภาพการเงิน';

  @override
  String ofTotal(String total) {
    return 'จาก $total';
  }

  @override
  String get searchTransactions => 'ค้นหารายการ';

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterIncome => 'รายรับ';

  @override
  String get filterExpenses => 'รายจ่าย';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String get noTransactionsTitle => 'ไม่พบรายการ';

  @override
  String get noTransactionsBody =>
      'ลองเปลี่ยนคำค้นหรือตัวกรองเพื่อดูรายการเพิ่มเติม';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      zero: 'ไม่มีรายการ',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'เพิ่มรายการ';

  @override
  String get amount => 'จำนวนเงิน';

  @override
  String get category => 'หมวดหมู่';

  @override
  String get date => 'วันที่';

  @override
  String get note => 'บันทึก';

  @override
  String get noteHint => 'บันทึก (ไม่บังคับ)';

  @override
  String get saveIncome => 'บันทึกรายรับ';

  @override
  String get saveExpense => 'บันทึกรายจ่าย';

  @override
  String get selectCategory => 'เลือกหมวดหมู่';

  @override
  String get transactionSaved => 'บันทึกแล้ว';

  @override
  String get amountRequired => 'ใส่จำนวนเงินมากกว่าศูนย์';

  @override
  String get titleRequired => 'ตั้งชื่อให้รายการนี้';

  @override
  String get descriptionLabel => 'รายละเอียด';

  @override
  String get descriptionHint => 'เช่น ซื้อของเข้าบ้าน';

  @override
  String get budget => 'งบประมาณ';

  @override
  String get budgets => 'งบประมาณ';

  @override
  String get totalBudget => 'งบประมาณรวม';

  @override
  String get spent => 'ใช้ไป';

  @override
  String get remaining => 'เหลือ';

  @override
  String budgetUsed(int percent) {
    return 'ใช้ไป $percent%';
  }

  @override
  String get onTrack => 'ตามแผน';

  @override
  String get approachingLimit => 'ใกล้ถึงขีดจำกัด';

  @override
  String get overBudget => 'เกินงบ';

  @override
  String get savings => 'เงินออม';

  @override
  String get yourGoals => 'เป้าหมายของคุณ';

  @override
  String get saved => 'ออมได้';

  @override
  String get target => 'เป้าหมาย';

  @override
  String get monthlyContribution => 'ต่อเดือน';

  @override
  String get addFunds => 'เติมเงิน';

  @override
  String get goalComplete => 'ถึงเป้าหมายแล้ว';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'อีก $count เดือน',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'สินเชื่อและหนี้สิน';

  @override
  String get totalOutstanding => 'ยอดค้างชำระรวม';

  @override
  String get monthlyPayment => 'ต่อเดือน';

  @override
  String get nextPayment => 'งวดถัดไป';

  @override
  String paidOff(int percent) {
    return 'ชำระแล้ว $percent%';
  }

  @override
  String get interestRate => 'ดอกเบี้ย';

  @override
  String get upcomingPayments => 'งวดที่ใกล้ถึง';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ครบกำหนดในอีก $count วัน',
      one: 'ครบกำหนดพรุ่งนี้',
      zero: 'ครบกำหนดวันนี้',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'เลยกำหนด';

  @override
  String get reports => 'รายงาน';

  @override
  String get week => 'สัปดาห์';

  @override
  String get month => 'เดือน';

  @override
  String get quarter => 'ไตรมาส';

  @override
  String get incomeVsExpenses => 'รายรับกับรายจ่าย';

  @override
  String get spendingByCategory => 'รายจ่ายตามหมวดหมู่';

  @override
  String get budgetPerformance => 'ผลของงบประมาณ';

  @override
  String get insights => 'ข้อสังเกต';

  @override
  String get savingsRate => 'อัตราการออม';

  @override
  String get profile => 'โปรไฟล์';

  @override
  String get account => 'บัญชี';

  @override
  String get personalInformation => 'ข้อมูลส่วนตัว';

  @override
  String get changePassword => 'เปลี่ยนรหัสผ่าน';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get preferences => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get currency => 'สกุลเงิน';

  @override
  String get theme => 'ธีม';

  @override
  String get security => 'ความปลอดภัย';

  @override
  String get privacyAndSecurity => 'ความเป็นส่วนตัวและความปลอดภัย';

  @override
  String get help => 'ช่วยเหลือ';

  @override
  String get helpAndSupport => 'ช่วยเหลือและสนับสนุน';

  @override
  String get termsAndConditions => 'ข้อกำหนดและเงื่อนไข';

  @override
  String get logOut => 'ออกจากระบบ';

  @override
  String memberSince(String date) {
    return 'สมาชิกตั้งแต่ $date';
  }

  @override
  String get themeSystem => 'ตามระบบ';

  @override
  String get themeLight => 'สว่าง';

  @override
  String get themeDark => 'มืด';

  @override
  String get settings => 'ตั้งค่า';

  @override
  String get noNotificationsTitle => 'ดูครบหมดแล้ว';

  @override
  String get noNotificationsBody => 'ข้อสังเกตและการเตือนใหม่จะปรากฏที่นี่';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get done => 'เสร็จสิ้น';

  @override
  String get retry => 'ลองใหม่';

  @override
  String get close => 'ปิด';

  @override
  String get somethingWentWrong => 'เกิดข้อผิดพลาด';

  @override
  String get comingSoon => 'จะมาในรุ่นเต็ม';

  @override
  String get edit => 'แก้ไข';

  @override
  String get delete => 'ลบ';

  @override
  String get undo => 'เลิกทำ';

  @override
  String get add => 'เพิ่ม';

  @override
  String get create => 'สร้าง';

  @override
  String get nameRequired => 'ตั้งชื่อให้สิ่งนี้';

  @override
  String get amountAboveZero => 'ใส่จำนวนเงินมากกว่าศูนย์';

  @override
  String get editTransaction => 'แก้ไขรายการ';

  @override
  String get deleteTransaction => 'ลบรายการนี้ไหม';

  @override
  String deleteTransactionBody(String title) {
    return '$title จะถูกลบออกจากบัญชีของคุณ';
  }

  @override
  String get transactionDeleted => 'ลบรายการแล้ว';

  @override
  String get transactionUpdated => 'อัปเดตรายการแล้ว';

  @override
  String get newBudget => 'งบประมาณใหม่';

  @override
  String get editBudget => 'แก้ไขงบประมาณ';

  @override
  String get budgetLimit => 'วงเงินต่อเดือน';

  @override
  String get deleteBudget => 'ลบงบประมาณนี้ไหม';

  @override
  String deleteBudgetBody(String category) {
    return 'งบประมาณ $category จะถูกลบ รายการของคุณไม่ได้รับผลกระทบ';
  }

  @override
  String get budgetSaved => 'บันทึกงบประมาณแล้ว';

  @override
  String get budgetDeleted => 'ลบงบประมาณแล้ว';

  @override
  String get allCategoriesBudgeted => 'ทุกหมวดหมู่มีงบประมาณแล้ว';

  @override
  String get noBudgetsTitle => 'ยังไม่มีงบประมาณ';

  @override
  String get noBudgetsBody =>
      'ตั้งวงเงินต่อเดือนให้หมวดหมู่หนึ่งเพื่อเริ่มติดตาม';

  @override
  String get newGoal => 'เป้าหมายใหม่';

  @override
  String get editGoal => 'แก้ไขเป้าหมาย';

  @override
  String get goalName => 'ชื่อเป้าหมาย';

  @override
  String get goalNameHint => 'เช่น เงินสำรองฉุกเฉิน';

  @override
  String get targetAmount => 'จำนวนเป้าหมาย';

  @override
  String get alreadySaved => 'ออมไว้แล้ว';

  @override
  String get deleteGoal => 'ลบเป้าหมายนี้ไหม';

  @override
  String deleteGoalBody(String name) {
    return '$name และความคืบหน้าจะถูกลบ';
  }

  @override
  String get goalSaved => 'บันทึกเป้าหมายแล้ว';

  @override
  String get goalDeleted => 'ลบเป้าหมายแล้ว';

  @override
  String get noGoalsTitle => 'ยังไม่มีเป้าหมายการออม';

  @override
  String get noGoalsBody =>
      'ตั้งเป้าหมายไว้ แล้ว RainyPenny จะติดตามความคืบหน้าให้';

  @override
  String get fundsAdded => 'เติมเงินแล้ว';

  @override
  String get newDebt => 'สินเชื่อหรือบัตรใหม่';

  @override
  String get editDebt => 'แก้ไขสินเชื่อ';

  @override
  String get debtName => 'ชื่อ';

  @override
  String get debtNameHint => 'เช่น สินเชื่อรถยนต์';

  @override
  String get lender => 'ผู้ให้กู้';

  @override
  String get lenderHint => 'เช่น ธนาคารกสิกรไทย';

  @override
  String get originalAmount => 'จำนวนเงินต้น';

  @override
  String get creditLimit => 'วงเงินบัตร';

  @override
  String get remainingBalance => 'ยอดคงเหลือ';

  @override
  String get interestRatePercent => 'อัตราดอกเบี้ย (%)';

  @override
  String get kindLoan => 'สินเชื่อ';

  @override
  String get kindCreditCard => 'บัตรเครดิต';

  @override
  String get recordPayment => 'บันทึกการชำระ';

  @override
  String get paymentRecorded => 'บันทึกการชำระแล้ว';

  @override
  String get deleteDebt => 'ลบหนี้นี้ไหม';

  @override
  String deleteDebtBody(String name) {
    return '$name จะถูกลบออกจากรายการหนี้ของคุณ';
  }

  @override
  String get debtSaved => 'บันทึกแล้ว';

  @override
  String get debtDeleted => 'ลบแล้ว';

  @override
  String get noDebtsTitle => 'ยังไม่ได้ติดตามหนี้ใด';

  @override
  String get noDebtsBody => 'เพิ่มสินเชื่อหรือบัตรเครดิตเพื่อคอยดูการผ่อนชำระ';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'งบ $subject เกินแล้ว';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'งวดนี้คุณใช้เกินงบ $subject ไป $amount';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject ใกล้ถึงขีดจำกัด';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'งบ $subject ใช้ไปแล้ว $percent% เหลืออีก $amount';
  }

  @override
  String get insightOverIncomeTitle => 'รายจ่ายสูงกว่ารายรับ';

  @override
  String get insightOverIncomeBody =>
      'งวดนี้คุณใช้มากกว่าที่หาได้ ลองดูหมวดที่ใช้มากที่สุดเพื่อดึงกลับให้สมดุล';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'รายจ่าย $subject เพิ่มขึ้น';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'รายจ่าย $subject ของคุณสูงกว่างวดก่อน $percent%';
  }

  @override
  String get insightTrendDownTitle => 'รายจ่ายกำลังลดลง';

  @override
  String insightTrendDownBody(int percent) {
    return 'รายจ่ายโดยรวมต่ำกว่างวดก่อน $percent%';
  }

  @override
  String get insightTrendUpTitle => 'รายจ่ายกำลังเพิ่มขึ้น';

  @override
  String insightTrendUpBody(int percent) {
    return 'รายจ่ายโดยรวมสูงกว่างวดก่อน $percent%';
  }

  @override
  String get insightSavingsStrongTitle => 'งวดนี้ออมได้ดีมาก';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'คุณเก็บไว้ได้ $percent% ของรายรับ — สูงกว่าเป้า $target% อยู่มาก';
  }

  @override
  String get insightSavingsLowTitle => 'อัตราการออมต่ำกว่าเป้า';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'งวดนี้คุณเก็บไว้ได้ $percent% ของรายรับ ตั้งเป้าไว้ที่ $target%';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject ใกล้ครบแล้ว';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'เหลืออีกเพียง $amount ก็ถึง $subject';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject เป็นไปตามแผน';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months เดือน',
    );
    return 'ที่เดือนละ $amount คุณจะถึงเป้าหมายนี้ใน $_temp0';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'การชำระ $subject เลยกำหนด';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days วัน',
    );
    return 'การชำระ $amount ของ $subject เลยกำหนดมา $_temp0 แล้ว';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'ใกล้ถึงกำหนดชำระ $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ในอีก $days วัน',
      one: 'พรุ่งนี้',
      zero: 'วันนี้',
    );
    return '$amount ครบกำหนด$_temp0';
  }

  @override
  String get signIn => 'เข้าสู่ระบบ';

  @override
  String get signUp => 'สร้างบัญชี';

  @override
  String get signInSubtitle => 'ยินดีต้อนรับกลับมา เงินของคุณรออยู่';

  @override
  String get signUpSubtitle => 'กรอกไม่กี่ช่องก็พร้อมใช้';

  @override
  String get emailLabel => 'อีเมล';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'รหัสผ่าน';

  @override
  String get passwordHint => 'อย่างน้อย 8 ตัวอักษร';

  @override
  String get fullNameLabel => 'ชื่อ-นามสกุล';

  @override
  String get fullNameHint => 'สมชาย ใจดี';

  @override
  String get forgotPassword => 'ลืมรหัสผ่าน?';

  @override
  String get resetSent => 'ตรวจอีเมลของคุณเพื่อดูลิงก์ตั้งรหัสใหม่';

  @override
  String get noAccountYet => 'เพิ่งมาใหม่?';

  @override
  String get haveAccount => 'มีบัญชีอยู่แล้ว?';

  @override
  String get emailInvalid => 'ใส่ที่อยู่อีเมลที่ถูกต้อง';

  @override
  String get passwordTooShort => 'ใช้อย่างน้อย 8 ตัวอักษร';

  @override
  String get signOutConfirm => 'ออกจากระบบไหม';

  @override
  String get signOutBody => 'คุณจะต้องเข้าสู่ระบบใหม่เพื่อดูการเงินของคุณ';

  @override
  String get dataSource => 'แหล่งข้อมูล';

  @override
  String get insightWeeklySummaryTitle => 'ทบทวนสัปดาห์ของคุณ';

  @override
  String get insightWeeklySummaryBody =>
      'ดูว่าเงินไปไหนบ้างในสัปดาห์นี้ และงบประมาณยังอยู่ในกรอบไหม';

  @override
  String get notificationSettings => 'การแจ้งเตือน';

  @override
  String get alertsSection => 'การเตือน';

  @override
  String get budgetAlerts => 'เตือนเรื่องงบประมาณ';

  @override
  String get budgetAlertsBody => 'เมื่องบใกล้ถึงหรือเกินขีดจำกัด';

  @override
  String get paymentReminders => 'เตือนการชำระเงิน';

  @override
  String get paymentRemindersBody => 'ล่วงหน้าไม่กี่วันก่อนถึงกำหนด';

  @override
  String get savingsUpdates => 'ความคืบหน้าการออม';

  @override
  String get savingsUpdatesBody => 'ความคืบหน้าสู่เป้าหมายของคุณ';

  @override
  String get weeklySummaryLabel => 'สรุปรายสัปดาห์';

  @override
  String get weeklySummaryBody => 'สรุปของสัปดาห์ที่ผ่านมา';

  @override
  String get scheduleSection => 'ช่วงเวลา';

  @override
  String get reminderTime => 'เวลาเตือน';

  @override
  String get quietHours => 'ช่วงเวลาเงียบ';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'วันสรุป';

  @override
  String get permissionRequired => 'การแจ้งเตือนถูกปิดอยู่';

  @override
  String get permissionRequiredBody =>
      'อนุญาตการแจ้งเตือน เพื่อให้ RainyPenny เตือนคุณก่อนที่งบหรือการชำระเงินจะหลุดมือ';

  @override
  String get allowNotifications => 'อนุญาตการแจ้งเตือน';

  @override
  String get permissionDenied =>
      'การแจ้งเตือนถูกบล็อก คุณเปิดใหม่ได้ในการตั้งค่าเครื่อง';

  @override
  String get upcomingAlerts => 'ตั้งเวลาไว้';

  @override
  String get noScheduledAlerts => 'ตอนนี้ยังไม่มีอะไรตั้งเวลาไว้';

  @override
  String get noScheduledAlertsBody =>
      'การเตือนจะปรากฏที่นี่เมื่องบและการชำระเงินใกล้ถึงกำหนด';

  @override
  String scheduledFor(String date) {
    return 'ตั้งไว้วันที่ $date';
  }

  @override
  String get everyWeek => 'ทุกสัปดาห์';

  @override
  String get allNotificationsOff => 'ปิดการแจ้งเตือนทั้งหมด';

  @override
  String get needsAttention => 'ต้องดูแล';

  @override
  String get quickActionsTitle => 'อยากทำอะไรดี';

  @override
  String get createSection => 'บันทึก';

  @override
  String get jumpToSection => 'ไปที่';

  @override
  String get addLoanAction => 'เพิ่มสินเชื่อ';

  @override
  String get addBudgetAction => 'เพิ่มงบประมาณ';

  @override
  String get addGoalAction => 'เพิ่มเป้าหมาย';

  @override
  String get longPressHint => 'เคล็ดลับ: กด + ค้างไว้เพื่อบันทึกรายจ่ายทันที';

  @override
  String get searchCurrencies => 'ค้นหาสกุลเงิน';

  @override
  String get noCurrenciesFound => 'ไม่พบสกุลเงิน';

  @override
  String get noCurrenciesFoundMessage => 'ลองรหัส สัญลักษณ์ หรือชื่ออื่น';

  @override
  String get popularCurrencies => 'ที่ใช้บ่อย';

  @override
  String get allCurrencies => 'สกุลเงินทั้งหมด';

  @override
  String get totalLoanAmount => 'ยอดสินเชื่อรวม';

  @override
  String get installmentAmount => 'ยอดผ่อนต่องวด';

  @override
  String get numberOfInstallments => 'จำนวนงวด';

  @override
  String get paidInstallments => 'งวดที่ชำระแล้ว';

  @override
  String get remainingInstallments => 'งวดที่เหลือ';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'ชำระแล้ว $paid จาก $total งวด';
  }

  @override
  String get finalPayment => 'งวดสุดท้าย';

  @override
  String get paymentDueDate => 'วันครบกำหนดชำระ';

  @override
  String dueOnDayOfMonth(int day) {
    return 'วันที่ $day ของทุกเดือน';
  }

  @override
  String get loanStatus => 'สถานะ';

  @override
  String get statusActive => 'ตามแผน';

  @override
  String get statusDueSoon => 'ใกล้ครบกำหนด';

  @override
  String get statusOverdue => 'เลยกำหนด';

  @override
  String get statusCompleted => 'ชำระครบแล้ว';

  @override
  String get repaymentProgress => 'ความคืบหน้าการชำระ';

  @override
  String get byAmount => 'ตามจำนวนเงิน';

  @override
  String get byInstallments => 'ตามงวด';

  @override
  String get startDate => 'วันที่เริ่ม';

  @override
  String get openEnded => 'ไม่มีกำหนดสิ้นสุด';

  @override
  String get loanDetails => 'รายละเอียดสินเชื่อ';

  @override
  String get notSet => 'ยังไม่ได้ตั้ง';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject ครบกำหนดวันนี้';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'การชำระ $amount ครบกำหนดวันนี้ แตะครั้งเดียวก็ทันเวลา';
  }

  @override
  String get remindMorningTitle => 'อรุณสวัสดิ์ ☀️';

  @override
  String get remindMorningBody =>
      'เริ่มวันด้วยการรู้ทันเงินของคุณ มีอะไรจากเมื่อวานต้องเพิ่มไหม';

  @override
  String get remindNoonTitle => 'เช็กตอนเที่ยง';

  @override
  String get remindNoonBody =>
      'มื้อกลางวัน กาแฟ ค่ารถ? บันทึกได้ในไม่กี่วินาที';

  @override
  String get remindAfternoonTitle => 'ตามเก็บสักหน่อย';

  @override
  String get remindAfternoonBody =>
      'บันทึกที่ใช้ไปถึงตอนนี้ ตัวเลขของวันนี้จะได้ตรง';

  @override
  String get remindEveningTitle => 'ปิดท้ายวันนี้';

  @override
  String get remindEveningBody => 'สองนาทีตอนนี้ ตัวเลขของวันนี้ก็ครบแล้ว';

  @override
  String get happyWeekendTitle => 'สุขสันต์วันหยุด! 🎉';

  @override
  String get happyWeekendBody =>
      'พักผ่อนให้เต็มที่ — และคอยดูรายจ่ายช่วงวันหยุดสักนิด';

  @override
  String get dailyReminders => 'เตือนบันทึกรายจ่ายรายวัน';

  @override
  String get dailyRemindersBody => 'การกระตุ้นเบา ๆ ให้รายจ่ายเป็นปัจจุบันเสมอ';

  @override
  String get weekendGreeting => 'ทักทายวันหยุด';

  @override
  String get weekendGreetingBody => 'คำทักทายเมื่อวันหยุดของคุณเริ่มต้น';

  @override
  String get reminderTimesSection => 'ช่วงเวลาเตือน';

  @override
  String get slotMorning => 'เช้า';

  @override
  String get slotNoon => 'เที่ยง';

  @override
  String get slotAfternoon => 'บ่าย';

  @override
  String get slotEvening => 'เย็น';

  @override
  String get everyDay => 'ทุกวัน';

  @override
  String get financialReport => 'รายงานการเงิน';

  @override
  String get preparedFor => 'จัดทำให้';

  @override
  String get generatedOn => 'สร้างเมื่อ';

  @override
  String get reportDisclaimer => 'RainyPenny สร้างจากบันทึกของคุณเอง';

  @override
  String pageOf(int page, int total) {
    return 'หน้า $page จาก $total';
  }

  @override
  String get overview => 'ภาพรวม';

  @override
  String get description => 'รายละเอียด';

  @override
  String get totalIncome => 'รายรับรวม';

  @override
  String get totalExpenses => 'รายจ่ายรวม';

  @override
  String get totalSaved => 'ออมได้ทั้งหมด';

  @override
  String get shareOfTotal => 'สัดส่วน';

  @override
  String get used => 'ใช้ไป';

  @override
  String get goal => 'เป้าหมาย';

  @override
  String get targetDate => 'วันที่เป้าหมาย';

  @override
  String get progress => 'ความคืบหน้า';

  @override
  String get paidOffShort => 'ชำระแล้ว';

  @override
  String get transactions => 'รายการ';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'และอีก $count รายการ',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'ส่งออก PDF';

  @override
  String get sharePdf => 'แชร์รายงาน';

  @override
  String get preparingReport => 'กำลังจัดทำรายงาน…';

  @override
  String get reportReady => 'รายงานพร้อมแล้ว';

  @override
  String get reportFailed => 'สร้างรายงานไม่สำเร็จ';

  @override
  String get categories => 'หมวดหมู่';

  @override
  String get categoriesIntro =>
      'เพิ่มหมวดหมู่ของคุณเอง เพื่อจัดรายรับรายจ่ายให้ตรงกับวิธีที่คุณคิดจริง ๆ';

  @override
  String get expenseCategories => 'หมวดรายจ่าย';

  @override
  String get incomeCategories => 'หมวดรายรับ';

  @override
  String get newCategory => 'หมวดหมู่ใหม่';

  @override
  String get editCategory => 'แก้ไขหมวดหมู่';

  @override
  String get categoryName => 'ชื่อ';

  @override
  String get categoryNameHint => 'เช่น สัตว์เลี้ยง';

  @override
  String get icon => 'ไอคอน';

  @override
  String get categorySaved => 'บันทึกหมวดหมู่แล้ว';

  @override
  String get categoryDeleted => 'ลบหมวดหมู่แล้ว';

  @override
  String get deleteCategory => 'ลบหมวดหมู่นี้ไหม';

  @override
  String deleteCategoryBody(String name) {
    return '$name จะถูกลบออกจากหมวดหมู่ของคุณ';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ยังมี $count รายการที่ใช้หมวดหมู่นี้อยู่',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'ยังไม่มีอะไรที่นี่';

  @override
  String get builtIn => 'มาพร้อมแอป';

  @override
  String get manageCategories => 'จัดการหมวดหมู่';

  @override
  String get expense => 'รายจ่าย';

  @override
  String get languageNote =>
      'ภาษาอาหรับ อูรดู เปอร์เซีย และฮีบรู จะสลับทั้งหน้าจอเป็นขวาไปซ้าย รวมถึงกราฟและรายงาน PDF';

  @override
  String get next => 'ถัดไป';

  @override
  String get back => 'ย้อนกลับ';

  @override
  String get skip => 'ข้าม';

  @override
  String get continueLabel => 'ดำเนินการต่อ';

  @override
  String get selected => 'เลือกอยู่';

  @override
  String get passwordRequired => 'ใส่รหัสผ่านของคุณ';

  @override
  String get newPasswordLabel => 'รหัสผ่านใหม่';

  @override
  String get confirmPasswordLabel => 'ยืนยันรหัสผ่าน';

  @override
  String get passwordsDoNotMatch => 'รหัสผ่านทั้งสองต้องตรงกัน';

  @override
  String get showPassword => 'แสดงรหัสผ่าน';

  @override
  String get hidePassword => 'ซ่อนรหัสผ่าน';

  @override
  String get savePassword => 'บันทึกรหัสผ่าน';

  @override
  String get backToSignIn => 'กลับไปหน้าเข้าสู่ระบบ';

  @override
  String get alreadyHaveAccount => 'ฉันมีบัญชีอยู่แล้ว';

  @override
  String get getStarted => 'เริ่มกันเลย';

  @override
  String get acceptTerms =>
      'ฉันยอมรับข้อกำหนดการให้บริการและนโยบายความเป็นส่วนตัว';

  @override
  String get acceptTermsRequired => 'โปรดยอมรับเพื่อไปต่อ';

  @override
  String get passwordStrengthTooShort => 'สั้นเกินไป';

  @override
  String get passwordStrengthWeak => 'อ่อน';

  @override
  String get passwordStrengthFair => 'พอใช้';

  @override
  String get passwordStrengthGood => 'ดี';

  @override
  String get passwordStrengthStrong => 'แข็งแรง';

  @override
  String get passwordAdvice =>
      'วลียาว ๆ ที่คุณจำได้ ดีกว่ารหัสสั้นที่เต็มไปด้วยสัญลักษณ์ อย่าใช้ซ้ำกับที่อื่น';

  @override
  String get authInvalidCredentials => 'อีเมลและรหัสผ่านนี้ไม่ตรงกับบัญชีใด';

  @override
  String get authEmailNotConfirmed => 'ยืนยันที่อยู่อีเมลก่อนเข้าสู่ระบบ';

  @override
  String get authEmailAlreadyRegistered => 'มีบัญชีที่ใช้อีเมลนี้อยู่แล้ว';

  @override
  String get authWeakPassword => 'เลือกรหัสผ่านที่ยาวกว่านี้';

  @override
  String get authRateLimited => 'ลองมากเกินไป กรุณาลองใหม่ในอีกไม่กี่นาที';

  @override
  String get authNetworkError => 'ไม่มีการเชื่อมต่อ ตรวจเครือข่ายแล้วลองใหม่';

  @override
  String get authGenericError => 'เกิดข้อผิดพลาด กรุณาลองใหม่';

  @override
  String get confirmEmailTitle => 'ตรวจอีเมลของคุณ';

  @override
  String confirmEmailBody(String email) {
    return 'เราส่งลิงก์ยืนยันไปที่ $email แล้ว เปิดลิงก์เพื่อตั้งค่าบัญชีให้เสร็จ';
  }

  @override
  String get resendConfirmation => 'ส่งอีเมลยืนยันอีกครั้ง';

  @override
  String get confirmationResent => 'ส่งอีเมลยืนยันแล้ว';

  @override
  String get forgotPasswordTitle => 'ตั้งรหัสผ่านใหม่';

  @override
  String get forgotPasswordSubtitle =>
      'ใส่อีเมลที่คุณใช้สมัคร แล้วเราจะส่งลิงก์ให้คุณตั้งรหัสผ่านใหม่';

  @override
  String get sendResetLink => 'ส่งลิงก์ตั้งรหัสใหม่';

  @override
  String get resetLinkSentTitle => 'ส่งลิงก์แล้ว';

  @override
  String resetLinkSentBody(String email) {
    return 'ถ้า $email มีบัญชีอยู่ ลิงก์ตั้งรหัสใหม่กำลังไปถึง';
  }

  @override
  String get resetLinkSentHint =>
      'ลิงก์หมดอายุใน 1 ชั่วโมง ถ้ายังไม่ได้รับ ลองดูโฟลเดอร์สแปมก่อนขอลิงก์ใหม่';

  @override
  String get tryAnotherEmail => 'ใช้อีเมลอื่น';

  @override
  String get resetPasswordTitle => 'เลือกรหัสผ่านใหม่';

  @override
  String get resetPasswordSubtitle =>
      'เลือกสิ่งที่คุณไม่เคยใช้กับบัญชีนี้มาก่อน';

  @override
  String get passwordChangedTitle => 'อัปเดตรหัสผ่านแล้ว';

  @override
  String get passwordChangedBody =>
      'บันทึกรหัสผ่านใหม่แล้ว คุณเข้าสู่ระบบอยู่และพร้อมใช้งาน';

  @override
  String get demoModeHint => 'รุ่นทดลอง — ไม่ต้องมีบัญชี';

  @override
  String get demoModeFill => 'กรอกให้';

  @override
  String get welcomeTrackTitle => 'เห็นว่าเงินของคุณไปไหน';

  @override
  String get welcomeTrackBody =>
      'บันทึกสิ่งที่เข้ามาและสิ่งที่ออกไป แล้ว RainyPenny จะเปลี่ยนมันเป็นภาพที่อ่านเข้าใจได้จริง';

  @override
  String get welcomeBudgetTitle => 'ตั้งขีดจำกัดที่อยู่มือ';

  @override
  String get welcomeBudgetBody =>
      'กำหนดเพดานรายเดือนให้แต่ละส่วนของรายจ่าย แล้วรู้ตัวก่อนจะเกิน ไม่ใช่หลังจากนั้น';

  @override
  String get welcomeGoalsTitle => 'ออมเพื่อสิ่งที่สำคัญ';

  @override
  String get welcomeGoalsBody =>
      'ตั้งชื่อเป้าหมาย กำหนดจำนวน แล้วดูมันเต็มขึ้นเรื่อย ๆ เงินสำรองสร้างง่ายขึ้นเมื่อคุณมองเห็นมัน';

  @override
  String get welcomePrivacyTitle => 'เงินของคุณยังเป็นของคุณ';

  @override
  String get welcomePrivacyBody =>
      'ตัวเลขของคุณเป็นของคุณคนเดียว ไม่มีการขายและไม่มีการแบ่งปันให้ใคร';

  @override
  String stepOf(int step, int total) {
    return 'ขั้นที่ $step จาก $total';
  }

  @override
  String get onboardingNameTitle => 'ให้เราเรียกคุณว่าอะไรดี';

  @override
  String get onboardingNameBody => 'ใช้แค่ทักทายคุณเท่านั้น ไม่ใช้ที่อื่น';

  @override
  String get onboardingNameHint => 'ชื่อเล่นก็พอ เปลี่ยนทีหลังได้';

  @override
  String get onboardingCurrencyTitle => 'คุณใช้สกุลเงินอะไร';

  @override
  String get onboardingCurrencyBody =>
      'ทุกจำนวนเงินในแอปจะแสดงด้วยสกุลนี้ การเลือกไม่ได้แปลงค่าใด ๆ';

  @override
  String get onboardingCurrencySearch => 'ค้นหาทุกสกุลเงิน';

  @override
  String get onboardingAppearanceTitle => 'ทำให้เป็นแบบคุณ';

  @override
  String get onboardingAppearanceBody =>
      'เลือกหน้าตาที่ชอบ ทุกอย่างเปลี่ยนทันทีที่แตะ และกลับมาแก้ได้เสมอ';

  @override
  String get onboardingNotificationsTitle => 'อย่าให้หลุดมือ';

  @override
  String get onboardingNotificationsBody =>
      'การเตือนเบา ๆ ในจังหวะที่ใช่ คือสิ่งที่ทำให้กลายเป็นนิสัย';

  @override
  String get onboardingNotifyReminders => 'เตือนเบา ๆ ให้บันทึกสิ่งที่ใช้ไป';

  @override
  String get onboardingNotifyBudget => 'บอกล่วงหน้าก่อนงบจะหมด';

  @override
  String get onboardingNotifySummary => 'สรุปรายสัปดาห์ว่าเงินไปไหนบ้าง';

  @override
  String get onboardingNotifyEnable => 'เปิดการแจ้งเตือน';

  @override
  String get onboardingNotifyDone => 'บันทึกการตั้งค่าแจ้งเตือนแล้ว';

  @override
  String get onboardingNotifyLater =>
      'ทั้งหมดนี้เปลี่ยนได้ในการตั้งค่าเมื่อไรก็ได้';

  @override
  String get onboardingReadyTitle => 'พร้อมแล้ว';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'พร้อมแล้ว $name';
  }

  @override
  String get onboardingReadyBody =>
      'ตั้งค่าเสร็จเรียบร้อย อยากดูคร่าว ๆ ไหมว่าทุกอย่างทำงานอย่างไร';

  @override
  String get onboardingTakeTour => 'พาชมหน่อย';

  @override
  String get onboardingGoToApp => 'พาไปที่แอปเลย';

  @override
  String get onboardingTourLater =>
      'ยังไม่ตอนนี้? คู่มืออยู่ในการตั้งค่า เปิดดูได้ตลอด';

  @override
  String get beginnersGuide => 'คู่มือสำหรับผู้เริ่มต้น';

  @override
  String get guideFinish => 'เสร็จสิ้น';

  @override
  String chapterOf(int number, int total) {
    return 'บทที่ $number จาก $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'เปิด$screen';
  }

  @override
  String get guideDashboardTitle => 'หน้าหลักของคุณ';

  @override
  String get guideDashboardBody =>
      'ทุกอย่างเริ่มที่นี่ การ์ดบนสุดคือเงินที่คุณเหลืออยู่ ใต้ลงมาคือรายรับและรายจ่ายของงวดนี้ แล้วจึงเป็นการใช้จ่าย งบประมาณ และเป้าหมาย';

  @override
  String get guideDashboardTip1 => 'ดึงหน้าจอลงเพื่อรีเฟรชทุกอย่างพร้อมกัน';

  @override
  String get guideDashboardTip2 =>
      'แตะการ์ดรายรับหรือรายจ่ายเพื่อไปยังรายการนั้นทันที';

  @override
  String get guideDashboardTip3 =>
      'วงแหวนและข้อสังเกตจะอัปเดตทันทีที่คุณบันทึกอะไรลงไป';

  @override
  String get guideAddTitle => 'การบันทึกเงิน';

  @override
  String get guideAddBody =>
      'ปุ่มกลางแถบล่างคือจุดเริ่มต้นของทุกอย่าง มันเปิดเมนูสั้น ๆ ให้เลือก: รายจ่าย รายรับ หนี้สิน งบประมาณ หรือเป้าหมายการออม';

  @override
  String get guideAddTip1 => 'แตะปุ่มกลางเพื่อบันทึกเงินเข้าหรือเงินออก';

  @override
  String get guideAddTip2 =>
      'กดค้างไว้เพื่อไปที่รายจ่ายใหม่ทันที ข้ามเมนูไปเลย';

  @override
  String get guideAddTip3 =>
      'เลือกหมวดหมู่เสมอ — นั่นคือสิ่งที่ทำให้กราฟและงบประมาณทำงานได้';

  @override
  String get guideCategoriesTitle => 'หมวดหมู่';

  @override
  String get guideCategoriesBody =>
      'หมวดหมู่คือวิธีจัดกลุ่มรายจ่าย ชุดที่มาพร้อมแอปเพียงพอสำหรับคนส่วนใหญ่ และคุณเปลี่ยนชื่อหรือเพิ่มของตัวเองได้';

  @override
  String get guideCategoriesTip1 =>
      'ตั้งค่า แล้วเลือกจัดการหมวดหมู่ เพื่อแก้ไขหรือเพิ่ม';

  @override
  String get guideCategoriesTip2 =>
      'อะไรที่ไม่ได้จัดหมวดจะไปอยู่ใน «อื่น ๆ» กราฟจึงยังตรงกับความจริง';

  @override
  String get guideBudgetTitle => 'งบประมาณ';

  @override
  String get guideBudgetBody =>
      'งบประมาณคือเพดานรายเดือนของหมวดหนึ่ง แถบจะเต็มขึ้นตามที่คุณใช้และเปลี่ยนสีเมื่อใกล้ถึง คุณจึงรู้ตัวก่อนจะเกิน';

  @override
  String get guideBudgetTip1 =>
      'เริ่มจากสองหรือสามหมวด ไม่ต้องทำทั้งหมดพร้อมกัน';

  @override
  String get guideBudgetTip2 =>
      'ตั้งขีดจำกัดสูงกว่าที่ใช้ปกติเล็กน้อย แล้วค่อย ๆ รัดเข้า';

  @override
  String get guideBudgetTip3 => 'เปิดการเตือนงบไว้ แอปจะบอกเมื่องบใกล้หมด';

  @override
  String get guideSavingsTitle => 'เป้าหมายการออม';

  @override
  String get guideSavingsBody =>
      'ตั้งชื่อสิ่งที่คุณกำลังออมเพื่อ กำหนดจำนวนและวันที่ แล้วแอปจะคำนวณว่าต้องกันไว้เดือนละเท่าไร';

  @override
  String get guideSavingsTip1 =>
      'เป้าหมายที่มีชื่อรักษาไว้ได้ง่ายกว่าความตั้งใจลอย ๆ ว่าจะออม';

  @override
  String get guideSavingsTip2 =>
      'เป้าหมายเล็ก ๆ หลายอันมักสำเร็จบ่อยกว่าเป้าหมายใหญ่อันเดียว';

  @override
  String get guideLoansTitle => 'หนี้สินและสินเชื่อ';

  @override
  String get guideLoansBody =>
      'บันทึกว่าคุณเป็นหนี้เท่าไร มีต้นทุนเท่าไร และงวดถัดไปครบกำหนดเมื่อไร ทุกอย่างที่กำลังผ่อนอยู่รวมในรายการเดียวพร้อมยอดคงเหลือ';

  @override
  String get guideLoansTip1 =>
      'ใส่วันครบกำหนดไว้ แล้วการเตือนชำระเงินจะคอยตามให้';

  @override
  String get guideLoansTip2 =>
      'หนี้ที่เลยกำหนดจะขึ้นสีแดงบนหน้าหลักจนกว่าจะชำระ';

  @override
  String get guideReportsTitle => 'รายงาน';

  @override
  String get guideReportsBody =>
      'มุมมองที่ลึกขึ้น: รายรับเทียบรายจ่าย รายจ่ายตามหมวด งบประมาณอยู่ในกรอบแค่ไหน และคุณเก็บรายได้ไว้ได้กี่ส่วน';

  @override
  String get guideReportsTip1 =>
      'สลับระหว่างสัปดาห์ เดือน และไตรมาสได้ที่ด้านบนของหน้าจอ';

  @override
  String get guideReportsTip2 =>
      'ส่งออกหรือแชร์เป็น PDF — ออกมาเป็นภาษาและทิศทางการอ่านของคุณ';

  @override
  String get guideSettingsTitle => 'ตั้งค่า';

  @override
  String get guideSettingsBody =>
      'ภาษา สกุลเงิน สี และการเตือน อยู่ที่นี่ทั้งหมด และไม่มีอะไรถูกล็อกจากการตั้งค่าครั้งแรก — เปลี่ยนได้ทุกเมื่อ';

  @override
  String get guideSettingsTip1 =>
      'สี่สิบภาษา และทั้งหน้าจอจะสลับด้านสำหรับภาษาที่อ่านจากขวาไปซ้าย';

  @override
  String get guideSettingsTip2 =>
      'เลือกว่าต้องการการเตือนแบบไหน และให้มาถึงในช่วงเวลาใดได้';

  @override
  String get guideSettingsTip3 => 'ช่วงเวลาเงียบจะกลั้นทุกอย่างไว้จนถึงเช้า';

  @override
  String get guideHabitTitle => 'ทำให้ติดเป็นนิสัย';

  @override
  String get guideHabitBody =>
      'แอปดีได้เท่าที่คุณใส่ลงไป วันละหนึ่งนาทีดีกว่าเดือนละหนึ่งชั่วโมง และเมื่อผ่านไปสองสัปดาห์ ตัวเลขจะเริ่มบอกอะไรบางอย่าง';

  @override
  String get guideHabitTip1 => 'บันทึกทันทีที่ใช้จ่าย ไม่ใช่รอตอนสิ้นสัปดาห์';

  @override
  String get guideHabitTip2 => 'ดูหน้าหลักวันละครั้ง สิบวินาทีก็พอ';

  @override
  String get guideHabitTip3 =>
      'คู่มือนี้อยู่ในการตั้งค่าเสมอ — กลับมาดูได้ทุกเมื่อ';

  @override
  String get appearance => 'รูปลักษณ์';

  @override
  String get themeCaption => 'สว่าง มืด หรือตามที่โทรศัพท์ตั้งไว้';

  @override
  String get accentColor => 'สีหลัก';

  @override
  String get accentColorCaption => 'ให้สีกับปุ่ม จุดเน้น และกราฟ';

  @override
  String get accentSemanticsNote =>
      'เงินเข้าและเงินออกคงสีของตัวเองในทุกธีม ตัวเลขจึงไม่เปลี่ยนความหมายเพียงเพราะคุณเปลี่ยนสีหลัก';

  @override
  String get accentTeal => 'เขียวน้ำทะเล';

  @override
  String get accentGreen => 'เขียว';

  @override
  String get accentSky => 'ฟ้า';

  @override
  String get accentBlue => 'น้ำเงิน';

  @override
  String get accentIndigo => 'คราม';

  @override
  String get accentViolet => 'ม่วง';

  @override
  String get accentPink => 'ชมพู';

  @override
  String get accentCrimson => 'แดงเข้ม';

  @override
  String get accentOrange => 'ส้ม';

  @override
  String get accentSlate => 'เทาหิน';

  @override
  String get searchLanguages => 'ค้นหาภาษา';

  @override
  String get suggestedLanguages => 'แนะนำ';

  @override
  String get allLanguages => 'ทุกภาษา';

  @override
  String get noLanguagesFound => 'ไม่พบภาษา';

  @override
  String get noLanguagesFoundMessage => 'ลองชื่อภาษาอังกฤษ หรือรหัสสองตัวอักษร';

  @override
  String get rightToLeft => 'ขวาไปซ้าย';

  @override
  String get replayGuide => 'ดูคู่มืออีกครั้ง';

  @override
  String get replaySetup => 'ตั้งค่าใหม่อีกครั้ง';

  @override
  String get replaySetupBody =>
      'ตอบคำถามเริ่มต้นอีกรอบ สิ่งที่คุณบันทึกไว้จะไม่ถูกลบ';

  @override
  String get rateTitle => 'ชอบ RainyPenny ไหม';

  @override
  String get rateBody =>
      'คุณใช้งานมาสักพักแล้ว การให้คะแนนใช้เวลาแป๊บเดียวและช่วยให้คนอื่นค้นพบแอปนี้';

  @override
  String get rateAction => 'ให้คะแนนแอป';

  @override
  String get rateLater => 'ไว้ทีหลัง';

  @override
  String get rateNever => 'ไม่ล่ะ ขอบคุณ';

  @override
  String get rateThanks => 'ขอบคุณ';

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
