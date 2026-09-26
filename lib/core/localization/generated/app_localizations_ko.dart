// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppL10nKo extends AppL10n {
  AppL10nKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => '만약을 대비해 저축하세요';

  @override
  String get navHome => '홈';

  @override
  String get navTransactions => '거래 내역';

  @override
  String get navAdd => '추가';

  @override
  String get navReports => '보고서';

  @override
  String get navProfile => '프로필';

  @override
  String greetingMorning(String name) {
    return '좋은 아침입니다, $name님';
  }

  @override
  String greetingAfternoon(String name) {
    return '좋은 오후입니다, $name님';
  }

  @override
  String greetingEvening(String name) {
    return '좋은 저녁입니다, $name님';
  }

  @override
  String get greetingSubtitle => '현재 금융 현황 요약입니다';

  @override
  String get totalBalance => '총잔액';

  @override
  String get vsLastPeriod => '이전 기간 대비';

  @override
  String get income => '수입';

  @override
  String get expenses => '지출';

  @override
  String get netBalance => '순잔액';

  @override
  String get lastThirtyDays => '최근 30일';

  @override
  String get quickActions => '빠른 작업';

  @override
  String get addIncome => '수입 추가';

  @override
  String get addExpense => '지출 추가';

  @override
  String get spendingOverview => '지출 현황';

  @override
  String get recentTransactions => '최근 거래';

  @override
  String get seeAll => '전체 보기';

  @override
  String get viewAll => '전체 보기';

  @override
  String get budgetProgress => '예산 진행 상황';

  @override
  String get savingsGoals => '저축 목표';

  @override
  String get financialInsight => '금융 인사이트';

  @override
  String get financialHealth => '재정 건강 상태';

  @override
  String ofTotal(String total) {
    return '/ $total';
  }

  @override
  String get searchTransactions => '거래 내역 검색';

  @override
  String get filterAll => '전체';

  @override
  String get filterIncome => '수입';

  @override
  String get filterExpenses => '지출';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get noTransactionsTitle => '거래 내역이 없습니다';

  @override
  String get noTransactionsBody => '다른 검색어나 필터를 선택하여 내역을 확인해 보세요.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '거래 $count건',
      one: '거래 1건',
      zero: '거래 내역 없음',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '거래 추가';

  @override
  String get amount => '금액';

  @override
  String get category => '카테고리';

  @override
  String get date => '날짜';

  @override
  String get note => '메모';

  @override
  String get noteHint => '메모 입력 (선택 사항)';

  @override
  String get saveIncome => '수입 저장';

  @override
  String get saveExpense => '지출 저장';

  @override
  String get selectCategory => '카테고리 선택';

  @override
  String get transactionSaved => '거래가 저장되었습니다';

  @override
  String get amountRequired => '0보다 큰 금액을 입력하세요';

  @override
  String get titleRequired => '거래 이름을 입력하세요';

  @override
  String get descriptionLabel => '설명';

  @override
  String get descriptionHint => '예: 식료품 구매';

  @override
  String get budget => '예산';

  @override
  String get budgets => '예산 목록';

  @override
  String get totalBudget => '총예산';

  @override
  String get spent => '지출액';

  @override
  String get remaining => '남은 금액';

  @override
  String budgetUsed(int percent) {
    return '$percent% 사용됨';
  }

  @override
  String get onTrack => '안정적';

  @override
  String get approachingLimit => '한도 근접';

  @override
  String get overBudget => '예산 초과';

  @override
  String get savings => '저축';

  @override
  String get yourGoals => '내 목표';

  @override
  String get saved => '모은 금액';

  @override
  String get target => '목표 금액';

  @override
  String get monthlyContribution => '월별';

  @override
  String get addFunds => '금액 추가';

  @override
  String get goalComplete => '목표 달성';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월 남음',
      one: '1개월 남음',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => '대출 및 부채';

  @override
  String get totalOutstanding => '총 미상환 잔액';

  @override
  String get monthlyPayment => '월 상환액';

  @override
  String get nextPayment => '다음 납부일';

  @override
  String paidOff(int percent) {
    return '$percent% 상환 완료';
  }

  @override
  String get interestRate => '금리';

  @override
  String get upcomingPayments => '예정된 결제';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 후 마감',
      one: '내일 마감',
      zero: '오늘 마감',
    );
    return '$_temp0';
  }

  @override
  String get overdue => '기한 경과';

  @override
  String get reports => '보고서';

  @override
  String get week => '주간';

  @override
  String get month => '월간';

  @override
  String get quarter => '분기';

  @override
  String get incomeVsExpenses => '수입 대비 지출';

  @override
  String get spendingByCategory => '카테고리별 지출';

  @override
  String get budgetPerformance => '예산 관리 현황';

  @override
  String get insights => '인사이트';

  @override
  String get savingsRate => '저축률';

  @override
  String get profile => '프로필';

  @override
  String get account => '계정';

  @override
  String get personalInformation => '개인 정보';

  @override
  String get changePassword => '비밀번호 변경';

  @override
  String get notifications => '알림';

  @override
  String get preferences => '환경설정';

  @override
  String get language => '언어';

  @override
  String get currency => '통화';

  @override
  String get theme => '테마';

  @override
  String get security => '보안';

  @override
  String get privacyAndSecurity => '개인정보 보호 및 보안';

  @override
  String get help => '도움말';

  @override
  String get helpAndSupport => '도움말 및 지원';

  @override
  String get termsAndConditions => '이용약관';

  @override
  String get logOut => '로그아웃';

  @override
  String memberSince(String date) {
    return '가입일: $date';
  }

  @override
  String get themeSystem => '시스템 설정';

  @override
  String get themeLight => '라이트 모드';

  @override
  String get themeDark => '다크 모드';

  @override
  String get settings => '설정';

  @override
  String get noNotificationsTitle => '새로운 알림이 없습니다';

  @override
  String get noNotificationsBody => '새로운 인사이트와 알림이 여기에 표시됩니다.';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get done => '완료';

  @override
  String get retry => '다시 시도';

  @override
  String get close => '닫기';

  @override
  String get somethingWentWrong => '문제가 발생했습니다';

  @override
  String get comingSoon => '정식 출시 버전에서 곧 제공됩니다';

  @override
  String get edit => '수정';

  @override
  String get delete => '삭제';

  @override
  String get undo => '실행 취소';

  @override
  String get add => '추가';

  @override
  String get create => '생성';

  @override
  String get nameRequired => '이름을 입력하세요';

  @override
  String get amountAboveZero => '0보다 큰 금액을 입력하세요';

  @override
  String get editTransaction => '거래 수정';

  @override
  String get deleteTransaction => '거래를 삭제하시겠습니까?';

  @override
  String deleteTransactionBody(String title) {
    return '$title 항목이 장부에서 삭제됩니다.';
  }

  @override
  String get transactionDeleted => '거래가 삭제되었습니다';

  @override
  String get transactionUpdated => '거래가 수정되었습니다';

  @override
  String get newBudget => '새 예산';

  @override
  String get editBudget => '예산 수정';

  @override
  String get budgetLimit => '월 한도';

  @override
  String get deleteBudget => '예산을 삭제하시겠습니까?';

  @override
  String deleteBudgetBody(String category) {
    return '$category 예산이 삭제됩니다. 기존 거래 내역에는 영향을 주지 않습니다.';
  }

  @override
  String get budgetSaved => '예산이 저장되었습니다';

  @override
  String get budgetDeleted => '예산이 삭제되었습니다';

  @override
  String get allCategoriesBudgeted => '모든 카테고리에 이미 예산이 설정되어 있습니다';

  @override
  String get noBudgetsTitle => '아직 설정된 예산이 없습니다';

  @override
  String get noBudgetsBody => '카테고리에 월 한도를 설정하여 지출 관리를 시작해 보세요.';

  @override
  String get newGoal => '새 목표';

  @override
  String get editGoal => '목표 수정';

  @override
  String get goalName => '목표 이름';

  @override
  String get goalNameHint => '예: 비상금';

  @override
  String get targetAmount => '목표 금액';

  @override
  String get alreadySaved => '현재까지 모은 금액';

  @override
  String get deleteGoal => '목표를 삭제하시겠습니까?';

  @override
  String deleteGoalBody(String name) {
    return '$name 목표와 진행 상황이 삭제됩니다.';
  }

  @override
  String get goalSaved => '목표가 저장되었습니다';

  @override
  String get goalDeleted => '목표가 삭제되었습니다';

  @override
  String get noGoalsTitle => '아직 저축 목표가 없습니다';

  @override
  String get noGoalsBody => '목표를 설정하면 RainyPenny가 진행 상황을 추적해 드립니다.';

  @override
  String get fundsAdded => '금액이 추가되었습니다';

  @override
  String get newDebt => '새 대출 또는 카드 등록';

  @override
  String get editDebt => '대출 정보 수정';

  @override
  String get debtName => '이름';

  @override
  String get debtNameHint => '예: 자동차 대출';

  @override
  String get lender => '금융기관/대출처';

  @override
  String get lenderHint => '예: 국민은행';

  @override
  String get originalAmount => '원금';

  @override
  String get creditLimit => '한도 금액';

  @override
  String get remainingBalance => '남은 잔액';

  @override
  String get interestRatePercent => '금리 (%)';

  @override
  String get kindLoan => '대출';

  @override
  String get kindCreditCard => '신용카드';

  @override
  String get recordPayment => '상환 기록';

  @override
  String get paymentRecorded => '상환이 기록되었습니다';

  @override
  String get deleteDebt => '이 부채 항목을 삭제하시겠습니까?';

  @override
  String deleteDebtBody(String name) {
    return '$name 항목이 부채 목록에서 삭제됩니다.';
  }

  @override
  String get debtSaved => '저장되었습니다';

  @override
  String get debtDeleted => '삭제되었습니다';

  @override
  String get noDebtsTitle => '등록된 부채 내역이 없습니다';

  @override
  String get noDebtsBody => '대출이나 신용카드를 추가하여 상환 일정을 확인해 보세요.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject 예산 초과';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '이번 기간에 $subject 예산을 $amount 초과하여 지출했습니다.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject 예산 한도에 근접했습니다';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject 예산의 $percent%를 사용했으며, $amount 남았습니다.';
  }

  @override
  String get insightOverIncomeTitle => '지출이 수입을 초과했습니다';

  @override
  String get insightOverIncomeBody =>
      '이번 기간에 번 돈보다 더 많은 금액을 썼습니다. 가장 큰 지출 카테고리를 검토하여 균형을 맞추세요.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject 지출 증가';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject 지출이 이전 기간보다 $percent% 증가했습니다.';
  }

  @override
  String get insightTrendDownTitle => '지출 감소세';

  @override
  String insightTrendDownBody(int percent) {
    return '전체 지출이 이전 기간보다 $percent% 감소했습니다.';
  }

  @override
  String get insightTrendUpTitle => '지출 증가세';

  @override
  String insightTrendUpBody(int percent) {
    return '전체 지출이 이전 기간보다 $percent% 증가했습니다.';
  }

  @override
  String get insightSavingsStrongTitle => '이번 기간 저축 우수';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '수입의 $percent%를 저축하여 목표인 $target%를 훨씬 웃돌았습니다.';
  }

  @override
  String get insightSavingsLowTitle => '저축률이 목표치에 미달합니다';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return '이번 기간에 수입의 $percent%를 저축했습니다. 목표치인 $target% 달성을 시도해 보세요.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject 목표 달성이 눈앞입니다';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject 목표까지 $amount 남았습니다.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject 목표 달성 진행 중';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months개월',
      one: '1개월',
    );
    return '매달 $amount씩 저축하면 $_temp0 후에 목표를 달성할 수 있습니다.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject 상환 연체';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일',
      one: '1일',
    );
    return '$subject 항목의 상환액 $amount이(가) $_temp0 연체되었습니다.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject 결제일 도래';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일 후',
      one: '내일',
      zero: '오늘',
    );
    return '$amount 결제일이 $_temp0입니다.';
  }

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '회원가입';

  @override
  String get signInSubtitle => '다시 오신 것을 환영합니다. 나의 자산 현황을 확인해 보세요.';

  @override
  String get signUpSubtitle => '몇 가지 정보만 입력하면 준비가 완료됩니다.';

  @override
  String get emailLabel => '이메일';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get passwordHint => '8자 이상 입력';

  @override
  String get fullNameLabel => '이름';

  @override
  String get fullNameHint => '홍길동';

  @override
  String get forgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get resetSent => '받은편지함에서 비밀번호 재설정 링크를 확인하세요';

  @override
  String get noAccountYet => '처음이신가요?';

  @override
  String get haveAccount => '이미 계정이 있으신가요?';

  @override
  String get emailInvalid => '올바른 이메일 주소를 입력하세요';

  @override
  String get passwordTooShort => '최소 8자 이상 입력하세요';

  @override
  String get signOutConfirm => '로그아웃하시겠습니까?';

  @override
  String get signOutBody => '자산 현황을 다시 확인하려면 다시 로그인해야 합니다.';

  @override
  String get dataSource => '데이터 출처';

  @override
  String get insightWeeklySummaryTitle => '주간 활동 요약';

  @override
  String get insightWeeklySummaryBody =>
      '이번 주에 돈이 어디에 쓰였고 예산이 어떻게 유지되고 있는지 확인하세요.';

  @override
  String get notificationSettings => '알림 설정';

  @override
  String get alertsSection => '경고 알림';

  @override
  String get budgetAlerts => '예산 알림';

  @override
  String get budgetAlertsBody => '예산 한도에 근접하거나 초과했을 때 알림';

  @override
  String get paymentReminders => '결제일 알림';

  @override
  String get paymentRemindersBody => '결제일 며칠 전에 미리 알림';

  @override
  String get savingsUpdates => '저축 현황 알림';

  @override
  String get savingsUpdatesBody => '저축 목표 달성 현황 알림';

  @override
  String get weeklySummaryLabel => '주간 요약 보고서';

  @override
  String get weeklySummaryBody => '지난주 지출 및 수입에 대한 주간 요약';

  @override
  String get scheduleSection => '시간 설정';

  @override
  String get reminderTime => '알림 시간';

  @override
  String get quietHours => '방해 금지 시간';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => '요약 요일';

  @override
  String get permissionRequired => '알림이 꺼져 있습니다';

  @override
  String get permissionRequiredBody =>
      '예산 초과나 결제일 누락을 방지하려면 RainyPenny의 알림 권한을 허용해 주세요.';

  @override
  String get allowNotifications => '알림 허용';

  @override
  String get permissionDenied => '알림이 차단되어 있습니다. 기기 설정에서 알림을 켤 수 있습니다.';

  @override
  String get upcomingAlerts => '예정된 알림';

  @override
  String get noScheduledAlerts => '현재 예정된 알림이 없습니다';

  @override
  String get noScheduledAlertsBody => '예산 한도나 결제일이 다가오면 여기에 알림이 표시됩니다.';

  @override
  String scheduledFor(String date) {
    return '$date 예정';
  }

  @override
  String get everyWeek => '매주';

  @override
  String get allNotificationsOff => '모든 알림 꺼짐';

  @override
  String get needsAttention => '주의 필요';

  @override
  String get quickActionsTitle => '무엇을 하시겠습니까?';

  @override
  String get createSection => '기록하기';

  @override
  String get jumpToSection => '바로가기';

  @override
  String get addLoanAction => '대출 추가';

  @override
  String get addBudgetAction => '예산 추가';

  @override
  String get addGoalAction => '목표 추가';

  @override
  String get longPressHint => '팁: + 버튼을 길게 누르면 바로 지출을 기록할 수 있습니다';

  @override
  String get searchCurrencies => '통화 검색';

  @override
  String get noCurrenciesFound => '통화를 찾을 수 없습니다';

  @override
  String get noCurrenciesFoundMessage => '다른 코드, 기호 또는 이름으로 검색해 보세요.';

  @override
  String get popularCurrencies => '주요 통화';

  @override
  String get allCurrencies => '전체 통화';

  @override
  String get totalLoanAmount => '총 대출 원금';

  @override
  String get installmentAmount => '월 상환액';

  @override
  String get numberOfInstallments => '총 상환 횟수';

  @override
  String get paidInstallments => '상환 완료 횟수';

  @override
  String get remainingInstallments => '남은 상환 횟수';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total회 중 $paid회 납부 완료';
  }

  @override
  String get finalPayment => '최종 상환일';

  @override
  String get paymentDueDate => '정기 결제일';

  @override
  String dueOnDayOfMonth(int day) {
    return '매월 $day일';
  }

  @override
  String get loanStatus => '상태';

  @override
  String get statusActive => '정상 상환 중';

  @override
  String get statusDueSoon => '결제 임박';

  @override
  String get statusOverdue => '연체 중';

  @override
  String get statusCompleted => '완납';

  @override
  String get repaymentProgress => '상환 진행률';

  @override
  String get byAmount => '금액 기준';

  @override
  String get byInstallments => '상환 회차 기준';

  @override
  String get startDate => '시작일';

  @override
  String get openEnded => '만기일 미정';

  @override
  String get loanDetails => '대출 상세 정보';

  @override
  String get notSet => '설정 안 됨';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject 결제일이 오늘입니다';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '상환액 $amount의 결제일이 오늘입니다. 늦지 않게 납부하세요.';
  }

  @override
  String get remindMorningTitle => '좋은 아침입니다 ☀️';

  @override
  String get remindMorningBody => '상쾌하게 하루를 시작하세요. 어제 기록하지 않은 지출이 있으신가요?';

  @override
  String get remindNoonTitle => '점심시간 확인';

  @override
  String get remindNoonBody => '점심 식사, 커피, 교통비가 있었나요? 몇 초 만에 기록해 보세요.';

  @override
  String get remindAfternoonTitle => '오후 중간 점검';

  @override
  String get remindAfternoonBody => '오늘 지금까지 쓴 돈을 기록하여 내역을 정확하게 유지하세요.';

  @override
  String get remindEveningTitle => '하루 마감하기';

  @override
  String get remindEveningBody => '잠깐 2분만 투자하여 오늘의 장부를 완성하세요.';

  @override
  String get happyWeekendTitle => '즐거운 주말 보내세요! 🎉';

  @override
  String get happyWeekendBody => '주말을 만끽하세요 — 주말 지출도 꼼꼼히 확인하는 것 잊지 마세요.';

  @override
  String get dailyReminders => '일일 지출 알림';

  @override
  String get dailyRemindersBody => '지출 내역을 꾸준히 기록할 수 있도록 돕는 알림';

  @override
  String get weekendGreeting => '주말 인사';

  @override
  String get weekendGreetingBody => '주말 시작을 알리는 따뜻한 인사 메시지';

  @override
  String get reminderTimesSection => '알림 시간대';

  @override
  String get slotMorning => '아침';

  @override
  String get slotNoon => '점심';

  @override
  String get slotAfternoon => '오후';

  @override
  String get slotEvening => '저녁';

  @override
  String get everyDay => '매일';

  @override
  String get financialReport => '재정 보고서';

  @override
  String get preparedFor => '보고 대상:';

  @override
  String get generatedOn => '생성 일자:';

  @override
  String get reportDisclaimer => '사용자의 기록 데이터를 바탕으로 RainyPenny에서 생성되었습니다.';

  @override
  String pageOf(int page, int total) {
    return '$page / $total 페이지';
  }

  @override
  String get overview => '개요';

  @override
  String get description => '내용';

  @override
  String get totalIncome => '총수입';

  @override
  String get totalExpenses => '총지출';

  @override
  String get totalSaved => '총저축액';

  @override
  String get shareOfTotal => '비중';

  @override
  String get used => '사용률';

  @override
  String get goal => '목표';

  @override
  String get targetDate => '목표일';

  @override
  String get progress => '진행률';

  @override
  String get paidOffShort => '상환율';

  @override
  String get transactions => '거래 내역';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '외 $count건의 거래',
      one: '외 1건의 거래',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF 내보내기';

  @override
  String get sharePdf => '보고서 공유';

  @override
  String get preparingReport => '보고서를 생성하는 중…';

  @override
  String get reportReady => '보고서가 준비되었습니다';

  @override
  String get reportFailed => '보고서를 생성하지 못했습니다';

  @override
  String get categories => '카테고리';

  @override
  String get categoriesIntro => '나만의 카테고리를 추가하여 수입과 지출을 원하는 방식대로 분류해 보세요.';

  @override
  String get expenseCategories => '지출 카테고리';

  @override
  String get incomeCategories => '수입 카테고리';

  @override
  String get newCategory => '새 카테고리';

  @override
  String get editCategory => '카테고리 수정';

  @override
  String get categoryName => '이름';

  @override
  String get categoryNameHint => '예: 반려동물';

  @override
  String get icon => '아이콘';

  @override
  String get categorySaved => '카테고리가 저장되었습니다';

  @override
  String get categoryDeleted => '카테고리가 삭제되었습니다';

  @override
  String get deleteCategory => '이 카테고리를 삭제하시겠습니까?';

  @override
  String deleteCategoryBody(String name) {
    return '$name 카테고리가 목록에서 삭제됩니다.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 항목에서 이 카테고리를 사용 중입니다',
      one: '1개의 항목에서 이 카테고리를 사용 중입니다',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => '항목이 없습니다.';

  @override
  String get builtIn => '기본 제공';

  @override
  String get manageCategories => '카테고리 관리';

  @override
  String get expense => '지출';

  @override
  String get languageNote =>
      '아랍어, 우르두어, 페르시아어, 히브리어는 차트와 PDF 보고서를 포함한 전체 인터페이스를 우측에서 좌측(RTL)으로 전환합니다.';

  @override
  String get next => '다음';

  @override
  String get back => '뒤로';

  @override
  String get skip => '건너뛰기';

  @override
  String get continueLabel => '계속';

  @override
  String get selected => '선택됨';

  @override
  String get passwordRequired => '비밀번호를 입력하세요';

  @override
  String get newPasswordLabel => '새 비밀번호';

  @override
  String get confirmPasswordLabel => '비밀번호 확인';

  @override
  String get passwordsDoNotMatch => '비밀번호가 일치하지 않습니다';

  @override
  String get showPassword => '비밀번호 표시';

  @override
  String get hidePassword => '비밀번호 숨기기';

  @override
  String get savePassword => '비밀번호 저장';

  @override
  String get backToSignIn => '로그인으로 돌아가기';

  @override
  String get alreadyHaveAccount => '이미 계정이 있습니다';

  @override
  String get getStarted => '시작하기';

  @override
  String get acceptTerms => '서비스 이용약관 및 개인정보 처리방침에 동의합니다';

  @override
  String get acceptTermsRequired => '계속하려면 약관에 동의해 주세요';

  @override
  String get passwordStrengthTooShort => '너무 짧음';

  @override
  String get passwordStrengthWeak => '취약함';

  @override
  String get passwordStrengthFair => '보통';

  @override
  String get passwordStrengthGood => '안전함';

  @override
  String get passwordStrengthStrong => '매우 안전함';

  @override
  String get passwordAdvice =>
      '특수문자가 많은 짧은 비밀번호보다 기억하기 쉬운 긴 문장이 더 안전합니다. 다른 곳에서 사용하는 비밀번호는 피하세요.';

  @override
  String get authInvalidCredentials => '이메일 또는 비밀번호가 일치하지 않습니다';

  @override
  String get authEmailNotConfirmed => '로그인하기 전에 이메일을 인증해 주세요';

  @override
  String get authEmailAlreadyRegistered => '해당 이메일로 등록된 계정이 이미 존재합니다';

  @override
  String get authWeakPassword => '더 긴 비밀번호를 설정하세요';

  @override
  String get authRateLimited => '시도 횟수가 너무 많습니다. 몇 분 후 다시 시도하세요';

  @override
  String get authNetworkError => '인터넷에 연결되지 않았습니다. 네트워크 연결을 확인하세요';

  @override
  String get authGenericError => '문제가 발생했습니다. 다시 시도해 주세요';

  @override
  String get confirmEmailTitle => '이메일을 확인하세요';

  @override
  String confirmEmailBody(String email) {
    return '$email 주소로 인증 링크를 보냈습니다. 링크를 클릭하여 계정 설정을 완료하세요.';
  }

  @override
  String get resendConfirmation => '인증 이메일 재전송';

  @override
  String get confirmationResent => '인증 이메일을 다시 보냈습니다';

  @override
  String get forgotPasswordTitle => '비밀번호 재설정';

  @override
  String get forgotPasswordSubtitle =>
      '가입 시 사용한 이메일을 입력하시면 새 비밀번호를 설정할 수 있는 링크를 보내드립니다.';

  @override
  String get sendResetLink => '재설정 링크 전송';

  @override
  String get resetLinkSentTitle => '재설정 링크가 전송되었습니다';

  @override
  String resetLinkSentBody(String email) {
    return '$email 계정이 등록되어 있다면 비밀번호 재설정 링크가 전송되었습니다.';
  }

  @override
  String get resetLinkSentHint =>
      '링크는 1시간 동안만 유효합니다. 메일이 오지 않았다면 다시 요청하기 전에 스팸함을 확인하세요.';

  @override
  String get tryAnotherEmail => '다른 이메일 사용';

  @override
  String get resetPasswordTitle => '새 비밀번호 설정';

  @override
  String get resetPasswordSubtitle => '이전에 이 계정에서 사용한 적 없는 새 비밀번호를 입력하세요.';

  @override
  String get passwordChangedTitle => '비밀번호가 변경되었습니다';

  @override
  String get passwordChangedBody => '새 비밀번호가 저장되었습니다. 로그인되어 바로 이용하실 수 있습니다.';

  @override
  String get demoModeHint => '데모 모드 — 계정이 필요하지 않습니다';

  @override
  String get demoModeFill => '자동 채우기';

  @override
  String get welcomeTrackTitle => '내 돈이 어디로 가는지 확인하세요';

  @override
  String get welcomeTrackBody =>
      '수입과 지출을 손쉽게 기록하세요. RainyPenny가 직관적이고 알기 쉬운 차트로 보여드립니다.';

  @override
  String get welcomeBudgetTitle => '실천 가능한 지출 한도를 정하세요';

  @override
  String get welcomeBudgetBody => '항목별로 월 예산을 지정하고, 한도를 초과하기 전에 미리 알림을 받아보세요.';

  @override
  String get welcomeGoalsTitle => '소중한 목표를 위해 저축하세요';

  @override
  String get welcomeGoalsBody =>
      '목표를 정하고 금액을 설정하여 차곡차곡 모아보세요. 눈으로 볼 수 있으면 비상금을 모으기가 훨씬 쉬워집니다.';

  @override
  String get welcomePrivacyTitle => '금융 정보는 본인에게만 안전하게 유지됩니다';

  @override
  String get welcomePrivacyBody =>
      '기록된 모든 자산 데이터는 온전히 사용자의 것입니다. 어떤 정보도 외부에 판매되거나 공유되지 않습니다.';

  @override
  String stepOf(int step, int total) {
    return '$step단계 / 총 $total단계';
  }

  @override
  String get onboardingNameTitle => '이름을 알려주세요';

  @override
  String get onboardingNameBody => '입력하신 이름은 인사말에만 사용되며 다른 곳에는 공유되지 않습니다.';

  @override
  String get onboardingNameHint => '이름만 입력하셔도 충분합니다. 나중에 언제든지 변경할 수 있습니다.';

  @override
  String get onboardingCurrencyTitle => '주로 사용하는 통화는 무엇인가요?';

  @override
  String get onboardingCurrencyBody =>
      '앱의 모든 금액이 이 통화로 표시됩니다. 선택해도 기존 금액이 환전되지는 않습니다.';

  @override
  String get onboardingCurrencySearch => '모든 통화 검색';

  @override
  String get onboardingAppearanceTitle => '원하는 스타일로 꾸며보세요';

  @override
  String get onboardingAppearanceBody =>
      '테마를 선택하세요. 탭할 때마다 화면이 바로 바뀌며 언제든지 다시 변경할 수 있습니다.';

  @override
  String get onboardingNotificationsTitle => '지출을 놓치지 않고 챙기세요';

  @override
  String get onboardingNotificationsBody =>
      '적절한 순간에 받는 부드러운 알림이 가계부 작성을 좋은 습관으로 만들어 줍니다.';

  @override
  String get onboardingNotifyReminders => '지출을 잊지 않고 적을 수 있도록 돕는 알림';

  @override
  String get onboardingNotifyBudget => '예산 한도에 도달하기 전 미리 받는 알림';

  @override
  String get onboardingNotifySummary => '한 주간의 지출 흐름을 정리해 주는 주간 요약';

  @override
  String get onboardingNotifyEnable => '알림 켜기';

  @override
  String get onboardingNotifyDone => '알림 설정이 저장되었습니다';

  @override
  String get onboardingNotifyLater => '설정에서 언제든지 다시 변경할 수 있습니다.';

  @override
  String get onboardingReadyTitle => '모든 준비가 완료되었습니다';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '$name님, 모든 준비가 완료되었습니다';
  }

  @override
  String get onboardingReadyBody => '설정이 끝났습니다. 앱의 주요 기능을 둘러보시겠습니까?';

  @override
  String get onboardingTakeTour => '둘러보기 시작';

  @override
  String get onboardingGoToApp => '바로 앱 시작하기';

  @override
  String get onboardingTourLater => '나중에 보시겠습니까? 가이드는 설정 메뉴에서 언제든 다시 볼 수 있습니다.';

  @override
  String get beginnersGuide => '초보자 가이드';

  @override
  String get guideFinish => '완료';

  @override
  String chapterOf(int number, int total) {
    return '$number장 / 총 $total장';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen 열기';
  }

  @override
  String get guideDashboardTitle => '대시보드';

  @override
  String get guideDashboardBody =>
      '모든 관리는 이곳에서 시작됩니다. 상단 카드에는 남은 잔액이 표시되며, 그 아래에는 이번 기간의 수입·지출, 예산 및 목표 현황이 한눈에 나타납니다.';

  @override
  String get guideDashboardTip1 => '화면을 아래로 당기면 모든 데이터가 한 번에 새로고침됩니다.';

  @override
  String get guideDashboardTip2 => '수입 또는 지출 카드를 탭하면 해당 내역 목록으로 바로 이동합니다.';

  @override
  String get guideDashboardTip3 => '새로운 거래를 기록하는 즉시 차트와 인사이트가 실시간으로 갱신됩니다.';

  @override
  String get guideAddTitle => '거래 기록하기';

  @override
  String get guideAddBody =>
      '하단 바 중앙에 있는 버튼이 시작점입니다. 탭하면 지출, 수입, 대출, 예산, 저축 목표 메뉴가 열립니다.';

  @override
  String get guideAddTip1 => '가운데 버튼을 눌러 지출이나 수입을 기록하세요.';

  @override
  String get guideAddTip2 => '버튼을 길게 누르면 메뉴를 건너뛰고 바로 지출 작성 화면으로 이동합니다.';

  @override
  String get guideAddTip3 => '항상 카테고리를 지정하세요 — 카테고리가 있어야 차트와 예산이 올바르게 작동합니다.';

  @override
  String get guideCategoriesTitle => '카테고리';

  @override
  String get guideCategoriesBody =>
      '카테고리는 지출을 분류하는 기준입니다. 기본 카테고리만으로도 충분하지만, 이름을 바꾸거나 직접 추가할 수도 있습니다.';

  @override
  String get guideCategoriesTip1 => '설정 > 카테고리 관리에서 언제든 수정하거나 추가할 수 있습니다.';

  @override
  String get guideCategoriesTip2 =>
      '카테고리를 지정하지 않은 항목은 \'기타\'로 분류되어 차트의 정확도를 유지합니다.';

  @override
  String get guideBudgetTitle => '예산';

  @override
  String get guideBudgetBody =>
      '예산은 특정 카테고리의 월 지출 상한선입니다. 지출함에 따라 막대가 채워지며, 한도에 가까워지면 색상이 변해 초과하기 전에 알려줍니다.';

  @override
  String get guideBudgetTip1 => '처음부터 모든 카테고리를 설정하지 말고, 2~3개 카테고리부터 시작해 보세요.';

  @override
  String get guideBudgetTip2 => '평소 지출보다 한도를 약간 높게 잡은 뒤 서서히 조여가세요.';

  @override
  String get guideBudgetTip3 => '예산 알림을 켜두면 한도에 다다랐을 때 앱이 미리 알려줍니다.';

  @override
  String get guideSavingsTitle => '저축 목표';

  @override
  String get guideSavingsBody =>
      '저축하려는 목적, 목표 금액, 기한을 지정하면 매달 얼마씩 모아야 하는지 앱이 자동으로 계산해 줍니다.';

  @override
  String get guideSavingsTip1 => '막연하게 저축하는 것보다 명확한 목표를 세울 때 달성하기가 훨씬 쉽습니다.';

  @override
  String get guideSavingsTip2 => '큰 목표 하나보다 작은 목표 여러 개를 단계별로 달성하는 것이 효과적입니다.';

  @override
  String get guideLoansTitle => '대출 및 부채';

  @override
  String get guideLoansBody =>
      '남은 빚, 이자, 다음 결제일을 기록하세요. 상환 중인 모든 부채를 남은 원금과 함께 한 목록에서 관리할 수 있습니다.';

  @override
  String get guideLoansTip1 => '결제일을 등록해 두면 결제일 알림이 알아서 챙겨드립니다.';

  @override
  String get guideLoansTip2 => '연체된 부채는 상환될 때까지 대시보드에 빨간색으로 표시됩니다.';

  @override
  String get guideReportsTitle => '보고서';

  @override
  String get guideReportsBody =>
      '수입 대비 지출, 카테고리별 지출 비율, 예산 준수율, 수입 중 저축한 비율까지 심층적인 분석을 제공합니다.';

  @override
  String get guideReportsTip1 => '화면 상단에서 주간, 월간, 분기별 보기를 쉽게 전환할 수 있습니다.';

  @override
  String get guideReportsTip2 =>
      'PDF로 내보내거나 공유할 수 있으며, 사용자의 언어 및 방향에 맞게 출력됩니다.';

  @override
  String get guideSettingsTitle => '설정';

  @override
  String get guideSettingsBody =>
      '언어, 통화, 테마 색상, 알림을 원하는 대로 변경할 수 있으며, 고정된 설정 없이 언제든 바꿀 수 있습니다.';

  @override
  String get guideSettingsTip1 =>
      '40개 언어를 지원하며, 우측에서 좌측으로 쓰는 언어(RTL)는 레이아웃이 자동 반전됩니다.';

  @override
  String get guideSettingsTip2 => '받고 싶은 알림 종류와 알림 수신 시간을 직접 선택하세요.';

  @override
  String get guideSettingsTip3 => '방해 금지 시간을 설정하면 아침까지 알림이 조용히 보류됩니다.';

  @override
  String get guideHabitTitle => '꾸준한 습관 만들기';

  @override
  String get guideHabitBody =>
      '가계부 앱은 직접 기록하는 만큼 가치가 커집니다. 한 달에 한 번 몰아서 쓰는 것보다 하루 1분 쓰는 것이 훨씬 효과적이며, 2주만 지나도 소비 흐름이 보이기 시작합니다.';

  @override
  String get guideHabitTip1 => '주말에 몰아서 쓰지 말고, 지출이 발생하는 즉시 기록해 보세요.';

  @override
  String get guideHabitTip2 => '하루에 한 번 10초만 대시보드를 훑어보세요.';

  @override
  String get guideHabitTip3 => '이 가이드는 설정 메뉴에 항상 보관되어 있으니 언제든 다시 읽어보세요.';

  @override
  String get appearance => '화면 테마';

  @override
  String get themeCaption => '라이트, 다크 또는 기기 설정을 따릅니다.';

  @override
  String get accentColor => '강조 색상';

  @override
  String get accentColorCaption => '버튼, 하이라이트 및 차트의 기본 색상을 지정합니다.';

  @override
  String get accentSemanticsNote =>
      '수입과 지출은 어떤 테마에서도 고유한 색상을 유지하므로 강조 색상을 바꿔도 금액의 의미가 헷갈리지 않습니다.';

  @override
  String get accentTeal => '청록색 (Teal)';

  @override
  String get accentGreen => '녹색 (Green)';

  @override
  String get accentSky => '하늘색 (Sky)';

  @override
  String get accentBlue => '파란색 (Blue)';

  @override
  String get accentIndigo => '남색 (Indigo)';

  @override
  String get accentViolet => '보라색 (Violet)';

  @override
  String get accentPink => '분홍색 (Pink)';

  @override
  String get accentCrimson => '진홍색 (Crimson)';

  @override
  String get accentOrange => '주황색 (Orange)';

  @override
  String get accentSlate => '슬레이트 (Slate)';

  @override
  String get searchLanguages => '언어 검색';

  @override
  String get suggestedLanguages => '추천 언어';

  @override
  String get allLanguages => '전체 언어';

  @override
  String get noLanguagesFound => '언어를 찾을 수 없습니다';

  @override
  String get noLanguagesFoundMessage => '영어 이름이나 두 글자 언어 코드로 검색해 보세요.';

  @override
  String get rightToLeft => '오른쪽에서 왼쪽으로 (RTL)';

  @override
  String get replayGuide => '가이드 다시 보기';

  @override
  String get replaySetup => '초기 설정 다시 실행';

  @override
  String get replaySetupBody =>
      '처음 시작할 때의 설정을 다시 진행합니다. 기존에 기록된 데이터는 삭제되지 않습니다.';

  @override
  String get rateTitle => 'RainyPenny가 마음에 드시나요?';

  @override
  String get rateBody =>
      '앱을 유용하게 쓰고 계신가요? 잠시 시간을 내어 평점을 남겨주시면 다른 분들이 앱을 찾는 데 큰 도움이 됩니다.';

  @override
  String get rateAction => '앱 평가하기';

  @override
  String get rateLater => '나중에 하기';

  @override
  String get rateNever => '괜찮습니다';

  @override
  String get rateThanks => '감사합니다';

  @override
  String get monthlySalary => '월급';

  @override
  String get remainingAmount => '남은 금액';

  @override
  String get carriedForward => '이월금';

  @override
  String get carriedForwardHint => '지난 급여 주기에서 남은 금액';

  @override
  String get totalSpending => '총지출';

  @override
  String get salaryCycle => '급여 주기';

  @override
  String get payday => '급여일';

  @override
  String get paydayDescription =>
      '급여를 받는 날입니다. 나의 재정 한 달은 이 날부터 다음 급여일 전날까지로 계산됩니다.';

  @override
  String get paydayUpdated => '급여일이 변경되었습니다';

  @override
  String paydayDayOfMonth(int day) {
    return '매월 $day일';
  }

  @override
  String get paydayShortMonthNote => '날짜 수가 적은 달에는 해당 월의 말일에 급여 주기가 시작됩니다.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '급여일까지 $count일',
      one: '급여일까지 1일',
      zero: '급여 주기 마지막 날',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => '다음 급여일';

  @override
  String get spentSoFar => '현재까지 지출';

  @override
  String get dailyAllowance => '하루 권장 지출액';

  @override
  String get overspentNotice => '이번 주기 수입보다 더 많이 지출했습니다.';

  @override
  String get backToThisMonth => '이번 달로 돌아가기';

  @override
  String get cycleRangeLabel => '주기';

  @override
  String get noSalaryRecorded => '아직 기록된 월급이 없습니다';

  @override
  String get addSalaryAction => '월급 입력하기';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => '매우 우수';

  @override
  String get healthGood => '우수';

  @override
  String get healthFair => '보통';

  @override
  String get healthNeedsWork => '개선 필요';

  @override
  String get healthExcellentBody => '저축을 훌륭히 실천하고 있으며 예산도 잘 지키고 있습니다.';

  @override
  String get healthGoodBody => '이번 기간 동안 안정적으로 지출을 관리하고 있습니다.';

  @override
  String get healthFairBody => '몇몇 예산 항목이 한도에 가깝습니다. 지출을 조금만 줄여보세요.';

  @override
  String get healthNeedsWorkBody => '계획보다 지출이 많습니다. 가장 큰 비중의 카테고리부터 점검하세요.';

  @override
  String get factorSavingsRate => '저축률';

  @override
  String get factorBudgetControl => '예산 관리';

  @override
  String get factorDebtLoad => '부채 부담도';

  @override
  String get factorSpendingTrend => '지출 추이';

  @override
  String factorKept(String percent) {
    return '$percent% 저축함';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% 사용함';
  }

  @override
  String factorOfIncome(String percent) {
    return '수입의 $percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent% 증가';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent% 감소';
  }

  @override
  String get howScoreWorks => '점수 산정 방식';

  @override
  String get healthScoreExplainer =>
      '재정 건강 점수는 수입 중 저축 비율, 예산 준수도, 부채 상환 지출 비중, 지출 증가/감소 추이의 4가지 요소를 종합하여 산출됩니다.';

  @override
  String scoreWeightLabel(int percent) {
    return '점수 반영 비중 $percent%';
  }

  @override
  String get viewHealthDetails => '세부 분석 보기';

  @override
  String get saveChanges => '변경사항 저장';

  @override
  String get profileUpdated => '프로필이 업데이트되었습니다';

  @override
  String get changePhoto => '사진 변경';

  @override
  String get removePhoto => '사진 삭제';

  @override
  String get personalInformationIntro =>
      '이름과 사진은 앱 전반에 표시됩니다. 이메일은 로그인 시 사용하는 주소입니다.';

  @override
  String get emailNotEditable => '로그인 이메일 주소를 변경하려면 고객 지원팀에 문의하세요.';

  @override
  String get pressBackAgainToExit => '종료하려면 뒤로가기 버튼을 한 번 더 누르세요';

  @override
  String get categoryHousing => '주거비';

  @override
  String get categoryFood => '식비 및 외식';

  @override
  String get categoryTransport => '교통비';

  @override
  String get categoryShopping => '쇼핑';

  @override
  String get categoryBills => '공과금 및 요금';

  @override
  String get categoryEntertainment => '문화 및 여가';

  @override
  String get categoryHealth => '건강 및 운동';

  @override
  String get categoryEducation => '교육';

  @override
  String get categoryTravel => '여행';

  @override
  String get categorySalary => '급여';

  @override
  String get categoryFreelance => '프리랜서';

  @override
  String get categoryInvestments => '투자 수익';

  @override
  String get categoryGift => '선물';

  @override
  String get categoryOther => '기타';

  @override
  String get categoryGroceries => '식료품';

  @override
  String get categoryDining => '외식';

  @override
  String get categoryCoffee => '카페/커피';

  @override
  String get categoryUtilities => '관리비/공과금';

  @override
  String get categoryInternet => '인터넷';

  @override
  String get categoryPhone => '통신비';

  @override
  String get categoryInsurance => '보험료';

  @override
  String get categorySubscriptions => '구독료';

  @override
  String get categoryPersonalCare => '미용/케어';

  @override
  String get categoryClothing => '의류/패션';

  @override
  String get categoryElectronics => '전자기기';

  @override
  String get categoryHomeSupplies => '생활용품';

  @override
  String get categoryPets => '반려동물';

  @override
  String get categoryChildcare => '육아';

  @override
  String get categoryFamily => '가족';

  @override
  String get categoryFitness => '피트니스';

  @override
  String get categorySports => '스포츠';

  @override
  String get categoryMedicine => '의약품';

  @override
  String get categoryMedical => '의료비/병원';

  @override
  String get categoryCharity => '기부/후원';

  @override
  String get categoryTaxes => '세금';

  @override
  String get categoryFees => '수수료';

  @override
  String get categoryDebt => '부채 상환';

  @override
  String get categorySavings => '저축';

  @override
  String get categoryRepairs => '수리/수선';

  @override
  String get categoryCarMaintenance => '차량 정비';

  @override
  String get categoryFuel => '주유비';

  @override
  String get categoryParking => '주차비';

  @override
  String get categoryPublicTransport => '대중교통';

  @override
  String get categoryRent => '월세';

  @override
  String get categoryMortgage => '주택담보대출';

  @override
  String get categoryBonus => '상여금/보너스';

  @override
  String get categoryCommission => '인센티브/수수료';

  @override
  String get categoryPension => '연금';

  @override
  String get categoryInterest => '이자 소득';

  @override
  String get categoryDividends => '배당금';

  @override
  String get categoryCashback => '캐시백';

  @override
  String get categoryRefund => '환불금';

  @override
  String get categoryRentalIncome => '임대 소득';

  @override
  String get addCategory => '새 카테고리';

  @override
  String get filterByCategory => '카테고리별 필터';

  @override
  String get allCategories => '전체 카테고리';

  @override
  String get clearFilters => '필터 초기화';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => '전체 기간';

  @override
  String get customRange => '직접 설정';

  @override
  String get selectDateRange => '기간 선택';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end 표시 중';
  }

  @override
  String get loans => '대출 목록';

  @override
  String get debts => '부채 목록';

  @override
  String get noLoansTitle => '등록된 대출 없음';

  @override
  String get noLoansBody => '현재 이용 중인 대출이 없습니다.';

  @override
  String get emptyHealthTitle => '재정 점수가 아직 없습니다';

  @override
  String get emptyHealthDescription =>
      '정확한 재정 건강 점수를 산출하기 위해 약간의 금융 거래 기록이 필요합니다.';

  @override
  String get emptyHealthAddTransactions => '수입 또는 지출 내역 추가하기';

  @override
  String get emptyHealthSetBudgets => '월별 예산 설정하기';

  @override
  String get emptyHealthTrackLoans => '대출이나 부채 등록하기 (선택 사항)';

  @override
  String get emptyHealthCardSubtitle => '거래 내역을 추가하여 나의 점수와 유용한 인사이트를 확인해 보세요.';

  @override
  String get smartBudgetSplit => '스마트 예산 분배';

  @override
  String get smartBudgetSplitSubtitle =>
      '월 실수령액을 입력하면 카테고리별 권장 예산 한도를 자동으로 계산해 드립니다';

  @override
  String get monthlyNetSalary => '월 실수령 급여';

  @override
  String get categoryAllocations => '카테고리별 예산 배분';

  @override
  String totalBudgeted(String amount) {
    return '총합계: $amount';
  }

  @override
  String get applyAllBudgets => '모든 예산 적용하기';

  @override
  String get applyingBudgets => '예산 적용 중...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개의 카테고리 예산이 생성되었습니다.',
      one: '1개의 카테고리 예산이 생성되었습니다.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => '예산을 저장하지 못했습니다.';

  @override
  String get recommendedBudget => '추천 예산';
}
