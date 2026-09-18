// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppL10nVi extends AppL10n {
  AppL10nVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Dành dụm cho ngày mưa';

  @override
  String get navHome => 'Trang chính';

  @override
  String get navTransactions => 'Giao dịch';

  @override
  String get navAdd => 'Thêm';

  @override
  String get navReports => 'Báo cáo';

  @override
  String get navProfile => 'Cá nhân';

  @override
  String greetingMorning(String name) {
    return 'Chào buổi sáng, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Chào buổi chiều, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Chào buổi tối, $name';
  }

  @override
  String get greetingSubtitle => 'Đây là bức tranh tài chính của bạn';

  @override
  String get totalBalance => 'Tổng số dư';

  @override
  String get vsLastPeriod => 'so với kỳ trước';

  @override
  String get income => 'Thu nhập';

  @override
  String get expenses => 'Chi tiêu';

  @override
  String get netBalance => 'Số dư ròng';

  @override
  String get lastThirtyDays => '30 ngày qua';

  @override
  String get quickActions => 'Thao tác nhanh';

  @override
  String get addIncome => 'Thêm khoản thu';

  @override
  String get addExpense => 'Thêm khoản chi';

  @override
  String get spendingOverview => 'Tổng quan chi tiêu';

  @override
  String get recentTransactions => 'Giao dịch gần đây';

  @override
  String get seeAll => 'Xem tất cả';

  @override
  String get viewAll => 'Hiển thị tất cả';

  @override
  String get budgetProgress => 'Tiến độ ngân sách';

  @override
  String get savingsGoals => 'Mục tiêu tiết kiệm';

  @override
  String get financialInsight => 'Nhận định tài chính';

  @override
  String get financialHealth => 'Sức khỏe tài chính';

  @override
  String ofTotal(String total) {
    return 'trên $total';
  }

  @override
  String get searchTransactions => 'Tìm giao dịch';

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterIncome => 'Thu';

  @override
  String get filterExpenses => 'Chi';

  @override
  String get today => 'Hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String get noTransactionsTitle => 'Không tìm thấy giao dịch';

  @override
  String get noTransactionsBody =>
      'Thử từ khóa hoặc bộ lọc khác để thấy thêm bản ghi.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giao dịch',
      zero: 'Không có giao dịch',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Thêm giao dịch';

  @override
  String get amount => 'Số tiền';

  @override
  String get category => 'Danh mục';

  @override
  String get date => 'Ngày';

  @override
  String get note => 'Ghi chú';

  @override
  String get noteHint => 'Ghi chú (tùy chọn)';

  @override
  String get saveIncome => 'Lưu khoản thu';

  @override
  String get saveExpense => 'Lưu khoản chi';

  @override
  String get selectCategory => 'Chọn danh mục';

  @override
  String get transactionSaved => 'Đã lưu giao dịch';

  @override
  String get amountRequired => 'Nhập số tiền lớn hơn 0';

  @override
  String get titleRequired => 'Đặt tên cho giao dịch này';

  @override
  String get descriptionLabel => 'Mô tả';

  @override
  String get descriptionHint => 'ví dụ: đi chợ';

  @override
  String get budget => 'Ngân sách';

  @override
  String get budgets => 'Ngân sách';

  @override
  String get totalBudget => 'Tổng ngân sách';

  @override
  String get spent => 'Đã chi';

  @override
  String get remaining => 'Còn lại';

  @override
  String budgetUsed(int percent) {
    return 'Đã dùng $percent%';
  }

  @override
  String get onTrack => 'Đúng kế hoạch';

  @override
  String get approachingLimit => 'Sắp chạm hạn mức';

  @override
  String get overBudget => 'Vượt ngân sách';

  @override
  String get savings => 'Tiết kiệm';

  @override
  String get yourGoals => 'Mục tiêu của bạn';

  @override
  String get saved => 'Đã tiết kiệm';

  @override
  String get target => 'Mục tiêu';

  @override
  String get monthlyContribution => 'Hằng tháng';

  @override
  String get addFunds => 'Nạp thêm';

  @override
  String get goalComplete => 'Đã đạt mục tiêu';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'còn $count tháng',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Khoản vay & nợ';

  @override
  String get totalOutstanding => 'Tổng dư nợ';

  @override
  String get monthlyPayment => 'Hằng tháng';

  @override
  String get nextPayment => 'Kỳ trả tiếp theo';

  @override
  String paidOff(int percent) {
    return 'Đã trả $percent%';
  }

  @override
  String get interestRate => 'Lãi suất';

  @override
  String get upcomingPayments => 'Sắp đến hạn';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đến hạn sau $count ngày',
      one: 'Đến hạn ngày mai',
      zero: 'Đến hạn hôm nay',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Quá hạn';

  @override
  String get reports => 'Báo cáo';

  @override
  String get week => 'Tuần';

  @override
  String get month => 'Tháng';

  @override
  String get quarter => 'Quý';

  @override
  String get incomeVsExpenses => 'Thu và chi';

  @override
  String get spendingByCategory => 'Chi tiêu theo danh mục';

  @override
  String get budgetPerformance => 'Hiệu quả ngân sách';

  @override
  String get insights => 'Nhận định';

  @override
  String get savingsRate => 'Tỷ lệ tiết kiệm';

  @override
  String get profile => 'Cá nhân';

  @override
  String get account => 'Tài khoản';

  @override
  String get personalInformation => 'Thông tin cá nhân';

  @override
  String get changePassword => 'Đổi mật khẩu';

  @override
  String get notifications => 'Thông báo';

  @override
  String get preferences => 'Tùy chọn';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get currency => 'Tiền tệ';

  @override
  String get theme => 'Giao diện';

  @override
  String get security => 'Bảo mật';

  @override
  String get privacyAndSecurity => 'Quyền riêng tư & bảo mật';

  @override
  String get help => 'Trợ giúp';

  @override
  String get helpAndSupport => 'Trợ giúp & hỗ trợ';

  @override
  String get termsAndConditions => 'Điều khoản & điều kiện';

  @override
  String get logOut => 'Đăng xuất';

  @override
  String memberSince(String date) {
    return 'Thành viên từ $date';
  }

  @override
  String get themeSystem => 'Theo hệ thống';

  @override
  String get themeLight => 'Sáng';

  @override
  String get themeDark => 'Tối';

  @override
  String get settings => 'Cài đặt';

  @override
  String get noNotificationsTitle => 'Bạn đã xem hết rồi';

  @override
  String get noNotificationsBody => 'Nhận định và nhắc nhở mới sẽ hiện ở đây.';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get done => 'Xong';

  @override
  String get retry => 'Thử lại';

  @override
  String get close => 'Đóng';

  @override
  String get somethingWentWrong => 'Đã có lỗi xảy ra';

  @override
  String get comingSoon => 'Sẽ có trong bản đầy đủ';

  @override
  String get edit => 'Sửa';

  @override
  String get delete => 'Xóa';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get add => 'Thêm';

  @override
  String get create => 'Tạo';

  @override
  String get nameRequired => 'Hãy đặt một cái tên';

  @override
  String get amountAboveZero => 'Nhập số tiền lớn hơn 0';

  @override
  String get editTransaction => 'Sửa giao dịch';

  @override
  String get deleteTransaction => 'Xóa giao dịch?';

  @override
  String deleteTransactionBody(String title) {
    return '$title sẽ được gỡ khỏi sổ của bạn.';
  }

  @override
  String get transactionDeleted => 'Đã xóa giao dịch';

  @override
  String get transactionUpdated => 'Đã cập nhật giao dịch';

  @override
  String get newBudget => 'Ngân sách mới';

  @override
  String get editBudget => 'Sửa ngân sách';

  @override
  String get budgetLimit => 'Hạn mức hằng tháng';

  @override
  String get deleteBudget => 'Xóa ngân sách?';

  @override
  String deleteBudgetBody(String category) {
    return 'Ngân sách $category sẽ bị gỡ. Giao dịch của bạn không thay đổi.';
  }

  @override
  String get budgetSaved => 'Đã lưu ngân sách';

  @override
  String get budgetDeleted => 'Đã xóa ngân sách';

  @override
  String get allCategoriesBudgeted => 'Mọi danh mục đều đã có ngân sách';

  @override
  String get noBudgetsTitle => 'Chưa có ngân sách nào';

  @override
  String get noBudgetsBody =>
      'Đặt hạn mức hằng tháng cho một danh mục để bắt đầu theo dõi.';

  @override
  String get newGoal => 'Mục tiêu mới';

  @override
  String get editGoal => 'Sửa mục tiêu';

  @override
  String get goalName => 'Tên mục tiêu';

  @override
  String get goalNameHint => 'ví dụ: quỹ dự phòng';

  @override
  String get targetAmount => 'Số tiền mục tiêu';

  @override
  String get alreadySaved => 'Đã tiết kiệm được';

  @override
  String get deleteGoal => 'Xóa mục tiêu?';

  @override
  String deleteGoalBody(String name) {
    return '$name cùng tiến độ sẽ bị gỡ.';
  }

  @override
  String get goalSaved => 'Đã lưu mục tiêu';

  @override
  String get goalDeleted => 'Đã xóa mục tiêu';

  @override
  String get noGoalsTitle => 'Chưa có mục tiêu tiết kiệm';

  @override
  String get noGoalsBody =>
      'Đặt một mục tiêu và RainyPenny sẽ theo dõi tiến độ giúp bạn.';

  @override
  String get fundsAdded => 'Đã nạp thêm';

  @override
  String get newDebt => 'Khoản vay hoặc thẻ mới';

  @override
  String get editDebt => 'Sửa khoản vay';

  @override
  String get debtName => 'Tên';

  @override
  String get debtNameHint => 'ví dụ: vay mua xe';

  @override
  String get lender => 'Bên cho vay';

  @override
  String get lenderHint => 'ví dụ: Vietcombank';

  @override
  String get originalAmount => 'Số tiền ban đầu';

  @override
  String get creditLimit => 'Hạn mức tín dụng';

  @override
  String get remainingBalance => 'Dư nợ còn lại';

  @override
  String get interestRatePercent => 'Lãi suất (%)';

  @override
  String get kindLoan => 'Khoản vay';

  @override
  String get kindCreditCard => 'Thẻ tín dụng';

  @override
  String get recordPayment => 'Ghi nhận thanh toán';

  @override
  String get paymentRecorded => 'Đã ghi nhận thanh toán';

  @override
  String get deleteDebt => 'Xóa khoản nợ này?';

  @override
  String deleteDebtBody(String name) {
    return '$name sẽ được gỡ khỏi danh sách nợ.';
  }

  @override
  String get debtSaved => 'Đã lưu';

  @override
  String get debtDeleted => 'Đã xóa';

  @override
  String get noDebtsTitle => 'Chưa theo dõi khoản nợ nào';

  @override
  String get noDebtsBody =>
      'Thêm khoản vay hoặc thẻ tín dụng để không lỡ kỳ trả nào.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Ngân sách $subject đã vượt';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Kỳ này bạn vượt ngân sách $subject $amount.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject sắp chạm hạn mức';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Ngân sách $subject đã dùng $percent%, còn lại $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Chi nhiều hơn thu';

  @override
  String get insightOverIncomeBody =>
      'Kỳ này bạn tiêu nhiều hơn kiếm được. Xem lại các danh mục lớn nhất để cân bằng lại.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Chi cho $subject tăng';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Chi tiêu $subject cao hơn kỳ trước $percent%.';
  }

  @override
  String get insightTrendDownTitle => 'Chi tiêu đang giảm';

  @override
  String insightTrendDownBody(int percent) {
    return 'Tổng chi tiêu thấp hơn kỳ trước $percent%.';
  }

  @override
  String get insightTrendUpTitle => 'Chi tiêu đang tăng';

  @override
  String insightTrendUpBody(int percent) {
    return 'Tổng chi tiêu cao hơn kỳ trước $percent%.';
  }

  @override
  String get insightSavingsStrongTitle => 'Kỳ này tiết kiệm tốt';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Bạn giữ lại $percent% thu nhập — cao hơn hẳn mục tiêu $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Tỷ lệ tiết kiệm dưới mục tiêu';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Kỳ này bạn giữ lại $percent% thu nhập. Hãy hướng tới $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject gần đủ rồi';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Chỉ còn $amount nữa là đạt $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject đúng kế hoạch';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months tháng',
    );
    return 'Với $amount mỗi tháng, bạn sẽ đạt mục tiêu này sau $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Khoản trả $subject đã quá hạn';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ngày',
    );
    return 'Khoản trả $amount của $subject đã quá hạn $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Sắp đến kỳ trả $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sau $days ngày',
      one: 'ngày mai',
      zero: 'hôm nay',
    );
    return '$amount đến hạn $_temp0.';
  }

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get signUp => 'Tạo tài khoản';

  @override
  String get signInSubtitle => 'Chào bạn trở lại. Tiền của bạn đang chờ.';

  @override
  String get signUpSubtitle => 'Vài thông tin là xong.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Mật khẩu';

  @override
  String get passwordHint => 'Ít nhất 8 ký tự';

  @override
  String get fullNameLabel => 'Họ và tên';

  @override
  String get fullNameHint => 'Nguyễn Văn An';

  @override
  String get forgotPassword => 'Quên mật khẩu?';

  @override
  String get resetSent => 'Hãy kiểm tra hộp thư để lấy liên kết đặt lại';

  @override
  String get noAccountYet => 'Lần đầu ghé thăm?';

  @override
  String get haveAccount => 'Đã có tài khoản?';

  @override
  String get emailInvalid => 'Nhập địa chỉ email hợp lệ';

  @override
  String get passwordTooShort => 'Dùng ít nhất 8 ký tự';

  @override
  String get signOutConfirm => 'Đăng xuất?';

  @override
  String get signOutBody =>
      'Bạn sẽ phải đăng nhập lại để xem tài chính của mình.';

  @override
  String get dataSource => 'Nguồn dữ liệu';

  @override
  String get insightWeeklySummaryTitle => 'Nhìn lại tuần qua';

  @override
  String get insightWeeklySummaryBody =>
      'Xem tiền đã đi đâu trong tuần và ngân sách giữ được đến đâu.';

  @override
  String get notificationSettings => 'Thông báo';

  @override
  String get alertsSection => 'Cảnh báo';

  @override
  String get budgetAlerts => 'Cảnh báo ngân sách';

  @override
  String get budgetAlertsBody => 'Khi ngân sách sắp chạm hoặc vượt hạn mức';

  @override
  String get paymentReminders => 'Nhắc thanh toán';

  @override
  String get paymentRemindersBody => 'Vài ngày trước khi đến hạn';

  @override
  String get savingsUpdates => 'Tin tiết kiệm';

  @override
  String get savingsUpdatesBody => 'Tiến độ hướng tới mục tiêu';

  @override
  String get weeklySummaryLabel => 'Tóm tắt tuần';

  @override
  String get weeklySummaryBody => 'Bản tổng hợp của tuần vừa qua';

  @override
  String get scheduleSection => 'Thời điểm';

  @override
  String get reminderTime => 'Giờ nhắc';

  @override
  String get quietHours => 'Giờ yên tĩnh';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Ngày tóm tắt';

  @override
  String get permissionRequired => 'Thông báo đang tắt';

  @override
  String get permissionRequiredBody =>
      'Cho phép thông báo để RainyPenny kịp nhắc trước khi ngân sách hay khoản trả vuột khỏi tầm tay.';

  @override
  String get allowNotifications => 'Cho phép thông báo';

  @override
  String get permissionDenied =>
      'Thông báo đang bị chặn. Bạn có thể bật lại trong cài đặt thiết bị.';

  @override
  String get upcomingAlerts => 'Đã lên lịch';

  @override
  String get noScheduledAlerts => 'Hiện chưa có gì được lên lịch';

  @override
  String get noScheduledAlertsBody =>
      'Cảnh báo sẽ hiện ở đây khi ngân sách và khoản trả tới gần hạn.';

  @override
  String scheduledFor(String date) {
    return 'Lên lịch vào $date';
  }

  @override
  String get everyWeek => 'Hằng tuần';

  @override
  String get allNotificationsOff => 'Tất cả thông báo đang tắt';

  @override
  String get needsAttention => 'Cần chú ý';

  @override
  String get quickActionsTitle => 'Bạn muốn làm gì?';

  @override
  String get createSection => 'Ghi lại';

  @override
  String get jumpToSection => 'Đi tới';

  @override
  String get addLoanAction => 'Thêm khoản vay';

  @override
  String get addBudgetAction => 'Thêm ngân sách';

  @override
  String get addGoalAction => 'Thêm mục tiêu';

  @override
  String get longPressHint => 'Mẹo: giữ nút + để ghi khoản chi ngay';

  @override
  String get searchCurrencies => 'Tìm tiền tệ';

  @override
  String get noCurrenciesFound => 'Không tìm thấy tiền tệ';

  @override
  String get noCurrenciesFoundMessage => 'Thử mã, ký hiệu hoặc tên khác.';

  @override
  String get popularCurrencies => 'Phổ biến';

  @override
  String get allCurrencies => 'Tất cả tiền tệ';

  @override
  String get totalLoanAmount => 'Tổng số tiền vay';

  @override
  String get installmentAmount => 'Số tiền mỗi kỳ';

  @override
  String get numberOfInstallments => 'Số kỳ trả';

  @override
  String get paidInstallments => 'Kỳ đã trả';

  @override
  String get remainingInstallments => 'Kỳ còn lại';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Đã trả $paid/$total kỳ';
  }

  @override
  String get finalPayment => 'Kỳ cuối';

  @override
  String get paymentDueDate => 'Ngày đến hạn';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Ngày $day hằng tháng';
  }

  @override
  String get loanStatus => 'Trạng thái';

  @override
  String get statusActive => 'Đúng kế hoạch';

  @override
  String get statusDueSoon => 'Sắp đến hạn';

  @override
  String get statusOverdue => 'Quá hạn';

  @override
  String get statusCompleted => 'Đã trả hết';

  @override
  String get repaymentProgress => 'Tiến độ trả nợ';

  @override
  String get byAmount => 'Theo số tiền';

  @override
  String get byInstallments => 'Theo số kỳ';

  @override
  String get startDate => 'Ngày bắt đầu';

  @override
  String get openEnded => 'Không kỳ hạn';

  @override
  String get loanDetails => 'Chi tiết khoản vay';

  @override
  String get notSet => 'Chưa đặt';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject đến hạn hôm nay';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Khoản trả $amount đến hạn hôm nay. Một chạm là kịp giờ.';
  }

  @override
  String get remindMorningTitle => 'Chào buổi sáng ☀️';

  @override
  String get remindMorningBody =>
      'Bắt đầu ngày mới với tiền bạc trong tầm tay. Có gì của hôm qua cần thêm không?';

  @override
  String get remindNoonTitle => 'Kiểm tra giữa trưa';

  @override
  String get remindNoonBody =>
      'Bữa trưa, cà phê, tiền xe? Ghi lại trong vài giây thôi.';

  @override
  String get remindAfternoonTitle => 'Bổ sung nhanh';

  @override
  String get remindAfternoonBody =>
      'Ghi những khoản đã chi đến giờ để con số hôm nay được chính xác.';

  @override
  String get remindEveningTitle => 'Khép lại một ngày';

  @override
  String get remindEveningBody => 'Hai phút bây giờ và sổ hôm nay đã đầy đủ.';

  @override
  String get happyWeekendTitle => 'Cuối tuần vui vẻ! 🎉';

  @override
  String get happyWeekendBody =>
      'Cứ thoải mái — và để mắt một chút tới chi tiêu cuối tuần.';

  @override
  String get dailyReminders => 'Nhắc ghi chi tiêu hằng ngày';

  @override
  String get dailyRemindersBody =>
      'Những lời nhắc nhẹ nhàng để chi tiêu luôn được cập nhật';

  @override
  String get weekendGreeting => 'Lời chào cuối tuần';

  @override
  String get weekendGreetingBody =>
      'Một lời chào thân thiện khi cuối tuần bắt đầu';

  @override
  String get reminderTimesSection => 'Khung giờ nhắc';

  @override
  String get slotMorning => 'Sáng';

  @override
  String get slotNoon => 'Trưa';

  @override
  String get slotAfternoon => 'Chiều';

  @override
  String get slotEvening => 'Tối';

  @override
  String get everyDay => 'Mỗi ngày';

  @override
  String get financialReport => 'Báo cáo tài chính';

  @override
  String get preparedFor => 'Lập cho';

  @override
  String get generatedOn => 'Tạo ngày';

  @override
  String get reportDisclaimer => 'Do RainyPenny lập từ chính bản ghi của bạn.';

  @override
  String pageOf(int page, int total) {
    return 'Trang $page/$total';
  }

  @override
  String get overview => 'Tổng quan';

  @override
  String get description => 'Mô tả';

  @override
  String get totalIncome => 'Tổng thu';

  @override
  String get totalExpenses => 'Tổng chi';

  @override
  String get totalSaved => 'Tổng tiết kiệm';

  @override
  String get shareOfTotal => 'Tỷ trọng';

  @override
  String get used => 'Đã dùng';

  @override
  String get goal => 'Mục tiêu';

  @override
  String get targetDate => 'Ngày mục tiêu';

  @override
  String get progress => 'Tiến độ';

  @override
  String get paidOffShort => 'Đã trả';

  @override
  String get transactions => 'Giao dịch';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'và $count giao dịch khác',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Xuất PDF';

  @override
  String get sharePdf => 'Chia sẻ báo cáo';

  @override
  String get preparingReport => 'Đang lập báo cáo…';

  @override
  String get reportReady => 'Báo cáo đã sẵn sàng';

  @override
  String get reportFailed => 'Không lập được báo cáo';

  @override
  String get categories => 'Danh mục';

  @override
  String get categoriesIntro =>
      'Thêm danh mục của riêng bạn để sắp xếp thu chi đúng theo cách bạn nghĩ về chúng.';

  @override
  String get expenseCategories => 'Danh mục chi';

  @override
  String get incomeCategories => 'Danh mục thu';

  @override
  String get newCategory => 'Danh mục mới';

  @override
  String get editCategory => 'Sửa danh mục';

  @override
  String get categoryName => 'Tên';

  @override
  String get categoryNameHint => 'ví dụ: thú cưng';

  @override
  String get icon => 'Biểu tượng';

  @override
  String get categorySaved => 'Đã lưu danh mục';

  @override
  String get categoryDeleted => 'Đã xóa danh mục';

  @override
  String get deleteCategory => 'Xóa danh mục này?';

  @override
  String deleteCategoryBody(String name) {
    return '$name sẽ được gỡ khỏi danh mục của bạn.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bản ghi vẫn đang dùng danh mục này',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Ở đây chưa có gì cả.';

  @override
  String get builtIn => 'Có sẵn';

  @override
  String get manageCategories => 'Quản lý danh mục';

  @override
  String get expense => 'Khoản chi';

  @override
  String get languageNote =>
      'Tiếng Ả Rập, Urdu, Ba Tư và Do Thái chuyển toàn bộ giao diện sang phải-sang-trái, kể cả biểu đồ và báo cáo PDF.';

  @override
  String get next => 'Tiếp';

  @override
  String get back => 'Quay lại';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get continueLabel => 'Tiếp tục';

  @override
  String get selected => 'Đã chọn';

  @override
  String get passwordRequired => 'Nhập mật khẩu của bạn';

  @override
  String get newPasswordLabel => 'Mật khẩu mới';

  @override
  String get confirmPasswordLabel => 'Xác nhận mật khẩu';

  @override
  String get passwordsDoNotMatch => 'Hai mật khẩu phải trùng nhau';

  @override
  String get showPassword => 'Hiện mật khẩu';

  @override
  String get hidePassword => 'Ẩn mật khẩu';

  @override
  String get savePassword => 'Lưu mật khẩu';

  @override
  String get backToSignIn => 'Về trang đăng nhập';

  @override
  String get alreadyHaveAccount => 'Tôi đã có tài khoản';

  @override
  String get getStarted => 'Bắt đầu';

  @override
  String get acceptTerms =>
      'Tôi đồng ý với Điều khoản dịch vụ và Chính sách quyền riêng tư';

  @override
  String get acceptTermsRequired => 'Hãy đồng ý để tiếp tục';

  @override
  String get passwordStrengthTooShort => 'Quá ngắn';

  @override
  String get passwordStrengthWeak => 'Yếu';

  @override
  String get passwordStrengthFair => 'Tạm ổn';

  @override
  String get passwordStrengthGood => 'Tốt';

  @override
  String get passwordStrengthStrong => 'Mạnh';

  @override
  String get passwordAdvice =>
      'Một câu dài mà bạn nhớ được thì hơn một mật khẩu ngắn đầy ký hiệu. Đừng dùng lại thứ bạn đã dùng ở nơi khác.';

  @override
  String get authInvalidCredentials =>
      'Email và mật khẩu này không khớp với tài khoản nào';

  @override
  String get authEmailNotConfirmed =>
      'Hãy xác nhận địa chỉ email trước khi đăng nhập';

  @override
  String get authEmailAlreadyRegistered => 'Đã có tài khoản dùng email này';

  @override
  String get authWeakPassword => 'Hãy chọn mật khẩu dài hơn';

  @override
  String get authRateLimited => 'Thử quá nhiều lần. Hãy thử lại sau vài phút';

  @override
  String get authNetworkError => 'Không có kết nối. Kiểm tra mạng rồi thử lại';

  @override
  String get authGenericError => 'Đã có lỗi xảy ra. Vui lòng thử lại';

  @override
  String get confirmEmailTitle => 'Kiểm tra email của bạn';

  @override
  String confirmEmailBody(String email) {
    return 'Chúng tôi đã gửi liên kết xác nhận tới $email. Hãy mở nó để hoàn tất tài khoản.';
  }

  @override
  String get resendConfirmation => 'Gửi lại email xác nhận';

  @override
  String get confirmationResent => 'Đã gửi email xác nhận';

  @override
  String get forgotPasswordTitle => 'Đặt lại mật khẩu';

  @override
  String get forgotPasswordSubtitle =>
      'Nhập email bạn đã dùng khi đăng ký, chúng tôi sẽ gửi liên kết để bạn chọn mật khẩu mới.';

  @override
  String get sendResetLink => 'Gửi liên kết';

  @override
  String get resetLinkSentTitle => 'Đã gửi liên kết';

  @override
  String resetLinkSentBody(String email) {
    return 'Nếu $email có tài khoản thì liên kết đặt lại đang trên đường tới.';
  }

  @override
  String get resetLinkSentHint =>
      'Liên kết hết hạn sau một giờ. Nếu chưa thấy, hãy xem thư rác trước khi xin liên kết mới.';

  @override
  String get tryAnotherEmail => 'Dùng email khác';

  @override
  String get resetPasswordTitle => 'Chọn mật khẩu mới';

  @override
  String get resetPasswordSubtitle =>
      'Hãy chọn thứ bạn chưa từng dùng cho tài khoản này.';

  @override
  String get passwordChangedTitle => 'Đã đổi mật khẩu';

  @override
  String get passwordChangedBody =>
      'Mật khẩu mới đã được lưu. Bạn đang đăng nhập và có thể dùng ngay.';

  @override
  String get demoModeHint => 'Bản dùng thử — không cần tài khoản';

  @override
  String get demoModeFill => 'Điền giúp';

  @override
  String get welcomeTrackTitle => 'Thấy rõ tiền đi đâu';

  @override
  String get welcomeTrackBody =>
      'Chỉ cần ghi thứ vào và thứ ra. RainyPenny biến nó thành một bức tranh thật sự đọc được.';

  @override
  String get welcomeBudgetTitle => 'Những giới hạn giữ được';

  @override
  String get welcomeBudgetBody =>
      'Đặt trần hằng tháng cho từng khoản chi, và biết trước khi vượt chứ không phải sau đó.';

  @override
  String get welcomeGoalsTitle => 'Tiết kiệm cho điều quan trọng';

  @override
  String get welcomeGoalsBody =>
      'Đặt tên cho mục tiêu, định một số tiền, rồi nhìn nó đầy dần. Quỹ dự phòng dễ xây hơn khi bạn thấy được nó.';

  @override
  String get welcomePrivacyTitle => 'Tiền của bạn vẫn là của bạn';

  @override
  String get welcomePrivacyBody =>
      'Các con số chỉ thuộc về bạn. Không bán cho ai, không chia sẻ với ai.';

  @override
  String stepOf(int step, int total) {
    return 'Bước $step/$total';
  }

  @override
  String get onboardingNameTitle => 'Chúng tôi nên gọi bạn là gì?';

  @override
  String get onboardingNameBody =>
      'Chỉ dùng để chào bạn, không dùng ở đâu khác.';

  @override
  String get onboardingNameHint => 'Tên gọi là đủ rồi. Bạn có thể đổi sau.';

  @override
  String get onboardingCurrencyTitle => 'Bạn dùng tiền tệ nào?';

  @override
  String get onboardingCurrencyBody =>
      'Mọi số tiền trong ứng dụng đều hiển thị bằng tiền tệ này. Chọn nó không quy đổi gì cả.';

  @override
  String get onboardingCurrencySearch => 'Tìm trong tất cả tiền tệ';

  @override
  String get onboardingAppearanceTitle => 'Cho hợp gu bạn';

  @override
  String get onboardingAppearanceBody =>
      'Chọn một diện mạo. Mọi thứ đổi ngay khi bạn chạm, và bạn có thể quay lại bất cứ lúc nào.';

  @override
  String get onboardingNotificationsTitle => 'Đừng để tuột mất';

  @override
  String get onboardingNotificationsBody =>
      'Một lời nhắc khẽ đúng lúc chính là thứ biến việc này thành thói quen.';

  @override
  String get onboardingNotifyReminders =>
      'Nhắc nhẹ để bạn ghi lại khoản đã chi';

  @override
  String get onboardingNotifyBudget => 'Báo trước khi ngân sách cạn';

  @override
  String get onboardingNotifySummary => 'Tóm tắt hằng tuần xem tiền đã đi đâu';

  @override
  String get onboardingNotifyEnable => 'Bật thông báo';

  @override
  String get onboardingNotifyDone => 'Đã lưu cài đặt thông báo';

  @override
  String get onboardingNotifyLater =>
      'Bạn có thể đổi mọi thứ này trong Cài đặt, bất cứ lúc nào.';

  @override
  String get onboardingReadyTitle => 'Xong xuôi cả rồi';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Xong xuôi cả rồi, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Thiết lập đã xong. Bạn có muốn xem nhanh cách mọi thứ hoạt động không?';

  @override
  String get onboardingTakeTour => 'Dẫn tôi đi xem';

  @override
  String get onboardingGoToApp => 'Vào ứng dụng';

  @override
  String get onboardingTourLater =>
      'Chưa muốn ư? Hướng dẫn vẫn nằm trong Cài đặt, lúc nào cũng có.';

  @override
  String get beginnersGuide => 'Hướng dẫn cho người mới';

  @override
  String get guideFinish => 'Kết thúc';

  @override
  String chapterOf(int number, int total) {
    return 'Chương $number/$total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Mở $screen';
  }

  @override
  String get guideDashboardTitle => 'Trang chính của bạn';

  @override
  String get guideDashboardBody =>
      'Mọi thứ mở ra từ đây. Thẻ trên cùng là số bạn còn lại; bên dưới là thu và chi trong kỳ, rồi tới chi tiêu, ngân sách và mục tiêu.';

  @override
  String get guideDashboardTip1 =>
      'Kéo màn hình xuống để làm mới mọi thứ cùng lúc.';

  @override
  String get guideDashboardTip2 =>
      'Chạm thẻ thu hoặc chi để nhảy thẳng tới danh sách đó.';

  @override
  String get guideDashboardTip3 =>
      'Vòng tròn và nhận định cập nhật ngay khi bạn ghi một khoản.';

  @override
  String get guideAddTitle => 'Ghi lại tiền bạc';

  @override
  String get guideAddBody =>
      'Nút giữa thanh dưới là nơi mọi thứ bắt đầu. Nó mở một menu ngắn: khoản chi, khoản thu, khoản nợ, ngân sách hoặc mục tiêu tiết kiệm.';

  @override
  String get guideAddTip1 => 'Chạm nút giữa để ghi tiền vào hoặc tiền ra.';

  @override
  String get guideAddTip2 => 'Giữ nút để vào thẳng khoản chi mới, bỏ qua menu.';

  @override
  String get guideAddTip3 =>
      'Luôn chọn danh mục — đó là thứ khiến biểu đồ và ngân sách hoạt động.';

  @override
  String get guideCategoriesTitle => 'Danh mục';

  @override
  String get guideCategoriesBody =>
      'Danh mục là cách chi tiêu được gom nhóm. Bộ có sẵn đủ cho phần lớn mọi người, và bạn có thể đổi tên hoặc thêm của riêng mình.';

  @override
  String get guideCategoriesTip1 =>
      'Cài đặt, rồi Quản lý danh mục, để sửa hoặc thêm.';

  @override
  String get guideCategoriesTip2 =>
      'Thứ không có danh mục sẽ rơi vào «Khác», để biểu đồ luôn trung thực.';

  @override
  String get guideBudgetTitle => 'Ngân sách';

  @override
  String get guideBudgetBody =>
      'Ngân sách là trần hằng tháng cho một danh mục. Thanh đầy dần khi bạn chi và đổi màu khi tới gần, nên bạn biết trước khi vượt.';

  @override
  String get guideBudgetTip1 =>
      'Bắt đầu với hai ba danh mục, đừng làm tất cả cùng lúc.';

  @override
  String get guideBudgetTip2 =>
      'Đặt hạn mức cao hơn mức chi thường ngày một chút, rồi siết dần.';

  @override
  String get guideBudgetTip3 =>
      'Cứ bật cảnh báo ngân sách, ứng dụng sẽ báo khi sắp cạn.';

  @override
  String get guideSavingsTitle => 'Mục tiêu tiết kiệm';

  @override
  String get guideSavingsBody =>
      'Đặt tên cho thứ bạn đang tiết kiệm, định số tiền và ngày, rồi ứng dụng tính giúp mỗi tháng cần để dành bao nhiêu.';

  @override
  String get guideSavingsTip1 =>
      'Một mục tiêu có tên dễ giữ hơn ý định mơ hồ là «để dành».';

  @override
  String get guideSavingsTip2 =>
      'Vài mục tiêu nhỏ thường về đích nhiều hơn một mục tiêu lớn.';

  @override
  String get guideLoansTitle => 'Nợ và khoản vay';

  @override
  String get guideLoansBody =>
      'Ghi lại bạn nợ bao nhiêu, tốn kém thế nào và khi nào tới kỳ trả kế tiếp. Mọi khoản đang trả nằm gọn trong một danh sách cùng số còn lại.';

  @override
  String get guideLoansTip1 =>
      'Thêm ngày đến hạn và lời nhắc thanh toán sẽ theo sát giúp bạn.';

  @override
  String get guideLoansTip2 =>
      'Khoản nợ quá hạn hiện màu đỏ ở trang chính cho tới khi được trả.';

  @override
  String get guideReportsTitle => 'Báo cáo';

  @override
  String get guideReportsBody =>
      'Góc nhìn sâu hơn: thu so với chi, chi theo danh mục, ngân sách trụ được đến đâu, và bạn giữ lại bao nhiêu phần thu nhập.';

  @override
  String get guideReportsTip1 =>
      'Đổi giữa tuần, tháng và quý ở phía trên màn hình.';

  @override
  String get guideReportsTip2 =>
      'Xuất hoặc chia sẻ PDF — nó ra đúng ngôn ngữ và chiều đọc của bạn.';

  @override
  String get guideSettingsTitle => 'Cài đặt';

  @override
  String get guideSettingsBody =>
      'Ngôn ngữ, tiền tệ, màu sắc và cảnh báo đều ở đây, và không thứ nào bị khóa bởi bước thiết lập ban đầu — đổi lúc nào cũng được.';

  @override
  String get guideSettingsTip1 =>
      'Bốn mươi ngôn ngữ, và toàn bộ bố cục lật gương với các ngôn ngữ đọc từ phải sang trái.';

  @override
  String get guideSettingsTip2 =>
      'Chọn cảnh báo bạn muốn và khung giờ chúng được phép tới.';

  @override
  String get guideSettingsTip3 => 'Giờ yên tĩnh giữ mọi thứ lại tới sáng.';

  @override
  String get guideHabitTitle => 'Giữ cho thành nếp';

  @override
  String get guideHabitBody =>
      'Ứng dụng chỉ tốt bằng những gì bạn bỏ vào. Một phút mỗi ngày hơn một giờ mỗi tháng, và sau hai tuần các con số bắt đầu nói cho bạn điều gì đó.';

  @override
  String get guideHabitTip1 =>
      'Ghi khoản chi ngay lúc phát sinh, đừng để tới cuối tuần.';

  @override
  String get guideHabitTip2 =>
      'Liếc trang chính một lần mỗi ngày. Mười giây là đủ.';

  @override
  String get guideHabitTip3 =>
      'Hướng dẫn này luôn nằm trong Cài đặt — quay lại bất cứ lúc nào.';

  @override
  String get appearance => 'Giao diện';

  @override
  String get themeCaption => 'Sáng, tối, hoặc theo điện thoại của bạn.';

  @override
  String get accentColor => 'Màu nhấn';

  @override
  String get accentColorCaption =>
      'Tô màu cho nút bấm, phần nổi bật và biểu đồ.';

  @override
  String get accentSemanticsNote =>
      'Tiền vào và tiền ra giữ nguyên màu riêng trong mọi giao diện, nên một con số không bao giờ đổi nghĩa chỉ vì bạn đổi màu nhấn.';

  @override
  String get accentTeal => 'Xanh mòng két';

  @override
  String get accentGreen => 'Xanh lá';

  @override
  String get accentSky => 'Xanh da trời';

  @override
  String get accentBlue => 'Xanh dương';

  @override
  String get accentIndigo => 'Chàm';

  @override
  String get accentViolet => 'Tím';

  @override
  String get accentPink => 'Hồng';

  @override
  String get accentCrimson => 'Đỏ thẫm';

  @override
  String get accentOrange => 'Cam';

  @override
  String get accentSlate => 'Xám đá';

  @override
  String get searchLanguages => 'Tìm ngôn ngữ';

  @override
  String get suggestedLanguages => 'Gợi ý';

  @override
  String get allLanguages => 'Tất cả ngôn ngữ';

  @override
  String get noLanguagesFound => 'Không tìm thấy ngôn ngữ';

  @override
  String get noLanguagesFoundMessage =>
      'Thử tên tiếng Anh hoặc mã hai chữ cái.';

  @override
  String get rightToLeft => 'Phải sang trái';

  @override
  String get replayGuide => 'Xem lại hướng dẫn';

  @override
  String get replaySetup => 'Thiết lập lại từ đầu';

  @override
  String get replaySetupBody =>
      'Trả lời lại các câu hỏi ban đầu. Không có gì bạn đã ghi bị xóa.';

  @override
  String get rateTitle => 'Bạn thấy RainyPenny thế nào?';

  @override
  String get rateBody =>
      'Bạn đã dùng ứng dụng được một thời gian rồi. Đánh giá chỉ mất một chút và giúp người khác tìm thấy ứng dụng.';

  @override
  String get rateAction => 'Đánh giá ứng dụng';

  @override
  String get rateLater => 'Để sau';

  @override
  String get rateNever => 'Không, cảm ơn';

  @override
  String get rateThanks => 'Cảm ơn bạn';

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
