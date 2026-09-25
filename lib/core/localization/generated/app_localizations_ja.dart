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
  String get appTagline => 'もしもの日のために貯める';

  @override
  String get navHome => 'ホーム';

  @override
  String get navTransactions => '入出金';

  @override
  String get navAdd => '追加';

  @override
  String get navReports => 'レポート';

  @override
  String get navProfile => 'マイページ';

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
  String get greetingSubtitle => 'お金の全体像です';

  @override
  String get totalBalance => '残高合計';

  @override
  String get vsLastPeriod => '前期比';

  @override
  String get income => '収入';

  @override
  String get expenses => '支出';

  @override
  String get netBalance => '収支';

  @override
  String get lastThirtyDays => '過去30日';

  @override
  String get quickActions => 'クイック操作';

  @override
  String get addIncome => '収入を記録';

  @override
  String get addExpense => '支出を記録';

  @override
  String get spendingOverview => '支出の内訳';

  @override
  String get recentTransactions => '最近の記録';

  @override
  String get seeAll => 'すべて見る';

  @override
  String get viewAll => 'すべて表示';

  @override
  String get budgetProgress => '予算の進捗';

  @override
  String get savingsGoals => '貯蓄目標';

  @override
  String get financialInsight => '気づき';

  @override
  String get financialHealth => '家計の健全度';

  @override
  String ofTotal(String total) {
    return '$total 中';
  }

  @override
  String get searchTransactions => '記録を検索';

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
  String get noTransactionsTitle => '記録が見つかりません';

  @override
  String get noTransactionsBody => '検索語や絞り込みを変えると、ほかの記録も見つかります。';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の記録',
      zero: '記録なし',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => '記録を追加';

  @override
  String get amount => '金額';

  @override
  String get category => 'カテゴリ';

  @override
  String get date => '日付';

  @override
  String get note => 'メモ';

  @override
  String get noteHint => 'メモ（任意）';

  @override
  String get saveIncome => '収入を保存';

  @override
  String get saveExpense => '支出を保存';

  @override
  String get selectCategory => 'カテゴリを選択';

  @override
  String get transactionSaved => '保存しました';

  @override
  String get amountRequired => '0より大きい金額を入力してください';

  @override
  String get titleRequired => 'この記録に名前を付けてください';

  @override
  String get descriptionLabel => '内容';

  @override
  String get descriptionHint => '例：食料品';

  @override
  String get budget => '予算';

  @override
  String get budgets => '予算';

  @override
  String get totalBudget => '予算合計';

  @override
  String get spent => '使用済み';

  @override
  String get remaining => '残り';

  @override
  String budgetUsed(int percent) {
    return '$percent% 使用';
  }

  @override
  String get onTrack => '順調';

  @override
  String get approachingLimit => '上限が近い';

  @override
  String get overBudget => '予算超過';

  @override
  String get savings => '貯蓄';

  @override
  String get yourGoals => 'あなたの目標';

  @override
  String get saved => '貯めた額';

  @override
  String get target => '目標';

  @override
  String get monthlyContribution => '毎月';

  @override
  String get addFunds => '入金する';

  @override
  String get goalComplete => '目標達成';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'あと$countか月',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ローンと負債';

  @override
  String get totalOutstanding => '残高合計';

  @override
  String get monthlyPayment => '毎月';

  @override
  String get nextPayment => '次回の支払い';

  @override
  String paidOff(int percent) {
    return '$percent% 返済済み';
  }

  @override
  String get interestRate => '金利';

  @override
  String get upcomingPayments => '支払い予定';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'あと$count日で期日',
      one: '明日が期日',
      zero: '今日が期日',
    );
    return '$_temp0';
  }

  @override
  String get overdue => '延滞';

  @override
  String get reports => 'レポート';

  @override
  String get week => '週';

  @override
  String get month => '月';

  @override
  String get quarter => '四半期';

  @override
  String get incomeVsExpenses => '収入と支出';

  @override
  String get spendingByCategory => 'カテゴリ別支出';

  @override
  String get budgetPerformance => '予算の達成状況';

  @override
  String get insights => '気づき';

  @override
  String get savingsRate => '貯蓄率';

  @override
  String get profile => 'マイページ';

  @override
  String get account => 'アカウント';

  @override
  String get personalInformation => '個人情報';

  @override
  String get changePassword => 'パスワードの変更';

  @override
  String get notifications => '通知';

  @override
  String get preferences => '環境設定';

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
    return '$date から利用';
  }

  @override
  String get themeSystem => 'システムに合わせる';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get settings => '設定';

  @override
  String get noNotificationsTitle => '確認済みです';

  @override
  String get noNotificationsBody => '新しい気づきやリマインダーはここに表示されます。';

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
  String get comingSoon => '正式版で対応予定です';

  @override
  String get edit => '編集';

  @override
  String get delete => '削除';

  @override
  String get undo => '取り消す';

  @override
  String get add => '追加';

  @override
  String get create => '作成';

  @override
  String get nameRequired => '名前を入力してください';

  @override
  String get amountAboveZero => '0より大きい金額を入力してください';

  @override
  String get editTransaction => '記録を編集';

  @override
  String get deleteTransaction => 'この記録を削除しますか？';

  @override
  String deleteTransactionBody(String title) {
    return '$title が家計簿から削除されます。';
  }

  @override
  String get transactionDeleted => '削除しました';

  @override
  String get transactionUpdated => '更新しました';

  @override
  String get newBudget => '予算を作成';

  @override
  String get editBudget => '予算を編集';

  @override
  String get budgetLimit => '月間の上限';

  @override
  String get deleteBudget => 'この予算を削除しますか？';

  @override
  String deleteBudgetBody(String category) {
    return '$category の予算が削除されます。記録には影響しません。';
  }

  @override
  String get budgetSaved => '予算を保存しました';

  @override
  String get budgetDeleted => '予算を削除しました';

  @override
  String get allCategoriesBudgeted => 'すべてのカテゴリに予算があります';

  @override
  String get noBudgetsTitle => '予算がありません';

  @override
  String get noBudgetsBody => 'カテゴリに月間の上限を決めると、そこから記録が始まります。';

  @override
  String get newGoal => '目標を作成';

  @override
  String get editGoal => '目標を編集';

  @override
  String get goalName => '目標名';

  @override
  String get goalNameHint => '例：緊急資金';

  @override
  String get targetAmount => '目標金額';

  @override
  String get alreadySaved => '貯蓄済み';

  @override
  String get deleteGoal => 'この目標を削除しますか？';

  @override
  String deleteGoalBody(String name) {
    return '$name とその進捗が削除されます。';
  }

  @override
  String get goalSaved => '目標を保存しました';

  @override
  String get goalDeleted => '目標を削除しました';

  @override
  String get noGoalsTitle => '貯蓄目標がありません';

  @override
  String get noGoalsBody => '目標を決めれば、RainyPenny が進み具合を追いかけます。';

  @override
  String get fundsAdded => '入金しました';

  @override
  String get newDebt => 'ローンやカードを追加';

  @override
  String get editDebt => 'ローンを編集';

  @override
  String get debtName => '名称';

  @override
  String get debtNameHint => '例：自動車ローン';

  @override
  String get lender => '借入先';

  @override
  String get lenderHint => '例：みずほ銀行';

  @override
  String get originalAmount => '当初金額';

  @override
  String get creditLimit => '利用限度額';

  @override
  String get remainingBalance => '残高';

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
  String get deleteDebt => 'この負債を削除しますか？';

  @override
  String deleteDebtBody(String name) {
    return '$name が負債一覧から削除されます。';
  }

  @override
  String get debtSaved => '保存しました';

  @override
  String get debtDeleted => '削除しました';

  @override
  String get noDebtsTitle => '登録された負債はありません';

  @override
  String get noDebtsBody => 'ローンやクレジットカードを追加すると、返済を把握できます。';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject の予算を超えました';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return '今期の $subject 予算を $amount 超えています。';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject が上限に近づいています';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject の予算は $percent% 使用済みで、残りは $amount です。';
  }

  @override
  String get insightOverIncomeTitle => '支出が収入を上回っています';

  @override
  String get insightOverIncomeBody =>
      '今期は稼いだ以上に使っています。金額の大きいカテゴリを見直して立て直しましょう。';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject の支出が増えています';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject の支出は前期より $percent% 多くなっています。';
  }

  @override
  String get insightTrendDownTitle => '支出が減ってきています';

  @override
  String insightTrendDownBody(int percent) {
    return '全体の支出は前期より $percent% 少なくなっています。';
  }

  @override
  String get insightTrendUpTitle => '支出が増えてきています';

  @override
  String insightTrendUpBody(int percent) {
    return '全体の支出は前期より $percent% 多くなっています。';
  }

  @override
  String get insightSavingsStrongTitle => '今期はよく貯まりました';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return '収入の $percent% を残しました — 目標の $target% を大きく上回っています。';
  }

  @override
  String get insightSavingsLowTitle => '貯蓄率が目標を下回っています';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return '今期は収入の $percent% を残しました。目標は $target% です。';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject はもうすぐ達成です';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject まであと $amount です。';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject は順調です';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$monthsか月',
    );
    return '毎月 $amount なら、$_temp0でこの目標に届きます。';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject の支払いが延滞しています';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days日',
    );
    return '$subject の $amount の支払いが $_temp0延滞しています。';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject の支払いが近づいています';
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
    return '$amount の支払期日は$_temp0です。';
  }

  @override
  String get signIn => 'ログイン';

  @override
  String get signUp => 'アカウントを作成';

  @override
  String get signInSubtitle => 'おかえりなさい。お金が待っています。';

  @override
  String get signUpSubtitle => 'いくつか入力すれば準備完了です。';

  @override
  String get emailLabel => 'メールアドレス';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'パスワード';

  @override
  String get passwordHint => '8文字以上';

  @override
  String get fullNameLabel => 'お名前';

  @override
  String get fullNameHint => '山田 太郎';

  @override
  String get forgotPassword => 'パスワードをお忘れですか？';

  @override
  String get resetSent => '再設定リンクを送りました。メールをご確認ください';

  @override
  String get noAccountYet => 'はじめてですか？';

  @override
  String get haveAccount => 'すでにアカウントをお持ちですか？';

  @override
  String get emailInvalid => '有効なメールアドレスを入力してください';

  @override
  String get passwordTooShort => '8文字以上にしてください';

  @override
  String get signOutConfirm => 'ログアウトしますか？';

  @override
  String get signOutBody => '次に家計を見るときは、もう一度ログインが必要です。';

  @override
  String get dataSource => 'データソース';

  @override
  String get insightWeeklySummaryTitle => '今週のふり返り';

  @override
  String get insightWeeklySummaryBody => '今週お金がどこへ行ったか、予算はどうだったかを確認しましょう。';

  @override
  String get notificationSettings => '通知';

  @override
  String get alertsSection => 'お知らせ';

  @override
  String get budgetAlerts => '予算のお知らせ';

  @override
  String get budgetAlertsBody => '予算が上限に近づいた、または超えたとき';

  @override
  String get paymentReminders => '支払いリマインダー';

  @override
  String get paymentRemindersBody => '支払期日の数日前';

  @override
  String get savingsUpdates => '貯蓄の進捗';

  @override
  String get savingsUpdatesBody => '目標に向けた進み具合';

  @override
  String get weeklySummaryLabel => '週次サマリー';

  @override
  String get weeklySummaryBody => '過ぎた一週間のまとめ';

  @override
  String get scheduleSection => 'タイミング';

  @override
  String get reminderTime => '通知の時刻';

  @override
  String get quietHours => '通知しない時間帯';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'サマリーの曜日';

  @override
  String get permissionRequired => '通知がオフになっています';

  @override
  String get permissionRequiredBody =>
      '通知を許可すると、予算や支払いが手に負えなくなる前に RainyPenny が知らせます。';

  @override
  String get allowNotifications => '通知を許可';

  @override
  String get permissionDenied => '通知がブロックされています。端末の設定からオンにできます。';

  @override
  String get upcomingAlerts => '予定';

  @override
  String get noScheduledAlerts => '予定されているお知らせはありません';

  @override
  String get noScheduledAlertsBody => '予算や支払いが期限に近づくと、ここにお知らせが並びます。';

  @override
  String scheduledFor(String date) {
    return '$date に予定';
  }

  @override
  String get everyWeek => '毎週';

  @override
  String get allNotificationsOff => 'すべての通知がオフです';

  @override
  String get needsAttention => '要注意';

  @override
  String get quickActionsTitle => '何をしますか？';

  @override
  String get createSection => '記録する';

  @override
  String get jumpToSection => '移動する';

  @override
  String get addLoanAction => 'ローンを追加';

  @override
  String get addBudgetAction => '予算を追加';

  @override
  String get addGoalAction => '目標を追加';

  @override
  String get longPressHint => 'ヒント：+ を長押しするとすぐ支出を記録できます';

  @override
  String get searchCurrencies => '通貨を検索';

  @override
  String get noCurrenciesFound => '通貨が見つかりません';

  @override
  String get noCurrenciesFoundMessage => '別のコード、記号、名称で試してください。';

  @override
  String get popularCurrencies => 'よく使う通貨';

  @override
  String get allCurrencies => 'すべての通貨';

  @override
  String get totalLoanAmount => '借入総額';

  @override
  String get installmentAmount => '1回の返済額';

  @override
  String get numberOfInstallments => '返済回数';

  @override
  String get paidInstallments => '返済済み回数';

  @override
  String get remainingInstallments => '残り回数';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total 回中 $paid 回返済済み';
  }

  @override
  String get finalPayment => '最終回';

  @override
  String get paymentDueDate => '支払期日';

  @override
  String dueOnDayOfMonth(int day) {
    return '毎月 $day 日';
  }

  @override
  String get loanStatus => '状況';

  @override
  String get statusActive => '順調';

  @override
  String get statusDueSoon => 'まもなく期日';

  @override
  String get statusOverdue => '延滞';

  @override
  String get statusCompleted => '完済';

  @override
  String get repaymentProgress => '返済の進捗';

  @override
  String get byAmount => '金額で';

  @override
  String get byInstallments => '回数で';

  @override
  String get startDate => '開始日';

  @override
  String get openEnded => '期限なし';

  @override
  String get loanDetails => 'ローンの詳細';

  @override
  String get notSet => '未設定';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject は今日が期日です';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '$amount の支払いが今日期日です。ひと操作で間に合います。';
  }

  @override
  String get remindMorningTitle => 'おはようございます ☀️';

  @override
  String get remindMorningBody => 'お金を把握して一日を始めましょう。昨日の分で足すものはありますか？';

  @override
  String get remindNoonTitle => 'お昼の確認';

  @override
  String get remindNoonBody => 'ランチ、コーヒー、交通費？数秒で記録できます。';

  @override
  String get remindAfternoonTitle => 'ちょっと追記';

  @override
  String get remindAfternoonBody => 'ここまでの支出を記録して、今日の数字を正確に保ちましょう。';

  @override
  String get remindEveningTitle => '今日の締めくくり';

  @override
  String get remindEveningBody => 'いま2分あれば、今日の記録がそろいます。';

  @override
  String get happyWeekendTitle => 'よい週末を！🎉';

  @override
  String get happyWeekendBody => 'ゆっくり過ごしてください — 週末の出費にはご用心。';

  @override
  String get dailyReminders => '毎日の記録リマインダー';

  @override
  String get dailyRemindersBody => '支出を記録し忘れないよう、そっとお知らせします';

  @override
  String get weekendGreeting => '週末のあいさつ';

  @override
  String get weekendGreetingBody => '週末のはじまりに、ひとこと';

  @override
  String get reminderTimesSection => '通知の時間帯';

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
  String get financialReport => '家計レポート';

  @override
  String get preparedFor => '作成対象';

  @override
  String get generatedOn => '作成日';

  @override
  String get reportDisclaimer => 'あなた自身の記録から RainyPenny が作成しました。';

  @override
  String pageOf(int page, int total) {
    return '$total ページ中 $page ページ';
  }

  @override
  String get overview => '概要';

  @override
  String get description => '内容';

  @override
  String get totalIncome => '収入合計';

  @override
  String get totalExpenses => '支出合計';

  @override
  String get totalSaved => '貯蓄合計';

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
  String get transactions => '記録';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ほか $count 件の記録',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF を書き出す';

  @override
  String get sharePdf => 'レポートを共有';

  @override
  String get preparingReport => 'レポートを作成しています…';

  @override
  String get reportReady => 'レポートができました';

  @override
  String get reportFailed => 'レポートを作成できませんでした';

  @override
  String get categories => 'カテゴリ';

  @override
  String get categoriesIntro => '自分のカテゴリを追加して、ふだんの感覚どおりに収入と支出を仕分けましょう。';

  @override
  String get expenseCategories => '支出カテゴリ';

  @override
  String get incomeCategories => '収入カテゴリ';

  @override
  String get newCategory => 'カテゴリを作成';

  @override
  String get editCategory => 'カテゴリを編集';

  @override
  String get categoryName => '名称';

  @override
  String get categoryNameHint => '例：ペット';

  @override
  String get icon => 'アイコン';

  @override
  String get categorySaved => 'カテゴリを保存しました';

  @override
  String get categoryDeleted => 'カテゴリを削除しました';

  @override
  String get deleteCategory => 'このカテゴリを削除しますか？';

  @override
  String deleteCategoryBody(String name) {
    return '$name がカテゴリ一覧から削除されます。';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件の記録がまだこのカテゴリを使っています',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'まだ何もありません。';

  @override
  String get builtIn => '標準';

  @override
  String get manageCategories => 'カテゴリの管理';

  @override
  String get expense => '支出';

  @override
  String get languageNote =>
      'アラビア語・ウルドゥー語・ペルシア語・ヘブライ語では、グラフや PDF レポートを含め、画面全体が右から左になります。';

  @override
  String get next => '次へ';

  @override
  String get back => '戻る';

  @override
  String get skip => 'スキップ';

  @override
  String get continueLabel => '続ける';

  @override
  String get selected => '選択中';

  @override
  String get passwordRequired => 'パスワードを入力してください';

  @override
  String get newPasswordLabel => '新しいパスワード';

  @override
  String get confirmPasswordLabel => 'パスワードの確認';

  @override
  String get passwordsDoNotMatch => '2つのパスワードが一致しません';

  @override
  String get showPassword => 'パスワードを表示';

  @override
  String get hidePassword => 'パスワードを隠す';

  @override
  String get savePassword => 'パスワードを保存';

  @override
  String get backToSignIn => 'ログインに戻る';

  @override
  String get alreadyHaveAccount => 'アカウントを持っています';

  @override
  String get getStarted => 'はじめる';

  @override
  String get acceptTerms => '利用規約とプライバシーポリシーに同意します';

  @override
  String get acceptTermsRequired => '続けるには同意が必要です';

  @override
  String get passwordStrengthTooShort => '短すぎます';

  @override
  String get passwordStrengthWeak => '弱い';

  @override
  String get passwordStrengthFair => 'まずまず';

  @override
  String get passwordStrengthGood => '良好';

  @override
  String get passwordStrengthStrong => '強い';

  @override
  String get passwordAdvice =>
      '記号だらけの短いパスワードより、覚えていられる長い文のほうが安全です。ほかで使っているものは避けてください。';

  @override
  String get authInvalidCredentials => 'このメールアドレスとパスワードに一致するアカウントはありません';

  @override
  String get authEmailNotConfirmed => 'ログインの前にメールアドレスを確認してください';

  @override
  String get authEmailAlreadyRegistered => 'このメールアドレスのアカウントはすでにあります';

  @override
  String get authWeakPassword => 'もっと長いパスワードにしてください';

  @override
  String get authRateLimited => '試行回数が多すぎます。数分後にもう一度お試しください';

  @override
  String get authNetworkError => '接続がありません。ネットワークを確認して再試行してください';

  @override
  String get authGenericError => '問題が発生しました。もう一度お試しください';

  @override
  String get confirmEmailTitle => 'メールをご確認ください';

  @override
  String confirmEmailBody(String email) {
    return '$email に確認リンクを送りました。開いてアカウント登録を完了してください。';
  }

  @override
  String get resendConfirmation => '確認メールを再送';

  @override
  String get confirmationResent => '確認メールを送りました';

  @override
  String get forgotPasswordTitle => 'パスワードの再設定';

  @override
  String get forgotPasswordSubtitle =>
      '登録に使ったメールアドレスを入力してください。新しいパスワードを決めるリンクをお送りします。';

  @override
  String get sendResetLink => 'リンクを送る';

  @override
  String get resetLinkSentTitle => 'リンクを送りました';

  @override
  String resetLinkSentBody(String email) {
    return '$email のアカウントがあれば、再設定リンクが届きます。';
  }

  @override
  String get resetLinkSentHint =>
      'リンクは1時間で期限切れになります。届かない場合は、再送を頼む前に迷惑メールをご確認ください。';

  @override
  String get tryAnotherEmail => '別のメールアドレスを使う';

  @override
  String get resetPasswordTitle => '新しいパスワードを決める';

  @override
  String get resetPasswordSubtitle => 'このアカウントでこれまで使っていないものにしてください。';

  @override
  String get passwordChangedTitle => 'パスワードを更新しました';

  @override
  String get passwordChangedBody => '新しいパスワードを保存しました。ログイン済みなので、そのまま使えます。';

  @override
  String get demoModeHint => 'デモ版 — アカウントは不要です';

  @override
  String get demoModeFill => '入力する';

  @override
  String get welcomeTrackTitle => 'お金の行き先が見えます';

  @override
  String get welcomeTrackBody =>
      '入ってきたものと出ていったものを記録するだけ。RainyPenny がそれを、ちゃんと読める一枚の絵に変えます。';

  @override
  String get welcomeBudgetTitle => '守れる上限を決める';

  @override
  String get welcomeBudgetBody => '支出の項目ごとに月の上限を決めれば、超えたあとではなく、超える前に気づけます。';

  @override
  String get welcomeGoalsTitle => '大切なことのために貯める';

  @override
  String get welcomeGoalsBody =>
      '目標に名前を付け、金額を決め、貯まっていくのを眺める。もしもの備えは、目に見えるほうが続きます。';

  @override
  String get welcomePrivacyTitle => 'あなたのお金は、あなたのもの';

  @override
  String get welcomePrivacyBody => '数字はあなただけのものです。売ることも、誰かと共有することもありません。';

  @override
  String stepOf(int step, int total) {
    return 'ステップ $step / $total';
  }

  @override
  String get onboardingNameTitle => '何とお呼びしましょう？';

  @override
  String get onboardingNameBody => 'あいさつに使うだけで、ほかでは使いません。';

  @override
  String get onboardingNameHint => '下の名前だけで十分です。あとから変えられます。';

  @override
  String get onboardingCurrencyTitle => 'どの通貨をお使いですか？';

  @override
  String get onboardingCurrencyBody => 'アプリ内の金額はすべてこの通貨で表示されます。選んでも為替換算はしません。';

  @override
  String get onboardingCurrencySearch => 'すべての通貨を検索';

  @override
  String get onboardingAppearanceTitle => '好みに合わせる';

  @override
  String get onboardingAppearanceBody => '見た目を選んでください。触れるたびに変わり、いつでも戻ってこられます。';

  @override
  String get onboardingNotificationsTitle => '把握しつづける';

  @override
  String get onboardingNotificationsBody => 'ちょうどいいときの静かなひと声が、これを習慣に変えます。';

  @override
  String get onboardingNotifyReminders => '使った分を記録するための、やさしいリマインダー';

  @override
  String get onboardingNotifyBudget => '予算を使い切る前のお知らせ';

  @override
  String get onboardingNotifySummary => 'お金の行き先を毎週まとめてお届け';

  @override
  String get onboardingNotifyEnable => '通知をオンにする';

  @override
  String get onboardingNotifyDone => '通知設定を保存しました';

  @override
  String get onboardingNotifyLater => 'これらはすべて、設定からいつでも変更できます。';

  @override
  String get onboardingReadyTitle => '準備ができました';

  @override
  String onboardingReadyTitleNamed(String name) {
    return '準備ができました、$nameさん';
  }

  @override
  String get onboardingReadyBody => '初期設定は完了です。使い方をざっと見てみますか？';

  @override
  String get onboardingTakeTour => '案内してほしい';

  @override
  String get onboardingGoToApp => 'アプリへ進む';

  @override
  String get onboardingTourLater => 'いまはやめておく？ガイドは設定にいつでも置いてあります。';

  @override
  String get beginnersGuide => 'はじめてのガイド';

  @override
  String get guideFinish => '終了';

  @override
  String chapterOf(int number, int total) {
    return '第 $number 章 / 全 $total 章';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screenを開く';
  }

  @override
  String get guideDashboardTitle => 'ホーム画面';

  @override
  String get guideDashboardBody =>
      'すべてはここから。いちばん上のカードが手元に残っている額で、その下が今期の収入と支出、さらに支出の内訳、予算、目標と続きます。';

  @override
  String get guideDashboardTip1 => '画面を下に引くと、まとめて更新できます。';

  @override
  String get guideDashboardTip2 => '収入や支出のカードを押すと、その一覧に直行できます。';

  @override
  String get guideDashboardTip3 => '何か記録すると、リングや気づきはその場で更新されます。';

  @override
  String get guideAddTitle => 'お金を記録する';

  @override
  String get guideAddBody =>
      'バーの真ん中のボタンがすべての起点です。短いメニューが開き、支出・収入・負債・予算・貯蓄目標を選べます。';

  @override
  String get guideAddTip1 => '真ん中のボタンを押して、収入か支出を記録します。';

  @override
  String get guideAddTip2 => '長押しするとメニューを飛ばして、すぐ支出の入力に進めます。';

  @override
  String get guideAddTip3 => 'カテゴリは必ず選んでください — グラフも予算もそこから動きます。';

  @override
  String get guideCategoriesTitle => 'カテゴリ';

  @override
  String get guideCategoriesBody =>
      'カテゴリは支出のまとめ方です。最初から入っているもので大半の人には足りますが、名前を変えたり自分で追加したりもできます。';

  @override
  String get guideCategoriesTip1 => '設定から「カテゴリの管理」で、変更も追加もできます。';

  @override
  String get guideCategoriesTip2 => 'カテゴリのないものは「その他」に入るので、グラフはごまかしません。';

  @override
  String get guideBudgetTitle => '予算';

  @override
  String get guideBudgetBody =>
      '予算はカテゴリごとの月の上限です。使うほどバーが伸び、上限が近づくと色が変わるので、超える前に気づけます。';

  @override
  String get guideBudgetTip1 => '全部いっぺんにではなく、2つか3つのカテゴリから始めましょう。';

  @override
  String get guideBudgetTip2 => '上限はふだんの支出より少し高めにして、あとから締めていきます。';

  @override
  String get guideBudgetTip3 => '予算のお知らせはオンのままに。残りが少なくなると教えてくれます。';

  @override
  String get guideSavingsTitle => '貯蓄目標';

  @override
  String get guideSavingsBody =>
      '何のために貯めるのかに名前を付け、金額と期日を決めれば、毎月いくら取り分ければ届くかをアプリが計算します。';

  @override
  String get guideSavingsTip1 => '名前のある目標は、漠然と「貯めたい」より続きます。';

  @override
  String get guideSavingsTip2 => '大きな目標ひとつより、小さな目標をいくつかのほうが達成しやすいものです。';

  @override
  String get guideLoansTitle => '負債とローン';

  @override
  String get guideLoansBody =>
      'いくら借りていて、いくらかかり、次の支払いがいつかを記録します。返済中のものはすべて、残額とともに一覧に並びます。';

  @override
  String get guideLoansTip1 => '期日を入れておけば、支払いリマインダーが追いかけてくれます。';

  @override
  String get guideLoansTip2 => '延滞した負債は、支払うまでホーム画面に赤で表示されます。';

  @override
  String get guideReportsTitle => 'レポート';

  @override
  String get guideReportsBody =>
      'もう一段深い眺め。収入と支出の対比、カテゴリ別の支出、予算がどれだけ守れたか、そして収入のうちどれだけ手元に残ったか。';

  @override
  String get guideReportsTip1 => '画面上部で、週・月・四半期を切り替えられます。';

  @override
  String get guideReportsTip2 => 'PDF に書き出したり共有したり — あなたの言語と読む向きで出力されます。';

  @override
  String get guideSettingsTitle => '設定';

  @override
  String get guideSettingsBody =>
      '言語、通貨、色、お知らせはすべてここにあります。初期設定で固定されるものは何もありません — いつでも変えられます。';

  @override
  String get guideSettingsTip1 => '40の言語に対応し、右から左に読む言語では画面全体が反転します。';

  @override
  String get guideSettingsTip2 => 'どのお知らせを受け取るか、届いてよい時間帯かを選べます。';

  @override
  String get guideSettingsTip3 => '通知しない時間帯を設定すると、朝まで届きません。';

  @override
  String get guideHabitTitle => '続けるために';

  @override
  String get guideHabitBody =>
      'アプリは、入れたものの分だけ役に立ちます。月に1時間より1日1分。2週間続ければ、数字が何かを語り始めます。';

  @override
  String get guideHabitTip1 => '週末にまとめてではなく、使ったその場で記録しましょう。';

  @override
  String get guideHabitTip2 => '1日1回ホーム画面を見るだけ。10秒で十分です。';

  @override
  String get guideHabitTip3 => 'このガイドは設定に残ります — いつでも戻ってきてください。';

  @override
  String get appearance => '外観';

  @override
  String get themeCaption => 'ライト、ダーク、または端末に合わせて。';

  @override
  String get accentColor => 'アクセントカラー';

  @override
  String get accentColorCaption => 'ボタン、強調表示、グラフの色になります。';

  @override
  String get accentSemanticsNote =>
      '収入と支出はどのテーマでも自分の色を保つので、アクセントを変えても数字の意味は変わりません。';

  @override
  String get accentTeal => 'ティール';

  @override
  String get accentGreen => 'グリーン';

  @override
  String get accentSky => 'スカイブルー';

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
  String get noLanguagesFoundMessage => '英語の名称か、2文字のコードで試してください。';

  @override
  String get rightToLeft => '右から左';

  @override
  String get replayGuide => 'ガイドをもう一度見る';

  @override
  String get replaySetup => '初期設定をやり直す';

  @override
  String get replaySetupBody => '最初の質問にもう一度答えます。記録した内容が消えることはありません。';

  @override
  String get rateTitle => 'RainyPennyはいかがですか？';

  @override
  String get rateBody => 'しばらく使っていただいていますね。評価は少しの手間で、ほかの方がアプリを見つける助けになります。';

  @override
  String get rateAction => 'アプリを評価する';

  @override
  String get rateLater => 'あとで';

  @override
  String get rateNever => '結構です';

  @override
  String get rateThanks => 'ありがとうございます';

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

  @override
  String get emptyHealthTitle => 'No Financial Score Yet';

  @override
  String get emptyHealthDescription =>
      'We need a little financial activity before we can calculate an accurate health score.';

  @override
  String get emptyHealthAddTransactions => 'Add income or expense transactions';

  @override
  String get emptyHealthSetBudgets => 'Set up your monthly budgets';

  @override
  String get emptyHealthTrackLoans => 'Track loans or debts (optional)';

  @override
  String get emptyHealthCardSubtitle =>
      'Add transactions to calculate your score and get insights.';
}
