// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppL10nZh extends AppL10n {
  AppL10nZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => '为雨天存钱';

  @override
  String get navHome => '首页';

  @override
  String get navTransactions => '流水';

  @override
  String get navAdd => '添加';

  @override
  String get navReports => '报表';

  @override
  String get navProfile => '我的';

  @override
  String greetingMorning(String name) {
    return '早上好，$name';
  }

  @override
  String greetingAfternoon(String name) {
    return '下午好，$name';
  }

  @override
  String greetingEvening(String name) {
    return '晚上好，$name';
  }

  @override
  String get greetingSubtitle => '这是你的财务概览';

  @override
  String get totalBalance => '总余额';

  @override
  String get vsLastPeriod => '与上期相比';

  @override
  String get income => '收入';

  @override
  String get expenses => '支出';

  @override
  String get netBalance => '净额';

  @override
  String get lastThirtyDays => '最近 30 天';

  @override
  String get quickActions => '快捷操作';

  @override
  String get addIncome => '记一笔收入';

  @override
  String get addExpense => '记一笔支出';

  @override
  String get spendingOverview => '支出概览';

  @override
  String get recentTransactions => '最近流水';

  @override
  String get seeAll => '查看全部';

  @override
  String get viewAll => '全部查看';

  @override
  String get budgetProgress => '预算进度';

  @override
  String get savingsGoals => '储蓄目标';

  @override
  String get financialInsight => '财务洞察';

  @override
  String get financialHealth => '财务健康度';

  @override
  String ofTotal(String total) {
    return '共 $total';
  }

  @override
  String get searchTransactions => '搜索流水';

  @override
  String get filterAll => '全部';

  @override
  String get filterIncome => '收入';

  @override
  String get filterExpenses => '支出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get noTransactionsTitle => '没有找到流水';

  @override
  String get noTransactionsBody => '换个搜索词或筛选条件，看看更多记录。';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 笔流水',
      zero: '没有流水',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '添加流水';

  @override
  String get amount => '金额';

  @override
  String get category => '分类';

  @override
  String get date => '日期';

  @override
  String get note => '备注';

  @override
  String get noteHint => '备注（可选）';

  @override
  String get saveIncome => '保存收入';

  @override
  String get saveExpense => '保存支出';

  @override
  String get selectCategory => '选择分类';

  @override
  String get transactionSaved => '已保存';

  @override
  String get amountRequired => '请输入大于零的金额';

  @override
  String get titleRequired => '给这笔流水起个名字';

  @override
  String get descriptionLabel => '说明';

  @override
  String get descriptionHint => '例如：买菜';

  @override
  String get budget => '预算';

  @override
  String get budgets => '预算';

  @override
  String get totalBudget => '预算总额';

  @override
  String get spent => '已花';

  @override
  String get remaining => '剩余';

  @override
  String budgetUsed(int percent) {
    return '已用 $percent%';
  }

  @override
  String get onTrack => '进度正常';

  @override
  String get approachingLimit => '接近上限';

  @override
  String get overBudget => '已超支';

  @override
  String get savings => '储蓄';

  @override
  String get yourGoals => '你的目标';

  @override
  String get saved => '已存';

  @override
  String get target => '目标';

  @override
  String get monthlyContribution => '每月';

  @override
  String get addFunds => '存入';

  @override
  String get goalComplete => '目标达成';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '还差 $count 个月',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => '贷款与负债';

  @override
  String get totalOutstanding => '未还总额';

  @override
  String get monthlyPayment => '每月';

  @override
  String get nextPayment => '下次还款';

  @override
  String paidOff(int percent) {
    return '已还 $percent%';
  }

  @override
  String get interestRate => '利率';

  @override
  String get upcomingPayments => '即将到期';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天后到期',
      one: '明天到期',
      zero: '今天到期',
    );
    return '$_temp0';
  }

  @override
  String get overdue => '已逾期';

  @override
  String get reports => '报表';

  @override
  String get week => '周';

  @override
  String get month => '月';

  @override
  String get quarter => '季度';

  @override
  String get incomeVsExpenses => '收入与支出';

  @override
  String get spendingByCategory => '分类支出';

  @override
  String get budgetPerformance => '预算执行';

  @override
  String get insights => '洞察';

  @override
  String get savingsRate => '储蓄率';

  @override
  String get profile => '我的';

  @override
  String get account => '账户';

  @override
  String get personalInformation => '个人信息';

  @override
  String get changePassword => '修改密码';

  @override
  String get notifications => '通知';

  @override
  String get preferences => '偏好设置';

  @override
  String get language => '语言';

  @override
  String get currency => '货币';

  @override
  String get theme => '主题';

  @override
  String get security => '安全';

  @override
  String get privacyAndSecurity => '隐私与安全';

  @override
  String get help => '帮助';

  @override
  String get helpAndSupport => '帮助与支持';

  @override
  String get termsAndConditions => '条款与条件';

  @override
  String get logOut => '退出登录';

  @override
  String memberSince(String date) {
    return '注册于 $date';
  }

  @override
  String get themeSystem => '跟随系统';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get settings => '设置';

  @override
  String get noNotificationsTitle => '全部处理完了';

  @override
  String get noNotificationsBody => '新的洞察和提醒会出现在这里。';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get done => '完成';

  @override
  String get retry => '重试';

  @override
  String get close => '关闭';

  @override
  String get somethingWentWrong => '出了点问题';

  @override
  String get comingSoon => '正式版即将推出';

  @override
  String get edit => '编辑';

  @override
  String get delete => '删除';

  @override
  String get undo => '撤销';

  @override
  String get add => '添加';

  @override
  String get create => '创建';

  @override
  String get nameRequired => '请起个名字';

  @override
  String get amountAboveZero => '请输入大于零的金额';

  @override
  String get editTransaction => '编辑流水';

  @override
  String get deleteTransaction => '删除这笔流水？';

  @override
  String deleteTransactionBody(String title) {
    return '$title 将从你的账本中移除。';
  }

  @override
  String get transactionDeleted => '已删除';

  @override
  String get transactionUpdated => '已更新';

  @override
  String get newBudget => '新建预算';

  @override
  String get editBudget => '编辑预算';

  @override
  String get budgetLimit => '每月上限';

  @override
  String get deleteBudget => '删除这个预算？';

  @override
  String deleteBudgetBody(String category) {
    return '$category 预算将被移除，你的流水不受影响。';
  }

  @override
  String get budgetSaved => '预算已保存';

  @override
  String get budgetDeleted => '预算已删除';

  @override
  String get allCategoriesBudgeted => '每个分类都已有预算';

  @override
  String get noBudgetsTitle => '还没有预算';

  @override
  String get noBudgetsBody => '给某个分类设个月度上限，就能开始跟踪了。';

  @override
  String get newGoal => '新建目标';

  @override
  String get editGoal => '编辑目标';

  @override
  String get goalName => '目标名称';

  @override
  String get goalNameHint => '例如：应急基金';

  @override
  String get targetAmount => '目标金额';

  @override
  String get alreadySaved => '已存入';

  @override
  String get deleteGoal => '删除这个目标？';

  @override
  String deleteGoalBody(String name) {
    return '$name 及其进度将被移除。';
  }

  @override
  String get goalSaved => '目标已保存';

  @override
  String get goalDeleted => '目标已删除';

  @override
  String get noGoalsTitle => '还没有储蓄目标';

  @override
  String get noGoalsBody => '设定一个目标，RainyPenny 会帮你跟踪进度。';

  @override
  String get fundsAdded => '已存入';

  @override
  String get newDebt => '新增贷款或信用卡';

  @override
  String get editDebt => '编辑贷款';

  @override
  String get debtName => '名称';

  @override
  String get debtNameHint => '例如：车贷';

  @override
  String get lender => '债权方';

  @override
  String get lenderHint => '例如：招商银行';

  @override
  String get originalAmount => '原始金额';

  @override
  String get creditLimit => '信用额度';

  @override
  String get remainingBalance => '剩余余额';

  @override
  String get interestRatePercent => '利率（%）';

  @override
  String get kindLoan => '贷款';

  @override
  String get kindCreditCard => '信用卡';

  @override
  String get recordPayment => '记录还款';

  @override
  String get paymentRecorded => '已记录还款';

  @override
  String get deleteDebt => '删除这笔负债？';

  @override
  String deleteDebtBody(String name) {
    return '$name 将从你的负债中移除。';
  }

  @override
  String get debtSaved => '已保存';

  @override
  String get debtDeleted => '已删除';

  @override
  String get noDebtsTitle => '没有在跟踪的负债';

  @override
  String get noDebtsBody => '添加一笔贷款或信用卡，随时掌握还款情况。';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject 预算已超支';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '本期 $subject 预算已超出 $amount。';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject 接近上限';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject 预算已用 $percent%，还剩 $amount。';
  }

  @override
  String get insightOverIncomeTitle => '支出超过了收入';

  @override
  String get insightOverIncomeBody => '本期你花的比赚的多。看看金额最大的几个分类，把节奏拉回来。';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject 支出上升';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '你的 $subject 支出比上期高 $percent%。';
  }

  @override
  String get insightTrendDownTitle => '支出正在下降';

  @override
  String insightTrendDownBody(int percent) {
    return '整体支出比上期低 $percent%。';
  }

  @override
  String get insightTrendUpTitle => '支出正在上升';

  @override
  String insightTrendUpBody(int percent) {
    return '整体支出比上期高 $percent%。';
  }

  @override
  String get insightSavingsStrongTitle => '本期储蓄表现出色';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '你留下了收入的 $percent% — 远高于 $target% 的目标。';
  }

  @override
  String get insightSavingsLowTitle => '储蓄率低于目标';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return '本期你留下了收入的 $percent%。目标是 $target%。';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject 快存满了';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '距离 $subject 只差 $amount。';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject 进度正常';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months 个月',
    );
    return '按每月 $amount 计算，你将在 $_temp0后达成这个目标。';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject 还款已逾期';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 天',
    );
    return '$subject 的 $amount 还款已逾期 $_temp0。';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject 即将还款';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 天后',
      one: '明天',
      zero: '今天',
    );
    return '$amount 将于$_temp0到期。';
  }

  @override
  String get signIn => '登录';

  @override
  String get signUp => '创建账户';

  @override
  String get signInSubtitle => '欢迎回来，你的钱在等你。';

  @override
  String get signUpSubtitle => '填几项就好了。';

  @override
  String get emailLabel => '邮箱';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => '密码';

  @override
  String get passwordHint => '至少 8 个字符';

  @override
  String get fullNameLabel => '姓名';

  @override
  String get fullNameHint => '张三';

  @override
  String get forgotPassword => '忘记密码？';

  @override
  String get resetSent => '重置链接已发送，请查收邮箱';

  @override
  String get noAccountYet => '第一次来？';

  @override
  String get haveAccount => '已经有账户了？';

  @override
  String get emailInvalid => '请输入有效的邮箱地址';

  @override
  String get passwordTooShort => '至少 8 个字符';

  @override
  String get signOutConfirm => '退出登录？';

  @override
  String get signOutBody => '下次查看财务情况时需要重新登录。';

  @override
  String get dataSource => '数据源';

  @override
  String get insightWeeklySummaryTitle => '你的一周回顾';

  @override
  String get insightWeeklySummaryBody => '看看这一周钱花到哪去了，预算又守得怎么样。';

  @override
  String get notificationSettings => '通知';

  @override
  String get alertsSection => '提醒';

  @override
  String get budgetAlerts => '预算提醒';

  @override
  String get budgetAlertsBody => '预算接近或超出上限时';

  @override
  String get paymentReminders => '还款提醒';

  @override
  String get paymentRemindersBody => '还款到期前几天';

  @override
  String get savingsUpdates => '储蓄进展';

  @override
  String get savingsUpdatesBody => '目标的进度更新';

  @override
  String get weeklySummaryLabel => '每周小结';

  @override
  String get weeklySummaryBody => '过去一周的汇总';

  @override
  String get scheduleSection => '时间';

  @override
  String get reminderTime => '提醒时间';

  @override
  String get quietHours => '免打扰时段';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => '小结日';

  @override
  String get permissionRequired => '通知已关闭';

  @override
  String get permissionRequiredBody => '允许通知，RainyPenny 才能在预算或还款失控前提醒你。';

  @override
  String get allowNotifications => '允许通知';

  @override
  String get permissionDenied => '通知已被阻止。你可以在系统设置中重新打开。';

  @override
  String get upcomingAlerts => '已安排';

  @override
  String get noScheduledAlerts => '暂时没有安排';

  @override
  String get noScheduledAlertsBody => '当预算和还款接近上限或到期时，提醒会出现在这里。';

  @override
  String scheduledFor(String date) {
    return '安排在 $date';
  }

  @override
  String get everyWeek => '每周';

  @override
  String get allNotificationsOff => '所有通知都已关闭';

  @override
  String get needsAttention => '需要关注';

  @override
  String get quickActionsTitle => '想做点什么？';

  @override
  String get createSection => '记一笔';

  @override
  String get jumpToSection => '快速前往';

  @override
  String get addLoanAction => '添加贷款';

  @override
  String get addBudgetAction => '添加预算';

  @override
  String get addGoalAction => '添加目标';

  @override
  String get longPressHint => '小提示：长按 + 可直接记支出';

  @override
  String get searchCurrencies => '搜索货币';

  @override
  String get noCurrenciesFound => '没有找到货币';

  @override
  String get noCurrenciesFoundMessage => '换个代码、符号或名称试试。';

  @override
  String get popularCurrencies => '常用';

  @override
  String get allCurrencies => '全部货币';

  @override
  String get totalLoanAmount => '贷款总额';

  @override
  String get installmentAmount => '每期金额';

  @override
  String get numberOfInstallments => '总期数';

  @override
  String get paidInstallments => '已还期数';

  @override
  String get remainingInstallments => '剩余期数';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '已还 $paid / $total 期';
  }

  @override
  String get finalPayment => '最后一期';

  @override
  String get paymentDueDate => '还款日';

  @override
  String dueOnDayOfMonth(int day) {
    return '每月 $day 日';
  }

  @override
  String get loanStatus => '状态';

  @override
  String get statusActive => '进度正常';

  @override
  String get statusDueSoon => '即将到期';

  @override
  String get statusOverdue => '已逾期';

  @override
  String get statusCompleted => '已还清';

  @override
  String get repaymentProgress => '还款进度';

  @override
  String get byAmount => '按金额';

  @override
  String get byInstallments => '按期数';

  @override
  String get startDate => '开始日期';

  @override
  String get openEnded => '无固定期限';

  @override
  String get loanDetails => '贷款详情';

  @override
  String get notSet => '未设置';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject 今天到期';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '你的 $amount 还款今天到期，点一下就能按时完成。';
  }

  @override
  String get remindMorningTitle => '早上好 ☀️';

  @override
  String get remindMorningBody => '新的一天，从掌握自己的钱开始。昨天有什么要补记的吗？';

  @override
  String get remindNoonTitle => '午间小记';

  @override
  String get remindNoonBody => '午饭、咖啡、车费？几秒钟就能记下。';

  @override
  String get remindAfternoonTitle => '顺手补一笔';

  @override
  String get remindAfternoonBody => '记下今天到现在的支出，让数字保持准确。';

  @override
  String get remindEveningTitle => '为今天收个尾';

  @override
  String get remindEveningBody => '现在花两分钟，今天的账就齐了。';

  @override
  String get happyWeekendTitle => '周末愉快！🎉';

  @override
  String get happyWeekendBody => '好好放松 — 也留意一下周末的花销。';

  @override
  String get dailyReminders => '每日记账提醒';

  @override
  String get dailyRemindersBody => '温和地提醒你把支出记全';

  @override
  String get weekendGreeting => '周末问候';

  @override
  String get weekendGreetingBody => '周末开始时的一句问候';

  @override
  String get reminderTimesSection => '提醒时段';

  @override
  String get slotMorning => '早上';

  @override
  String get slotNoon => '中午';

  @override
  String get slotAfternoon => '下午';

  @override
  String get slotEvening => '晚上';

  @override
  String get everyDay => '每天';

  @override
  String get financialReport => '财务报告';

  @override
  String get preparedFor => '报告对象';

  @override
  String get generatedOn => '生成时间';

  @override
  String get reportDisclaimer => '由 RainyPenny 根据你自己的记录生成。';

  @override
  String pageOf(int page, int total) {
    return '第 $page 页，共 $total 页';
  }

  @override
  String get overview => '概览';

  @override
  String get description => '说明';

  @override
  String get totalIncome => '总收入';

  @override
  String get totalExpenses => '总支出';

  @override
  String get totalSaved => '累计储蓄';

  @override
  String get shareOfTotal => '占比';

  @override
  String get used => '已用';

  @override
  String get goal => '目标';

  @override
  String get targetDate => '目标日期';

  @override
  String get progress => '进度';

  @override
  String get paidOffShort => '已还';

  @override
  String get transactions => '流水';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '以及另外 $count 笔流水',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => '导出 PDF';

  @override
  String get sharePdf => '分享报告';

  @override
  String get preparingReport => '正在生成报告…';

  @override
  String get reportReady => '报告已就绪';

  @override
  String get reportFailed => '无法生成报告';

  @override
  String get categories => '分类';

  @override
  String get categoriesIntro => '添加自己的分类，用你习惯的方式归类收入和支出。';

  @override
  String get expenseCategories => '支出分类';

  @override
  String get incomeCategories => '收入分类';

  @override
  String get newCategory => '新建分类';

  @override
  String get editCategory => '编辑分类';

  @override
  String get categoryName => '名称';

  @override
  String get categoryNameHint => '例如：宠物';

  @override
  String get icon => '图标';

  @override
  String get categorySaved => '分类已保存';

  @override
  String get categoryDeleted => '分类已删除';

  @override
  String get deleteCategory => '删除这个分类？';

  @override
  String deleteCategoryBody(String name) {
    return '$name 将从你的分类中移除。';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '仍有 $count 条记录在使用这个分类',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => '这里还是空的。';

  @override
  String get builtIn => '内置';

  @override
  String get manageCategories => '管理分类';

  @override
  String get expense => '支出';

  @override
  String get languageNote => '阿拉伯语、乌尔都语、波斯语和希伯来语会把整个界面切换为从右到左，包括图表和 PDF 报告。';

  @override
  String get next => '下一步';

  @override
  String get back => '上一步';

  @override
  String get skip => '跳过';

  @override
  String get continueLabel => '继续';

  @override
  String get selected => '已选择';

  @override
  String get passwordRequired => '请输入密码';

  @override
  String get newPasswordLabel => '新密码';

  @override
  String get confirmPasswordLabel => '确认密码';

  @override
  String get passwordsDoNotMatch => '两次输入的密码必须一致';

  @override
  String get showPassword => '显示密码';

  @override
  String get hidePassword => '隐藏密码';

  @override
  String get savePassword => '保存密码';

  @override
  String get backToSignIn => '返回登录';

  @override
  String get alreadyHaveAccount => '我已经有账户了';

  @override
  String get getStarted => '开始使用';

  @override
  String get acceptTerms => '我同意服务条款和隐私政策';

  @override
  String get acceptTermsRequired => '请先同意才能继续';

  @override
  String get passwordStrengthTooShort => '太短';

  @override
  String get passwordStrengthWeak => '较弱';

  @override
  String get passwordStrengthFair => '一般';

  @override
  String get passwordStrengthGood => '良好';

  @override
  String get passwordStrengthStrong => '很强';

  @override
  String get passwordAdvice => '一句你记得住的长短语，胜过一串塞满符号的短密码。不要用你在别处已经用过的。';

  @override
  String get authInvalidCredentials => '邮箱和密码与任何账户都不匹配';

  @override
  String get authEmailNotConfirmed => '登录前请先验证你的邮箱地址';

  @override
  String get authEmailAlreadyRegistered => '这个邮箱已经注册过账户了';

  @override
  String get authWeakPassword => '请选择更长的密码';

  @override
  String get authRateLimited => '尝试次数过多，请几分钟后再试';

  @override
  String get authNetworkError => '没有网络连接。请检查网络后重试';

  @override
  String get authGenericError => '出了点问题，请重试';

  @override
  String get confirmEmailTitle => '请查收邮件';

  @override
  String confirmEmailBody(String email) {
    return '我们已向 $email 发送了确认链接。打开它即可完成账户设置。';
  }

  @override
  String get resendConfirmation => '重新发送确认邮件';

  @override
  String get confirmationResent => '确认邮件已发送';

  @override
  String get forgotPasswordTitle => '重置密码';

  @override
  String get forgotPasswordSubtitle => '输入你注册时使用的邮箱，我们会发送一个链接让你设置新密码。';

  @override
  String get sendResetLink => '发送重置链接';

  @override
  String get resetLinkSentTitle => '链接已发送';

  @override
  String resetLinkSentBody(String email) {
    return '如果 $email 有账户，重置链接已经在路上了。';
  }

  @override
  String get resetLinkSentHint => '链接一小时内有效。如果没收到，请先查看垃圾邮件，再申请新的。';

  @override
  String get tryAnotherEmail => '换一个邮箱';

  @override
  String get resetPasswordTitle => '设置新密码';

  @override
  String get resetPasswordSubtitle => '选一个你在这个账户上没用过的密码。';

  @override
  String get passwordChangedTitle => '密码已更新';

  @override
  String get passwordChangedBody => '新密码已保存。你已登录，可以继续了。';

  @override
  String get demoModeHint => '演示版本 — 无需账户';

  @override
  String get demoModeFill => '填入';

  @override
  String get welcomeTrackTitle => '看清钱花到了哪里';

  @override
  String get welcomeTrackBody => '把进出的每一笔记下来。RainyPenny 会把它变成一幅真正看得懂的图。';

  @override
  String get welcomeBudgetTitle => '设定守得住的上限';

  @override
  String get welcomeBudgetBody => '给每一类支出定一个月度上限，在超出之前就知道，而不是之后。';

  @override
  String get welcomeGoalsTitle => '为重要的事存钱';

  @override
  String get welcomeGoalsBody => '给目标起个名字，定个金额，看着它一点点填满。应急金看得见时更容易攒起来。';

  @override
  String get welcomePrivacyTitle => '你的钱始终是你的';

  @override
  String get welcomePrivacyBody => '你的数字只属于你。我们不出售，也不与任何人分享。';

  @override
  String stepOf(int step, int total) {
    return '第 $step 步，共 $total 步';
  }

  @override
  String get onboardingNameTitle => '怎么称呼你？';

  @override
  String get onboardingNameBody => '只用来跟你打招呼，别处都不会用到。';

  @override
  String get onboardingNameHint => '写名字就够了，以后可以改。';

  @override
  String get onboardingCurrencyTitle => '你使用哪种货币？';

  @override
  String get onboardingCurrencyBody => '应用里的所有金额都以这种货币显示。选择它不会做任何汇率换算。';

  @override
  String get onboardingCurrencySearch => '搜索全部货币';

  @override
  String get onboardingAppearanceTitle => '调成你喜欢的样子';

  @override
  String get onboardingAppearanceBody => '挑一个外观。点一下就变，随时都能回来改。';

  @override
  String get onboardingNotificationsTitle => '别让它跑偏';

  @override
  String get onboardingNotificationsBody => '在对的时间轻轻提醒一下，习惯就是这样养成的。';

  @override
  String get onboardingNotifyReminders => '温和地提醒你记下花了多少';

  @override
  String get onboardingNotifyBudget => '在预算用完前提前告知';

  @override
  String get onboardingNotifySummary => '每周汇总你的钱去了哪里';

  @override
  String get onboardingNotifyEnable => '开启通知';

  @override
  String get onboardingNotifyDone => '通知设置已保存';

  @override
  String get onboardingNotifyLater => '这些都可以随时在设置里更改。';

  @override
  String get onboardingReadyTitle => '一切就绪';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '一切就绪，$name';
  }

  @override
  String get onboardingReadyBody => '设置完成了。要不要快速看一遍怎么用？';

  @override
  String get onboardingTakeTour => '带我看看';

  @override
  String get onboardingGoToApp => '直接进入应用';

  @override
  String get onboardingTourLater => '现在不看？指南会留在设置里，随时可以打开。';

  @override
  String get beginnersGuide => '新手指南';

  @override
  String get guideFinish => '完成';

  @override
  String chapterOf(int number, int total) {
    return '第 $number 章，共 $total 章';
  }

  @override
  String guideOpenScreen(String screen) {
    return '打开$screen';
  }

  @override
  String get guideDashboardTitle => '你的首页';

  @override
  String get guideDashboardBody =>
      '一切从这里开始。最上面那张卡是你还剩多少；下面是本期的收入和支出，再往下是你的支出、预算和目标。';

  @override
  String get guideDashboardTip1 => '向下拉动屏幕，一次刷新全部内容。';

  @override
  String get guideDashboardTip2 => '点收入或支出卡片，直接跳到对应的列表。';

  @override
  String get guideDashboardTip3 => '你一记账，圆环和洞察就会立刻更新。';

  @override
  String get guideAddTitle => '记录收支';

  @override
  String get guideAddBody => '底栏中间的按钮是一切的起点。它会打开一个简短菜单：支出、收入、负债、预算或储蓄目标。';

  @override
  String get guideAddTip1 => '点中间的按钮记一笔收入或支出。';

  @override
  String get guideAddTip2 => '长按它可以跳过菜单，直接新建一笔支出。';

  @override
  String get guideAddTip3 => '一定要选分类 — 图表和预算都靠它才能工作。';

  @override
  String get guideCategoriesTitle => '分类';

  @override
  String get guideCategoriesBody => '分类决定支出如何归类。应用自带的分类对多数人已经够用，你也可以改名或新增自己的。';

  @override
  String get guideCategoriesTip1 => '设置，然后「管理分类」，就能修改或新增。';

  @override
  String get guideCategoriesTip2 => '没有分类的记录会归入「其他」，让图表保持真实。';

  @override
  String get guideBudgetTitle => '预算';

  @override
  String get guideBudgetBody =>
      '预算就是某个分类的月度上限。你花得越多进度条越满，接近上限时会变色，所以你会在超支前就知道。';

  @override
  String get guideBudgetTip1 => '先从两三个分类开始，不要一次全设。';

  @override
  String get guideBudgetTip2 => '把上限定得比平时花的略高一点，再慢慢收紧。';

  @override
  String get guideBudgetTip3 => '保持预算提醒开启，预算快用完时应用会提醒你。';

  @override
  String get guideSavingsTitle => '储蓄目标';

  @override
  String get guideSavingsBody => '写下你为什么存钱，定好金额和日期，应用会算出每月需要存多少才能达成。';

  @override
  String get guideSavingsTip1 => '有名字的目标，比笼统的「想存点钱」更容易坚持。';

  @override
  String get guideSavingsTip2 => '几个小目标比一个大目标更容易真正完成。';

  @override
  String get guideLoansTitle => '负债与贷款';

  @override
  String get guideLoansBody => '记下你欠了多少、成本多少、下次还款是什么时候。所有在还的账都在一张列表里，带着剩余金额。';

  @override
  String get guideLoansTip1 => '填上还款日，还款提醒就会替你盯着。';

  @override
  String get guideLoansTip2 => '逾期的负债会在首页显示为红色，直到还清为止。';

  @override
  String get guideReportsTitle => '报表';

  @override
  String get guideReportsBody => '更深一层的视角：收入对比支出、分类支出、预算执行得如何，以及你的收入留下了多少。';

  @override
  String get guideReportsTip1 => '在屏幕顶部切换周、月和季度。';

  @override
  String get guideReportsTip2 => '导出或分享 PDF — 它会按你的语言和阅读方向生成。';

  @override
  String get guideSettingsTitle => '设置';

  @override
  String get guideSettingsBody => '语言、货币、颜色和提醒都在这里，初始设置并不会把任何一项固定下来 — 想改随时改。';

  @override
  String get guideSettingsTip1 => '四十种语言，遇到从右到左的语言时整个界面都会镜像。';

  @override
  String get guideSettingsTip2 => '选择你想要的提醒，以及它们可以在什么时段送达。';

  @override
  String get guideSettingsTip3 => '免打扰时段会把一切压到早上再说。';

  @override
  String get guideHabitTitle => '让它坚持下去';

  @override
  String get guideHabitBody =>
      '这个应用有多好，取决于你往里放了多少。每天一分钟胜过每月一小时，坚持两周，数字就开始告诉你一些东西了。';

  @override
  String get guideHabitTip1 => '花钱的当下就记，别攒到周末。';

  @override
  String get guideHabitTip2 => '每天看一眼首页，十秒钟就够。';

  @override
  String get guideHabitTip3 => '这份指南一直留在设置里 — 随时可以回来看。';

  @override
  String get appearance => '外观';

  @override
  String get themeCaption => '浅色、深色，或跟随手机。';

  @override
  String get accentColor => '主题色';

  @override
  String get accentColorCaption => '决定按钮、高亮和图表的颜色。';

  @override
  String get accentSemanticsNote => '收入和支出在任何主题下都保留各自的颜色，所以换了主题色，数字的含义也不会变。';

  @override
  String get accentTeal => '青绿';

  @override
  String get accentGreen => '绿色';

  @override
  String get accentSky => '天蓝';

  @override
  String get accentBlue => '蓝色';

  @override
  String get accentIndigo => '靛蓝';

  @override
  String get accentViolet => '紫罗兰';

  @override
  String get accentPink => '粉色';

  @override
  String get accentCrimson => '绯红';

  @override
  String get accentOrange => '橙色';

  @override
  String get accentSlate => '石板灰';

  @override
  String get searchLanguages => '搜索语言';

  @override
  String get suggestedLanguages => '推荐';

  @override
  String get allLanguages => '全部语言';

  @override
  String get noLanguagesFound => '没有找到语言';

  @override
  String get noLanguagesFoundMessage => '试试英文名称，或两个字母的代码。';

  @override
  String get rightToLeft => '从右到左';

  @override
  String get replayGuide => '重看指南';

  @override
  String get replaySetup => '重新进行设置';

  @override
  String get replaySetupBody => '再走一遍初始设置的问题。你记录的内容不会被删除。';

  @override
  String get rateTitle => '喜欢 RainyPenny 吗？';

  @override
  String get rateBody => '你已经用了一段时间了。评价只需片刻，也能帮助其他人找到这款应用。';

  @override
  String get rateAction => '给应用评分';

  @override
  String get rateLater => '以后再说';

  @override
  String get rateNever => '不用了，谢谢';

  @override
  String get rateThanks => '谢谢';

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

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppL10nZhHant extends AppL10nZh {
  AppL10nZhHant() : super('zh_Hant');

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => '為雨天存錢';

  @override
  String get navHome => '首頁';

  @override
  String get navTransactions => '收支';

  @override
  String get navAdd => '新增';

  @override
  String get navReports => '報表';

  @override
  String get navProfile => '我的';

  @override
  String greetingMorning(String name) {
    return '早安，$name';
  }

  @override
  String greetingAfternoon(String name) {
    return '午安，$name';
  }

  @override
  String greetingEvening(String name) {
    return '晚安，$name';
  }

  @override
  String get greetingSubtitle => '這是你的財務總覽';

  @override
  String get totalBalance => '總餘額';

  @override
  String get vsLastPeriod => '與上期相比';

  @override
  String get income => '收入';

  @override
  String get expenses => '支出';

  @override
  String get netBalance => '淨額';

  @override
  String get lastThirtyDays => '最近 30 天';

  @override
  String get quickActions => '快速操作';

  @override
  String get addIncome => '記一筆收入';

  @override
  String get addExpense => '記一筆支出';

  @override
  String get spendingOverview => '支出總覽';

  @override
  String get recentTransactions => '最近收支';

  @override
  String get seeAll => '查看全部';

  @override
  String get viewAll => '全部檢視';

  @override
  String get budgetProgress => '預算進度';

  @override
  String get savingsGoals => '儲蓄目標';

  @override
  String get financialInsight => '財務洞察';

  @override
  String get financialHealth => '財務健康度';

  @override
  String ofTotal(String total) {
    return '共 $total';
  }

  @override
  String get searchTransactions => '搜尋收支';

  @override
  String get filterAll => '全部';

  @override
  String get filterIncome => '收入';

  @override
  String get filterExpenses => '支出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get noTransactionsTitle => '找不到收支紀錄';

  @override
  String get noTransactionsBody => '換個搜尋字詞或篩選條件，看看更多紀錄。';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 筆紀錄',
      zero: '沒有紀錄',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '新增紀錄';

  @override
  String get amount => '金額';

  @override
  String get category => '分類';

  @override
  String get date => '日期';

  @override
  String get note => '備註';

  @override
  String get noteHint => '備註（選填）';

  @override
  String get saveIncome => '儲存收入';

  @override
  String get saveExpense => '儲存支出';

  @override
  String get selectCategory => '選擇分類';

  @override
  String get transactionSaved => '已儲存';

  @override
  String get amountRequired => '請輸入大於零的金額';

  @override
  String get titleRequired => '為這筆紀錄取個名稱';

  @override
  String get descriptionLabel => '說明';

  @override
  String get descriptionHint => '例如：買菜';

  @override
  String get budget => '預算';

  @override
  String get budgets => '預算';

  @override
  String get totalBudget => '預算總額';

  @override
  String get spent => '已花';

  @override
  String get remaining => '剩餘';

  @override
  String budgetUsed(int percent) {
    return '已用 $percent%';
  }

  @override
  String get onTrack => '進度正常';

  @override
  String get approachingLimit => '接近上限';

  @override
  String get overBudget => '已超支';

  @override
  String get savings => '儲蓄';

  @override
  String get yourGoals => '你的目標';

  @override
  String get saved => '已存';

  @override
  String get target => '目標';

  @override
  String get monthlyContribution => '每月';

  @override
  String get addFunds => '存入';

  @override
  String get goalComplete => '目標達成';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '還差 $count 個月',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => '貸款與負債';

  @override
  String get totalOutstanding => '未償總額';

  @override
  String get monthlyPayment => '每月';

  @override
  String get nextPayment => '下次還款';

  @override
  String paidOff(int percent) {
    return '已還 $percent%';
  }

  @override
  String get interestRate => '利率';

  @override
  String get upcomingPayments => '即將到期';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天後到期',
      one: '明天到期',
      zero: '今天到期',
    );
    return '$_temp0';
  }

  @override
  String get overdue => '已逾期';

  @override
  String get reports => '報表';

  @override
  String get week => '週';

  @override
  String get month => '月';

  @override
  String get quarter => '季';

  @override
  String get incomeVsExpenses => '收入與支出';

  @override
  String get spendingByCategory => '分類支出';

  @override
  String get budgetPerformance => '預算執行';

  @override
  String get insights => '洞察';

  @override
  String get savingsRate => '儲蓄率';

  @override
  String get profile => '我的';

  @override
  String get account => '帳戶';

  @override
  String get personalInformation => '個人資料';

  @override
  String get changePassword => '變更密碼';

  @override
  String get notifications => '通知';

  @override
  String get preferences => '偏好設定';

  @override
  String get language => '語言';

  @override
  String get currency => '貨幣';

  @override
  String get theme => '主題';

  @override
  String get security => '安全性';

  @override
  String get privacyAndSecurity => '隱私與安全';

  @override
  String get help => '說明';

  @override
  String get helpAndSupport => '說明與支援';

  @override
  String get termsAndConditions => '條款與細則';

  @override
  String get logOut => '登出';

  @override
  String memberSince(String date) {
    return '自 $date 起使用';
  }

  @override
  String get themeSystem => '跟隨系統';

  @override
  String get themeLight => '淺色';

  @override
  String get themeDark => '深色';

  @override
  String get settings => '設定';

  @override
  String get noNotificationsTitle => '都處理完了';

  @override
  String get noNotificationsBody => '新的洞察與提醒會顯示在這裡。';

  @override
  String get cancel => '取消';

  @override
  String get save => '儲存';

  @override
  String get done => '完成';

  @override
  String get retry => '重試';

  @override
  String get close => '關閉';

  @override
  String get somethingWentWrong => '出了點問題';

  @override
  String get comingSoon => '正式版即將推出';

  @override
  String get edit => '編輯';

  @override
  String get delete => '刪除';

  @override
  String get undo => '復原';

  @override
  String get add => '新增';

  @override
  String get create => '建立';

  @override
  String get nameRequired => '請取個名稱';

  @override
  String get amountAboveZero => '請輸入大於零的金額';

  @override
  String get editTransaction => '編輯紀錄';

  @override
  String get deleteTransaction => '刪除這筆紀錄？';

  @override
  String deleteTransactionBody(String title) {
    return '$title 將從你的帳本中移除。';
  }

  @override
  String get transactionDeleted => '已刪除';

  @override
  String get transactionUpdated => '已更新';

  @override
  String get newBudget => '新增預算';

  @override
  String get editBudget => '編輯預算';

  @override
  String get budgetLimit => '每月上限';

  @override
  String get deleteBudget => '刪除這個預算？';

  @override
  String deleteBudgetBody(String category) {
    return '$category 預算將被移除，你的紀錄不受影響。';
  }

  @override
  String get budgetSaved => '預算已儲存';

  @override
  String get budgetDeleted => '預算已刪除';

  @override
  String get allCategoriesBudgeted => '每個分類都已有預算';

  @override
  String get noBudgetsTitle => '還沒有預算';

  @override
  String get noBudgetsBody => '為某個分類設定月度上限，就能開始追蹤。';

  @override
  String get newGoal => '新增目標';

  @override
  String get editGoal => '編輯目標';

  @override
  String get goalName => '目標名稱';

  @override
  String get goalNameHint => '例如：緊急預備金';

  @override
  String get targetAmount => '目標金額';

  @override
  String get alreadySaved => '已存入';

  @override
  String get deleteGoal => '刪除這個目標？';

  @override
  String deleteGoalBody(String name) {
    return '$name 及其進度將被移除。';
  }

  @override
  String get goalSaved => '目標已儲存';

  @override
  String get goalDeleted => '目標已刪除';

  @override
  String get noGoalsTitle => '還沒有儲蓄目標';

  @override
  String get noGoalsBody => '設定一個目標，RainyPenny 會幫你追蹤進度。';

  @override
  String get fundsAdded => '已存入';

  @override
  String get newDebt => '新增貸款或信用卡';

  @override
  String get editDebt => '編輯貸款';

  @override
  String get debtName => '名稱';

  @override
  String get debtNameHint => '例如：車貸';

  @override
  String get lender => '債權方';

  @override
  String get lenderHint => '例如：台新銀行';

  @override
  String get originalAmount => '原始金額';

  @override
  String get creditLimit => '信用額度';

  @override
  String get remainingBalance => '剩餘餘額';

  @override
  String get interestRatePercent => '利率（%）';

  @override
  String get kindLoan => '貸款';

  @override
  String get kindCreditCard => '信用卡';

  @override
  String get recordPayment => '記錄還款';

  @override
  String get paymentRecorded => '已記錄還款';

  @override
  String get deleteDebt => '刪除這筆負債？';

  @override
  String deleteDebtBody(String name) {
    return '$name 將從你的負債中移除。';
  }

  @override
  String get debtSaved => '已儲存';

  @override
  String get debtDeleted => '已刪除';

  @override
  String get noDebtsTitle => '沒有追蹤中的負債';

  @override
  String get noDebtsBody => '新增一筆貸款或信用卡，隨時掌握還款狀況。';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject 預算已超支';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '本期 $subject 預算已超出 $amount。';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject 接近上限';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject 預算已用 $percent%，還剩 $amount。';
  }

  @override
  String get insightOverIncomeTitle => '支出超過了收入';

  @override
  String get insightOverIncomeBody => '本期你花的比賺的多。看看金額最大的幾個分類，把節奏拉回來。';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject 支出上升';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '你的 $subject 支出比上期高 $percent%。';
  }

  @override
  String get insightTrendDownTitle => '支出正在下降';

  @override
  String insightTrendDownBody(int percent) {
    return '整體支出比上期低 $percent%。';
  }

  @override
  String get insightTrendUpTitle => '支出正在上升';

  @override
  String insightTrendUpBody(int percent) {
    return '整體支出比上期高 $percent%。';
  }

  @override
  String get insightSavingsStrongTitle => '本期儲蓄表現亮眼';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '你留下了收入的 $percent% — 遠高於 $target% 的目標。';
  }

  @override
  String get insightSavingsLowTitle => '儲蓄率低於目標';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return '本期你留下了收入的 $percent%。目標是 $target%。';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject 快存滿了';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '距離 $subject 只差 $amount。';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject 進度正常';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months 個月',
    );
    return '以每月 $amount 計算，你將在 $_temp0後達成這個目標。';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject 還款已逾期';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 天',
    );
    return '$subject 的 $amount 還款已逾期 $_temp0。';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject 即將到期';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 天後',
      one: '明天',
      zero: '今天',
    );
    return '$amount 將於$_temp0到期。';
  }

  @override
  String get signIn => '登入';

  @override
  String get signUp => '建立帳戶';

  @override
  String get signInSubtitle => '歡迎回來，你的錢在等你。';

  @override
  String get signUpSubtitle => '填幾項就好了。';

  @override
  String get emailLabel => '電子郵件';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => '密碼';

  @override
  String get passwordHint => '至少 8 個字元';

  @override
  String get fullNameLabel => '姓名';

  @override
  String get fullNameHint => '王小明';

  @override
  String get forgotPassword => '忘記密碼？';

  @override
  String get resetSent => '重設連結已寄出，請查看信箱';

  @override
  String get noAccountYet => '第一次來？';

  @override
  String get haveAccount => '已經有帳戶了？';

  @override
  String get emailInvalid => '請輸入有效的電子郵件地址';

  @override
  String get passwordTooShort => '至少 8 個字元';

  @override
  String get signOutConfirm => '登出？';

  @override
  String get signOutBody => '下次要查看財務狀況時需要重新登入。';

  @override
  String get dataSource => '資料來源';

  @override
  String get insightWeeklySummaryTitle => '你的一週回顧';

  @override
  String get insightWeeklySummaryBody => '看看這一週錢花到哪去了，預算又守得怎麼樣。';

  @override
  String get notificationSettings => '通知';

  @override
  String get alertsSection => '提醒';

  @override
  String get budgetAlerts => '預算提醒';

  @override
  String get budgetAlertsBody => '預算接近或超出上限時';

  @override
  String get paymentReminders => '還款提醒';

  @override
  String get paymentRemindersBody => '還款到期前幾天';

  @override
  String get savingsUpdates => '儲蓄進度';

  @override
  String get savingsUpdatesBody => '目標的進度更新';

  @override
  String get weeklySummaryLabel => '每週摘要';

  @override
  String get weeklySummaryBody => '過去一週的彙整';

  @override
  String get scheduleSection => '時間';

  @override
  String get reminderTime => '提醒時間';

  @override
  String get quietHours => '勿擾時段';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => '摘要日';

  @override
  String get permissionRequired => '通知已關閉';

  @override
  String get permissionRequiredBody => '允許通知，RainyPenny 才能在預算或還款失控前提醒你。';

  @override
  String get allowNotifications => '允許通知';

  @override
  String get permissionDenied => '通知已被封鎖。你可以在裝置設定中重新開啟。';

  @override
  String get upcomingAlerts => '已排定';

  @override
  String get noScheduledAlerts => '目前沒有排定的提醒';

  @override
  String get noScheduledAlertsBody => '當預算和還款接近上限或到期時，提醒會出現在這裡。';

  @override
  String scheduledFor(String date) {
    return '排定於 $date';
  }

  @override
  String get everyWeek => '每週';

  @override
  String get allNotificationsOff => '所有通知都已關閉';

  @override
  String get needsAttention => '需要注意';

  @override
  String get quickActionsTitle => '你想做什麼？';

  @override
  String get createSection => '記一筆';

  @override
  String get jumpToSection => '快速前往';

  @override
  String get addLoanAction => '新增貸款';

  @override
  String get addBudgetAction => '新增預算';

  @override
  String get addGoalAction => '新增目標';

  @override
  String get longPressHint => '小提示：長按 + 可直接記支出';

  @override
  String get searchCurrencies => '搜尋貨幣';

  @override
  String get noCurrenciesFound => '找不到貨幣';

  @override
  String get noCurrenciesFoundMessage => '換個代碼、符號或名稱試試。';

  @override
  String get popularCurrencies => '常用';

  @override
  String get allCurrencies => '全部貨幣';

  @override
  String get totalLoanAmount => '貸款總額';

  @override
  String get installmentAmount => '每期金額';

  @override
  String get numberOfInstallments => '總期數';

  @override
  String get paidInstallments => '已繳期數';

  @override
  String get remainingInstallments => '剩餘期數';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '已繳 $paid / $total 期';
  }

  @override
  String get finalPayment => '最後一期';

  @override
  String get paymentDueDate => '還款日';

  @override
  String dueOnDayOfMonth(int day) {
    return '每月 $day 日';
  }

  @override
  String get loanStatus => '狀態';

  @override
  String get statusActive => '進度正常';

  @override
  String get statusDueSoon => '即將到期';

  @override
  String get statusOverdue => '已逾期';

  @override
  String get statusCompleted => '已還清';

  @override
  String get repaymentProgress => '還款進度';

  @override
  String get byAmount => '依金額';

  @override
  String get byInstallments => '依期數';

  @override
  String get startDate => '開始日期';

  @override
  String get openEnded => '無固定期限';

  @override
  String get loanDetails => '貸款詳情';

  @override
  String get notSet => '未設定';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject 今天到期';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '你的 $amount 還款今天到期，點一下就能準時完成。';
  }

  @override
  String get remindMorningTitle => '早安 ☀️';

  @override
  String get remindMorningBody => '新的一天，從掌握自己的錢開始。昨天有什麼要補記的嗎？';

  @override
  String get remindNoonTitle => '午間小記';

  @override
  String get remindNoonBody => '午餐、咖啡、車錢？幾秒鐘就能記下。';

  @override
  String get remindAfternoonTitle => '順手補一筆';

  @override
  String get remindAfternoonBody => '記下今天到現在的支出，讓數字保持準確。';

  @override
  String get remindEveningTitle => '為今天收個尾';

  @override
  String get remindEveningBody => '現在花兩分鐘，今天的帳就齊了。';

  @override
  String get happyWeekendTitle => '週末愉快！🎉';

  @override
  String get happyWeekendBody => '好好放鬆 — 也留意一下週末的開銷。';

  @override
  String get dailyReminders => '每日記帳提醒';

  @override
  String get dailyRemindersBody => '溫和地提醒你把支出記全';

  @override
  String get weekendGreeting => '週末問候';

  @override
  String get weekendGreetingBody => '週末開始時的一句問候';

  @override
  String get reminderTimesSection => '提醒時段';

  @override
  String get slotMorning => '早上';

  @override
  String get slotNoon => '中午';

  @override
  String get slotAfternoon => '下午';

  @override
  String get slotEvening => '晚上';

  @override
  String get everyDay => '每天';

  @override
  String get financialReport => '財務報告';

  @override
  String get preparedFor => '報告對象';

  @override
  String get generatedOn => '產生時間';

  @override
  String get reportDisclaimer => '由 RainyPenny 依據你自己的紀錄產生。';

  @override
  String pageOf(int page, int total) {
    return '第 $page 頁，共 $total 頁';
  }

  @override
  String get overview => '總覽';

  @override
  String get description => '說明';

  @override
  String get totalIncome => '總收入';

  @override
  String get totalExpenses => '總支出';

  @override
  String get totalSaved => '累計儲蓄';

  @override
  String get shareOfTotal => '占比';

  @override
  String get used => '已用';

  @override
  String get goal => '目標';

  @override
  String get targetDate => '目標日期';

  @override
  String get progress => '進度';

  @override
  String get paidOffShort => '已還';

  @override
  String get transactions => '收支紀錄';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '以及另外 $count 筆紀錄',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => '匯出 PDF';

  @override
  String get sharePdf => '分享報告';

  @override
  String get preparingReport => '正在產生報告…';

  @override
  String get reportReady => '報告已完成';

  @override
  String get reportFailed => '無法產生報告';

  @override
  String get categories => '分類';

  @override
  String get categoriesIntro => '新增自己的分類，用你習慣的方式整理收入和支出。';

  @override
  String get expenseCategories => '支出分類';

  @override
  String get incomeCategories => '收入分類';

  @override
  String get newCategory => '新增分類';

  @override
  String get editCategory => '編輯分類';

  @override
  String get categoryName => '名稱';

  @override
  String get categoryNameHint => '例如：寵物';

  @override
  String get icon => '圖示';

  @override
  String get categorySaved => '分類已儲存';

  @override
  String get categoryDeleted => '分類已刪除';

  @override
  String get deleteCategory => '刪除這個分類？';

  @override
  String deleteCategoryBody(String name) {
    return '$name 將從你的分類中移除。';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '仍有 $count 筆紀錄在使用這個分類',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => '這裡還是空的。';

  @override
  String get builtIn => '內建';

  @override
  String get manageCategories => '管理分類';

  @override
  String get expense => '支出';

  @override
  String get languageNote => '阿拉伯文、烏爾都文、波斯文和希伯來文會把整個介面切換為由右至左，包含圖表和 PDF 報告。';

  @override
  String get next => '下一步';

  @override
  String get back => '上一步';

  @override
  String get skip => '略過';

  @override
  String get continueLabel => '繼續';

  @override
  String get selected => '已選取';

  @override
  String get passwordRequired => '請輸入密碼';

  @override
  String get newPasswordLabel => '新密碼';

  @override
  String get confirmPasswordLabel => '確認密碼';

  @override
  String get passwordsDoNotMatch => '兩次輸入的密碼必須一致';

  @override
  String get showPassword => '顯示密碼';

  @override
  String get hidePassword => '隱藏密碼';

  @override
  String get savePassword => '儲存密碼';

  @override
  String get backToSignIn => '返回登入';

  @override
  String get alreadyHaveAccount => '我已經有帳戶了';

  @override
  String get getStarted => '開始使用';

  @override
  String get acceptTerms => '我同意服務條款與隱私權政策';

  @override
  String get acceptTermsRequired => '請先同意才能繼續';

  @override
  String get passwordStrengthTooShort => '太短';

  @override
  String get passwordStrengthWeak => '較弱';

  @override
  String get passwordStrengthFair => '普通';

  @override
  String get passwordStrengthGood => '良好';

  @override
  String get passwordStrengthStrong => '很強';

  @override
  String get passwordAdvice => '一句你記得住的長句子，勝過一串塞滿符號的短密碼。不要用你在別處已經用過的。';

  @override
  String get authInvalidCredentials => '這組電子郵件和密碼與任何帳戶都不符';

  @override
  String get authEmailNotConfirmed => '登入前請先驗證你的電子郵件地址';

  @override
  String get authEmailAlreadyRegistered => '這個電子郵件已經註冊過帳戶了';

  @override
  String get authWeakPassword => '請選擇更長的密碼';

  @override
  String get authRateLimited => '嘗試次數過多，請幾分鐘後再試';

  @override
  String get authNetworkError => '沒有網路連線。請檢查網路後重試';

  @override
  String get authGenericError => '出了點問題，請重試';

  @override
  String get confirmEmailTitle => '請查看你的信箱';

  @override
  String confirmEmailBody(String email) {
    return '我們已寄出確認連結到 $email。開啟它即可完成帳戶設定。';
  }

  @override
  String get resendConfirmation => '重新寄送確認信';

  @override
  String get confirmationResent => '確認信已寄出';

  @override
  String get forgotPasswordTitle => '重設密碼';

  @override
  String get forgotPasswordSubtitle => '輸入你註冊時使用的電子郵件，我們會寄一個連結讓你設定新密碼。';

  @override
  String get sendResetLink => '寄送重設連結';

  @override
  String get resetLinkSentTitle => '連結已寄出';

  @override
  String resetLinkSentBody(String email) {
    return '如果 $email 有帳戶，重設連結已經在路上了。';
  }

  @override
  String get resetLinkSentHint => '連結一小時內有效。如果沒收到，請先查看垃圾郵件，再申請新的。';

  @override
  String get tryAnotherEmail => '換一個電子郵件';

  @override
  String get resetPasswordTitle => '設定新密碼';

  @override
  String get resetPasswordSubtitle => '選一個你在這個帳戶上沒用過的密碼。';

  @override
  String get passwordChangedTitle => '密碼已更新';

  @override
  String get passwordChangedBody => '新密碼已儲存。你已登入，可以繼續了。';

  @override
  String get demoModeHint => '示範版本 — 不需要帳戶';

  @override
  String get demoModeFill => '填入';

  @override
  String get welcomeTrackTitle => '看清錢花到了哪裡';

  @override
  String get welcomeTrackBody => '把進出的每一筆記下來。RainyPenny 會把它變成一幅真正看得懂的圖。';

  @override
  String get welcomeBudgetTitle => '設定守得住的上限';

  @override
  String get welcomeBudgetBody => '為每一類支出訂一個月度上限，在超出之前就知道，而不是之後。';

  @override
  String get welcomeGoalsTitle => '為重要的事存錢';

  @override
  String get welcomeGoalsBody => '為目標取個名字，訂個金額，看著它一點一點填滿。緊急預備金看得見時更容易存起來。';

  @override
  String get welcomePrivacyTitle => '你的錢始終是你的';

  @override
  String get welcomePrivacyBody => '你的數字只屬於你。我們不出售，也不與任何人分享。';

  @override
  String stepOf(int step, int total) {
    return '第 $step 步，共 $total 步';
  }

  @override
  String get onboardingNameTitle => '怎麼稱呼你？';

  @override
  String get onboardingNameBody => '只用來跟你打招呼，其他地方都不會用到。';

  @override
  String get onboardingNameHint => '寫名字就夠了，之後可以改。';

  @override
  String get onboardingCurrencyTitle => '你使用哪種貨幣？';

  @override
  String get onboardingCurrencyBody => '應用程式裡的所有金額都以這種貨幣顯示。選擇它不會做任何匯率換算。';

  @override
  String get onboardingCurrencySearch => '搜尋全部貨幣';

  @override
  String get onboardingAppearanceTitle => '調成你喜歡的樣子';

  @override
  String get onboardingAppearanceBody => '挑一個外觀。點一下就變，隨時都能回來改。';

  @override
  String get onboardingNotificationsTitle => '別讓它跑偏';

  @override
  String get onboardingNotificationsBody => '在對的時間輕輕提醒一下，習慣就是這樣養成的。';

  @override
  String get onboardingNotifyReminders => '溫和地提醒你記下花了多少';

  @override
  String get onboardingNotifyBudget => '在預算用完前先告知';

  @override
  String get onboardingNotifySummary => '每週彙整你的錢去了哪裡';

  @override
  String get onboardingNotifyEnable => '開啟通知';

  @override
  String get onboardingNotifyDone => '通知設定已儲存';

  @override
  String get onboardingNotifyLater => '這些都可以隨時在設定裡更改。';

  @override
  String get onboardingReadyTitle => '一切就緒';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '一切就緒，$name';
  }

  @override
  String get onboardingReadyBody => '設定完成了。要不要快速看一遍怎麼用？';

  @override
  String get onboardingTakeTour => '帶我看看';

  @override
  String get onboardingGoToApp => '直接進入應用程式';

  @override
  String get onboardingTourLater => '現在不看？指南會留在設定裡，隨時可以開啟。';

  @override
  String get beginnersGuide => '新手指南';

  @override
  String get guideFinish => '完成';

  @override
  String chapterOf(int number, int total) {
    return '第 $number 章，共 $total 章';
  }

  @override
  String guideOpenScreen(String screen) {
    return '開啟$screen';
  }

  @override
  String get guideDashboardTitle => '你的首頁';

  @override
  String get guideDashboardBody =>
      '一切從這裡開始。最上面那張卡是你還剩多少；下面是本期的收入和支出，再往下是你的支出、預算和目標。';

  @override
  String get guideDashboardTip1 => '向下拉動畫面，一次重新整理全部內容。';

  @override
  String get guideDashboardTip2 => '點收入或支出卡片，直接跳到對應的清單。';

  @override
  String get guideDashboardTip3 => '你一記帳，圓環和洞察就會立刻更新。';

  @override
  String get guideAddTitle => '記錄收支';

  @override
  String get guideAddBody => '底列中間的按鈕是一切的起點。它會開啟一個簡短選單：支出、收入、負債、預算或儲蓄目標。';

  @override
  String get guideAddTip1 => '點中間的按鈕記一筆收入或支出。';

  @override
  String get guideAddTip2 => '長按它可以略過選單，直接新增一筆支出。';

  @override
  String get guideAddTip3 => '一定要選分類 — 圖表和預算都靠它才能運作。';

  @override
  String get guideCategoriesTitle => '分類';

  @override
  String get guideCategoriesBody =>
      '分類決定支出如何歸類。應用程式內建的分類對多數人已經夠用，你也可以改名或新增自己的。';

  @override
  String get guideCategoriesTip1 => '設定，然後「管理分類」，就能修改或新增。';

  @override
  String get guideCategoriesTip2 => '沒有分類的紀錄會歸入「其他」，讓圖表保持真實。';

  @override
  String get guideBudgetTitle => '預算';

  @override
  String get guideBudgetBody =>
      '預算就是某個分類的月度上限。你花得越多進度條越滿，接近上限時會變色，所以你會在超支前就知道。';

  @override
  String get guideBudgetTip1 => '先從兩三個分類開始，不要一次全設。';

  @override
  String get guideBudgetTip2 => '把上限訂得比平常花的略高一點，再慢慢收緊。';

  @override
  String get guideBudgetTip3 => '保持預算提醒開啟，預算快用完時應用程式會提醒你。';

  @override
  String get guideSavingsTitle => '儲蓄目標';

  @override
  String get guideSavingsBody => '寫下你為什麼存錢，訂好金額和日期，應用程式會算出每月需要存多少才能達成。';

  @override
  String get guideSavingsTip1 => '有名字的目標，比籠統的「想存點錢」更容易堅持。';

  @override
  String get guideSavingsTip2 => '幾個小目標比一個大目標更容易真正完成。';

  @override
  String get guideLoansTitle => '負債與貸款';

  @override
  String get guideLoansBody => '記下你欠了多少、成本多少、下次還款是什麼時候。所有在還的帳都在一張清單裡，帶著剩餘金額。';

  @override
  String get guideLoansTip1 => '填上還款日，還款提醒就會替你盯著。';

  @override
  String get guideLoansTip2 => '逾期的負債會在首頁顯示為紅色，直到還清為止。';

  @override
  String get guideReportsTitle => '報表';

  @override
  String get guideReportsBody => '更深一層的視角：收入對比支出、分類支出、預算執行得如何，以及你的收入留下了多少。';

  @override
  String get guideReportsTip1 => '在畫面頂端切換週、月和季。';

  @override
  String get guideReportsTip2 => '匯出或分享 PDF — 它會依你的語言和閱讀方向產生。';

  @override
  String get guideSettingsTitle => '設定';

  @override
  String get guideSettingsBody => '語言、貨幣、顏色和提醒都在這裡，初始設定並不會把任何一項固定下來 — 想改隨時改。';

  @override
  String get guideSettingsTip1 => '四十種語言，遇到由右至左的語言時整個介面都會鏡像。';

  @override
  String get guideSettingsTip2 => '選擇你想要的提醒，以及它們可以在什麼時段送達。';

  @override
  String get guideSettingsTip3 => '勿擾時段會把一切壓到早上再說。';

  @override
  String get guideHabitTitle => '讓它持續下去';

  @override
  String get guideHabitBody =>
      '這個應用程式有多好，取決於你放了多少進去。每天一分鐘勝過每月一小時，堅持兩週，數字就開始告訴你一些事了。';

  @override
  String get guideHabitTip1 => '花錢的當下就記，別攢到週末。';

  @override
  String get guideHabitTip2 => '每天看一眼首頁，十秒鐘就夠。';

  @override
  String get guideHabitTip3 => '這份指南一直留在設定裡 — 隨時可以回來看。';

  @override
  String get appearance => '外觀';

  @override
  String get themeCaption => '淺色、深色，或跟隨手機。';

  @override
  String get accentColor => '主題色';

  @override
  String get accentColorCaption => '決定按鈕、標示和圖表的顏色。';

  @override
  String get accentSemanticsNote => '收入和支出在任何主題下都保留各自的顏色，所以換了主題色，數字的意思也不會變。';

  @override
  String get accentTeal => '青綠';

  @override
  String get accentGreen => '綠色';

  @override
  String get accentSky => '天藍';

  @override
  String get accentBlue => '藍色';

  @override
  String get accentIndigo => '靛藍';

  @override
  String get accentViolet => '紫羅蘭';

  @override
  String get accentPink => '粉紅';

  @override
  String get accentCrimson => '緋紅';

  @override
  String get accentOrange => '橙色';

  @override
  String get accentSlate => '石板灰';

  @override
  String get searchLanguages => '搜尋語言';

  @override
  String get suggestedLanguages => '建議';

  @override
  String get allLanguages => '全部語言';

  @override
  String get noLanguagesFound => '找不到語言';

  @override
  String get noLanguagesFoundMessage => '試試英文名稱，或兩個字母的代碼。';

  @override
  String get rightToLeft => '由右至左';

  @override
  String get replayGuide => '重看指南';

  @override
  String get replaySetup => '重新進行設定';

  @override
  String get replaySetupBody => '再走一遍初始設定的問題。你記錄的內容不會被刪除。';

  @override
  String get rateTitle => '喜歡 RainyPenny 嗎？';

  @override
  String get rateBody => '你已經用了一段時間了。評價只需片刻，也能幫助其他人找到這款應用程式。';

  @override
  String get rateAction => '為應用程式評分';

  @override
  String get rateLater => '以後再說';

  @override
  String get rateNever => '不用了，謝謝';

  @override
  String get rateThanks => '謝謝';
}
