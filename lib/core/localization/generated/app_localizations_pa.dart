// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppL10nPa extends AppL10n {
  AppL10nPa([String locale = 'pa']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'ਔਖੇ ਦਿਨਾਂ ਲਈ ਬਚਾਓ';

  @override
  String get navHome => 'ਘਰ';

  @override
  String get navTransactions => 'ਲੈਣ-ਦੇਣ';

  @override
  String get navAdd => 'ਜੋੜੋ';

  @override
  String get navReports => 'ਰਿਪੋਰਟਾਂ';

  @override
  String get navProfile => 'ਪ੍ਰੋਫ਼ਾਈਲ';

  @override
  String greetingMorning(String name) {
    return 'ਸ਼ੁਭ ਸਵੇਰ, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'ਸ਼ੁਭ ਦੁਪਹਿਰ, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'ਸ਼ੁਭ ਸ਼ਾਮ, $name';
  }

  @override
  String get greetingSubtitle => 'ਇਹ ਰਹੀ ਤੁਹਾਡੀ ਵਿੱਤੀ ਤਸਵੀਰ';

  @override
  String get totalBalance => 'ਕੁੱਲ ਬਕਾਇਆ';

  @override
  String get vsLastPeriod => 'ਪਿਛਲੇ ਸਮੇਂ ਦੇ ਮੁਕਾਬਲੇ';

  @override
  String get income => 'ਆਮਦਨ';

  @override
  String get expenses => 'ਖਰਚੇ';

  @override
  String get netBalance => 'ਸ਼ੁੱਧ ਬਕਾਇਆ';

  @override
  String get lastThirtyDays => 'ਪਿਛਲੇ 30 ਦਿਨ';

  @override
  String get quickActions => 'ਤੇਜ਼ ਕਾਰਵਾਈਆਂ';

  @override
  String get addIncome => 'ਆਮਦਨ ਜੋੜੋ';

  @override
  String get addExpense => 'ਖਰਚਾ ਜੋੜੋ';

  @override
  String get spendingOverview => 'ਖਰਚ ਦਾ ਸਾਰ';

  @override
  String get recentTransactions => 'ਹਾਲੀਆ ਲੈਣ-ਦੇਣ';

  @override
  String get seeAll => 'ਸਾਰੇ ਵੇਖੋ';

  @override
  String get viewAll => 'ਸਭ ਦਿਖਾਓ';

  @override
  String get budgetProgress => 'ਬਜਟ ਦੀ ਪ੍ਰਗਤੀ';

  @override
  String get savingsGoals => 'ਬੱਚਤ ਦੇ ਟੀਚੇ';

  @override
  String get financialInsight => 'ਵਿੱਤੀ ਸਮਝ';

  @override
  String get financialHealth => 'ਵਿੱਤੀ ਸਿਹਤ';

  @override
  String ofTotal(String total) {
    return '$total ਵਿੱਚੋਂ';
  }

  @override
  String get searchTransactions => 'ਲੈਣ-ਦੇਣ ਲੱਭੋ';

  @override
  String get filterAll => 'ਸਾਰੇ';

  @override
  String get filterIncome => 'ਆਮਦਨ';

  @override
  String get filterExpenses => 'ਖਰਚੇ';

  @override
  String get today => 'ਅੱਜ';

  @override
  String get yesterday => 'ਕੱਲ੍ਹ';

  @override
  String get noTransactionsTitle => 'ਕੋਈ ਲੈਣ-ਦੇਣ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get noTransactionsBody =>
      'ਹੋਰ ਰਿਕਾਰਡ ਵੇਖਣ ਲਈ ਵੱਖਰੀ ਖੋਜ ਜਾਂ ਫ਼ਿਲਟਰ ਅਜ਼ਮਾਓ।';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਲੈਣ-ਦੇਣ',
      one: '$count ਲੈਣ-ਦੇਣ',
      zero: 'ਕੋਈ ਲੈਣ-ਦੇਣ ਨਹੀਂ',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'ਲੈਣ-ਦੇਣ ਜੋੜੋ';

  @override
  String get amount => 'ਰਕਮ';

  @override
  String get category => 'ਸ਼੍ਰੇਣੀ';

  @override
  String get date => 'ਤਾਰੀਖ਼';

  @override
  String get note => 'ਨੋਟ';

  @override
  String get noteHint => 'ਨੋਟ (ਚੋਣਵਾਂ)';

  @override
  String get saveIncome => 'ਆਮਦਨ ਸੰਭਾਲੋ';

  @override
  String get saveExpense => 'ਖਰਚਾ ਸੰਭਾਲੋ';

  @override
  String get selectCategory => 'ਸ਼੍ਰੇਣੀ ਚੁਣੋ';

  @override
  String get transactionSaved => 'ਲੈਣ-ਦੇਣ ਸੰਭਾਲਿਆ ਗਿਆ';

  @override
  String get amountRequired => 'ਸਿਫ਼ਰ ਤੋਂ ਵੱਧ ਰਕਮ ਭਰੋ';

  @override
  String get titleRequired => 'ਇਸ ਲੈਣ-ਦੇਣ ਨੂੰ ਨਾਂ ਦਿਓ';

  @override
  String get descriptionLabel => 'ਵੇਰਵਾ';

  @override
  String get descriptionHint => 'ਜਿਵੇਂ: ਰਾਸ਼ਨ';

  @override
  String get budget => 'ਬਜਟ';

  @override
  String get budgets => 'ਬਜਟ';

  @override
  String get totalBudget => 'ਕੁੱਲ ਬਜਟ';

  @override
  String get spent => 'ਖਰਚ ਹੋਇਆ';

  @override
  String get remaining => 'ਬਾਕੀ';

  @override
  String budgetUsed(int percent) {
    return '$percent% ਵਰਤਿਆ';
  }

  @override
  String get onTrack => 'ਠੀਕ ਰਾਹ ਉੱਤੇ';

  @override
  String get approachingLimit => 'ਹੱਦ ਦੇ ਨੇੜੇ';

  @override
  String get overBudget => 'ਬਜਟ ਤੋਂ ਵੱਧ';

  @override
  String get savings => 'ਬੱਚਤ';

  @override
  String get yourGoals => 'ਤੁਹਾਡੇ ਟੀਚੇ';

  @override
  String get saved => 'ਜਮ੍ਹਾਂ ਹੋਇਆ';

  @override
  String get target => 'ਟੀਚਾ';

  @override
  String get monthlyContribution => 'ਮਹੀਨਾਵਾਰ';

  @override
  String get addFunds => 'ਪੈਸੇ ਪਾਓ';

  @override
  String get goalComplete => 'ਟੀਚਾ ਪੂਰਾ';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਮਹੀਨੇ ਬਾਕੀ',
      one: '$count ਮਹੀਨਾ ਬਾਕੀ',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ਕਰਜ਼ੇ ਅਤੇ ਦੇਣਦਾਰੀਆਂ';

  @override
  String get totalOutstanding => 'ਕੁੱਲ ਬਕਾਇਆ ਕਰਜ਼ਾ';

  @override
  String get monthlyPayment => 'ਮਹੀਨਾਵਾਰ';

  @override
  String get nextPayment => 'ਅਗਲੀ ਕਿਸ਼ਤ';

  @override
  String paidOff(int percent) {
    return '$percent% ਚੁਕਾਇਆ';
  }

  @override
  String get interestRate => 'ਵਿਆਜ';

  @override
  String get upcomingPayments => 'ਆਉਣ ਵਾਲੀਆਂ ਕਿਸ਼ਤਾਂ';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਦਿਨਾਂ ਬਾਅਦ',
      one: '$count ਦਿਨ ਬਾਅਦ',
      zero: 'ਅੱਜ ਦੇਣੀ ਹੈ',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'ਮਿਆਦ ਲੰਘ ਗਈ';

  @override
  String get reports => 'ਰਿਪੋਰਟਾਂ';

  @override
  String get week => 'ਹਫ਼ਤਾ';

  @override
  String get month => 'ਮਹੀਨਾ';

  @override
  String get quarter => 'ਤਿਮਾਹੀ';

  @override
  String get incomeVsExpenses => 'ਆਮਦਨ ਬਨਾਮ ਖਰਚ';

  @override
  String get spendingByCategory => 'ਸ਼੍ਰੇਣੀ ਅਨੁਸਾਰ ਖਰਚ';

  @override
  String get budgetPerformance => 'ਬਜਟ ਦਾ ਪ੍ਰਦਰਸ਼ਨ';

  @override
  String get insights => 'ਸਮਝਾਂ';

  @override
  String get savingsRate => 'ਬੱਚਤ ਦਰ';

  @override
  String get profile => 'ਪ੍ਰੋਫ਼ਾਈਲ';

  @override
  String get account => 'ਖਾਤਾ';

  @override
  String get personalInformation => 'ਨਿੱਜੀ ਜਾਣਕਾਰੀ';

  @override
  String get changePassword => 'ਪਾਸਵਰਡ ਬਦਲੋ';

  @override
  String get notifications => 'ਸੂਚਨਾਵਾਂ';

  @override
  String get preferences => 'ਤਰਜੀਹਾਂ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get currency => 'ਮੁਦਰਾ';

  @override
  String get theme => 'ਥੀਮ';

  @override
  String get security => 'ਸੁਰੱਖਿਆ';

  @override
  String get privacyAndSecurity => 'ਨਿੱਜਤਾ ਅਤੇ ਸੁਰੱਖਿਆ';

  @override
  String get help => 'ਮਦਦ';

  @override
  String get helpAndSupport => 'ਮਦਦ ਅਤੇ ਸਹਾਇਤਾ';

  @override
  String get termsAndConditions => 'ਨਿਯਮ ਅਤੇ ਸ਼ਰਤਾਂ';

  @override
  String get logOut => 'ਲਾਗ ਆਊਟ';

  @override
  String memberSince(String date) {
    return '$date ਤੋਂ ਮੈਂਬਰ';
  }

  @override
  String get themeSystem => 'ਸਿਸਟਮ ਅਨੁਸਾਰ';

  @override
  String get themeLight => 'ਹਲਕਾ';

  @override
  String get themeDark => 'ਗੂੜ੍ਹਾ';

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get noNotificationsTitle => 'ਸਭ ਕੁਝ ਵੇਖ ਲਿਆ';

  @override
  String get noNotificationsBody => 'ਨਵੀਆਂ ਸਮਝਾਂ ਅਤੇ ਯਾਦ-ਦਹਾਨੀਆਂ ਇੱਥੇ ਆਉਣਗੀਆਂ।';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get save => 'ਸੰਭਾਲੋ';

  @override
  String get done => 'ਹੋ ਗਿਆ';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get somethingWentWrong => 'ਕੁਝ ਗ਼ਲਤ ਹੋ ਗਿਆ';

  @override
  String get comingSoon => 'ਪੂਰੇ ਵਰਜਨ ਵਿੱਚ ਆ ਰਿਹਾ ਹੈ';

  @override
  String get edit => 'ਸੋਧੋ';

  @override
  String get delete => 'ਮਿਟਾਓ';

  @override
  String get undo => 'ਵਾਪਸ ਕਰੋ';

  @override
  String get add => 'ਜੋੜੋ';

  @override
  String get create => 'ਬਣਾਓ';

  @override
  String get nameRequired => 'ਇਸ ਨੂੰ ਨਾਂ ਦਿਓ';

  @override
  String get amountAboveZero => 'ਸਿਫ਼ਰ ਤੋਂ ਵੱਧ ਰਕਮ ਭਰੋ';

  @override
  String get editTransaction => 'ਲੈਣ-ਦੇਣ ਸੋਧੋ';

  @override
  String get deleteTransaction => 'ਲੈਣ-ਦੇਣ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String deleteTransactionBody(String title) {
    return '$title ਤੁਹਾਡੇ ਹਿਸਾਬ ਵਿੱਚੋਂ ਹਟ ਜਾਵੇਗਾ।';
  }

  @override
  String get transactionDeleted => 'ਲੈਣ-ਦੇਣ ਮਿਟਾਇਆ ਗਿਆ';

  @override
  String get transactionUpdated => 'ਲੈਣ-ਦੇਣ ਅੱਪਡੇਟ ਹੋਇਆ';

  @override
  String get newBudget => 'ਨਵਾਂ ਬਜਟ';

  @override
  String get editBudget => 'ਬਜਟ ਸੋਧੋ';

  @override
  String get budgetLimit => 'ਮਹੀਨਾਵਾਰ ਹੱਦ';

  @override
  String get deleteBudget => 'ਬਜਟ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String deleteBudgetBody(String category) {
    return '$category ਬਜਟ ਹਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ। ਤੁਹਾਡੇ ਲੈਣ-ਦੇਣ ਉੱਤੇ ਕੋਈ ਅਸਰ ਨਹੀਂ ਪਵੇਗਾ।';
  }

  @override
  String get budgetSaved => 'ਬਜਟ ਸੰਭਾਲਿਆ ਗਿਆ';

  @override
  String get budgetDeleted => 'ਬਜਟ ਮਿਟਾਇਆ ਗਿਆ';

  @override
  String get allCategoriesBudgeted => 'ਹਰ ਸ਼੍ਰੇਣੀ ਦਾ ਬਜਟ ਪਹਿਲਾਂ ਹੀ ਹੈ';

  @override
  String get noBudgetsTitle => 'ਹਾਲੇ ਕੋਈ ਬਜਟ ਨਹੀਂ';

  @override
  String get noBudgetsBody =>
      'ਕਿਸੇ ਸ਼੍ਰੇਣੀ ਉੱਤੇ ਮਹੀਨਾਵਾਰ ਹੱਦ ਲਾਓ ਤਾਂ ਉਸ ਦਾ ਹਿਸਾਬ ਸ਼ੁਰੂ ਹੋ ਜਾਵੇਗਾ।';

  @override
  String get newGoal => 'ਨਵਾਂ ਟੀਚਾ';

  @override
  String get editGoal => 'ਟੀਚਾ ਸੋਧੋ';

  @override
  String get goalName => 'ਟੀਚੇ ਦਾ ਨਾਂ';

  @override
  String get goalNameHint => 'ਜਿਵੇਂ: ਸੰਕਟਕਾਲੀ ਫ਼ੰਡ';

  @override
  String get targetAmount => 'ਟੀਚਾ ਰਕਮ';

  @override
  String get alreadySaved => 'ਪਹਿਲਾਂ ਹੀ ਜਮ੍ਹਾਂ';

  @override
  String get deleteGoal => 'ਟੀਚਾ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String deleteGoalBody(String name) {
    return '$name ਅਤੇ ਉਸ ਦੀ ਪ੍ਰਗਤੀ ਹਟਾ ਦਿੱਤੀ ਜਾਵੇਗੀ।';
  }

  @override
  String get goalSaved => 'ਟੀਚਾ ਸੰਭਾਲਿਆ ਗਿਆ';

  @override
  String get goalDeleted => 'ਟੀਚਾ ਮਿਟਾਇਆ ਗਿਆ';

  @override
  String get noGoalsTitle => 'ਹਾਲੇ ਕੋਈ ਬੱਚਤ ਟੀਚਾ ਨਹੀਂ';

  @override
  String get noGoalsBody =>
      'ਇੱਕ ਟੀਚਾ ਰੱਖੋ ਅਤੇ RainyPenny ਤੁਹਾਡੀ ਪ੍ਰਗਤੀ ਦਾ ਹਿਸਾਬ ਰੱਖੇਗਾ।';

  @override
  String get fundsAdded => 'ਪੈਸੇ ਜੋੜੇ ਗਏ';

  @override
  String get newDebt => 'ਨਵਾਂ ਕਰਜ਼ਾ ਜਾਂ ਕਾਰਡ';

  @override
  String get editDebt => 'ਕਰਜ਼ਾ ਸੋਧੋ';

  @override
  String get debtName => 'ਨਾਂ';

  @override
  String get debtNameHint => 'ਜਿਵੇਂ: ਗੱਡੀ ਦਾ ਕਰਜ਼ਾ';

  @override
  String get lender => 'ਕਰਜ਼ਾ ਦੇਣ ਵਾਲਾ';

  @override
  String get lenderHint => 'ਜਿਵੇਂ: ਪੰਜਾਬ ਨੈਸ਼ਨਲ ਬੈਂਕ';

  @override
  String get originalAmount => 'ਮੂਲ ਰਕਮ';

  @override
  String get creditLimit => 'ਕ੍ਰੈਡਿਟ ਹੱਦ';

  @override
  String get remainingBalance => 'ਬਾਕੀ ਬਕਾਇਆ';

  @override
  String get interestRatePercent => 'ਵਿਆਜ ਦਰ (%)';

  @override
  String get kindLoan => 'ਕਰਜ਼ਾ';

  @override
  String get kindCreditCard => 'ਕ੍ਰੈਡਿਟ ਕਾਰਡ';

  @override
  String get recordPayment => 'ਕਿਸ਼ਤ ਦਰਜ ਕਰੋ';

  @override
  String get paymentRecorded => 'ਕਿਸ਼ਤ ਦਰਜ ਹੋਈ';

  @override
  String get deleteDebt => 'ਇਹ ਦੇਣਦਾਰੀ ਮਿਟਾਉਣੀ ਹੈ?';

  @override
  String deleteDebtBody(String name) {
    return '$name ਤੁਹਾਡੀਆਂ ਦੇਣਦਾਰੀਆਂ ਵਿੱਚੋਂ ਹਟ ਜਾਵੇਗਾ।';
  }

  @override
  String get debtSaved => 'ਸੰਭਾਲਿਆ ਗਿਆ';

  @override
  String get debtDeleted => 'ਮਿਟਾਇਆ ਗਿਆ';

  @override
  String get noDebtsTitle => 'ਕੋਈ ਦੇਣਦਾਰੀ ਦਰਜ ਨਹੀਂ';

  @override
  String get noDebtsBody =>
      'ਕਰਜ਼ਾ ਜਾਂ ਕ੍ਰੈਡਿਟ ਕਾਰਡ ਜੋੜੋ ਤਾਂ ਕਿ ਕਿਸ਼ਤਾਂ ਉੱਤੇ ਨਜ਼ਰ ਰਹੇ।';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject ਬਜਟ ਤੋਂ ਵੱਧ ਖਰਚ';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'ਇਸ ਸਮੇਂ ਤੁਸੀਂ $subject ਬਜਟ ਤੋਂ $amount ਵੱਧ ਖਰਚ ਕੀਤਾ ਹੈ।';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject ਹੱਦ ਦੇ ਨੇੜੇ ਹੈ';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'ਤੁਹਾਡਾ $subject ਬਜਟ $percent% ਵਰਤਿਆ ਜਾ ਚੁੱਕਾ ਹੈ, $amount ਬਾਕੀ ਹੈ।';
  }

  @override
  String get insightOverIncomeTitle => 'ਖਰਚ ਆਮਦਨ ਤੋਂ ਵੱਧ';

  @override
  String get insightOverIncomeBody =>
      'ਇਸ ਸਮੇਂ ਤੁਸੀਂ ਕਮਾਈ ਤੋਂ ਵੱਧ ਖਰਚ ਕੀਤਾ। ਸਭ ਤੋਂ ਵੱਡੀਆਂ ਸ਼੍ਰੇਣੀਆਂ ਵੇਖ ਕੇ ਹਿਸਾਬ ਸਿੱਧਾ ਕਰੋ।';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject ਦਾ ਖਰਚ ਵਧਿਆ';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'ਤੁਹਾਡਾ $subject ਖਰਚ ਪਿਛਲੇ ਸਮੇਂ ਨਾਲੋਂ $percent% ਵੱਧ ਹੈ।';
  }

  @override
  String get insightTrendDownTitle => 'ਖਰਚ ਘਟ ਰਿਹਾ ਹੈ';

  @override
  String insightTrendDownBody(int percent) {
    return 'ਕੁੱਲ ਖਰਚ ਪਿਛਲੇ ਸਮੇਂ ਨਾਲੋਂ $percent% ਘੱਟ ਹੈ।';
  }

  @override
  String get insightTrendUpTitle => 'ਖਰਚ ਵਧ ਰਿਹਾ ਹੈ';

  @override
  String insightTrendUpBody(int percent) {
    return 'ਕੁੱਲ ਖਰਚ ਪਿਛਲੇ ਸਮੇਂ ਨਾਲੋਂ $percent% ਵੱਧ ਹੈ।';
  }

  @override
  String get insightSavingsStrongTitle => 'ਇਸ ਸਮੇਂ ਬੱਚਤ ਵਧੀਆ ਰਹੀ';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'ਤੁਸੀਂ ਆਮਦਨ ਦਾ $percent% ਰੱਖ ਲਿਆ — $target% ਦੇ ਟੀਚੇ ਤੋਂ ਕਿਤੇ ਵੱਧ।';
  }

  @override
  String get insightSavingsLowTitle => 'ਬੱਚਤ ਦਰ ਟੀਚੇ ਤੋਂ ਹੇਠਾਂ';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'ਇਸ ਸਮੇਂ ਤੁਸੀਂ ਆਮਦਨ ਦਾ $percent% ਰੱਖਿਆ। ਟੀਚਾ $target% ਹੈ।';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject ਲਗਭਗ ਪੂਰਾ ਹੈ';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject ਤੱਕ ਪਹੁੰਚਣ ਲਈ ਸਿਰਫ਼ $amount ਬਾਕੀ ਹੈ।';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject ਠੀਕ ਰਾਹ ਉੱਤੇ';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ਮਹੀਨਿਆਂ',
      one: '$months ਮਹੀਨੇ',
    );
    return 'ਮਹੀਨੇ ਦੇ $amount ਨਾਲ ਤੁਸੀਂ ਇਹ ਟੀਚਾ $_temp0 ਵਿੱਚ ਪੂਰਾ ਕਰ ਲਵੋਗੇ।';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject ਦੀ ਕਿਸ਼ਤ ਦੀ ਮਿਆਦ ਲੰਘੀ';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ਦਿਨਾਂ',
      one: '$days ਦਿਨ',
    );
    return '$subject ਦੀ $amount ਕਿਸ਼ਤ $_temp0 ਤੋਂ ਬਕਾਇਆ ਹੈ।';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject ਦੀ ਕਿਸ਼ਤ ਨੇੜੇ ਹੈ';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ਦਿਨਾਂ ਬਾਅਦ',
      one: '$days ਦਿਨ ਬਾਅਦ',
      zero: 'ਅੱਜ',
    );
    return '$amount $_temp0 ਦੇਣੀ ਹੈ।';
  }

  @override
  String get signIn => 'ਸਾਈਨ ਇਨ';

  @override
  String get signUp => 'ਖਾਤਾ ਬਣਾਓ';

  @override
  String get signInSubtitle => 'ਮੁੜ ਜੀ ਆਇਆਂ ਨੂੰ। ਤੁਹਾਡਾ ਪੈਸਾ ਉਡੀਕ ਰਿਹਾ ਹੈ।';

  @override
  String get signUpSubtitle => 'ਕੁਝ ਕੁ ਵੇਰਵੇ ਅਤੇ ਤੁਸੀਂ ਤਿਆਰ ਹੋ।';

  @override
  String get emailLabel => 'ਈਮੇਲ';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'ਪਾਸਵਰਡ';

  @override
  String get passwordHint => 'ਘੱਟੋ-ਘੱਟ 8 ਅੱਖਰ';

  @override
  String get fullNameLabel => 'ਪੂਰਾ ਨਾਂ';

  @override
  String get fullNameHint => 'ਗੁਰਪ੍ਰੀਤ ਸਿੰਘ';

  @override
  String get forgotPassword => 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ?';

  @override
  String get resetSent => 'ਰੀਸੈੱਟ ਲਿੰਕ ਲਈ ਆਪਣਾ ਇਨਬਾਕਸ ਵੇਖੋ';

  @override
  String get noAccountYet => 'ਪਹਿਲੀ ਵਾਰ ਆਏ ਹੋ?';

  @override
  String get haveAccount => 'ਪਹਿਲਾਂ ਹੀ ਖਾਤਾ ਹੈ?';

  @override
  String get emailInvalid => 'ਸਹੀ ਈਮੇਲ ਪਤਾ ਭਰੋ';

  @override
  String get passwordTooShort => 'ਘੱਟੋ-ਘੱਟ 8 ਅੱਖਰ ਵਰਤੋ';

  @override
  String get signOutConfirm => 'ਸਾਈਨ ਆਊਟ ਕਰਨਾ ਹੈ?';

  @override
  String get signOutBody =>
      'ਆਪਣਾ ਹਿਸਾਬ ਮੁੜ ਵੇਖਣ ਲਈ ਤੁਹਾਨੂੰ ਦੁਬਾਰਾ ਸਾਈਨ ਇਨ ਕਰਨਾ ਪਵੇਗਾ।';

  @override
  String get dataSource => 'ਡਾਟਾ ਸਰੋਤ';

  @override
  String get insightWeeklySummaryTitle => 'ਤੁਹਾਡੇ ਹਫ਼ਤੇ ਦਾ ਲੇਖਾ';

  @override
  String get insightWeeklySummaryBody =>
      'ਵੇਖੋ ਕਿ ਇਸ ਹਫ਼ਤੇ ਪੈਸਾ ਕਿੱਥੇ ਗਿਆ ਅਤੇ ਬਜਟ ਕਿਵੇਂ ਟਿਕੇ ਰਹੇ।';

  @override
  String get notificationSettings => 'ਸੂਚਨਾਵਾਂ';

  @override
  String get alertsSection => 'ਚਿਤਾਵਨੀਆਂ';

  @override
  String get budgetAlerts => 'ਬਜਟ ਚਿਤਾਵਨੀਆਂ';

  @override
  String get budgetAlertsBody => 'ਜਦੋਂ ਬਜਟ ਹੱਦ ਦੇ ਨੇੜੇ ਆਵੇ ਜਾਂ ਲੰਘ ਜਾਵੇ';

  @override
  String get paymentReminders => 'ਕਿਸ਼ਤ ਦੀਆਂ ਯਾਦ-ਦਹਾਨੀਆਂ';

  @override
  String get paymentRemindersBody => 'ਕਿਸ਼ਤ ਦੀ ਤਾਰੀਖ਼ ਤੋਂ ਕੁਝ ਦਿਨ ਪਹਿਲਾਂ';

  @override
  String get savingsUpdates => 'ਬੱਚਤ ਦੀਆਂ ਖ਼ਬਰਾਂ';

  @override
  String get savingsUpdatesBody => 'ਤੁਹਾਡੇ ਟੀਚਿਆਂ ਵੱਲ ਪ੍ਰਗਤੀ';

  @override
  String get weeklySummaryLabel => 'ਹਫ਼ਤਾਵਾਰੀ ਸਾਰ';

  @override
  String get weeklySummaryBody => 'ਲੰਘੇ ਹਫ਼ਤੇ ਦਾ ਸੰਖੇਪ';

  @override
  String get scheduleSection => 'ਸਮਾਂ';

  @override
  String get reminderTime => 'ਯਾਦ-ਦਹਾਨੀ ਦਾ ਸਮਾਂ';

  @override
  String get quietHours => 'ਚੁੱਪ ਦੇ ਘੰਟੇ';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'ਸਾਰ ਵਾਲਾ ਦਿਨ';

  @override
  String get permissionRequired => 'ਸੂਚਨਾਵਾਂ ਬੰਦ ਹਨ';

  @override
  String get permissionRequiredBody =>
      'ਸੂਚਨਾਵਾਂ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ ਤਾਂ ਜੋ ਬਜਟ ਜਾਂ ਕਿਸ਼ਤ ਹੱਥੋਂ ਨਿਕਲਣ ਤੋਂ ਪਹਿਲਾਂ RainyPenny ਤੁਹਾਨੂੰ ਸੁਚੇਤ ਕਰ ਸਕੇ।';

  @override
  String get allowNotifications => 'ਸੂਚਨਾਵਾਂ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get permissionDenied =>
      'ਸੂਚਨਾਵਾਂ ਰੋਕੀਆਂ ਹੋਈਆਂ ਹਨ। ਤੁਸੀਂ ਇਹ ਡਿਵਾਈਸ ਸੈਟਿੰਗਾਂ ਵਿੱਚੋਂ ਚਾਲੂ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get upcomingAlerts => 'ਤਹਿ ਕੀਤੀਆਂ';

  @override
  String get noScheduledAlerts => 'ਇਸ ਵੇਲੇ ਕੁਝ ਵੀ ਤਹਿ ਨਹੀਂ';

  @override
  String get noScheduledAlertsBody =>
      'ਜਦੋਂ ਬਜਟ ਅਤੇ ਕਿਸ਼ਤਾਂ ਆਪਣੀਆਂ ਹੱਦਾਂ ਨੇੜੇ ਆਉਣਗੀਆਂ, ਚਿਤਾਵਨੀਆਂ ਇੱਥੇ ਦਿਖਣਗੀਆਂ।';

  @override
  String scheduledFor(String date) {
    return '$date ਲਈ ਤਹਿ';
  }

  @override
  String get everyWeek => 'ਹਰ ਹਫ਼ਤੇ';

  @override
  String get allNotificationsOff => 'ਸਾਰੀਆਂ ਸੂਚਨਾਵਾਂ ਬੰਦ ਹਨ';

  @override
  String get needsAttention => 'ਧਿਆਨ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get quickActionsTitle => 'ਤੁਸੀਂ ਕੀ ਕਰਨਾ ਚਾਹੋਗੇ?';

  @override
  String get createSection => 'ਦਰਜ ਕਰੋ';

  @override
  String get jumpToSection => 'ਇੱਥੇ ਜਾਓ';

  @override
  String get addLoanAction => 'ਕਰਜ਼ਾ ਜੋੜੋ';

  @override
  String get addBudgetAction => 'ਬਜਟ ਜੋੜੋ';

  @override
  String get addGoalAction => 'ਟੀਚਾ ਜੋੜੋ';

  @override
  String get longPressHint => 'ਸੁਝਾਅ: ਸਿੱਧਾ ਖਰਚਾ ਦਰਜ ਕਰਨ ਲਈ + ਦਬਾਈ ਰੱਖੋ';

  @override
  String get searchCurrencies => 'ਮੁਦਰਾ ਲੱਭੋ';

  @override
  String get noCurrenciesFound => 'ਕੋਈ ਮੁਦਰਾ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get noCurrenciesFoundMessage => 'ਹੋਰ ਕੋਡ, ਚਿੰਨ੍ਹ ਜਾਂ ਨਾਂ ਅਜ਼ਮਾਓ।';

  @override
  String get popularCurrencies => 'ਪ੍ਰਚਲਿਤ';

  @override
  String get allCurrencies => 'ਸਾਰੀਆਂ ਮੁਦਰਾਵਾਂ';

  @override
  String get totalLoanAmount => 'ਕੁੱਲ ਕਰਜ਼ਾ ਰਕਮ';

  @override
  String get installmentAmount => 'ਕਿਸ਼ਤ ਦੀ ਰਕਮ';

  @override
  String get numberOfInstallments => 'ਕਿਸ਼ਤਾਂ ਦੀ ਗਿਣਤੀ';

  @override
  String get paidInstallments => 'ਭਰੀਆਂ ਕਿਸ਼ਤਾਂ';

  @override
  String get remainingInstallments => 'ਬਾਕੀ ਕਿਸ਼ਤਾਂ';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total ਵਿੱਚੋਂ $paid ਭਰੀਆਂ';
  }

  @override
  String get finalPayment => 'ਆਖ਼ਰੀ ਕਿਸ਼ਤ';

  @override
  String get paymentDueDate => 'ਕਿਸ਼ਤ ਦੀ ਤਾਰੀਖ਼';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ਹਰ ਮਹੀਨੇ ਦੀ $day ਤਾਰੀਖ਼';
  }

  @override
  String get loanStatus => 'ਸਥਿਤੀ';

  @override
  String get statusActive => 'ਠੀਕ ਰਾਹ ਉੱਤੇ';

  @override
  String get statusDueSoon => 'ਜਲਦੀ ਦੇਣੀ ਹੈ';

  @override
  String get statusOverdue => 'ਮਿਆਦ ਲੰਘ ਗਈ';

  @override
  String get statusCompleted => 'ਪੂਰਾ ਚੁਕਾਇਆ';

  @override
  String get repaymentProgress => 'ਅਦਾਇਗੀ ਦੀ ਪ੍ਰਗਤੀ';

  @override
  String get byAmount => 'ਰਕਮ ਅਨੁਸਾਰ';

  @override
  String get byInstallments => 'ਕਿਸ਼ਤਾਂ ਅਨੁਸਾਰ';

  @override
  String get startDate => 'ਸ਼ੁਰੂ ਹੋਣ ਦੀ ਤਾਰੀਖ਼';

  @override
  String get openEnded => 'ਕੋਈ ਮਿਆਦ ਨਹੀਂ';

  @override
  String get loanDetails => 'ਕਰਜ਼ੇ ਦੇ ਵੇਰਵੇ';

  @override
  String get notSet => 'ਤੈਅ ਨਹੀਂ';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject ਅੱਜ ਦੇਣੀ ਹੈ';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'ਤੁਹਾਡੀ $amount ਦੀ ਕਿਸ਼ਤ ਅੱਜ ਦੇਣੀ ਹੈ। ਇੱਕ ਟੈਪ ਨਾਲ ਸਮੇਂ ਸਿਰ ਹੋ ਜਾਵੇਗੀ।';
  }

  @override
  String get remindMorningTitle => 'ਸ਼ੁਭ ਸਵੇਰ ☀️';

  @override
  String get remindMorningBody =>
      'ਪੈਸੇ ਉੱਤੇ ਪਕੜ ਨਾਲ ਦਿਨ ਸ਼ੁਰੂ ਕਰੋ। ਕੱਲ੍ਹ ਦਾ ਕੁਝ ਜੋੜਨਾ ਹੈ?';

  @override
  String get remindNoonTitle => 'ਦੁਪਹਿਰ ਦੀ ਜਾਂਚ';

  @override
  String get remindNoonBody =>
      'ਦੁਪਹਿਰ ਦਾ ਖਾਣਾ, ਚਾਹ, ਕਿਰਾਇਆ? ਕੁਝ ਸਕਿੰਟਾਂ ਵਿੱਚ ਦਰਜ ਕਰੋ।';

  @override
  String get remindAfternoonTitle => 'ਛੇਤੀ ਨਾਲ ਪੂਰਾ ਕਰੋ';

  @override
  String get remindAfternoonBody =>
      'ਹੁਣ ਤੱਕ ਦਾ ਖਰਚ ਦਰਜ ਕਰੋ ਤਾਂ ਅੱਜ ਦਾ ਹਿਸਾਬ ਸਹੀ ਰਹੇ।';

  @override
  String get remindEveningTitle => 'ਦਿਨ ਨੂੰ ਸਮੇਟਦਿਆਂ';

  @override
  String get remindEveningBody => 'ਹੁਣ ਦੋ ਮਿੰਟ ਅਤੇ ਅੱਜ ਦਾ ਹਿਸਾਬ ਪੂਰਾ।';

  @override
  String get happyWeekendTitle => 'ਛੁੱਟੀ ਮੁਬਾਰਕ! 🎉';

  @override
  String get happyWeekendBody =>
      'ਆਨੰਦ ਮਾਣੋ — ਅਤੇ ਛੁੱਟੀ ਦੇ ਖਰਚ ਉੱਤੇ ਵੀ ਥੋੜ੍ਹੀ ਨਜ਼ਰ ਰੱਖੋ।';

  @override
  String get dailyReminders => 'ਰੋਜ਼ਾਨਾ ਖਰਚ ਦੀਆਂ ਯਾਦ-ਦਹਾਨੀਆਂ';

  @override
  String get dailyRemindersBody => 'ਖਰਚ ਤਾਜ਼ਾ ਰੱਖਣ ਲਈ ਹੌਲੀ ਜਿਹੀ ਯਾਦ';

  @override
  String get weekendGreeting => 'ਛੁੱਟੀ ਦੀ ਵਧਾਈ';

  @override
  String get weekendGreetingBody =>
      'ਤੁਹਾਡੀ ਛੁੱਟੀ ਦੇ ਸ਼ੁਰੂ ਵਿੱਚ ਇੱਕ ਪਿਆਰੀ ਜਿਹੀ ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ';

  @override
  String get reminderTimesSection => 'ਯਾਦ-ਦਹਾਨੀ ਦੇ ਸਮੇਂ';

  @override
  String get slotMorning => 'ਸਵੇਰ';

  @override
  String get slotNoon => 'ਦੁਪਹਿਰ';

  @override
  String get slotAfternoon => 'ਤੀਜਾ ਪਹਿਰ';

  @override
  String get slotEvening => 'ਸ਼ਾਮ';

  @override
  String get everyDay => 'ਹਰ ਰੋਜ਼';

  @override
  String get financialReport => 'ਵਿੱਤੀ ਰਿਪੋਰਟ';

  @override
  String get preparedFor => 'ਕਿਸ ਲਈ ਤਿਆਰ';

  @override
  String get generatedOn => 'ਕਦੋਂ ਬਣੀ';

  @override
  String get reportDisclaimer => 'RainyPenny ਨੇ ਤੁਹਾਡੇ ਆਪਣੇ ਰਿਕਾਰਡਾਂ ਤੋਂ ਬਣਾਈ।';

  @override
  String pageOf(int page, int total) {
    return 'ਸਫ਼ਾ $page / $total';
  }

  @override
  String get overview => 'ਸਾਰ';

  @override
  String get description => 'ਵੇਰਵਾ';

  @override
  String get totalIncome => 'ਕੁੱਲ ਆਮਦਨ';

  @override
  String get totalExpenses => 'ਕੁੱਲ ਖਰਚ';

  @override
  String get totalSaved => 'ਕੁੱਲ ਬੱਚਤ';

  @override
  String get shareOfTotal => 'ਹਿੱਸਾ';

  @override
  String get used => 'ਵਰਤਿਆ';

  @override
  String get goal => 'ਟੀਚਾ';

  @override
  String get targetDate => 'ਟੀਚਾ ਤਾਰੀਖ਼';

  @override
  String get progress => 'ਪ੍ਰਗਤੀ';

  @override
  String get paidOffShort => 'ਚੁਕਾਇਆ';

  @override
  String get transactions => 'ਲੈਣ-ਦੇਣ';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ਅਤੇ $count ਹੋਰ ਲੈਣ-ਦੇਣ',
      one: 'ਅਤੇ $count ਹੋਰ ਲੈਣ-ਦੇਣ',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF ਬਰਾਮਦ ਕਰੋ';

  @override
  String get sharePdf => 'ਰਿਪੋਰਟ ਸਾਂਝੀ ਕਰੋ';

  @override
  String get preparingReport => 'ਤੁਹਾਡੀ ਰਿਪੋਰਟ ਤਿਆਰ ਹੋ ਰਹੀ ਹੈ…';

  @override
  String get reportReady => 'ਰਿਪੋਰਟ ਤਿਆਰ ਹੈ';

  @override
  String get reportFailed => 'ਰਿਪੋਰਟ ਨਹੀਂ ਬਣ ਸਕੀ';

  @override
  String get categories => 'ਸ਼੍ਰੇਣੀਆਂ';

  @override
  String get categoriesIntro =>
      'ਆਪਣੀਆਂ ਸ਼੍ਰੇਣੀਆਂ ਜੋੜੋ ਤਾਂ ਜੋ ਆਮਦਨ ਅਤੇ ਖਰਚ ਬਿਲਕੁਲ ਉਸੇ ਤਰ੍ਹਾਂ ਵੰਡੇ ਜਾਣ ਜਿਵੇਂ ਤੁਸੀਂ ਸੋਚਦੇ ਹੋ।';

  @override
  String get expenseCategories => 'ਖਰਚ ਦੀਆਂ ਸ਼੍ਰੇਣੀਆਂ';

  @override
  String get incomeCategories => 'ਆਮਦਨ ਦੀਆਂ ਸ਼੍ਰੇਣੀਆਂ';

  @override
  String get newCategory => 'ਨਵੀਂ ਸ਼੍ਰੇਣੀ';

  @override
  String get editCategory => 'ਸ਼੍ਰੇਣੀ ਸੋਧੋ';

  @override
  String get categoryName => 'ਨਾਂ';

  @override
  String get categoryNameHint => 'ਜਿਵੇਂ: ਪਾਲਤੂ ਜਾਨਵਰ';

  @override
  String get icon => 'ਆਈਕਨ';

  @override
  String get categorySaved => 'ਸ਼੍ਰੇਣੀ ਸੰਭਾਲੀ ਗਈ';

  @override
  String get categoryDeleted => 'ਸ਼੍ਰੇਣੀ ਮਿਟਾਈ ਗਈ';

  @override
  String get deleteCategory => 'ਇਹ ਸ਼੍ਰੇਣੀ ਮਿਟਾਉਣੀ ਹੈ?';

  @override
  String deleteCategoryBody(String name) {
    return '$name ਤੁਹਾਡੀਆਂ ਸ਼੍ਰੇਣੀਆਂ ਵਿੱਚੋਂ ਹਟ ਜਾਵੇਗੀ।';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਰਿਕਾਰਡ ਹਾਲੇ ਵੀ ਇਹ ਸ਼੍ਰੇਣੀ ਵਰਤ ਰਹੇ ਹਨ',
      one: '$count ਰਿਕਾਰਡ ਹਾਲੇ ਵੀ ਇਹ ਸ਼੍ਰੇਣੀ ਵਰਤ ਰਿਹਾ ਹੈ',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'ਇੱਥੇ ਹਾਲੇ ਕੁਝ ਨਹੀਂ।';

  @override
  String get builtIn => 'ਪਹਿਲਾਂ ਤੋਂ ਮੌਜੂਦ';

  @override
  String get manageCategories => 'ਸ਼੍ਰੇਣੀਆਂ ਸੰਭਾਲੋ';

  @override
  String get expense => 'ਖਰਚਾ';

  @override
  String get languageNote =>
      'ਅਰਬੀ, ਉਰਦੂ, ਫ਼ਾਰਸੀ ਅਤੇ ਹਿਬਰੂ ਸਾਰਾ ਇੰਟਰਫ਼ੇਸ ਸੱਜੇ-ਤੋਂ-ਖੱਬੇ ਕਰ ਦਿੰਦੀਆਂ ਹਨ — ਚਾਰਟ ਅਤੇ PDF ਰਿਪੋਰਟਾਂ ਸਮੇਤ।';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get back => 'ਪਿੱਛੇ';

  @override
  String get skip => 'ਛੱਡੋ';

  @override
  String get continueLabel => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get selected => 'ਚੁਣਿਆ';

  @override
  String get passwordRequired => 'ਆਪਣਾ ਪਾਸਵਰਡ ਭਰੋ';

  @override
  String get newPasswordLabel => 'ਨਵਾਂ ਪਾਸਵਰਡ';

  @override
  String get confirmPasswordLabel => 'ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';

  @override
  String get passwordsDoNotMatch => 'ਦੋਵੇਂ ਪਾਸਵਰਡ ਇੱਕੋ ਜਿਹੇ ਹੋਣੇ ਚਾਹੀਦੇ ਹਨ';

  @override
  String get showPassword => 'ਪਾਸਵਰਡ ਵਿਖਾਓ';

  @override
  String get hidePassword => 'ਪਾਸਵਰਡ ਲੁਕਾਓ';

  @override
  String get savePassword => 'ਪਾਸਵਰਡ ਸੰਭਾਲੋ';

  @override
  String get backToSignIn => 'ਸਾਈਨ ਇਨ ਉੱਤੇ ਵਾਪਸ';

  @override
  String get alreadyHaveAccount => 'ਮੇਰਾ ਪਹਿਲਾਂ ਹੀ ਖਾਤਾ ਹੈ';

  @override
  String get getStarted => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get acceptTerms =>
      'ਮੈਂ ਸੇਵਾ ਦੀਆਂ ਸ਼ਰਤਾਂ ਅਤੇ ਨਿੱਜਤਾ ਨੀਤੀ ਨਾਲ ਸਹਿਮਤ ਹਾਂ';

  @override
  String get acceptTermsRequired => 'ਅੱਗੇ ਵਧਣ ਲਈ ਸਹਿਮਤੀ ਦਿਓ';

  @override
  String get passwordStrengthTooShort => 'ਬਹੁਤ ਛੋਟਾ';

  @override
  String get passwordStrengthWeak => 'ਕਮਜ਼ੋਰ';

  @override
  String get passwordStrengthFair => 'ਠੀਕ-ਠਾਕ';

  @override
  String get passwordStrengthGood => 'ਚੰਗਾ';

  @override
  String get passwordStrengthStrong => 'ਮਜ਼ਬੂਤ';

  @override
  String get passwordAdvice =>
      'ਯਾਦ ਰਹਿਣ ਵਾਲਾ ਲੰਮਾ ਵਾਕ, ਚਿੰਨ੍ਹਾਂ ਨਾਲ ਭਰੇ ਛੋਟੇ ਪਾਸਵਰਡ ਨਾਲੋਂ ਬਿਹਤਰ ਹੈ। ਜੋ ਕਿਤੇ ਹੋਰ ਵਰਤ ਰਹੇ ਹੋ, ਉਸ ਤੋਂ ਬਚੋ।';

  @override
  String get authInvalidCredentials =>
      'ਇਹ ਈਮੇਲ ਅਤੇ ਪਾਸਵਰਡ ਕਿਸੇ ਖਾਤੇ ਨਾਲ ਮੇਲ ਨਹੀਂ ਖਾਂਦੇ';

  @override
  String get authEmailNotConfirmed =>
      'ਸਾਈਨ ਇਨ ਤੋਂ ਪਹਿਲਾਂ ਆਪਣਾ ਈਮੇਲ ਪਤਾ ਪੱਕਾ ਕਰੋ';

  @override
  String get authEmailAlreadyRegistered =>
      'ਇਸ ਈਮੇਲ ਨਾਲ ਖਾਤਾ ਪਹਿਲਾਂ ਹੀ ਮੌਜੂਦ ਹੈ';

  @override
  String get authWeakPassword => 'ਲੰਮਾ ਪਾਸਵਰਡ ਚੁਣੋ';

  @override
  String get authRateLimited =>
      'ਬਹੁਤ ਵਾਰ ਕੋਸ਼ਿਸ਼ ਹੋਈ। ਕੁਝ ਮਿੰਟਾਂ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get authNetworkError =>
      'ਕੋਈ ਕੁਨੈਕਸ਼ਨ ਨਹੀਂ। ਨੈੱਟਵਰਕ ਵੇਖ ਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get authGenericError =>
      'ਕੁਝ ਗ਼ਲਤ ਹੋ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get confirmEmailTitle => 'ਆਪਣੀ ਈਮੇਲ ਵੇਖੋ';

  @override
  String confirmEmailBody(String email) {
    return 'ਅਸੀਂ $email ਉੱਤੇ ਪੁਸ਼ਟੀ ਲਿੰਕ ਭੇਜਿਆ ਹੈ। ਖਾਤਾ ਪੂਰਾ ਕਰਨ ਲਈ ਉਹ ਖੋਲ੍ਹੋ।';
  }

  @override
  String get resendConfirmation => 'ਪੁਸ਼ਟੀ ਈਮੇਲ ਦੁਬਾਰਾ ਭੇਜੋ';

  @override
  String get confirmationResent => 'ਪੁਸ਼ਟੀ ਈਮੇਲ ਭੇਜ ਦਿੱਤੀ';

  @override
  String get forgotPasswordTitle => 'ਪਾਸਵਰਡ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get forgotPasswordSubtitle =>
      'ਜਿਸ ਈਮੇਲ ਨਾਲ ਸਾਈਨ ਅੱਪ ਕੀਤਾ ਸੀ ਉਹ ਭਰੋ, ਅਸੀਂ ਨਵਾਂ ਪਾਸਵਰਡ ਚੁਣਨ ਦਾ ਲਿੰਕ ਭੇਜ ਦੇਵਾਂਗੇ।';

  @override
  String get sendResetLink => 'ਰੀਸੈੱਟ ਲਿੰਕ ਭੇਜੋ';

  @override
  String get resetLinkSentTitle => 'ਲਿੰਕ ਭੇਜ ਦਿੱਤਾ';

  @override
  String resetLinkSentBody(String email) {
    return 'ਜੇ $email ਦਾ ਖਾਤਾ ਹੈ, ਤਾਂ ਰੀਸੈੱਟ ਲਿੰਕ ਰਾਹ ਵਿੱਚ ਹੈ।';
  }

  @override
  String get resetLinkSentHint =>
      'ਲਿੰਕ ਇੱਕ ਘੰਟੇ ਵਿੱਚ ਖ਼ਤਮ ਹੋ ਜਾਂਦਾ ਹੈ। ਜੇ ਨਾ ਆਵੇ ਤਾਂ ਨਵਾਂ ਮੰਗਣ ਤੋਂ ਪਹਿਲਾਂ ਸਪੈਮ ਫੋਲਡਰ ਵੇਖੋ।';

  @override
  String get tryAnotherEmail => 'ਹੋਰ ਈਮੇਲ ਵਰਤੋ';

  @override
  String get resetPasswordTitle => 'ਨਵਾਂ ਪਾਸਵਰਡ ਚੁਣੋ';

  @override
  String get resetPasswordSubtitle =>
      'ਅਜਿਹਾ ਕੁਝ ਚੁਣੋ ਜੋ ਇਸ ਖਾਤੇ ਉੱਤੇ ਪਹਿਲਾਂ ਨਾ ਵਰਤਿਆ ਹੋਵੇ।';

  @override
  String get passwordChangedTitle => 'ਪਾਸਵਰਡ ਅੱਪਡੇਟ ਹੋਇਆ';

  @override
  String get passwordChangedBody =>
      'ਤੁਹਾਡਾ ਨਵਾਂ ਪਾਸਵਰਡ ਸੰਭਾਲ ਲਿਆ ਗਿਆ। ਤੁਸੀਂ ਸਾਈਨ ਇਨ ਹੋ ਅਤੇ ਤਿਆਰ ਹੋ।';

  @override
  String get demoModeHint => 'ਡੈਮੋ ਵਰਜਨ — ਖਾਤੇ ਦੀ ਲੋੜ ਨਹੀਂ';

  @override
  String get demoModeFill => 'ਭਰ ਦਿਓ';

  @override
  String get welcomeTrackTitle => 'ਵੇਖੋ ਤੁਹਾਡਾ ਪੈਸਾ ਕਿੱਥੇ ਜਾਂਦਾ ਹੈ';

  @override
  String get welcomeTrackBody =>
      'ਜੋ ਆਉਂਦਾ ਹੈ ਅਤੇ ਜੋ ਜਾਂਦਾ ਹੈ, ਦੋਵੇਂ ਦਰਜ ਕਰੋ। RainyPenny ਉਸ ਨੂੰ ਅਜਿਹੀ ਤਸਵੀਰ ਬਣਾ ਦਿੰਦਾ ਹੈ ਜੋ ਸੱਚਮੁੱਚ ਪੜ੍ਹੀ ਜਾ ਸਕੇ।';

  @override
  String get welcomeBudgetTitle => 'ਅਜਿਹੀਆਂ ਹੱਦਾਂ ਜੋ ਟਿਕਣ';

  @override
  String get welcomeBudgetBody =>
      'ਆਪਣੇ ਖਰਚ ਦੇ ਹਰ ਹਿੱਸੇ ਉੱਤੇ ਮਹੀਨਾਵਾਰ ਹੱਦ ਲਾਓ, ਅਤੇ ਹੱਦ ਲੰਘਣ ਤੋਂ ਪਹਿਲਾਂ ਪਤਾ ਲੱਗ ਜਾਵੇ — ਬਾਅਦ ਵਿੱਚ ਨਹੀਂ।';

  @override
  String get welcomeGoalsTitle => 'ਜੋ ਜ਼ਰੂਰੀ ਹੈ ਉਸ ਲਈ ਬਚਾਓ';

  @override
  String get welcomeGoalsBody =>
      'ਟੀਚੇ ਨੂੰ ਨਾਂ ਦਿਓ, ਰਕਮ ਤੈਅ ਕਰੋ, ਅਤੇ ਉਸ ਨੂੰ ਭਰਦਿਆਂ ਵੇਖੋ। ਔਖੇ ਦਿਨਾਂ ਦਾ ਫ਼ੰਡ ਉਦੋਂ ਸੌਖਾ ਬਣਦਾ ਹੈ ਜਦੋਂ ਉਹ ਦਿਸਦਾ ਹੋਵੇ।';

  @override
  String get welcomePrivacyTitle => 'ਤੁਹਾਡਾ ਪੈਸਾ ਤੁਹਾਡਾ ਹੀ ਰਹਿੰਦਾ ਹੈ';

  @override
  String get welcomePrivacyBody =>
      'ਤੁਹਾਡੇ ਅੰਕੜੇ ਸਿਰਫ਼ ਤੁਹਾਡੇ ਹਨ। ਨਾ ਕੁਝ ਵੇਚਿਆ ਜਾਂਦਾ ਹੈ, ਨਾ ਕਿਸੇ ਨਾਲ ਸਾਂਝਾ ਕੀਤਾ ਜਾਂਦਾ ਹੈ।';

  @override
  String stepOf(int step, int total) {
    return 'ਕਦਮ $step / $total';
  }

  @override
  String get onboardingNameTitle => 'ਅਸੀਂ ਤੁਹਾਨੂੰ ਕੀ ਕਹਿ ਕੇ ਬੁਲਾਈਏ?';

  @override
  String get onboardingNameBody => 'ਇਹ ਸਿਰਫ਼ ਸਵਾਗਤ ਲਈ ਵਰਤਾਂਗੇ, ਹੋਰ ਕਿਤੇ ਨਹੀਂ।';

  @override
  String get onboardingNameHint =>
      'ਪਹਿਲਾ ਨਾਂ ਹੀ ਕਾਫ਼ੀ ਹੈ। ਬਾਅਦ ਵਿੱਚ ਬਦਲ ਸਕਦੇ ਹੋ।';

  @override
  String get onboardingCurrencyTitle => 'ਤੁਸੀਂ ਕਿਹੜੀ ਮੁਦਰਾ ਵਰਤਦੇ ਹੋ?';

  @override
  String get onboardingCurrencyBody =>
      'ਐਪ ਵਿੱਚ ਹਰ ਰਕਮ ਇਸੇ ਮੁਦਰਾ ਵਿੱਚ ਦਿਖੇਗੀ। ਇਹ ਚੁਣਨ ਨਾਲ ਕੋਈ ਬਦਲੀ ਨਹੀਂ ਹੁੰਦੀ।';

  @override
  String get onboardingCurrencySearch => 'ਸਾਰੀਆਂ ਮੁਦਰਾਵਾਂ ਵਿੱਚ ਲੱਭੋ';

  @override
  String get onboardingAppearanceTitle => 'ਆਪਣੇ ਮੁਤਾਬਕ ਬਣਾਓ';

  @override
  String get onboardingAppearanceBody =>
      'ਇੱਕ ਰੂਪ ਚੁਣੋ। ਛੂੰਹਦਿਆਂ ਹੀ ਸਭ ਬਦਲ ਜਾਂਦਾ ਹੈ, ਅਤੇ ਤੁਸੀਂ ਜਦੋਂ ਚਾਹੋ ਵਾਪਸ ਆ ਸਕਦੇ ਹੋ।';

  @override
  String get onboardingNotificationsTitle => 'ਪਕੜ ਬਣਾਈ ਰੱਖੋ';

  @override
  String get onboardingNotificationsBody =>
      'ਸਹੀ ਵੇਲੇ ਦੀ ਹੌਲੀ ਜਿਹੀ ਯਾਦ ਹੀ ਇਸ ਨੂੰ ਆਦਤ ਬਣਾਉਂਦੀ ਹੈ।';

  @override
  String get onboardingNotifyReminders => 'ਖਰਚ ਦਰਜ ਕਰਨ ਦੀ ਨਰਮ ਜਿਹੀ ਯਾਦ';

  @override
  String get onboardingNotifyBudget => 'ਬਜਟ ਮੁੱਕਣ ਤੋਂ ਪਹਿਲਾਂ ਇੱਕ ਇਸ਼ਾਰਾ';

  @override
  String get onboardingNotifySummary => 'ਪੈਸਾ ਕਿੱਥੇ ਗਿਆ, ਉਸ ਦਾ ਹਫ਼ਤਾਵਾਰੀ ਸਾਰ';

  @override
  String get onboardingNotifyEnable => 'ਸੂਚਨਾਵਾਂ ਚਾਲੂ ਕਰੋ';

  @override
  String get onboardingNotifyDone => 'ਸੂਚਨਾ ਸੈਟਿੰਗਾਂ ਸੰਭਾਲ ਲਈਆਂ';

  @override
  String get onboardingNotifyLater =>
      'ਇਹ ਸਭ ਤੁਸੀਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਜਦੋਂ ਚਾਹੋ ਬਦਲ ਸਕਦੇ ਹੋ।';

  @override
  String get onboardingReadyTitle => 'ਸਭ ਤਿਆਰ ਹੈ';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'ਸਭ ਤਿਆਰ ਹੈ, $name';
  }

  @override
  String get onboardingReadyBody =>
      'ਸੈੱਟਅੱਪ ਹੋ ਗਿਆ। ਕੀ ਸਭ ਕੁਝ ਕਿਵੇਂ ਚਲਦਾ ਹੈ, ਉਸ ਦੀ ਛੋਟੀ ਜਿਹੀ ਸੈਰ ਕਰੀਏ?';

  @override
  String get onboardingTakeTour => 'ਮੈਨੂੰ ਵਿਖਾਓ';

  @override
  String get onboardingGoToApp => 'ਐਪ ਵੱਲ ਲੈ ਚੱਲੋ';

  @override
  String get onboardingTourLater =>
      'ਹੁਣ ਨਹੀਂ? ਗਾਈਡ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਰਹੇਗੀ, ਜਦੋਂ ਚਾਹੋ ਵੇਖ ਲਿਓ।';

  @override
  String get beginnersGuide => 'ਨਵਿਆਂ ਲਈ ਗਾਈਡ';

  @override
  String get guideFinish => 'ਖ਼ਤਮ';

  @override
  String chapterOf(int number, int total) {
    return 'ਅਧਿਆਇ $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen ਖੋਲ੍ਹੋ';
  }

  @override
  String get guideDashboardTitle => 'ਤੁਹਾਡਾ ਡੈਸ਼ਬੋਰਡ';

  @override
  String get guideDashboardBody =>
      'ਸਭ ਕੁਝ ਇੱਥੋਂ ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ। ਉੱਪਰਲਾ ਕਾਰਡ ਦੱਸਦਾ ਹੈ ਕਿ ਤੁਹਾਡੇ ਕੋਲ ਕੀ ਬਚਿਆ ਹੈ; ਉਸ ਹੇਠਾਂ ਇਸ ਸਮੇਂ ਦੀ ਆਮਦਨ ਅਤੇ ਖਰਚ, ਫਿਰ ਤੁਹਾਡਾ ਖਰਚ, ਬਜਟ ਅਤੇ ਟੀਚੇ।';

  @override
  String get guideDashboardTip1 =>
      'ਸਭ ਕੁਝ ਇੱਕੋ ਵਾਰ ਤਾਜ਼ਾ ਕਰਨ ਲਈ ਸਕਰੀਨ ਹੇਠਾਂ ਖਿੱਚੋ।';

  @override
  String get guideDashboardTip2 =>
      'ਉਸ ਸੂਚੀ ਉੱਤੇ ਸਿੱਧਾ ਜਾਣ ਲਈ ਆਮਦਨ ਜਾਂ ਖਰਚ ਵਾਲੇ ਕਾਰਡ ਨੂੰ ਛੂਹੋ।';

  @override
  String get guideDashboardTip3 =>
      'ਕੁਝ ਦਰਜ ਕਰਦਿਆਂ ਹੀ ਗੋਲੇ ਅਤੇ ਸਮਝਾਂ ਅੱਪਡੇਟ ਹੋ ਜਾਂਦੀਆਂ ਹਨ।';

  @override
  String get guideAddTitle => 'ਪੈਸਾ ਦਰਜ ਕਰਨਾ';

  @override
  String get guideAddBody =>
      'ਪੱਟੀ ਦੇ ਵਿਚਕਾਰਲਾ ਬਟਨ ਹੀ ਹਰ ਚੀਜ਼ ਦੀ ਸ਼ੁਰੂਆਤ ਹੈ। ਇਹ ਛੋਟਾ ਜਿਹਾ ਮੀਨੂ ਖੋਲ੍ਹਦਾ ਹੈ: ਖਰਚਾ, ਆਮਦਨ, ਦੇਣਦਾਰੀ, ਬਜਟ ਜਾਂ ਬੱਚਤ ਦਾ ਟੀਚਾ।';

  @override
  String get guideAddTip1 => 'ਆਮਦਨ ਜਾਂ ਖਰਚ ਦਰਜ ਕਰਨ ਲਈ ਵਿਚਕਾਰਲਾ ਬਟਨ ਦਬਾਓ।';

  @override
  String get guideAddTip2 =>
      'ਮੀਨੂ ਛੱਡ ਕੇ ਸਿੱਧਾ ਨਵੇਂ ਖਰਚ ਉੱਤੇ ਜਾਣ ਲਈ ਉਸ ਨੂੰ ਦਬਾਈ ਰੱਖੋ।';

  @override
  String get guideAddTip3 =>
      'ਸ਼੍ਰੇਣੀ ਹਮੇਸ਼ਾ ਚੁਣੋ — ਚਾਰਟ ਅਤੇ ਬਜਟ ਉਸੇ ਨਾਲ ਚਲਦੇ ਹਨ।';

  @override
  String get guideCategoriesTitle => 'ਸ਼੍ਰੇਣੀਆਂ';

  @override
  String get guideCategoriesBody =>
      'ਸ਼੍ਰੇਣੀਆਂ ਹੀ ਖਰਚ ਨੂੰ ਸਮੂਹਾਂ ਵਿੱਚ ਵੰਡਦੀਆਂ ਹਨ। ਐਪ ਨਾਲ ਆਈਆਂ ਸ਼੍ਰੇਣੀਆਂ ਜ਼ਿਆਦਾਤਰ ਲੋਕਾਂ ਲਈ ਕਾਫ਼ੀ ਹਨ, ਅਤੇ ਤੁਸੀਂ ਨਾਂ ਬਦਲ ਸਕਦੇ ਹੋ ਜਾਂ ਆਪਣੀਆਂ ਜੋੜ ਸਕਦੇ ਹੋ।';

  @override
  String get guideCategoriesTip1 =>
      'ਬਦਲਣ ਜਾਂ ਜੋੜਨ ਲਈ ਸੈਟਿੰਗਾਂ, ਫਿਰ ਸ਼੍ਰੇਣੀਆਂ ਸੰਭਾਲੋ।';

  @override
  String get guideCategoriesTip2 =>
      'ਬਿਨਾਂ ਸ਼੍ਰੇਣੀ ਵਾਲੀ ਹਰ ਚੀਜ਼ «ਹੋਰ» ਵਿੱਚ ਜਾਂਦੀ ਹੈ, ਤਾਂ ਜੋ ਚਾਰਟ ਸੱਚੇ ਰਹਿਣ।';

  @override
  String get guideBudgetTitle => 'ਬਜਟ';

  @override
  String get guideBudgetBody =>
      'ਬਜਟ ਕਿਸੇ ਇੱਕ ਸ਼੍ਰੇਣੀ ਦੀ ਮਹੀਨਾਵਾਰ ਹੱਦ ਹੈ। ਖਰਚ ਨਾਲ ਪੱਟੀ ਭਰਦੀ ਜਾਂਦੀ ਹੈ ਅਤੇ ਹੱਦ ਨੇੜੇ ਆਉਂਦਿਆਂ ਰੰਗ ਬਦਲਦੀ ਹੈ, ਸੋ ਲੰਘਣ ਤੋਂ ਪਹਿਲਾਂ ਹੀ ਪਤਾ ਲੱਗ ਜਾਂਦਾ ਹੈ।';

  @override
  String get guideBudgetTip1 =>
      'ਇੱਕੋ ਵਾਰ ਸਾਰੀਆਂ ਨਹੀਂ — ਦੋ-ਤਿੰਨ ਸ਼੍ਰੇਣੀਆਂ ਤੋਂ ਸ਼ੁਰੂ ਕਰੋ।';

  @override
  String get guideBudgetTip2 =>
      'ਹੱਦ ਆਪਣੇ ਆਮ ਖਰਚ ਤੋਂ ਥੋੜ੍ਹੀ ਉੱਤੇ ਰੱਖੋ, ਫਿਰ ਹੌਲੀ-ਹੌਲੀ ਕਸੋ।';

  @override
  String get guideBudgetTip3 =>
      'ਬਜਟ ਚਿਤਾਵਨੀਆਂ ਚਾਲੂ ਰਹਿਣ ਦਿਓ, ਐਪ ਵੇਲੇ ਸਿਰ ਸੁਚੇਤ ਕਰ ਦੇਵੇਗੀ।';

  @override
  String get guideSavingsTitle => 'ਬੱਚਤ ਦੇ ਟੀਚੇ';

  @override
  String get guideSavingsBody =>
      'ਜਿਸ ਲਈ ਬਚਾ ਰਹੇ ਹੋ ਉਸ ਨੂੰ ਨਾਂ ਦਿਓ, ਰਕਮ ਅਤੇ ਤਾਰੀਖ਼ ਤੈਅ ਕਰੋ — ਐਪ ਹਿਸਾਬ ਲਾ ਦੇਵੇਗੀ ਕਿ ਹਰ ਮਹੀਨੇ ਕਿੰਨਾ ਪਾਸੇ ਰੱਖਣਾ ਹੈ।';

  @override
  String get guideSavingsTip1 =>
      'ਨਾਂ ਵਾਲਾ ਟੀਚਾ, ਬਚਾਉਣ ਦੇ ਧੁੰਦਲੇ ਇਰਾਦੇ ਨਾਲੋਂ ਕਿਤੇ ਸੌਖਾ ਨਿਭਦਾ ਹੈ।';

  @override
  String get guideSavingsTip2 =>
      'ਇੱਕ ਵੱਡੇ ਟੀਚੇ ਨਾਲੋਂ ਕਈ ਛੋਟੇ ਟੀਚੇ ਵੱਧ ਵਾਰ ਪੂਰੇ ਹੁੰਦੇ ਹਨ।';

  @override
  String get guideLoansTitle => 'ਦੇਣਦਾਰੀਆਂ ਅਤੇ ਕਰਜ਼ੇ';

  @override
  String get guideLoansBody =>
      'ਜੋ ਤੁਹਾਡੇ ਸਿਰ ਹੈ, ਉਸ ਦੀ ਲਾਗਤ ਅਤੇ ਅਗਲੀ ਕਿਸ਼ਤ ਦੀ ਤਾਰੀਖ਼ ਦਰਜ ਕਰੋ। ਜੋ ਕੁਝ ਤੁਸੀਂ ਚੁਕਾ ਰਹੇ ਹੋ, ਉਹ ਸਭ ਬਾਕੀ ਰਕਮ ਸਮੇਤ ਇੱਕੋ ਸੂਚੀ ਵਿੱਚ ਰਹਿੰਦਾ ਹੈ।';

  @override
  String get guideLoansTip1 =>
      'ਤਾਰੀਖ਼ ਜੋੜ ਦਿਓ, ਕਿਸ਼ਤ ਦੀਆਂ ਯਾਦ-ਦਹਾਨੀਆਂ ਤੁਹਾਡੇ ਵੱਲੋਂ ਪਿੱਛਾ ਕਰਦੀਆਂ ਰਹਿਣਗੀਆਂ।';

  @override
  String get guideLoansTip2 =>
      'ਮਿਆਦ ਲੰਘੀ ਦੇਣਦਾਰੀ ਚੁਕਾਏ ਜਾਣ ਤੱਕ ਡੈਸ਼ਬੋਰਡ ਉੱਤੇ ਲਾਲ ਦਿਖਦੀ ਹੈ।';

  @override
  String get guideReportsTitle => 'ਰਿਪੋਰਟਾਂ';

  @override
  String get guideReportsBody =>
      'ਡੂੰਘੀ ਨਜ਼ਰ: ਆਮਦਨ ਬਨਾਮ ਖਰਚ, ਸ਼੍ਰੇਣੀ ਅਨੁਸਾਰ ਖਰਚ, ਬਜਟ ਕਿਵੇਂ ਟਿਕੇ, ਅਤੇ ਤੁਹਾਡੀ ਆਮਦਨ ਦਾ ਕਿੰਨਾ ਹਿੱਸਾ ਬਚਿਆ।';

  @override
  String get guideReportsTip1 =>
      'ਸਕਰੀਨ ਦੇ ਉੱਤੋਂ ਹਫ਼ਤਾ, ਮਹੀਨਾ ਅਤੇ ਤਿਮਾਹੀ ਵਿਚਕਾਰ ਬਦਲੋ।';

  @override
  String get guideReportsTip2 =>
      'PDF ਬਰਾਮਦ ਕਰੋ ਜਾਂ ਸਾਂਝੀ ਕਰੋ — ਉਹ ਤੁਹਾਡੀ ਭਾਸ਼ਾ ਅਤੇ ਦਿਸ਼ਾ ਵਿੱਚ ਹੀ ਬਣਦੀ ਹੈ।';

  @override
  String get guideSettingsTitle => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get guideSettingsBody =>
      'ਭਾਸ਼ਾ, ਮੁਦਰਾ, ਰੰਗ ਅਤੇ ਚਿਤਾਵਨੀਆਂ ਸਭ ਇੱਥੇ ਹਨ, ਅਤੇ ਸੈੱਟਅੱਪ ਨਾਲ ਕੁਝ ਵੀ ਪੱਕਾ ਨਹੀਂ ਹੋ ਜਾਂਦਾ — ਜਦੋਂ ਚਾਹੋ ਬਦਲੋ।';

  @override
  String get guideSettingsTip1 =>
      'ਚਾਲੀ ਭਾਸ਼ਾਵਾਂ, ਅਤੇ ਸੱਜੇ-ਤੋਂ-ਖੱਬੇ ਭਾਸ਼ਾਵਾਂ ਲਈ ਸਾਰਾ ਖ਼ਾਕਾ ਪਲਟ ਜਾਂਦਾ ਹੈ।';

  @override
  String get guideSettingsTip2 =>
      'ਚੁਣੋ ਕਿ ਕਿਹੜੀਆਂ ਚਿਤਾਵਨੀਆਂ ਚਾਹੀਦੀਆਂ ਹਨ ਅਤੇ ਉਹ ਕਿਹੜੇ ਘੰਟਿਆਂ ਵਿੱਚ ਆ ਸਕਦੀਆਂ ਹਨ।';

  @override
  String get guideSettingsTip3 => 'ਚੁੱਪ ਦੇ ਘੰਟੇ ਸਭ ਕੁਝ ਸਵੇਰ ਤੱਕ ਰੋਕ ਰੱਖਦੇ ਹਨ।';

  @override
  String get guideHabitTitle => 'ਇਸ ਨੂੰ ਆਦਤ ਬਣਾਓ';

  @override
  String get guideHabitBody =>
      'ਐਪ ਓਨੀ ਹੀ ਚੰਗੀ ਹੈ ਜਿੰਨਾ ਤੁਸੀਂ ਇਸ ਵਿੱਚ ਪਾਓ। ਮਹੀਨੇ ਦੇ ਇੱਕ ਘੰਟੇ ਨਾਲੋਂ ਰੋਜ਼ ਦਾ ਇੱਕ ਮਿੰਟ ਬਿਹਤਰ ਹੈ, ਅਤੇ ਦੋ ਹਫ਼ਤਿਆਂ ਬਾਅਦ ਅੰਕੜੇ ਕੁਝ ਕਹਿਣ ਲੱਗਦੇ ਹਨ।';

  @override
  String get guideHabitTip1 =>
      'ਖਰਚ ਉਸੇ ਵੇਲੇ ਦਰਜ ਕਰੋ, ਹਫ਼ਤੇ ਦੇ ਅਖ਼ੀਰ ਵਿੱਚ ਨਹੀਂ।';

  @override
  String get guideHabitTip2 =>
      'ਦਿਨ ਵਿੱਚ ਇੱਕ ਵਾਰ ਡੈਸ਼ਬੋਰਡ ਵੇਖ ਲਵੋ। ਦਸ ਸਕਿੰਟ ਕਾਫ਼ੀ ਹਨ।';

  @override
  String get guideHabitTip3 =>
      'ਇਹ ਗਾਈਡ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਰਹਿੰਦੀ ਹੈ — ਜਦੋਂ ਚਾਹੋ ਵਾਪਸ ਆ ਜਾਓ।';

  @override
  String get appearance => 'ਦਿੱਖ';

  @override
  String get themeCaption => 'ਹਲਕਾ, ਗੂੜ੍ਹਾ, ਜਾਂ ਜੋ ਤੁਹਾਡਾ ਫ਼ੋਨ ਕਰ ਰਿਹਾ ਹੈ।';

  @override
  String get accentColor => 'ਮੁੱਖ ਰੰਗ';

  @override
  String get accentColorCaption => 'ਬਟਨਾਂ, ਉਭਾਰਾਂ ਅਤੇ ਚਾਰਟਾਂ ਨੂੰ ਰੰਗ ਦਿੰਦਾ ਹੈ।';

  @override
  String get accentSemanticsNote =>
      'ਆਮਦਨ ਅਤੇ ਖਰਚ ਹਰ ਥੀਮ ਵਿੱਚ ਆਪਣੇ ਰੰਗ ਰੱਖਦੇ ਹਨ, ਸੋ ਮੁੱਖ ਰੰਗ ਬਦਲਣ ਨਾਲ ਕਿਸੇ ਅੰਕੜੇ ਦਾ ਮਤਲਬ ਨਹੀਂ ਬਦਲਦਾ।';

  @override
  String get accentTeal => 'ਫ਼ਿਰੋਜ਼ੀ';

  @override
  String get accentGreen => 'ਹਰਾ';

  @override
  String get accentSky => 'ਅਸਮਾਨੀ';

  @override
  String get accentBlue => 'ਨੀਲਾ';

  @override
  String get accentIndigo => 'ਗੂੜ੍ਹਾ ਨੀਲਾ';

  @override
  String get accentViolet => 'ਬੈਂਗਣੀ';

  @override
  String get accentPink => 'ਗੁਲਾਬੀ';

  @override
  String get accentCrimson => 'ਗੂੜ੍ਹਾ ਲਾਲ';

  @override
  String get accentOrange => 'ਸੰਤਰੀ';

  @override
  String get accentSlate => 'ਸਲੇਟੀ';

  @override
  String get searchLanguages => 'ਭਾਸ਼ਾਵਾਂ ਲੱਭੋ';

  @override
  String get suggestedLanguages => 'ਸੁਝਾਈਆਂ';

  @override
  String get allLanguages => 'ਸਾਰੀਆਂ ਭਾਸ਼ਾਵਾਂ';

  @override
  String get noLanguagesFound => 'ਕੋਈ ਭਾਸ਼ਾ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get noLanguagesFoundMessage =>
      'ਅੰਗਰੇਜ਼ੀ ਨਾਂ ਜਾਂ ਦੋ ਅੱਖਰਾਂ ਵਾਲਾ ਕੋਡ ਅਜ਼ਮਾਓ।';

  @override
  String get rightToLeft => 'ਸੱਜੇ ਤੋਂ ਖੱਬੇ';

  @override
  String get replayGuide => 'ਗਾਈਡ ਦੁਬਾਰਾ ਵੇਖੋ';

  @override
  String get replaySetup => 'ਸੈੱਟਅੱਪ ਦੁਬਾਰਾ ਚਲਾਓ';

  @override
  String get replaySetupBody =>
      'ਸ਼ੁਰੂ ਵਾਲੇ ਸਵਾਲਾਂ ਵਿੱਚੋਂ ਦੁਬਾਰਾ ਲੰਘੋ। ਤੁਹਾਡਾ ਦਰਜ ਕੀਤਾ ਕੁਝ ਵੀ ਨਹੀਂ ਮਿਟੇਗਾ।';

  @override
  String get rateTitle => 'RainyPenny ਪਸੰਦ ਆ ਰਹੀ ਹੈ?';

  @override
  String get rateBody =>
      'ਤੁਸੀਂ ਕੁਝ ਸਮੇਂ ਤੋਂ ਇਸਨੂੰ ਵਰਤ ਰਹੇ ਹੋ। ਰੇਟਿੰਗ ਦੇਣ ਵਿੱਚ ਇੱਕ ਪਲ ਲੱਗਦਾ ਹੈ ਅਤੇ ਇਸ ਨਾਲ ਹੋਰਾਂ ਨੂੰ ਐਪ ਲੱਭਣ ਵਿੱਚ ਮਦਦ ਮਿਲਦੀ ਹੈ।';

  @override
  String get rateAction => 'ਐਪ ਨੂੰ ਰੇਟ ਕਰੋ';

  @override
  String get rateLater => 'ਸ਼ਾਇਦ ਬਾਅਦ ਵਿੱਚ';

  @override
  String get rateNever => 'ਨਹੀਂ, ਧੰਨਵਾਦ';

  @override
  String get rateThanks => 'ਧੰਨਵਾਦ';

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
