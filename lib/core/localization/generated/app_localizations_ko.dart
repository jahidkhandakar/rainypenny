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
  String get appTagline => '비 오는 날을 위해 모으세요';

  @override
  String get navHome => '홈';

  @override
  String get navTransactions => '내역';

  @override
  String get navAdd => '추가';

  @override
  String get navReports => '리포트';

  @override
  String get navProfile => '내 정보';

  @override
  String greetingMorning(String name) {
    return '좋은 아침이에요, $name님';
  }

  @override
  String greetingAfternoon(String name) {
    return '안녕하세요, $name님';
  }

  @override
  String greetingEvening(String name) {
    return '좋은 저녁이에요, $name님';
  }

  @override
  String get greetingSubtitle => '지금 재정 상황이에요';

  @override
  String get totalBalance => '총 잔액';

  @override
  String get vsLastPeriod => '지난 기간 대비';

  @override
  String get income => '수입';

  @override
  String get expenses => '지출';

  @override
  String get netBalance => '순수지';

  @override
  String get lastThirtyDays => '최근 30일';

  @override
  String get quickActions => '빠른 작업';

  @override
  String get addIncome => '수입 기록';

  @override
  String get addExpense => '지출 기록';

  @override
  String get spendingOverview => '지출 개요';

  @override
  String get recentTransactions => '최근 내역';

  @override
  String get seeAll => '모두 보기';

  @override
  String get viewAll => '전체 보기';

  @override
  String get budgetProgress => '예산 진행';

  @override
  String get savingsGoals => '저축 목표';

  @override
  String get financialInsight => '재정 인사이트';

  @override
  String get financialHealth => '재정 건전성';

  @override
  String ofTotal(String total) {
    return '$total 중';
  }

  @override
  String get searchTransactions => '내역 검색';

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
  String get noTransactionsTitle => '내역을 찾을 수 없어요';

  @override
  String get noTransactionsBody => '검색어나 필터를 바꾸면 더 많은 기록을 볼 수 있어요.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '내역 $count건',
      zero: '내역 없음',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '내역 추가';

  @override
  String get amount => '금액';

  @override
  String get category => '분류';

  @override
  String get date => '날짜';

  @override
  String get note => '메모';

  @override
  String get noteHint => '메모 (선택)';

  @override
  String get saveIncome => '수입 저장';

  @override
  String get saveExpense => '지출 저장';

  @override
  String get selectCategory => '분류 선택';

  @override
  String get transactionSaved => '저장했어요';

  @override
  String get amountRequired => '0보다 큰 금액을 입력하세요';

  @override
  String get titleRequired => '이 내역에 이름을 지어 주세요';

  @override
  String get descriptionLabel => '설명';

  @override
  String get descriptionHint => '예: 장보기';

  @override
  String get budget => '예산';

  @override
  String get budgets => '예산';

  @override
  String get totalBudget => '총 예산';

  @override
  String get spent => '사용';

  @override
  String get remaining => '남음';

  @override
  String budgetUsed(int percent) {
    return '$percent% 사용';
  }

  @override
  String get onTrack => '순조로움';

  @override
  String get approachingLimit => '한도 임박';

  @override
  String get overBudget => '예산 초과';

  @override
  String get savings => '저축';

  @override
  String get yourGoals => '내 목표';

  @override
  String get saved => '모은 금액';

  @override
  String get target => '목표';

  @override
  String get monthlyContribution => '매월';

  @override
  String get addFunds => '입금';

  @override
  String get goalComplete => '목표 달성';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개월 남음',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => '대출과 빚';

  @override
  String get totalOutstanding => '총 잔여 금액';

  @override
  String get monthlyPayment => '매월';

  @override
  String get nextPayment => '다음 상환';

  @override
  String paidOff(int percent) {
    return '$percent% 상환';
  }

  @override
  String get interestRate => '이자율';

  @override
  String get upcomingPayments => '예정된 상환';

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
  String get overdue => '연체';

  @override
  String get reports => '리포트';

  @override
  String get week => '주';

  @override
  String get month => '월';

  @override
  String get quarter => '분기';

  @override
  String get incomeVsExpenses => '수입과 지출';

  @override
  String get spendingByCategory => '분류별 지출';

  @override
  String get budgetPerformance => '예산 이행';

  @override
  String get insights => '인사이트';

  @override
  String get savingsRate => '저축률';

  @override
  String get profile => '내 정보';

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
  String get privacyAndSecurity => '개인정보 및 보안';

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
    return '$date부터 이용';
  }

  @override
  String get themeSystem => '시스템 설정';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get settings => '설정';

  @override
  String get noNotificationsTitle => '모두 확인했어요';

  @override
  String get noNotificationsBody => '새로운 인사이트와 알림이 여기에 표시돼요.';

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
  String get somethingWentWrong => '문제가 발생했어요';

  @override
  String get comingSoon => '정식 버전에서 제공될 예정이에요';

  @override
  String get edit => '수정';

  @override
  String get delete => '삭제';

  @override
  String get undo => '실행 취소';

  @override
  String get add => '추가';

  @override
  String get create => '만들기';

  @override
  String get nameRequired => '이름을 지어 주세요';

  @override
  String get amountAboveZero => '0보다 큰 금액을 입력하세요';

  @override
  String get editTransaction => '내역 수정';

  @override
  String get deleteTransaction => '내역을 삭제할까요?';

  @override
  String deleteTransactionBody(String title) {
    return '$title이(가) 장부에서 삭제돼요.';
  }

  @override
  String get transactionDeleted => '내역을 삭제했어요';

  @override
  String get transactionUpdated => '내역을 수정했어요';

  @override
  String get newBudget => '새 예산';

  @override
  String get editBudget => '예산 수정';

  @override
  String get budgetLimit => '월 한도';

  @override
  String get deleteBudget => '예산을 삭제할까요?';

  @override
  String deleteBudgetBody(String category) {
    return '$category 예산이 삭제돼요. 내역에는 영향이 없어요.';
  }

  @override
  String get budgetSaved => '예산을 저장했어요';

  @override
  String get budgetDeleted => '예산을 삭제했어요';

  @override
  String get allCategoriesBudgeted => '모든 분류에 이미 예산이 있어요';

  @override
  String get noBudgetsTitle => '아직 예산이 없어요';

  @override
  String get noBudgetsBody => '분류에 월 한도를 정하면 그때부터 관리가 시작돼요.';

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
  String get alreadySaved => '이미 모은 금액';

  @override
  String get deleteGoal => '목표를 삭제할까요?';

  @override
  String deleteGoalBody(String name) {
    return '$name과(와) 진행 상황이 삭제돼요.';
  }

  @override
  String get goalSaved => '목표를 저장했어요';

  @override
  String get goalDeleted => '목표를 삭제했어요';

  @override
  String get noGoalsTitle => '아직 저축 목표가 없어요';

  @override
  String get noGoalsBody => '목표를 정하면 RainyPenny가 진행 상황을 추적해요.';

  @override
  String get fundsAdded => '입금했어요';

  @override
  String get newDebt => '새 대출 또는 카드';

  @override
  String get editDebt => '대출 수정';

  @override
  String get debtName => '이름';

  @override
  String get debtNameHint => '예: 자동차 할부';

  @override
  String get lender => '채권자';

  @override
  String get lenderHint => '예: 국민은행';

  @override
  String get originalAmount => '최초 금액';

  @override
  String get creditLimit => '한도';

  @override
  String get remainingBalance => '남은 잔액';

  @override
  String get interestRatePercent => '이자율 (%)';

  @override
  String get kindLoan => '대출';

  @override
  String get kindCreditCard => '신용카드';

  @override
  String get recordPayment => '상환 기록';

  @override
  String get paymentRecorded => '상환을 기록했어요';

  @override
  String get deleteDebt => '이 빚을 삭제할까요?';

  @override
  String deleteDebtBody(String name) {
    return '$name이(가) 목록에서 삭제돼요.';
  }

  @override
  String get debtSaved => '저장했어요';

  @override
  String get debtDeleted => '삭제했어요';

  @override
  String get noDebtsTitle => '관리 중인 빚이 없어요';

  @override
  String get noDebtsBody => '대출이나 신용카드를 추가해 상환을 챙겨 보세요.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject 예산을 초과했어요';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '이번 기간 $subject 예산을 $amount 초과했어요.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject이(가) 한도에 가까워요';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject 예산을 $percent% 사용했고 $amount 남았어요.';
  }

  @override
  String get insightOverIncomeTitle => '지출이 수입을 넘었어요';

  @override
  String get insightOverIncomeBody =>
      '이번 기간에는 번 것보다 많이 썼어요. 금액이 큰 분류부터 살펴보고 균형을 되찾아 보세요.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject 지출이 늘었어요';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject 지출이 지난 기간보다 $percent% 많아요.';
  }

  @override
  String get insightTrendDownTitle => '지출이 줄고 있어요';

  @override
  String insightTrendDownBody(int percent) {
    return '전체 지출이 지난 기간보다 $percent% 적어요.';
  }

  @override
  String get insightTrendUpTitle => '지출이 늘고 있어요';

  @override
  String insightTrendUpBody(int percent) {
    return '전체 지출이 지난 기간보다 $percent% 많아요.';
  }

  @override
  String get insightSavingsStrongTitle => '이번 기간 저축이 좋았어요';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '수입의 $percent%를 남겼어요 — 목표 $target%를 크게 넘었어요.';
  }

  @override
  String get insightSavingsLowTitle => '저축률이 목표에 못 미쳐요';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return '이번 기간 수입의 $percent%를 남겼어요. 목표는 $target%예요.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject이(가) 거의 다 찼어요';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject까지 $amount만 남았어요.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject, 순조로워요';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months개월',
    );
    return '매월 $amount이면 $_temp0 뒤에 이 목표에 닿아요.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject 상환이 연체됐어요';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일',
    );
    return '$subject의 $amount 상환이 $_temp0 연체됐어요.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject 상환일이 다가와요';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일 뒤',
      one: '내일',
      zero: '오늘',
    );
    return '$amount을(를) $_temp0 내야 해요.';
  }

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '계정 만들기';

  @override
  String get signInSubtitle => '다시 오셨네요. 돈이 기다리고 있어요.';

  @override
  String get signUpSubtitle => '몇 가지만 적으면 끝이에요.';

  @override
  String get emailLabel => '이메일';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get passwordHint => '8자 이상';

  @override
  String get fullNameLabel => '이름';

  @override
  String get fullNameHint => '김민준';

  @override
  String get forgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get resetSent => '재설정 링크를 보냈어요. 메일함을 확인하세요';

  @override
  String get noAccountYet => '처음이신가요?';

  @override
  String get haveAccount => '이미 계정이 있나요?';

  @override
  String get emailInvalid => '올바른 이메일 주소를 입력하세요';

  @override
  String get passwordTooShort => '8자 이상으로 해 주세요';

  @override
  String get signOutConfirm => '로그아웃할까요?';

  @override
  String get signOutBody => '재정 상황을 다시 보려면 로그인해야 해요.';

  @override
  String get dataSource => '데이터 출처';

  @override
  String get insightWeeklySummaryTitle => '이번 주 돌아보기';

  @override
  String get insightWeeklySummaryBody =>
      '이번 주 돈이 어디로 갔는지, 예산은 잘 지켜졌는지 확인해 보세요.';

  @override
  String get notificationSettings => '알림';

  @override
  String get alertsSection => '알림';

  @override
  String get budgetAlerts => '예산 알림';

  @override
  String get budgetAlertsBody => '예산이 한도에 가까워지거나 넘었을 때';

  @override
  String get paymentReminders => '상환 알림';

  @override
  String get paymentRemindersBody => '상환일 며칠 전';

  @override
  String get savingsUpdates => '저축 소식';

  @override
  String get savingsUpdatesBody => '목표를 향한 진행 상황';

  @override
  String get weeklySummaryLabel => '주간 요약';

  @override
  String get weeklySummaryBody => '지난 한 주의 정리';

  @override
  String get scheduleSection => '시간';

  @override
  String get reminderTime => '알림 시각';

  @override
  String get quietHours => '방해 금지 시간';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => '요약 요일';

  @override
  String get permissionRequired => '알림이 꺼져 있어요';

  @override
  String get permissionRequiredBody =>
      '알림을 허용하면 예산이나 상환이 손쓸 수 없게 되기 전에 RainyPenny가 알려 드려요.';

  @override
  String get allowNotifications => '알림 허용';

  @override
  String get permissionDenied => '알림이 차단됐어요. 기기 설정에서 다시 켤 수 있어요.';

  @override
  String get upcomingAlerts => '예정됨';

  @override
  String get noScheduledAlerts => '지금은 예정된 알림이 없어요';

  @override
  String get noScheduledAlertsBody => '예산과 상환이 기한에 가까워지면 여기에 알림이 나타나요.';

  @override
  String scheduledFor(String date) {
    return '$date 예정';
  }

  @override
  String get everyWeek => '매주';

  @override
  String get allNotificationsOff => '모든 알림이 꺼져 있어요';

  @override
  String get needsAttention => '확인 필요';

  @override
  String get quickActionsTitle => '무엇을 하시겠어요?';

  @override
  String get createSection => '기록';

  @override
  String get jumpToSection => '바로 가기';

  @override
  String get addLoanAction => '대출 추가';

  @override
  String get addBudgetAction => '예산 추가';

  @override
  String get addGoalAction => '목표 추가';

  @override
  String get longPressHint => '팁: + 를 길게 누르면 바로 지출을 기록해요';

  @override
  String get searchCurrencies => '통화 검색';

  @override
  String get noCurrenciesFound => '통화를 찾을 수 없어요';

  @override
  String get noCurrenciesFoundMessage => '다른 코드, 기호, 이름으로 찾아보세요.';

  @override
  String get popularCurrencies => '자주 쓰는 통화';

  @override
  String get allCurrencies => '모든 통화';

  @override
  String get totalLoanAmount => '총 대출 금액';

  @override
  String get installmentAmount => '회차 금액';

  @override
  String get numberOfInstallments => '총 회차';

  @override
  String get paidInstallments => '납부한 회차';

  @override
  String get remainingInstallments => '남은 회차';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total회 중 $paid회 납부';
  }

  @override
  String get finalPayment => '마지막 회차';

  @override
  String get paymentDueDate => '상환일';

  @override
  String dueOnDayOfMonth(int day) {
    return '매월 $day일';
  }

  @override
  String get loanStatus => '상태';

  @override
  String get statusActive => '순조로움';

  @override
  String get statusDueSoon => '곧 상환';

  @override
  String get statusOverdue => '연체';

  @override
  String get statusCompleted => '상환 완료';

  @override
  String get repaymentProgress => '상환 진행';

  @override
  String get byAmount => '금액 기준';

  @override
  String get byInstallments => '회차 기준';

  @override
  String get startDate => '시작일';

  @override
  String get openEnded => '기한 없음';

  @override
  String get loanDetails => '대출 상세';

  @override
  String get notSet => '미설정';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject 상환일이 오늘이에요';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '$amount 상환이 오늘까지예요. 한 번만 눌러도 제때 처리돼요.';
  }

  @override
  String get remindMorningTitle => '좋은 아침이에요 ☀️';

  @override
  String get remindMorningBody => '돈을 챙기며 하루를 시작해 보세요. 어제 못 적은 게 있나요?';

  @override
  String get remindNoonTitle => '점심 무렵 확인';

  @override
  String get remindNoonBody => '점심, 커피, 교통비? 몇 초면 기록할 수 있어요.';

  @override
  String get remindAfternoonTitle => '잠깐 정리';

  @override
  String get remindAfternoonBody => '지금까지 쓴 걸 적어 두면 오늘 숫자가 정확해져요.';

  @override
  String get remindEveningTitle => '하루를 마무리하며';

  @override
  String get remindEveningBody => '지금 2분이면 오늘 기록이 완성돼요.';

  @override
  String get happyWeekendTitle => '즐거운 주말 보내세요! 🎉';

  @override
  String get happyWeekendBody => '푹 쉬시고 — 주말 지출도 조금만 신경 써 보세요.';

  @override
  String get dailyReminders => '매일 지출 알림';

  @override
  String get dailyRemindersBody => '지출을 빠짐없이 적도록 부드럽게 알려 드려요';

  @override
  String get weekendGreeting => '주말 인사';

  @override
  String get weekendGreetingBody => '주말이 시작될 때 건네는 인사';

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
  String get financialReport => '재정 리포트';

  @override
  String get preparedFor => '작성 대상';

  @override
  String get generatedOn => '생성일';

  @override
  String get reportDisclaimer => 'RainyPenny가 회원님의 기록을 바탕으로 만들었어요.';

  @override
  String pageOf(int page, int total) {
    return '$total쪽 중 $page쪽';
  }

  @override
  String get overview => '개요';

  @override
  String get description => '설명';

  @override
  String get totalIncome => '총 수입';

  @override
  String get totalExpenses => '총 지출';

  @override
  String get totalSaved => '총 저축';

  @override
  String get shareOfTotal => '비중';

  @override
  String get used => '사용';

  @override
  String get goal => '목표';

  @override
  String get targetDate => '목표일';

  @override
  String get progress => '진행';

  @override
  String get paidOffShort => '상환';

  @override
  String get transactions => '내역';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '그 외 $count건',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF 내보내기';

  @override
  String get sharePdf => '리포트 공유';

  @override
  String get preparingReport => '리포트를 만드는 중…';

  @override
  String get reportReady => '리포트가 준비됐어요';

  @override
  String get reportFailed => '리포트를 만들지 못했어요';

  @override
  String get categories => '분류';

  @override
  String get categoriesIntro => '직접 분류를 추가해 수입과 지출을 평소 생각하는 방식 그대로 정리해 보세요.';

  @override
  String get expenseCategories => '지출 분류';

  @override
  String get incomeCategories => '수입 분류';

  @override
  String get newCategory => '새 분류';

  @override
  String get editCategory => '분류 수정';

  @override
  String get categoryName => '이름';

  @override
  String get categoryNameHint => '예: 반려동물';

  @override
  String get icon => '아이콘';

  @override
  String get categorySaved => '분류를 저장했어요';

  @override
  String get categoryDeleted => '분류를 삭제했어요';

  @override
  String get deleteCategory => '이 분류를 삭제할까요?';

  @override
  String deleteCategoryBody(String name) {
    return '$name이(가) 분류에서 삭제돼요.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count건이 아직 이 분류를 쓰고 있어요',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => '아직 아무것도 없어요.';

  @override
  String get builtIn => '기본';

  @override
  String get manageCategories => '분류 관리';

  @override
  String get expense => '지출';

  @override
  String get languageNote =>
      '아랍어, 우르두어, 페르시아어, 히브리어는 차트와 PDF 리포트를 포함해 화면 전체가 오른쪽에서 왼쪽으로 바뀌어요.';

  @override
  String get next => '다음';

  @override
  String get back => '이전';

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
  String get passwordsDoNotMatch => '두 비밀번호가 같아야 해요';

  @override
  String get showPassword => '비밀번호 표시';

  @override
  String get hidePassword => '비밀번호 숨기기';

  @override
  String get savePassword => '비밀번호 저장';

  @override
  String get backToSignIn => '로그인으로 돌아가기';

  @override
  String get alreadyHaveAccount => '이미 계정이 있어요';

  @override
  String get getStarted => '시작하기';

  @override
  String get acceptTerms => '서비스 이용약관과 개인정보 처리방침에 동의해요';

  @override
  String get acceptTermsRequired => '계속하려면 동의해 주세요';

  @override
  String get passwordStrengthTooShort => '너무 짧아요';

  @override
  String get passwordStrengthWeak => '약함';

  @override
  String get passwordStrengthFair => '보통';

  @override
  String get passwordStrengthGood => '좋음';

  @override
  String get passwordStrengthStrong => '강함';

  @override
  String get passwordAdvice =>
      '기호로 채운 짧은 비밀번호보다, 기억나는 긴 문장이 더 안전해요. 다른 곳에서 쓰는 건 피하세요.';

  @override
  String get authInvalidCredentials => '이 이메일과 비밀번호에 맞는 계정이 없어요';

  @override
  String get authEmailNotConfirmed => '로그인 전에 이메일 주소를 인증해 주세요';

  @override
  String get authEmailAlreadyRegistered => '이 이메일로 만든 계정이 이미 있어요';

  @override
  String get authWeakPassword => '더 긴 비밀번호를 골라 주세요';

  @override
  String get authRateLimited => '시도가 너무 잦아요. 몇 분 뒤에 다시 해 주세요';

  @override
  String get authNetworkError => '연결이 없어요. 네트워크를 확인하고 다시 시도하세요';

  @override
  String get authGenericError => '문제가 발생했어요. 다시 시도해 주세요';

  @override
  String get confirmEmailTitle => '메일을 확인해 주세요';

  @override
  String confirmEmailBody(String email) {
    return '$email(으)로 확인 링크를 보냈어요. 링크를 열어 계정 설정을 마쳐 주세요.';
  }

  @override
  String get resendConfirmation => '확인 메일 다시 보내기';

  @override
  String get confirmationResent => '확인 메일을 보냈어요';

  @override
  String get forgotPasswordTitle => '비밀번호 재설정';

  @override
  String get forgotPasswordSubtitle =>
      '가입할 때 쓴 이메일을 입력하시면 새 비밀번호를 정할 링크를 보내 드려요.';

  @override
  String get sendResetLink => '재설정 링크 보내기';

  @override
  String get resetLinkSentTitle => '링크를 보냈어요';

  @override
  String resetLinkSentBody(String email) {
    return '$email에 계정이 있다면 재설정 링크가 가고 있어요.';
  }

  @override
  String get resetLinkSentHint =>
      '링크는 한 시간 뒤 만료돼요. 오지 않으면 새로 요청하기 전에 스팸함을 확인해 보세요.';

  @override
  String get tryAnotherEmail => '다른 이메일 쓰기';

  @override
  String get resetPasswordTitle => '새 비밀번호 정하기';

  @override
  String get resetPasswordSubtitle => '이 계정에서 쓴 적 없는 것으로 골라 주세요.';

  @override
  String get passwordChangedTitle => '비밀번호를 변경했어요';

  @override
  String get passwordChangedBody => '새 비밀번호를 저장했어요. 로그인된 상태라 바로 쓰실 수 있어요.';

  @override
  String get demoModeHint => '데모 버전 — 계정이 필요 없어요';

  @override
  String get demoModeFill => '채우기';

  @override
  String get welcomeTrackTitle => '돈이 어디로 가는지 보세요';

  @override
  String get welcomeTrackBody =>
      '들어온 것과 나간 것을 적기만 하세요. RainyPenny가 정말로 읽히는 그림으로 바꿔 드려요.';

  @override
  String get welcomeBudgetTitle => '지켜지는 한도를 정하세요';

  @override
  String get welcomeBudgetBody => '지출 항목마다 월 상한을 정하고, 넘긴 뒤가 아니라 넘기 전에 알아채세요.';

  @override
  String get welcomeGoalsTitle => '소중한 것을 위해 모으세요';

  @override
  String get welcomeGoalsBody =>
      '목표에 이름을 붙이고 금액을 정한 뒤 채워지는 걸 지켜보세요. 비상금은 눈에 보일 때 더 잘 모여요.';

  @override
  String get welcomePrivacyTitle => '당신의 돈은 당신 것입니다';

  @override
  String get welcomePrivacyBody => '숫자는 오직 당신의 것이에요. 어디에도 팔지 않고 누구와도 공유하지 않아요.';

  @override
  String stepOf(int step, int total) {
    return '$total단계 중 $step단계';
  }

  @override
  String get onboardingNameTitle => '어떻게 불러 드릴까요?';

  @override
  String get onboardingNameBody => '인사할 때만 쓰고, 다른 곳에는 쓰지 않아요.';

  @override
  String get onboardingNameHint => '이름만으로 충분해요. 나중에 바꿀 수 있어요.';

  @override
  String get onboardingCurrencyTitle => '어떤 통화를 쓰시나요?';

  @override
  String get onboardingCurrencyBody => '앱의 모든 금액이 이 통화로 표시돼요. 선택해도 환산은 하지 않아요.';

  @override
  String get onboardingCurrencySearch => '모든 통화 검색';

  @override
  String get onboardingAppearanceTitle => '취향대로 꾸며 보세요';

  @override
  String get onboardingAppearanceBody =>
      '모습을 골라 보세요. 누르는 대로 바뀌고, 언제든 다시 올 수 있어요.';

  @override
  String get onboardingNotificationsTitle => '놓치지 않게';

  @override
  String get onboardingNotificationsBody => '알맞은 순간의 조용한 알림이 이걸 습관으로 만들어요.';

  @override
  String get onboardingNotifyReminders => '쓴 돈을 적도록 살짝 알려 드려요';

  @override
  String get onboardingNotifyBudget => '예산이 바닥나기 전에 미리 알려 드려요';

  @override
  String get onboardingNotifySummary => '돈이 어디로 갔는지 주간으로 정리해 드려요';

  @override
  String get onboardingNotifyEnable => '알림 켜기';

  @override
  String get onboardingNotifyDone => '알림 설정을 저장했어요';

  @override
  String get onboardingNotifyLater => '이 모든 건 설정에서 언제든 바꿀 수 있어요.';

  @override
  String get onboardingReadyTitle => '준비가 끝났어요';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '준비가 끝났어요, $name님';
  }

  @override
  String get onboardingReadyBody => '설정이 끝났어요. 사용법을 짧게 둘러보시겠어요?';

  @override
  String get onboardingTakeTour => '구경시켜 주세요';

  @override
  String get onboardingGoToApp => '앱으로 갈게요';

  @override
  String get onboardingTourLater => '지금은 괜찮으세요? 가이드는 설정에 늘 있어요.';

  @override
  String get beginnersGuide => '초보자 가이드';

  @override
  String get guideFinish => '완료';

  @override
  String chapterOf(int number, int total) {
    return '$total장 중 $number장';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen 열기';
  }

  @override
  String get guideDashboardTitle => '홈 화면';

  @override
  String get guideDashboardBody =>
      '모든 게 여기서 시작돼요. 맨 위 카드가 남은 돈이고, 그 아래가 이번 기간의 수입과 지출, 이어서 지출 내역, 예산, 목표예요.';

  @override
  String get guideDashboardTip1 => '화면을 아래로 당기면 전부 한 번에 새로고침돼요.';

  @override
  String get guideDashboardTip2 => '수입이나 지출 카드를 누르면 해당 목록으로 바로 가요.';

  @override
  String get guideDashboardTip3 => '무언가 기록하는 순간 링과 인사이트가 바로 바뀌어요.';

  @override
  String get guideAddTitle => '돈 기록하기';

  @override
  String get guideAddBody =>
      '하단 가운데 버튼이 모든 것의 출발점이에요. 짧은 메뉴가 열려요: 지출, 수입, 빚, 예산, 저축 목표.';

  @override
  String get guideAddTip1 => '가운데 버튼을 눌러 수입이나 지출을 기록하세요.';

  @override
  String get guideAddTip2 => '길게 누르면 메뉴를 건너뛰고 바로 새 지출로 가요.';

  @override
  String get guideAddTip3 => '분류는 꼭 골라 주세요 — 차트와 예산이 그걸로 돌아가요.';

  @override
  String get guideCategoriesTitle => '분류';

  @override
  String get guideCategoriesBody =>
      '분류는 지출을 묶는 방식이에요. 기본 분류로 대부분 충분하지만, 이름을 바꾸거나 직접 추가할 수도 있어요.';

  @override
  String get guideCategoriesTip1 => '설정에서 «분류 관리»로 들어가면 수정하거나 추가할 수 있어요.';

  @override
  String get guideCategoriesTip2 => '분류가 없는 건 «기타»로 들어가서 차트가 정직하게 유지돼요.';

  @override
  String get guideBudgetTitle => '예산';

  @override
  String get guideBudgetBody =>
      '예산은 한 분류의 월 상한이에요. 쓸수록 막대가 차고 한도에 가까워지면 색이 바뀌어서, 넘기기 전에 알아챌 수 있어요.';

  @override
  String get guideBudgetTip1 => '전부 말고 두세 개 분류부터 시작하세요.';

  @override
  String get guideBudgetTip2 => '한도를 평소 지출보다 조금 높게 잡았다가 차차 조여 가세요.';

  @override
  String get guideBudgetTip3 => '예산 알림을 켜 두면 예산이 줄어들 때 앱이 알려 줘요.';

  @override
  String get guideSavingsTitle => '저축 목표';

  @override
  String get guideSavingsBody =>
      '무엇을 위해 모으는지 이름을 붙이고 금액과 날짜를 정하면, 매달 얼마를 떼어 둬야 하는지 앱이 계산해 줘요.';

  @override
  String get guideSavingsTip1 => '이름 있는 목표가 «좀 모아야지» 하는 막연한 마음보다 오래가요.';

  @override
  String get guideSavingsTip2 => '큰 목표 하나보다 작은 목표 여럿이 더 자주 끝나요.';

  @override
  String get guideLoansTitle => '빚과 대출';

  @override
  String get guideLoansBody =>
      '얼마를 빚졌고 비용이 얼마인지, 다음 상환일이 언제인지 적어 두세요. 갚고 있는 것 전부가 남은 금액과 함께 한 목록에 모여요.';

  @override
  String get guideLoansTip1 => '상환일을 넣어 두면 알림이 대신 챙겨 줘요.';

  @override
  String get guideLoansTip2 => '연체된 빚은 갚을 때까지 홈 화면에 빨갛게 표시돼요.';

  @override
  String get guideReportsTitle => '리포트';

  @override
  String get guideReportsBody =>
      '조금 더 깊은 시선: 수입 대 지출, 분류별 지출, 예산이 얼마나 지켜졌는지, 수입 중 얼마가 남았는지.';

  @override
  String get guideReportsTip1 => '화면 위쪽에서 주, 월, 분기를 바꿀 수 있어요.';

  @override
  String get guideReportsTip2 => 'PDF로 내보내거나 공유하세요 — 회원님의 언어와 읽는 방향 그대로 나와요.';

  @override
  String get guideSettingsTitle => '설정';

  @override
  String get guideSettingsBody =>
      '언어, 통화, 색, 알림이 전부 여기 있고, 처음 설정으로 고정되는 건 하나도 없어요 — 언제든 바꾸세요.';

  @override
  String get guideSettingsTip1 =>
      '40개 언어를 지원하고, 오른쪽에서 왼쪽으로 읽는 언어에서는 화면 전체가 좌우로 뒤집혀요.';

  @override
  String get guideSettingsTip2 => '원하는 알림과 받을 시간대를 고르세요.';

  @override
  String get guideSettingsTip3 => '방해 금지 시간에는 모든 알림이 아침까지 미뤄져요.';

  @override
  String get guideHabitTitle => '습관으로 만들기';

  @override
  String get guideHabitBody =>
      '앱은 넣은 만큼만 쓸모 있어요. 한 달에 한 시간보다 하루 1분이 낫고, 2주만 지나도 숫자가 무언가를 말해 주기 시작해요.';

  @override
  String get guideHabitTip1 => '주말에 몰아서 말고, 쓴 그 자리에서 기록하세요.';

  @override
  String get guideHabitTip2 => '하루 한 번 홈 화면을 보세요. 10초면 충분해요.';

  @override
  String get guideHabitTip3 => '이 가이드는 설정에 남아 있어요 — 언제든 다시 오세요.';

  @override
  String get appearance => '화면';

  @override
  String get themeCaption => '라이트, 다크, 아니면 기기 설정대로.';

  @override
  String get accentColor => '강조 색';

  @override
  String get accentColorCaption => '버튼, 강조 표시, 차트에 쓰이는 색이에요.';

  @override
  String get accentSemanticsNote =>
      '수입과 지출은 어떤 테마에서도 각자의 색을 지켜요. 강조 색을 바꿔도 숫자의 뜻은 달라지지 않아요.';

  @override
  String get accentTeal => '청록';

  @override
  String get accentGreen => '초록';

  @override
  String get accentSky => '하늘색';

  @override
  String get accentBlue => '파랑';

  @override
  String get accentIndigo => '남색';

  @override
  String get accentViolet => '보라';

  @override
  String get accentPink => '분홍';

  @override
  String get accentCrimson => '진홍';

  @override
  String get accentOrange => '주황';

  @override
  String get accentSlate => '회청색';

  @override
  String get searchLanguages => '언어 검색';

  @override
  String get suggestedLanguages => '추천';

  @override
  String get allLanguages => '모든 언어';

  @override
  String get noLanguagesFound => '언어를 찾을 수 없어요';

  @override
  String get noLanguagesFoundMessage => '영어 이름이나 두 글자 코드로 찾아보세요.';

  @override
  String get rightToLeft => '오른쪽에서 왼쪽';

  @override
  String get replayGuide => '가이드 다시 보기';

  @override
  String get replaySetup => '설정 다시 하기';

  @override
  String get replaySetupBody => '처음 질문을 다시 거쳐요. 기록하신 내용은 삭제되지 않아요.';

  @override
  String get rateTitle => 'RainyPenny가 마음에 드시나요?';

  @override
  String get rateBody => '꽤 오래 사용해 오셨네요. 평가는 잠깐이면 되고, 다른 분들이 앱을 찾는 데 도움이 됩니다.';

  @override
  String get rateAction => '앱 평가하기';

  @override
  String get rateLater => '나중에';

  @override
  String get rateNever => '괜찮습니다';

  @override
  String get rateThanks => '감사합니다';

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
