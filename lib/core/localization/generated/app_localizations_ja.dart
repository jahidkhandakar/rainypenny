// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppL10nJa extends AppL10n {
  AppL10nJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => '雨の日に備えて貯金しましょう';

  @override
  String get navHome => 'ホーム';

  @override
  String get navTransactions => '取引';

  @override
  String get navAdd => '追加';

  @override
  String get navReports => 'レポート';

  @override
  String get navProfile => 'プロフィール';

  @override
  String greetingMorning(String name) {
    return 'おはようございます、$nameさん';
  }

  @override
  String greetingAfternoon(String name) {
    return 'こんにちは、$nameさん';
  }

  @override
  String greetingEvening(String name) {
    return 'こんばんは、$nameさん';
  }

  @override
  String get greetingSubtitle => 'あなたの財務状況はこちらです';

  @override
  String get totalBalance => '合計残高';

  @override
  String get vsLastPeriod => '前の期間との比較';

  @override
  String get income => '収入';

  @override
  String get expenses => '支出';

  @override
  String get netBalance => '純残高';

  @override
  String get lastThirtyDays => '過去30日間';

  @override
  String get quickActions => 'クイックアクション';

  @override
  String get addIncome => '収入を追加';

  @override
  String get addExpense => '支出を追加';

  @override
  String get spendingOverview => '支出の概要';

  @override
  String get recentTransactions => '最近の取引';

  @override
  String get seeAll => 'すべて見る';

  @override
  String get viewAll => 'すべて表示';

  @override
  String get budgetProgress => '予算の進捗';

  @override
  String get savingsGoals => '貯金目標';

  @override
  String get financialInsight => '財務インサイト';

  @override
  String get financialHealth => '財務健全性';

  @override
  String ofTotal(String total) {
    return '$total中';
  }

  @override
  String get searchTransactions => '取引を検索';

  @override
  String get filterAll => 'すべて';

  @override
  String get filterIncome => '収入';

  @override
  String get filterExpenses => '支出';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get noTransactionsTitle => '取引が見つかりません';

  @override
  String get noTransactionsBody => '別の検索語やフィルターを試して、さらにアクティビティを確認してください。';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の取引',
      one: '1件の取引',
      zero: '取引なし',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '取引を追加';

  @override
  String get amount => '金額';

  @override
  String get category => 'カテゴリー';

  @override
  String get date => '日付';

  @override
  String get note => 'メモ';

  @override
  String get noteHint => '任意のメモ';

  @override
  String get saveIncome => '収入を保存';

  @override
  String get saveExpense => '支出を保存';

  @override
  String get selectCategory => 'カテゴリーを選択';

  @override
  String get transactionSaved => '取引を保存しました';

  @override
  String get amountRequired => '0より大きい金額を入力してください';

  @override
  String get titleRequired => 'この取引に名前を付けてください';

  @override
  String get descriptionLabel => '説明';

  @override
  String get descriptionHint => '例：食料品';

  @override
  String get budget => '予算';

  @override
  String get budgets => '予算';

  @override
  String get totalBudget => '合計予算';

  @override
  String get spent => '使用額';

  @override
  String get remaining => '残り';

  @override
  String budgetUsed(int percent) {
    return '$percent%使用済み';
  }

  @override
  String get onTrack => '順調';

  @override
  String get approachingLimit => '上限に近づいています';

  @override
  String get overBudget => '予算超過';

  @override
  String get savings => '貯金';

  @override
  String get yourGoals => 'あなたの目標';

  @override
  String get saved => '貯金済み';

  @override
  String get target => '目標';

  @override
  String get monthlyContribution => '毎月';

  @override
  String get addFunds => '資金を追加';

  @override
  String get goalComplete => '目標達成';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'あと$countか月',
      one: 'あと1か月',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ローンと借金';

  @override
  String get totalOutstanding => '未払い残高合計';

  @override
  String get monthlyPayment => '毎月';

  @override
  String get nextPayment => '次回の支払い';

  @override
  String paidOff(int percent) {
    return '$percent%返済済み';
  }

  @override
  String get interestRate => '利息';

  @override
  String get upcomingPayments => '今後の支払い';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日後が期限',
      one: '明日が期限',
      zero: '今日が期限',
    );
    return '$_temp0';
  }

  @override
  String get overdue => '期限超過';

  @override
  String get reports => 'レポート';

  @override
  String get week => '週';

  @override
  String get month => '月';

  @override
  String get quarter => '四半期';

  @override
  String get incomeVsExpenses => '収入と支出の比較';

  @override
  String get spendingByCategory => 'カテゴリー別支出';

  @override
  String get budgetPerformance => '予算の状況';

  @override
  String get insights => 'インサイト';

  @override
  String get savingsRate => '貯金率';

  @override
  String get profile => 'プロフィール';

  @override
  String get account => 'アカウント';

  @override
  String get personalInformation => '個人情報';

  @override
  String get changePassword => 'パスワードを変更';

  @override
  String get notifications => '通知';

  @override
  String get preferences => '設定';

  @override
  String get language => '言語';

  @override
  String get currency => '通貨';

  @override
  String get theme => 'テーマ';

  @override
  String get security => 'セキュリティ';

  @override
  String get privacyAndSecurity => 'プライバシーとセキュリティ';

  @override
  String get help => 'ヘルプ';

  @override
  String get helpAndSupport => 'ヘルプとサポート';

  @override
  String get termsAndConditions => '利用規約';

  @override
  String get logOut => 'ログアウト';

  @override
  String memberSince(String date) {
    return '$dateから利用';
  }

  @override
  String get themeSystem => 'システム設定';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get settings => '設定';

  @override
  String get noNotificationsTitle => 'すべて確認済みです';

  @override
  String get noNotificationsBody => '新しいインサイトやリマインダーがここに表示されます。';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get done => '完了';

  @override
  String get retry => '再試行';

  @override
  String get close => '閉じる';

  @override
  String get somethingWentWrong => '問題が発生しました';

  @override
  String get comingSoon => '完全版で近日公開';

  @override
  String get edit => '編集';

  @override
  String get delete => '削除';

  @override
  String get undo => '元に戻す';

  @override
  String get add => '追加';

  @override
  String get create => '作成';

  @override
  String get nameRequired => '名前を入力してください';

  @override
  String get amountAboveZero => '0より大きい金額を入力してください';

  @override
  String get editTransaction => '取引を編集';

  @override
  String get deleteTransaction => '取引を削除しますか？';

  @override
  String deleteTransactionBody(String title) {
    return '$titleは台帳から削除されます。';
  }

  @override
  String get transactionDeleted => '取引を削除しました';

  @override
  String get transactionUpdated => '取引を更新しました';

  @override
  String get newBudget => '新しい予算';

  @override
  String get editBudget => '予算を編集';

  @override
  String get budgetLimit => '月間上限';

  @override
  String get deleteBudget => '予算を削除しますか？';

  @override
  String deleteBudgetBody(String category) {
    return '$categoryの予算が削除されます。取引には影響しません。';
  }

  @override
  String get budgetSaved => '予算を保存しました';

  @override
  String get budgetDeleted => '予算を削除しました';

  @override
  String get allCategoriesBudgeted => 'すべてのカテゴリーにすでに予算があります';

  @override
  String get noBudgetsTitle => 'まだ予算がありません';

  @override
  String get noBudgetsBody => 'カテゴリーに月間上限を設定して、管理を始めましょう。';

  @override
  String get newGoal => '新しい目標';

  @override
  String get editGoal => '目標を編集';

  @override
  String get goalName => '目標名';

  @override
  String get goalNameHint => '例：緊急資金';

  @override
  String get targetAmount => '目標金額';

  @override
  String get alreadySaved => '貯金済み';

  @override
  String get deleteGoal => '目標を削除しますか？';

  @override
  String deleteGoalBody(String name) {
    return '$nameとその進捗が削除されます。';
  }

  @override
  String get goalSaved => '目標を保存しました';

  @override
  String get goalDeleted => '目標を削除しました';

  @override
  String get noGoalsTitle => 'まだ貯金目標がありません';

  @override
  String get noGoalsBody => '目標を設定すると、RainyPennyが進捗を追跡します。';

  @override
  String get fundsAdded => '資金を追加しました';

  @override
  String get newDebt => '新しいローンまたはカード';

  @override
  String get editDebt => 'ローンを編集';

  @override
  String get debtName => '名前';

  @override
  String get debtNameHint => '例：自動車ローン';

  @override
  String get lender => '貸し手';

  @override
  String get lenderHint => '例：Meridian Bank';

  @override
  String get originalAmount => '借入元金';

  @override
  String get creditLimit => '利用限度額';

  @override
  String get remainingBalance => '残りの残高';

  @override
  String get interestRatePercent => '金利（%）';

  @override
  String get kindLoan => 'ローン';

  @override
  String get kindCreditCard => 'クレジットカード';

  @override
  String get recordPayment => '支払いを記録';

  @override
  String get paymentRecorded => '支払いを記録しました';

  @override
  String get deleteDebt => 'この借金を削除しますか？';

  @override
  String deleteDebtBody(String name) {
    return '$nameが借金一覧から削除されます。';
  }

  @override
  String get debtSaved => '保存しました';

  @override
  String get debtDeleted => '削除しました';

  @override
  String get noDebtsTitle => '追跡中の借金はありません';

  @override
  String get noDebtsBody => '返済を管理するため、ローンまたはクレジットカードを追加してください。';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subjectの予算を超過しました';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'この期間の$subject予算を$amount超過しています。';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subjectが上限に近づいています';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject予算を$percent%使用しており、$amount残っています。';
  }

  @override
  String get insightOverIncomeTitle => '支出が収入を上回っています';

  @override
  String get insightOverIncomeBody =>
      'この期間は収入以上に支出しました。最も大きなカテゴリーを確認して、バランスを取り戻しましょう。';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subjectの支出が増えています';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subjectの支出は前の期間より$percent%増えています。';
  }

  @override
  String get insightTrendDownTitle => '支出が減少傾向です';

  @override
  String insightTrendDownBody(int percent) {
    return '全体の支出は前の期間より$percent%減っています。';
  }

  @override
  String get insightTrendUpTitle => '支出が増加傾向です';

  @override
  String insightTrendUpBody(int percent) {
    return '全体の支出は前の期間より$percent%増えています。';
  }

  @override
  String get insightSavingsStrongTitle => 'この期間の貯金は順調です';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '収入の$percent%を残しており、目標の$target%を大きく上回っています。';
  }

  @override
  String get insightSavingsLowTitle => '貯金率が目標を下回っています';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'この期間は収入の$percent%を残しました。$target%を目標にしましょう。';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subjectはもうすぐ達成です';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subjectの達成まであと$amountです。';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subjectは順調です';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$monthsか月',
      one: '1か月',
    );
    return '毎月$amount貯めると、$_temp0でこの目標を達成できます。';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subjectの支払いが期限超過です';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days日',
      one: '1日',
    );
    return '$subjectの$amountの支払いは$_temp0遅れています。';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subjectの支払いが近づいています';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days日後',
      one: '明日',
      zero: '今日',
    );
    return '$amountの支払い期限は$_temp0です。';
  }

  @override
  String get signIn => 'サインイン';

  @override
  String get signUp => 'アカウントを作成';

  @override
  String get signInSubtitle => 'おかえりなさい。あなたのお金が待っています。';

  @override
  String get signUpSubtitle => 'いくつかの情報を入力すれば準備完了です。';

  @override
  String get emailLabel => 'メールアドレス';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'パスワード';

  @override
  String get passwordHint => '8文字以上';

  @override
  String get fullNameLabel => '氏名';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'パスワードをお忘れですか？';

  @override
  String get resetSent => 'リセットリンクを受信トレイで確認してください';

  @override
  String get noAccountYet => '初めてですか？';

  @override
  String get haveAccount => 'すでにアカウントをお持ちですか？';

  @override
  String get emailInvalid => '有効なメールアドレスを入力してください';

  @override
  String get passwordTooShort => '8文字以上を使用してください';

  @override
  String get signOutConfirm => 'サインアウトしますか？';

  @override
  String get signOutBody => '財務情報を見るには、もう一度サインインする必要があります。';

  @override
  String get dataSource => 'データソース';

  @override
  String get insightWeeklySummaryTitle => '今週を振り返る';

  @override
  String get insightWeeklySummaryBody => '今週お金をどこに使ったか、予算をどの程度守れているかを確認できます。';

  @override
  String get notificationSettings => '通知';

  @override
  String get alertsSection => 'アラート';

  @override
  String get budgetAlerts => '予算アラート';

  @override
  String get budgetAlertsBody => '予算が上限に近づいたとき、または上限を超えたとき';

  @override
  String get paymentReminders => '支払いリマインダー';

  @override
  String get paymentRemindersBody => '支払い期限の数日前';

  @override
  String get savingsUpdates => '貯金の更新';

  @override
  String get savingsUpdatesBody => '目標に向けた進捗';

  @override
  String get weeklySummaryLabel => '週間サマリー';

  @override
  String get weeklySummaryBody => '直近1週間のまとめ';

  @override
  String get scheduleSection => 'タイミング';

  @override
  String get reminderTime => 'リマインダー時刻';

  @override
  String get quietHours => 'おやすみ時間';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'サマリーの日';

  @override
  String get permissionRequired => '通知がオフになっています';

  @override
  String get permissionRequiredBody =>
      '通知を許可すると、予算や支払いが手遅れになる前にRainyPennyがお知らせします。';

  @override
  String get allowNotifications => '通知を許可';

  @override
  String get permissionDenied => '通知がブロックされています。端末の設定からオンにできます。';

  @override
  String get upcomingAlerts => 'スケジュール済み';

  @override
  String get noScheduledAlerts => '現在スケジュールされているものはありません';

  @override
  String get noScheduledAlertsBody => '予算や支払いが上限や期限に近づくと、ここにアラートが表示されます。';

  @override
  String scheduledFor(String date) {
    return '$dateにスケジュール済み';
  }

  @override
  String get everyWeek => '毎週';

  @override
  String get allNotificationsOff => 'すべての通知がオフです';

  @override
  String get needsAttention => '要確認';

  @override
  String get quickActionsTitle => '何をしますか？';

  @override
  String get createSection => '記録';

  @override
  String get jumpToSection => '移動';

  @override
  String get addLoanAction => 'ローンを追加';

  @override
  String get addBudgetAction => '予算を追加';

  @override
  String get addGoalAction => '目標を追加';

  @override
  String get longPressHint => 'ヒント：+を長押しすると、すぐに支出を記録できます';

  @override
  String get searchCurrencies => '通貨を検索';

  @override
  String get noCurrenciesFound => '通貨が見つかりません';

  @override
  String get noCurrenciesFoundMessage => '別のコード、記号、名前を試してください。';

  @override
  String get popularCurrencies => '人気';

  @override
  String get allCurrencies => 'すべての通貨';

  @override
  String get totalLoanAmount => 'ローン総額';

  @override
  String get installmentAmount => '分割払い金額';

  @override
  String get numberOfInstallments => '分割回数';

  @override
  String get paidInstallments => '支払い済み分割';

  @override
  String get remainingInstallments => '残りの分割';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid/$total回支払い済み';
  }

  @override
  String get finalPayment => '最終支払い';

  @override
  String get paymentDueDate => '支払期日';

  @override
  String dueOnDayOfMonth(int day) {
    return '毎月$day日';
  }

  @override
  String get loanStatus => 'ステータス';

  @override
  String get statusActive => '順調';

  @override
  String get statusDueSoon => 'まもなく期限';

  @override
  String get statusOverdue => '期限超過';

  @override
  String get statusCompleted => '完済';

  @override
  String get repaymentProgress => '返済の進捗';

  @override
  String get byAmount => '金額別';

  @override
  String get byInstallments => '分割回数別';

  @override
  String get startDate => '開始日';

  @override
  String get openEnded => '期限なし';

  @override
  String get loanDetails => 'ローン詳細';

  @override
  String get notSet => '未設定';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subjectの支払期限は今日です';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '$amountの支払い期限は今日です。すぐにタップして、期限どおりに支払いましょう。';
  }

  @override
  String get remindMorningTitle => 'おはようございます ☀️';

  @override
  String get remindMorningBody => 'お金を把握しながら一日を始めましょう。昨日の分で追加するものはありますか？';

  @override
  String get remindNoonTitle => 'お昼のチェックイン';

  @override
  String get remindNoonBody => 'ランチ、コーヒー、交通費はありませんか？数秒で追加できます。';

  @override
  String get remindAfternoonTitle => '簡単な更新';

  @override
  String get remindAfternoonBody => 'ここまでに使った金額を記録して、今日の記録を正確に保ちましょう。';

  @override
  String get remindEveningTitle => '一日の締めくくり';

  @override
  String get remindEveningBody => '今2分使えば、今日の数字を完成させられます。';

  @override
  String get happyWeekendTitle => 'よい週末を！ 🎉';

  @override
  String get happyWeekendBody => '楽しんでください — そして週末の支出にも目を配りましょう。';

  @override
  String get dailyReminders => '毎日の支出リマインダー';

  @override
  String get dailyRemindersBody => '支出を最新の状態に保つためのやさしいリマインダー';

  @override
  String get weekendGreeting => 'よい週末を';

  @override
  String get weekendGreetingBody => '週末の始まりに届く、親しみやすいあいさつ';

  @override
  String get reminderTimesSection => 'リマインダー時刻';

  @override
  String get slotMorning => '朝';

  @override
  String get slotNoon => '昼';

  @override
  String get slotAfternoon => '午後';

  @override
  String get slotEvening => '夜';

  @override
  String get everyDay => '毎日';

  @override
  String get financialReport => '財務レポート';

  @override
  String get preparedFor => '対象者';

  @override
  String get generatedOn => '作成日';

  @override
  String get reportDisclaimer => 'RainyPennyがあなた自身の記録から作成しました。';

  @override
  String pageOf(int page, int total) {
    return '$totalページ中$pageページ';
  }

  @override
  String get overview => '概要';

  @override
  String get description => '説明';

  @override
  String get totalIncome => '総収入';

  @override
  String get totalExpenses => '総支出';

  @override
  String get totalSaved => '総貯金額';

  @override
  String get shareOfTotal => '割合';

  @override
  String get used => '使用済み';

  @override
  String get goal => '目標';

  @override
  String get targetDate => '目標日';

  @override
  String get progress => '進捗';

  @override
  String get paidOffShort => '返済済み';

  @override
  String get transactions => '取引';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'さらに$count件の取引',
      one: 'さらに1件の取引',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDFをエクスポート';

  @override
  String get sharePdf => 'レポートを共有';

  @override
  String get preparingReport => 'レポートを準備しています…';

  @override
  String get reportReady => 'レポートの準備ができました';

  @override
  String get reportFailed => 'レポートを作成できませんでした';

  @override
  String get categories => 'カテゴリー';

  @override
  String get categoriesIntro => '自分の考え方に合わせて、収入と支出を整理できるカテゴリーを追加しましょう。';

  @override
  String get expenseCategories => '支出カテゴリー';

  @override
  String get incomeCategories => '収入カテゴリー';

  @override
  String get newCategory => '新しいカテゴリー';

  @override
  String get editCategory => 'カテゴリーを編集';

  @override
  String get categoryName => '名前';

  @override
  String get categoryNameHint => '例：ペットの世話';

  @override
  String get icon => 'アイコン';

  @override
  String get categorySaved => 'カテゴリーを保存しました';

  @override
  String get categoryDeleted => 'カテゴリーを削除しました';

  @override
  String get deleteCategory => 'このカテゴリーを削除しますか？';

  @override
  String deleteCategoryBody(String name) {
    return '$nameがカテゴリーから削除されます。';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の記録がこのカテゴリーを使用しています',
      one: '1件の記録がこのカテゴリーを使用しています',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'まだ何もありません。';

  @override
  String get builtIn => '標準';

  @override
  String get manageCategories => 'カテゴリーを管理';

  @override
  String get expense => '支出';

  @override
  String get languageNote =>
      'アラビア語、ウルドゥー語、ペルシャ語、ヘブライ語では、チャートやPDFレポートを含むインターフェース全体が右から左に切り替わります。';

  @override
  String get next => '次へ';

  @override
  String get back => '戻る';

  @override
  String get skip => 'スキップ';

  @override
  String get continueLabel => '続行';

  @override
  String get selected => '選択済み';

  @override
  String get passwordRequired => 'パスワードを入力してください';

  @override
  String get newPasswordLabel => '新しいパスワード';

  @override
  String get confirmPasswordLabel => 'パスワードを確認';

  @override
  String get passwordsDoNotMatch => '2つのパスワードが一致している必要があります';

  @override
  String get showPassword => 'パスワードを表示';

  @override
  String get hidePassword => 'パスワードを非表示';

  @override
  String get savePassword => 'パスワードを保存';

  @override
  String get backToSignIn => 'サインインに戻る';

  @override
  String get alreadyHaveAccount => 'すでにアカウントを持っています';

  @override
  String get getStarted => '始める';

  @override
  String get acceptTerms => '利用規約とプライバシーポリシーに同意します';

  @override
  String get acceptTermsRequired => '続行するには同意してください';

  @override
  String get passwordStrengthTooShort => '短すぎます';

  @override
  String get passwordStrengthWeak => '弱い';

  @override
  String get passwordStrengthFair => '普通';

  @override
  String get passwordStrengthGood => '良い';

  @override
  String get passwordStrengthStrong => '強い';

  @override
  String get passwordAdvice =>
      '覚えやすい長いフレーズは、記号だらけの短いパスワードより安全です。他の場所ですでに使っているものは避けてください。';

  @override
  String get authInvalidCredentials => 'このメールアドレスとパスワードに一致するアカウントはありません';

  @override
  String get authEmailNotConfirmed => 'サインインする前にメールアドレスを確認してください';

  @override
  String get authEmailAlreadyRegistered => 'このメールアドレスのアカウントはすでに存在します';

  @override
  String get authWeakPassword => 'より長いパスワードを選んでください';

  @override
  String get authRateLimited => '試行回数が多すぎます。数分後にもう一度お試しください';

  @override
  String get authNetworkError => '接続できません。ネットワークを確認してもう一度お試しください';

  @override
  String get authGenericError => '問題が発生しました。もう一度お試しください';

  @override
  String get confirmEmailTitle => 'メールを確認してください';

  @override
  String confirmEmailBody(String email) {
    return '$emailに確認リンクを送信しました。リンクを開いてアカウントの設定を完了してください。';
  }

  @override
  String get resendConfirmation => '確認メールを再送信';

  @override
  String get confirmationResent => '確認メールを送信しました';

  @override
  String get forgotPasswordTitle => 'パスワードをリセット';

  @override
  String get forgotPasswordSubtitle =>
      '登録時に使用したメールアドレスを入力すると、新しいパスワードを設定するためのリンクを送信します。';

  @override
  String get sendResetLink => 'リセットリンクを送信';

  @override
  String get resetLinkSentTitle => 'リセットリンクを送信しました';

  @override
  String resetLinkSentBody(String email) {
    return '$emailのアカウントが存在する場合、リセットリンクを送信しています。';
  }

  @override
  String get resetLinkSentHint =>
      'リンクは1時間で期限切れになります。届かない場合は、再送信を依頼する前に迷惑メールフォルダーを確認してください。';

  @override
  String get tryAnotherEmail => '別のメールアドレスを使用';

  @override
  String get resetPasswordTitle => '新しいパスワードを設定';

  @override
  String get resetPasswordSubtitle => 'このアカウントで以前使用したことのないパスワードを選んでください。';

  @override
  String get passwordChangedTitle => 'パスワードを更新しました';

  @override
  String get passwordChangedBody => '新しいパスワードが保存されました。サインイン済みなので、すぐに利用できます。';

  @override
  String get demoModeHint => 'デモ版 — アカウント不要';

  @override
  String get demoModeFill => '入力する';

  @override
  String get welcomeTrackTitle => 'お金の行き先を確認しましょう';

  @override
  String get welcomeTrackBody =>
      '入ってくるお金と出ていくお金を記録しましょう。RainyPennyが、実際に理解できる形に変えてくれます。';

  @override
  String get welcomeBudgetTitle => '守れる上限を設定しましょう';

  @override
  String get welcomeBudgetBody =>
      '支出の各部分に月間上限を設定し、超えてしまった後ではなく、超える前に知らせてもらいましょう。';

  @override
  String get welcomeGoalsTitle => '大切なもののために貯めましょう';

  @override
  String get welcomeGoalsBody =>
      '目標に名前を付け、金額を設定して、達成までの進み具合を見守りましょう。雨の日のための資金も、進捗が見えると貯めやすくなります。';

  @override
  String get welcomePrivacyTitle => 'あなたのお金はあなたのもの';

  @override
  String get welcomePrivacyBody =>
      'あなたの数字はあなた自身のものです。販売されることも、誰かと共有されることもありません。';

  @override
  String stepOf(int step, int total) {
    return 'ステップ$step/$total';
  }

  @override
  String get onboardingNameTitle => '何とお呼びすればよいですか？';

  @override
  String get onboardingNameBody => 'ごあいさつに使用するだけで、それ以外には使用しません。';

  @override
  String get onboardingNameHint => '名前だけで十分です。後から変更できます。';

  @override
  String get onboardingCurrencyTitle => 'どの通貨を使いますか？';

  @override
  String get onboardingCurrencyBody =>
      'アプリ内のすべての金額がこの通貨で表示されます。選択しても金額が換算されることはありません。';

  @override
  String get onboardingCurrencySearch => 'すべての通貨を検索';

  @override
  String get onboardingAppearanceTitle => '自分らしく設定';

  @override
  String get onboardingAppearanceBody =>
      '見た目を選んでください。タップするとすべてが変わり、いつでも戻って変更できます。';

  @override
  String get onboardingNotificationsTitle => 'しっかり管理しましょう';

  @override
  String get onboardingNotificationsBody =>
      'ちょうどよいタイミングのさりげない通知が、これを習慣に変えてくれます。';

  @override
  String get onboardingNotifyReminders => '使った金額を記録するためのやさしいリマインダー';

  @override
  String get onboardingNotifyBudget => '予算を使い切る前のお知らせ';

  @override
  String get onboardingNotifySummary => 'お金をどこに使ったかの週間サマリー';

  @override
  String get onboardingNotifyEnable => '通知をオンにする';

  @override
  String get onboardingNotifyDone => '通知設定を保存しました';

  @override
  String get onboardingNotifyLater => 'これらはすべて、いつでも設定から変更できます。';

  @override
  String get onboardingReadyTitle => '準備完了です';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '準備完了です、$nameさん';
  }

  @override
  String get onboardingReadyBody => 'これで設定は完了です。すべての使い方を簡単に案内しましょうか？';

  @override
  String get onboardingTakeTour => '案内して';

  @override
  String get onboardingGoToApp => 'アプリへ進む';

  @override
  String get onboardingTourLater => '今はしない？ガイドは設定に残るので、いつでも利用できます。';

  @override
  String get beginnersGuide => '初心者ガイド';

  @override
  String get guideFinish => '完了';

  @override
  String chapterOf(int number, int total) {
    return '第$number章 / 全$total章';
  }

  @override
  String guideOpenScreen(String screen) {
    return '「$screen」を開く';
  }

  @override
  String get guideDashboardTitle => 'ダッシュボード';

  @override
  String get guideDashboardBody =>
      'すべてはここから始まります。上部のカードには残りの金額が表示され、その下にこの期間の収入と支出、続いて支出、予算、目標が表示されます。';

  @override
  String get guideDashboardTip1 => '画面を下に引っ張って、すべてを一度に更新できます。';

  @override
  String get guideDashboardTip2 => '収入または支出のカードをタップすると、その一覧に移動できます。';

  @override
  String get guideDashboardTip3 => '何かを記録すると、リングとインサイトがすぐに更新されます。';

  @override
  String get guideAddTitle => 'お金を記録する';

  @override
  String get guideAddBody =>
      'バー中央のボタンからすべてが始まります。タップすると、支出、収入、借金、予算、貯金目標の短いメニューが開きます。';

  @override
  String get guideAddTip1 => '中央のボタンをタップして、収入または支出を記録します。';

  @override
  String get guideAddTip2 => '長押しすると、新しい支出の入力画面に直接移動し、メニューをスキップできます。';

  @override
  String get guideAddTip3 => '必ずカテゴリーを選んでください。チャートと予算が機能するために必要です。';

  @override
  String get guideCategoriesTitle => 'カテゴリー';

  @override
  String get guideCategoriesBody =>
      'カテゴリーは支出をグループ化する方法です。アプリに用意されているカテゴリーでほとんどの人に対応できますが、名前を変更したり、自分で追加したりできます。';

  @override
  String get guideCategoriesTip1 => '設定から「カテゴリーを管理」を開いて、変更または追加できます。';

  @override
  String get guideCategoriesTip2 => 'カテゴリー未設定のものは「その他」に入るため、チャートを正確に保てます。';

  @override
  String get guideBudgetTitle => '予算';

  @override
  String get guideBudgetBody =>
      '予算は1つのカテゴリーに設定する月間上限です。支出が増えるとバーが伸び、上限に近づくと表示が変わるので、超えてしまう前に気づけます。';

  @override
  String get guideBudgetTip1 => '最初からすべてではなく、2〜3カテゴリーから始めましょう。';

  @override
  String get guideBudgetTip2 => '普段の支出より少し高めに上限を設定してから、徐々に引き締めましょう。';

  @override
  String get guideBudgetTip3 => '予算アラートをオンにしておけば、残りが少なくなったときにアプリがお知らせします。';

  @override
  String get guideSavingsTitle => '貯金目標';

  @override
  String get guideSavingsBody =>
      '何のために貯めるのかを名前で設定し、目標金額と日付を決めると、達成するために毎月いくら貯める必要があるかをアプリが計算します。';

  @override
  String get guideSavingsTip1 => '名前のある目標は、漠然と貯めようと思うより続けやすくなります。';

  @override
  String get guideSavingsTip2 => '大きな目標を1つ設定するより、小さな目標を複数設定したほうが達成しやすいものです。';

  @override
  String get guideLoansTitle => '借金とローン';

  @override
  String get guideLoansBody =>
      '借りている金額、かかる費用、次回の支払期限を記録しましょう。返済中のものは、残りの合計額とともに1つの一覧に表示されます。';

  @override
  String get guideLoansTip1 => '支払期限を追加すれば、支払いリマインダーが知らせてくれます。';

  @override
  String get guideLoansTip2 => '期限超過の借金は、支払われるまでダッシュボードに赤色で表示されます。';

  @override
  String get guideReportsTitle => 'レポート';

  @override
  String get guideReportsBody =>
      'より詳しい表示です。収入と支出、カテゴリー別支出、予算をどの程度守れたか、収入のうちどれだけ残したかを確認できます。';

  @override
  String get guideReportsTip1 => '画面上部で週、月、四半期を切り替えられます。';

  @override
  String get guideReportsTip2 => 'PDFをエクスポートまたは共有できます。あなたの言語と表示方向で作成されます。';

  @override
  String get guideSettingsTitle => '設定';

  @override
  String get guideSettingsBody =>
      '言語、通貨、色、アラートはすべてここにあります。セットアップ時に固定されるものはないので、いつでも変更できます。';

  @override
  String get guideSettingsTip1 => '40言語に対応し、右から左に読む言語ではレイアウト全体が反転します。';

  @override
  String get guideSettingsTip2 => '受け取りたいアラートと、通知を受け取れる時間帯を選択できます。';

  @override
  String get guideSettingsTip3 => 'おやすみ時間中はすべての通知が朝まで保留されます。';

  @override
  String get guideHabitTitle => '習慣にしましょう';

  @override
  String get guideHabitBody =>
      'アプリは入力した内容だけの価値があります。月に一度1時間使うより、毎日1分使うほうが効果的です。2週間もすれば、数字が何かを教えてくれるようになります。';

  @override
  String get guideHabitTip1 => '週末にまとめてではなく、支出したときに記録しましょう。';

  @override
  String get guideHabitTip2 => '1日1回ダッシュボードを確認しましょう。10秒で十分です。';

  @override
  String get guideHabitTip3 => 'このガイドは設定に残ります。必要なときにいつでも戻ってきてください。';

  @override
  String get appearance => '外観';

  @override
  String get themeCaption => 'ライト、ダーク、またはスマートフォンの設定に合わせます。';

  @override
  String get accentColor => 'アクセントカラー';

  @override
  String get accentColorCaption => 'ボタン、ハイライト、チャートの色を変更します。';

  @override
  String get accentSemanticsNote =>
      'どのテーマでも収入と支出にはそれぞれ固有の色が使われるため、アクセントを変更しても数字の意味は変わりません。';

  @override
  String get accentTeal => 'ティール';

  @override
  String get accentGreen => 'グリーン';

  @override
  String get accentSky => 'スカイ';

  @override
  String get accentBlue => 'ブルー';

  @override
  String get accentIndigo => 'インディゴ';

  @override
  String get accentViolet => 'バイオレット';

  @override
  String get accentPink => 'ピンク';

  @override
  String get accentCrimson => 'クリムゾン';

  @override
  String get accentOrange => 'オレンジ';

  @override
  String get accentSlate => 'スレート';

  @override
  String get searchLanguages => '言語を検索';

  @override
  String get suggestedLanguages => 'おすすめ';

  @override
  String get allLanguages => 'すべての言語';

  @override
  String get noLanguagesFound => '言語が見つかりません';

  @override
  String get noLanguagesFoundMessage => '英語の言語名、または2文字のコードを試してください。';

  @override
  String get rightToLeft => '右から左';

  @override
  String get replayGuide => 'ガイドをもう一度見る';

  @override
  String get replaySetup => 'セットアップをもう一度実行';

  @override
  String get replaySetupBody => '初回設定の質問をもう一度進めます。記録済みのデータは削除されません。';

  @override
  String get rateTitle => 'RainyPennyを気に入っていますか？';

  @override
  String get rateBody => 'しばらく継続して使っていただいています。評価はすぐに終わり、他の人がアプリを見つける助けになります。';

  @override
  String get rateAction => 'アプリを評価';

  @override
  String get rateLater => 'また後で';

  @override
  String get rateNever => 'いいえ、結構です';

  @override
  String get rateThanks => 'ありがとうございます';

  @override
  String get monthlySalary => '月給';

  @override
  String get remainingAmount => '残り';

  @override
  String get carriedForward => '繰り越し';

  @override
  String get carriedForwardHint => '前のサイクルからの残り';

  @override
  String get totalSpending => '総支出';

  @override
  String get salaryCycle => '給与サイクル';

  @override
  String get payday => '給料日';

  @override
  String get paydayDescription => '給料が入る日です。財務上の1か月はこの日から、次の給料日の前日までとなります。';

  @override
  String get paydayUpdated => '給料日を更新しました';

  @override
  String paydayDayOfMonth(int day) {
    return '$day日';
  }

  @override
  String get paydayShortMonthNote => '日数の少ない月では、代わりに月末日からサイクルが始まります。';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '給料日まであと$count日',
      one: '給料日まであと1日',
      zero: 'サイクル最終日',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => '次の給料日';

  @override
  String get spentSoFar => '現在までの支出';

  @override
  String get dailyAllowance => '1日に安全に使える金額';

  @override
  String get overspentNotice => 'このサイクルでは、入ってきた金額以上に支出しています。';

  @override
  String get backToThisMonth => '今月に戻る';

  @override
  String get cycleRangeLabel => 'サイクル';

  @override
  String get noSalaryRecorded => 'まだ給与が記録されていません';

  @override
  String get addSalaryAction => '給与を追加';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => '非常に良好';

  @override
  String get healthGood => '良好';

  @override
  String get healthFair => '普通';

  @override
  String get healthNeedsWork => '改善が必要';

  @override
  String get healthExcellentBody => 'しっかり貯金できており、予算内に収まっています。';

  @override
  String get healthGoodBody => 'この期間の支出は順調です。';

  @override
  String get healthFairBody => 'いくつかの予算で支出が速いペースで進んでいます。小さな変更が役立ちます。';

  @override
  String get healthNeedsWorkBody => '支出が計画を上回っています。まずは最も大きなカテゴリーから見直しましょう。';

  @override
  String get factorSavingsRate => '貯金率';

  @override
  String get factorBudgetControl => '予算管理';

  @override
  String get factorDebtLoad => '借金の負担';

  @override
  String get factorSpendingTrend => '支出傾向';

  @override
  String factorKept(String percent) {
    return '$percent%を残しました';
  }

  @override
  String factorUsed(String percent) {
    return '$percent%使用済み';
  }

  @override
  String factorOfIncome(String percent) {
    return '収入の$percent%';
  }

  @override
  String factorTrendUp(String percent) {
    return '$percent%増加';
  }

  @override
  String factorTrendDown(String percent) {
    return '$percent%減少';
  }

  @override
  String get howScoreWorks => 'このスコアの仕組み';

  @override
  String get healthScoreExplainer =>
      'スコアは4つの要素を組み合わせています。収入のうちどれだけ残しているか、予算内にどの程度収められているか、収入のうちどれだけが借金に回っているか、そして支出が増えているか減っているかです。';

  @override
  String scoreWeightLabel(int percent) {
    return 'スコアの$percent%';
  }

  @override
  String get viewHealthDetails => '内訳を見る';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get profileUpdated => 'プロフィールを更新しました';

  @override
  String get changePhoto => '写真を変更';

  @override
  String get removePhoto => '写真を削除';

  @override
  String get personalInformationIntro =>
      '名前と写真はアプリ全体に表示されます。メールアドレスはサインインに使用するアドレスです。';

  @override
  String get emailNotEditable => 'サインインに使用するメールアドレスを変更するには、サポートにお問い合わせください。';

  @override
  String get pressBackAgainToExit => 'もう一度戻るを押すと終了します';

  @override
  String get categoryHousing => '住居';

  @override
  String get categoryFood => '食事・外食';

  @override
  String get categoryTransport => '交通';

  @override
  String get categoryShopping => '買い物';

  @override
  String get categoryBills => '請求・光熱費';

  @override
  String get categoryEntertainment => 'エンターテインメント';

  @override
  String get categoryHealth => '健康・フィットネス';

  @override
  String get categoryEducation => '教育';

  @override
  String get categoryTravel => '旅行';

  @override
  String get categorySalary => '給与';

  @override
  String get categoryFreelance => 'フリーランス';

  @override
  String get categoryInvestments => '投資';

  @override
  String get categoryGift => 'ギフト';

  @override
  String get categoryOther => 'その他';

  @override
  String get categoryGroceries => '食料品';

  @override
  String get categoryDining => '外食';

  @override
  String get categoryCoffee => 'コーヒー';

  @override
  String get categoryUtilities => '光熱費';

  @override
  String get categoryInternet => 'インターネット';

  @override
  String get categoryPhone => '電話';

  @override
  String get categoryInsurance => '保険';

  @override
  String get categorySubscriptions => 'サブスクリプション';

  @override
  String get categoryPersonalCare => '身だしなみ';

  @override
  String get categoryClothing => '衣類';

  @override
  String get categoryElectronics => '電子機器';

  @override
  String get categoryHomeSupplies => '家庭用品';

  @override
  String get categoryPets => 'ペット';

  @override
  String get categoryChildcare => '育児';

  @override
  String get categoryFamily => '家族';

  @override
  String get categoryFitness => 'フィットネス';

  @override
  String get categorySports => 'スポーツ';

  @override
  String get categoryMedicine => '医薬品';

  @override
  String get categoryMedical => '医療';

  @override
  String get categoryCharity => '寄付';

  @override
  String get categoryTaxes => '税金';

  @override
  String get categoryFees => '手数料';

  @override
  String get categoryDebt => '借金';

  @override
  String get categorySavings => '貯金';

  @override
  String get categoryRepairs => '修理';

  @override
  String get categoryCarMaintenance => '車のメンテナンス';

  @override
  String get categoryFuel => '燃料';

  @override
  String get categoryParking => '駐車場';

  @override
  String get categoryPublicTransport => '公共交通機関';

  @override
  String get categoryRent => '家賃';

  @override
  String get categoryMortgage => '住宅ローン';

  @override
  String get categoryBonus => 'ボーナス';

  @override
  String get categoryCommission => 'コミッション';

  @override
  String get categoryPension => '年金';

  @override
  String get categoryInterest => '利息';

  @override
  String get categoryDividends => '配当';

  @override
  String get categoryCashback => 'キャッシュバック';

  @override
  String get categoryRefund => '返金';

  @override
  String get categoryRentalIncome => '賃貸収入';

  @override
  String get addCategory => '新しいカテゴリー';

  @override
  String get filterByCategory => 'カテゴリーで絞り込む';

  @override
  String get allCategories => 'すべてのカテゴリー';

  @override
  String get clearFilters => 'フィルターをクリア';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => '全期間';

  @override
  String get customRange => 'カスタム';

  @override
  String get selectDateRange => '期間を選択';

  @override
  String rangeApplied(String start, String end) {
    return '表示中：$start – $end';
  }

  @override
  String get loans => 'ローン';

  @override
  String get debts => '借金';

  @override
  String get noLoansTitle => 'ローンはありません';

  @override
  String get noLoansBody => '現在有効なローンはありません。';

  @override
  String get emptyHealthTitle => '財務スコアはまだありません';

  @override
  String get emptyHealthDescription => '正確な健全性スコアを計算するには、もう少し財務アクティビティが必要です。';

  @override
  String get emptyHealthAddTransactions => '収入または支出の取引を追加';

  @override
  String get emptyHealthSetBudgets => '月間予算を設定';

  @override
  String get emptyHealthTrackLoans => 'ローンや借金を記録（任意）';

  @override
  String get emptyHealthCardSubtitle => '取引を追加してスコアを計算し、インサイトを確認しましょう。';

  @override
  String get smartBudgetSplit => 'スマート予算分割';

  @override
  String get smartBudgetSplitSubtitle => '推奨上限を計算するため、月給を入力してください';

  @override
  String get monthlyNetSalary => '月間手取り給与';

  @override
  String get categoryAllocations => 'カテゴリー別配分';

  @override
  String totalBudgeted(String amount) {
    return '合計：$amount';
  }

  @override
  String get applyAllBudgets => 'すべての予算を適用';

  @override
  String get applyingBudgets => '予算を適用しています...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countカテゴリーの予算を作成しました。',
      one: '1カテゴリーの予算を作成しました。',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => '予算の保存に失敗しました。';

  @override
  String get recommendedBudget => 'おすすめの予算';
}
