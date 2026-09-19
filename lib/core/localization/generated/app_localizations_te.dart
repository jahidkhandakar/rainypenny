// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppL10nTe extends AppL10n {
  AppL10nTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'కష్టకాలం కోసం పొదుపు చేయండి';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navTransactions => 'లావాదేవీలు';

  @override
  String get navAdd => 'జోడించు';

  @override
  String get navReports => 'నివేదికలు';

  @override
  String get navProfile => 'ప్రొఫైల్';

  @override
  String greetingMorning(String name) {
    return 'శుభోదయం, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'శుభ మధ్యాహ్నం, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'శుభ సాయంత్రం, $name';
  }

  @override
  String get greetingSubtitle => 'ఇదిగో మీ ఆర్థిక చిత్రం';

  @override
  String get totalBalance => 'మొత్తం నిల్వ';

  @override
  String get vsLastPeriod => 'గత కాలంతో పోలిస్తే';

  @override
  String get income => 'ఆదాయం';

  @override
  String get expenses => 'ఖర్చులు';

  @override
  String get netBalance => 'నికర నిల్వ';

  @override
  String get lastThirtyDays => 'గత 30 రోజులు';

  @override
  String get quickActions => 'త్వరిత చర్యలు';

  @override
  String get addIncome => 'ఆదాయం జోడించు';

  @override
  String get addExpense => 'ఖర్చు జోడించు';

  @override
  String get spendingOverview => 'ఖర్చుల సారాంశం';

  @override
  String get recentTransactions => 'ఇటీవలి లావాదేవీలు';

  @override
  String get seeAll => 'అన్నీ చూడు';

  @override
  String get viewAll => 'అన్నీ చూపు';

  @override
  String get budgetProgress => 'బడ్జెట్ పురోగతి';

  @override
  String get savingsGoals => 'పొదుపు లక్ష్యాలు';

  @override
  String get financialInsight => 'ఆర్థిక అవగాహన';

  @override
  String get financialHealth => 'ఆర్థిక ఆరోగ్యం';

  @override
  String ofTotal(String total) {
    return '$total లో';
  }

  @override
  String get searchTransactions => 'లావాదేవీలను వెతకండి';

  @override
  String get filterAll => 'అన్నీ';

  @override
  String get filterIncome => 'ఆదాయం';

  @override
  String get filterExpenses => 'ఖర్చులు';

  @override
  String get today => 'ఈరోజు';

  @override
  String get yesterday => 'నిన్న';

  @override
  String get noTransactionsTitle => 'లావాదేవీలేవీ కనబడలేదు';

  @override
  String get noTransactionsBody =>
      'మరిన్ని రికార్డులు చూడటానికి వేరే వెతుకులాట లేదా ఫిల్టర్ ప్రయత్నించండి.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count లావాదేవీలు',
      one: '$count లావాదేవీ',
      zero: 'లావాదేవీలు లేవు',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'లావాదేవీ జోడించు';

  @override
  String get amount => 'మొత్తం';

  @override
  String get category => 'వర్గం';

  @override
  String get date => 'తేదీ';

  @override
  String get note => 'గమనిక';

  @override
  String get noteHint => 'గమనిక (ఐచ్ఛికం)';

  @override
  String get saveIncome => 'ఆదాయం సేవ్ చేయి';

  @override
  String get saveExpense => 'ఖర్చు సేవ్ చేయి';

  @override
  String get selectCategory => 'వర్గాన్ని ఎంచుకోండి';

  @override
  String get transactionSaved => 'లావాదేవీ సేవ్ అయింది';

  @override
  String get amountRequired => 'సున్నా కంటే ఎక్కువ మొత్తాన్ని నమోదు చేయండి';

  @override
  String get titleRequired => 'ఈ లావాదేవీకి ఒక పేరు పెట్టండి';

  @override
  String get descriptionLabel => 'వివరణ';

  @override
  String get descriptionHint => 'ఉదా. కిరాణా';

  @override
  String get budget => 'బడ్జెట్';

  @override
  String get budgets => 'బడ్జెట్లు';

  @override
  String get totalBudget => 'మొత్తం బడ్జెట్';

  @override
  String get spent => 'ఖర్చైంది';

  @override
  String get remaining => 'మిగిలింది';

  @override
  String budgetUsed(int percent) {
    return '$percent% వాడారు';
  }

  @override
  String get onTrack => 'సరైన దారిలో';

  @override
  String get approachingLimit => 'పరిమితికి దగ్గరగా';

  @override
  String get overBudget => 'బడ్జెట్ దాటింది';

  @override
  String get savings => 'పొదుపు';

  @override
  String get yourGoals => 'మీ లక్ష్యాలు';

  @override
  String get saved => 'పొదుపు చేసింది';

  @override
  String get target => 'లక్ష్యం';

  @override
  String get monthlyContribution => 'నెలవారీ';

  @override
  String get addFunds => 'డబ్బు జోడించు';

  @override
  String get goalComplete => 'లక్ష్యం చేరింది';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఇంకా $count నెలలు',
      one: 'ఇంకా $count నెల',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'రుణాలు, అప్పులు';

  @override
  String get totalOutstanding => 'మొత్తం బకాయి';

  @override
  String get monthlyPayment => 'నెలవారీ';

  @override
  String get nextPayment => 'తదుపరి వాయిదా';

  @override
  String paidOff(int percent) {
    return '$percent% చెల్లించారు';
  }

  @override
  String get interestRate => 'వడ్డీ';

  @override
  String get upcomingPayments => 'రాబోయే వాయిదాలు';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజుల్లో',
      one: '$count రోజులో',
      zero: 'ఈరోజు చెల్లించాలి',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'గడువు దాటింది';

  @override
  String get reports => 'నివేదికలు';

  @override
  String get week => 'వారం';

  @override
  String get month => 'నెల';

  @override
  String get quarter => 'త్రైమాసికం';

  @override
  String get incomeVsExpenses => 'ఆదాయం, ఖర్చులు';

  @override
  String get spendingByCategory => 'వర్గాల వారీగా ఖర్చు';

  @override
  String get budgetPerformance => 'బడ్జెట్ పనితీరు';

  @override
  String get insights => 'అవగాహనలు';

  @override
  String get savingsRate => 'పొదుపు రేటు';

  @override
  String get profile => 'ప్రొఫైల్';

  @override
  String get account => 'ఖాతా';

  @override
  String get personalInformation => 'వ్యక్తిగత సమాచారం';

  @override
  String get changePassword => 'పాస్‌వర్డ్ మార్చు';

  @override
  String get notifications => 'నోటిఫికేషన్లు';

  @override
  String get preferences => 'ప్రాధాన్యతలు';

  @override
  String get language => 'భాష';

  @override
  String get currency => 'కరెన్సీ';

  @override
  String get theme => 'థీమ్';

  @override
  String get security => 'భద్రత';

  @override
  String get privacyAndSecurity => 'గోప్యత, భద్రత';

  @override
  String get help => 'సహాయం';

  @override
  String get helpAndSupport => 'సహాయం, మద్దతు';

  @override
  String get termsAndConditions => 'నిబంధనలు, షరతులు';

  @override
  String get logOut => 'లాగ్ అవుట్';

  @override
  String memberSince(String date) {
    return '$date నుండి సభ్యులు';
  }

  @override
  String get themeSystem => 'సిస్టమ్ ప్రకారం';

  @override
  String get themeLight => 'లేత';

  @override
  String get themeDark => 'ముదురు';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get noNotificationsTitle => 'అంతా చూసేశారు';

  @override
  String get noNotificationsBody =>
      'కొత్త అవగాహనలు, గుర్తుచేతలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get cancel => 'రద్దు';

  @override
  String get save => 'సేవ్';

  @override
  String get done => 'పూర్తి';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించు';

  @override
  String get close => 'మూసివేయి';

  @override
  String get somethingWentWrong => 'ఏదో తప్పు జరిగింది';

  @override
  String get comingSoon => 'పూర్తి వెర్షన్‌లో రానుంది';

  @override
  String get edit => 'సవరించు';

  @override
  String get delete => 'తొలగించు';

  @override
  String get undo => 'వెనక్కి';

  @override
  String get add => 'జోడించు';

  @override
  String get create => 'సృష్టించు';

  @override
  String get nameRequired => 'దీనికి ఒక పేరు పెట్టండి';

  @override
  String get amountAboveZero => 'సున్నా కంటే ఎక్కువ మొత్తాన్ని నమోదు చేయండి';

  @override
  String get editTransaction => 'లావాదేవీని సవరించు';

  @override
  String get deleteTransaction => 'లావాదేవీని తొలగించాలా?';

  @override
  String deleteTransactionBody(String title) {
    return '$title మీ లెక్క నుండి తీసివేయబడుతుంది.';
  }

  @override
  String get transactionDeleted => 'లావాదేవీ తొలగించబడింది';

  @override
  String get transactionUpdated => 'లావాదేవీ నవీకరించబడింది';

  @override
  String get newBudget => 'కొత్త బడ్జెట్';

  @override
  String get editBudget => 'బడ్జెట్ సవరించు';

  @override
  String get budgetLimit => 'నెలవారీ పరిమితి';

  @override
  String get deleteBudget => 'బడ్జెట్ తొలగించాలా?';

  @override
  String deleteBudgetBody(String category) {
    return '$category బడ్జెట్ తీసివేయబడుతుంది. మీ లావాదేవీలపై ప్రభావం ఉండదు.';
  }

  @override
  String get budgetSaved => 'బడ్జెట్ సేవ్ అయింది';

  @override
  String get budgetDeleted => 'బడ్జెట్ తొలగించబడింది';

  @override
  String get allCategoriesBudgeted => 'ప్రతి వర్గానికీ ఇప్పటికే బడ్జెట్ ఉంది';

  @override
  String get noBudgetsTitle => 'ఇంకా బడ్జెట్‌లు లేవు';

  @override
  String get noBudgetsBody =>
      'ఒక వర్గానికి నెలవారీ పరిమితి పెట్టండి, అప్పుడు దాన్ని ట్రాక్ చేయడం మొదలవుతుంది.';

  @override
  String get newGoal => 'కొత్త లక్ష్యం';

  @override
  String get editGoal => 'లక్ష్యాన్ని సవరించు';

  @override
  String get goalName => 'లక్ష్యం పేరు';

  @override
  String get goalNameHint => 'ఉదా. అత్యవసర నిధి';

  @override
  String get targetAmount => 'లక్ష్య మొత్తం';

  @override
  String get alreadySaved => 'ఇప్పటికే పొదుపు';

  @override
  String get deleteGoal => 'లక్ష్యాన్ని తొలగించాలా?';

  @override
  String deleteGoalBody(String name) {
    return '$name మరియు దాని పురోగతి తీసివేయబడతాయి.';
  }

  @override
  String get goalSaved => 'లక్ష్యం సేవ్ అయింది';

  @override
  String get goalDeleted => 'లక్ష్యం తొలగించబడింది';

  @override
  String get noGoalsTitle => 'ఇంకా పొదుపు లక్ష్యాలు లేవు';

  @override
  String get noGoalsBody =>
      'ఒక లక్ష్యం పెట్టండి, RainyPenny మీ పురోగతిని ట్రాక్ చేస్తుంది.';

  @override
  String get fundsAdded => 'డబ్బు జోడించబడింది';

  @override
  String get newDebt => 'కొత్త రుణం లేదా కార్డు';

  @override
  String get editDebt => 'రుణాన్ని సవరించు';

  @override
  String get debtName => 'పేరు';

  @override
  String get debtNameHint => 'ఉదా. కారు రుణం';

  @override
  String get lender => 'రుణదాత';

  @override
  String get lenderHint => 'ఉదా. స్టేట్ బ్యాంక్';

  @override
  String get originalAmount => 'అసలు మొత్తం';

  @override
  String get creditLimit => 'క్రెడిట్ పరిమితి';

  @override
  String get remainingBalance => 'మిగిలిన బకాయి';

  @override
  String get interestRatePercent => 'వడ్డీ రేటు (%)';

  @override
  String get kindLoan => 'రుణం';

  @override
  String get kindCreditCard => 'క్రెడిట్ కార్డు';

  @override
  String get recordPayment => 'చెల్లింపును నమోదు చేయి';

  @override
  String get paymentRecorded => 'చెల్లింపు నమోదైంది';

  @override
  String get deleteDebt => 'ఈ అప్పును తొలగించాలా?';

  @override
  String deleteDebtBody(String name) {
    return '$name మీ అప్పుల నుండి తీసివేయబడుతుంది.';
  }

  @override
  String get debtSaved => 'సేవ్ అయింది';

  @override
  String get debtDeleted => 'తొలగించబడింది';

  @override
  String get noDebtsTitle => 'ట్రాక్ చేస్తున్న అప్పులు లేవు';

  @override
  String get noDebtsBody =>
      'వాయిదాలపై కన్నేసి ఉంచడానికి రుణం లేదా క్రెడిట్ కార్డు జోడించండి.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject బడ్జెట్ దాటింది';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'ఈ కాలంలో మీరు $subject బడ్జెట్‌ను $amount దాటారు.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject పరిమితికి దగ్గరగా ఉంది';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'మీ $subject బడ్జెట్‌లో $percent% వాడారు, $amount మిగిలింది.';
  }

  @override
  String get insightOverIncomeTitle => 'ఆదాయం కంటే ఖర్చు ఎక్కువ';

  @override
  String get insightOverIncomeBody =>
      'ఈ కాలంలో సంపాదించిన దానికంటే ఎక్కువ ఖర్చు చేశారు. పెద్ద వర్గాలను చూసి సమతుల్యం చేసుకోండి.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject ఖర్చు పెరిగింది';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'మీ $subject ఖర్చు గత కాలం కంటే $percent% ఎక్కువ.';
  }

  @override
  String get insightTrendDownTitle => 'ఖర్చు తగ్గుతోంది';

  @override
  String insightTrendDownBody(int percent) {
    return 'మొత్తం ఖర్చు గత కాలం కంటే $percent% తక్కువ.';
  }

  @override
  String get insightTrendUpTitle => 'ఖర్చు పెరుగుతోంది';

  @override
  String insightTrendUpBody(int percent) {
    return 'మొత్తం ఖర్చు గత కాలం కంటే $percent% ఎక్కువ.';
  }

  @override
  String get insightSavingsStrongTitle => 'ఈ కాలంలో పొదుపు బాగుంది';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'మీరు ఆదాయంలో $percent% ఉంచుకున్నారు — $target% లక్ష్యం కంటే చాలా ఎక్కువ.';
  }

  @override
  String get insightSavingsLowTitle => 'పొదుపు రేటు లక్ష్యం కంటే తక్కువ';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'ఈ కాలంలో ఆదాయంలో $percent% ఉంచుకున్నారు. లక్ష్యం $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject దాదాపు పూర్తయింది';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject చేరడానికి ఇంకా $amount మాత్రమే.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject సరైన దారిలో';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months నెలల్లో',
      one: '$months నెలలో',
    );
    return 'నెలకు $amount చొప్పున, ఈ లక్ష్యాన్ని $_temp0 చేరుకుంటారు.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject వాయిదా గడువు దాటింది';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days రోజులు',
      one: '$days రోజు',
    );
    return '$subject కి చెందిన $amount వాయిదా $_temp0 ఆలస్యమైంది.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject వాయిదా దగ్గర పడుతోంది';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days రోజుల్లో',
      one: '$days రోజులో',
      zero: 'ఈరోజు',
    );
    return '$amount $_temp0 చెల్లించాలి.';
  }

  @override
  String get signIn => 'సైన్ ఇన్';

  @override
  String get signUp => 'ఖాతా సృష్టించు';

  @override
  String get signInSubtitle => 'మళ్ళీ స్వాగతం. మీ డబ్బు ఎదురుచూస్తోంది.';

  @override
  String get signUpSubtitle => 'కొన్ని వివరాలు, అంతే.';

  @override
  String get emailLabel => 'ఇమెయిల్';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'పాస్‌వర్డ్';

  @override
  String get passwordHint => 'కనీసం 8 అక్షరాలు';

  @override
  String get fullNameLabel => 'పూర్తి పేరు';

  @override
  String get fullNameHint => 'రవి కుమార్';

  @override
  String get forgotPassword => 'పాస్‌వర్డ్ మర్చిపోయారా?';

  @override
  String get resetSent => 'రీసెట్ లింక్ కోసం మీ ఇన్‌బాక్స్ చూడండి';

  @override
  String get noAccountYet => 'మొదటిసారా?';

  @override
  String get haveAccount => 'ఇప్పటికే ఖాతా ఉందా?';

  @override
  String get emailInvalid => 'సరైన ఇమెయిల్ చిరునామా నమోదు చేయండి';

  @override
  String get passwordTooShort => 'కనీసం 8 అక్షరాలు వాడండి';

  @override
  String get signOutConfirm => 'సైన్ అవుట్ చేయాలా?';

  @override
  String get signOutBody =>
      'మీ ఆర్థిక వివరాలు మళ్ళీ చూడాలంటే మళ్ళీ సైన్ ఇన్ చేయాలి.';

  @override
  String get dataSource => 'డేటా మూలం';

  @override
  String get insightWeeklySummaryTitle => 'మీ వారం సమీక్ష';

  @override
  String get insightWeeklySummaryBody =>
      'ఈ వారం డబ్బు ఎక్కడికి వెళ్ళిందో, బడ్జెట్‌లు ఎలా నిలిచాయో చూడండి.';

  @override
  String get notificationSettings => 'నోటిఫికేషన్లు';

  @override
  String get alertsSection => 'హెచ్చరికలు';

  @override
  String get budgetAlerts => 'బడ్జెట్ హెచ్చరికలు';

  @override
  String get budgetAlertsBody =>
      'బడ్జెట్ పరిమితికి దగ్గరైనప్పుడు లేదా దాటినప్పుడు';

  @override
  String get paymentReminders => 'చెల్లింపు గుర్తుచేతలు';

  @override
  String get paymentRemindersBody => 'వాయిదా తేదీకి కొన్ని రోజుల ముందు';

  @override
  String get savingsUpdates => 'పొదుపు సమాచారం';

  @override
  String get savingsUpdatesBody => 'మీ లక్ష్యాల వైపు పురోగతి';

  @override
  String get weeklySummaryLabel => 'వారపు సారాంశం';

  @override
  String get weeklySummaryBody => 'గడిచిన వారం సంక్షిప్తం';

  @override
  String get scheduleSection => 'సమయం';

  @override
  String get reminderTime => 'గుర్తుచేత సమయం';

  @override
  String get quietHours => 'నిశ్శబ్ద గంటలు';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'సారాంశ రోజు';

  @override
  String get permissionRequired => 'నోటిఫికేషన్లు ఆఫ్‌లో ఉన్నాయి';

  @override
  String get permissionRequiredBody =>
      'బడ్జెట్ లేదా చెల్లింపు చేయి దాటిపోకముందే RainyPenny హెచ్చరించేలా నోటిఫికేషన్లకు అనుమతి ఇవ్వండి.';

  @override
  String get allowNotifications => 'నోటిఫికేషన్లను అనుమతించు';

  @override
  String get permissionDenied =>
      'నోటిఫికేషన్లు నిరోధించబడ్డాయి. పరికర సెట్టింగ్‌లలో వాటిని ఆన్ చేయవచ్చు.';

  @override
  String get upcomingAlerts => 'షెడ్యూల్ చేసినవి';

  @override
  String get noScheduledAlerts => 'ప్రస్తుతం ఏదీ షెడ్యూల్ చేయలేదు';

  @override
  String get noScheduledAlertsBody =>
      'బడ్జెట్‌లు, చెల్లింపులు పరిమితులకు దగ్గరైనప్పుడు హెచ్చరికలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String scheduledFor(String date) {
    return '$date కి షెడ్యూల్ చేయబడింది';
  }

  @override
  String get everyWeek => 'ప్రతి వారం';

  @override
  String get allNotificationsOff => 'అన్ని నోటిఫికేషన్లు ఆఫ్‌లో ఉన్నాయి';

  @override
  String get needsAttention => 'శ్రద్ధ అవసరం';

  @override
  String get quickActionsTitle => 'ఏమి చేయాలనుకుంటున్నారు?';

  @override
  String get createSection => 'నమోదు చేయి';

  @override
  String get jumpToSection => 'వెళ్ళు';

  @override
  String get addLoanAction => 'రుణం జోడించు';

  @override
  String get addBudgetAction => 'బడ్జెట్ జోడించు';

  @override
  String get addGoalAction => 'లక్ష్యం జోడించు';

  @override
  String get longPressHint =>
      'చిట్కా: నేరుగా ఖర్చు నమోదు చేయడానికి + ని నొక్కి ఉంచండి';

  @override
  String get searchCurrencies => 'కరెన్సీలను వెతకండి';

  @override
  String get noCurrenciesFound => 'కరెన్సీ ఏదీ దొరకలేదు';

  @override
  String get noCurrenciesFoundMessage =>
      'వేరే కోడ్, గుర్తు లేదా పేరు ప్రయత్నించండి.';

  @override
  String get popularCurrencies => 'ప్రాచుర్యం పొందినవి';

  @override
  String get allCurrencies => 'అన్ని కరెన్సీలు';

  @override
  String get totalLoanAmount => 'మొత్తం రుణ మొత్తం';

  @override
  String get installmentAmount => 'వాయిదా మొత్తం';

  @override
  String get numberOfInstallments => 'వాయిదాల సంఖ్య';

  @override
  String get paidInstallments => 'చెల్లించిన వాయిదాలు';

  @override
  String get remainingInstallments => 'మిగిలిన వాయిదాలు';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total లో $paid చెల్లించారు';
  }

  @override
  String get finalPayment => 'చివరి వాయిదా';

  @override
  String get paymentDueDate => 'చెల్లింపు తేదీ';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ప్రతి నెల $day వ తేదీ';
  }

  @override
  String get loanStatus => 'స్థితి';

  @override
  String get statusActive => 'సరైన దారిలో';

  @override
  String get statusDueSoon => 'త్వరలో గడువు';

  @override
  String get statusOverdue => 'గడువు దాటింది';

  @override
  String get statusCompleted => 'పూర్తిగా చెల్లించారు';

  @override
  String get repaymentProgress => 'తిరిగి చెల్లింపు పురోగతి';

  @override
  String get byAmount => 'మొత్తం ప్రకారం';

  @override
  String get byInstallments => 'వాయిదాల ప్రకారం';

  @override
  String get startDate => 'ప్రారంభ తేదీ';

  @override
  String get openEnded => 'గడువు లేదు';

  @override
  String get loanDetails => 'రుణ వివరాలు';

  @override
  String get notSet => 'సెట్ చేయలేదు';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject ఈరోజు చెల్లించాలి';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'మీ $amount వాయిదా ఈరోజు చెల్లించాలి. ఒక్క ట్యాప్‌తో సమయానికి పూర్తవుతుంది.';
  }

  @override
  String get remindMorningTitle => 'శుభోదయం ☀️';

  @override
  String get remindMorningBody =>
      'డబ్బుపై పట్టుతో రోజును ప్రారంభించండి. నిన్నటిది ఏదైనా జోడించాలా?';

  @override
  String get remindNoonTitle => 'మధ్యాహ్న తనిఖీ';

  @override
  String get remindNoonBody =>
      'భోజనం, కాఫీ, ప్రయాణ ఖర్చు? కొన్ని క్షణాల్లో నమోదు చేయవచ్చు.';

  @override
  String get remindAfternoonTitle => 'త్వరగా పూర్తి చేయండి';

  @override
  String get remindAfternoonBody =>
      'ఇప్పటివరకు ఖర్చు చేసినది నమోదు చేయండి, ఈరోజు లెక్క సరిగా ఉంటుంది.';

  @override
  String get remindEveningTitle => 'రోజును ముగిస్తూ';

  @override
  String get remindEveningBody => 'ఇప్పుడు రెండు నిమిషాలు, ఈరోజు లెక్క పూర్తి.';

  @override
  String get happyWeekendTitle => 'వారాంతం ఆనందంగా గడవాలి! 🎉';

  @override
  String get happyWeekendBody =>
      'ఆస్వాదించండి — వారాంతపు ఖర్చులపైనా కాస్త కన్ను వేయండి.';

  @override
  String get dailyReminders => 'రోజువారీ ఖర్చు గుర్తుచేతలు';

  @override
  String get dailyRemindersBody => 'ఖర్చులు తాజాగా ఉండేలా మృదువైన గుర్తుచేతలు';

  @override
  String get weekendGreeting => 'వారాంతపు శుభాకాంక్షలు';

  @override
  String get weekendGreetingBody =>
      'మీ వారాంతం మొదలయ్యే వేళ ఒక ఆత్మీయ పలకరింపు';

  @override
  String get reminderTimesSection => 'గుర్తుచేత సమయాలు';

  @override
  String get slotMorning => 'ఉదయం';

  @override
  String get slotNoon => 'మధ్యాహ్నం';

  @override
  String get slotAfternoon => 'సాయంకాలం';

  @override
  String get slotEvening => 'రాత్రి';

  @override
  String get everyDay => 'ప్రతి రోజు';

  @override
  String get financialReport => 'ఆర్థిక నివేదిక';

  @override
  String get preparedFor => 'ఎవరి కోసం తయారు చేశారు';

  @override
  String get generatedOn => 'తయారైన తేదీ';

  @override
  String get reportDisclaimer =>
      'మీ సొంత రికార్డుల నుండి RainyPenny తయారు చేసింది.';

  @override
  String pageOf(int page, int total) {
    return 'పేజీ $page / $total';
  }

  @override
  String get overview => 'సారాంశం';

  @override
  String get description => 'వివరణ';

  @override
  String get totalIncome => 'మొత్తం ఆదాయం';

  @override
  String get totalExpenses => 'మొత్తం ఖర్చు';

  @override
  String get totalSaved => 'మొత్తం పొదుపు';

  @override
  String get shareOfTotal => 'వాటా';

  @override
  String get used => 'వాడారు';

  @override
  String get goal => 'లక్ష్యం';

  @override
  String get targetDate => 'లక్ష్య తేదీ';

  @override
  String get progress => 'పురోగతి';

  @override
  String get paidOffShort => 'చెల్లించారు';

  @override
  String get transactions => 'లావాదేవీలు';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'మరో $count లావాదేవీలు',
      one: 'మరో $count లావాదేవీ',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF ఎగుమతి';

  @override
  String get sharePdf => 'నివేదికను పంచుకో';

  @override
  String get preparingReport => 'మీ నివేదిక తయారవుతోంది…';

  @override
  String get reportReady => 'నివేదిక సిద్ధం';

  @override
  String get reportFailed => 'నివేదికను తయారు చేయలేకపోయాం';

  @override
  String get categories => 'వర్గాలు';

  @override
  String get categoriesIntro =>
      'మీ సొంత వర్గాలను జోడించండి, అప్పుడు ఆదాయం, ఖర్చులు మీరు ఆలోచించే విధంగానే సర్దుకుంటాయి.';

  @override
  String get expenseCategories => 'ఖర్చు వర్గాలు';

  @override
  String get incomeCategories => 'ఆదాయ వర్గాలు';

  @override
  String get newCategory => 'కొత్త వర్గం';

  @override
  String get editCategory => 'వర్గాన్ని సవరించు';

  @override
  String get categoryName => 'పేరు';

  @override
  String get categoryNameHint => 'ఉదా. పెంపుడు జంతువులు';

  @override
  String get icon => 'చిహ్నం';

  @override
  String get categorySaved => 'వర్గం సేవ్ అయింది';

  @override
  String get categoryDeleted => 'వర్గం తొలగించబడింది';

  @override
  String get deleteCategory => 'ఈ వర్గాన్ని తొలగించాలా?';

  @override
  String deleteCategoryBody(String name) {
    return '$name మీ వర్గాల నుండి తీసివేయబడుతుంది.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రికార్డులు ఇంకా ఈ వర్గాన్ని వాడుతున్నాయి',
      one: '$count రికార్డు ఇంకా ఈ వర్గాన్ని వాడుతోంది',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'ఇక్కడ ఇంకా ఏమీ లేదు.';

  @override
  String get builtIn => 'అంతర్నిర్మితం';

  @override
  String get manageCategories => 'వర్గాలను నిర్వహించు';

  @override
  String get expense => 'ఖర్చు';

  @override
  String get languageNote =>
      'అరబిక్, ఉర్దూ, పర్షియన్, హీబ్రూ భాషలు చార్టులు, PDF నివేదికలతో సహా మొత్తం ఇంటర్‌ఫేస్‌ను కుడి-నుండి-ఎడమకు మారుస్తాయి.';

  @override
  String get next => 'తర్వాత';

  @override
  String get back => 'వెనక్కి';

  @override
  String get skip => 'దాటవేయి';

  @override
  String get continueLabel => 'కొనసాగించు';

  @override
  String get selected => 'ఎంచుకున్నది';

  @override
  String get passwordRequired => 'మీ పాస్‌వర్డ్ నమోదు చేయండి';

  @override
  String get newPasswordLabel => 'కొత్త పాస్‌వర్డ్';

  @override
  String get confirmPasswordLabel => 'పాస్‌వర్డ్ నిర్ధారించు';

  @override
  String get passwordsDoNotMatch => 'రెండు పాస్‌వర్డ్‌లూ ఒకేలా ఉండాలి';

  @override
  String get showPassword => 'పాస్‌వర్డ్ చూపు';

  @override
  String get hidePassword => 'పాస్‌వర్డ్ దాచు';

  @override
  String get savePassword => 'పాస్‌వర్డ్ సేవ్ చేయి';

  @override
  String get backToSignIn => 'సైన్ ఇన్‌కు తిరిగి';

  @override
  String get alreadyHaveAccount => 'నాకు ఇప్పటికే ఖాతా ఉంది';

  @override
  String get getStarted => 'మొదలుపెడదాం';

  @override
  String get acceptTerms =>
      'సేవా నిబంధనలు, గోప్యతా విధానానికి నేను అంగీకరిస్తున్నాను';

  @override
  String get acceptTermsRequired => 'కొనసాగడానికి అంగీకరించండి';

  @override
  String get passwordStrengthTooShort => 'చాలా చిన్నది';

  @override
  String get passwordStrengthWeak => 'బలహీనం';

  @override
  String get passwordStrengthFair => 'పరవాలేదు';

  @override
  String get passwordStrengthGood => 'బాగుంది';

  @override
  String get passwordStrengthStrong => 'బలమైనది';

  @override
  String get passwordAdvice =>
      'గుర్తుండే పొడవాటి వాక్యం, గుర్తులతో నిండిన చిన్న పాస్‌వర్డ్ కంటే మేలు. వేరే చోట వాడుతున్నదాన్ని ఎంచుకోవద్దు.';

  @override
  String get authInvalidCredentials =>
      'ఈ ఇమెయిల్, పాస్‌వర్డ్ ఏ ఖాతాతోనూ సరిపోలడం లేదు';

  @override
  String get authEmailNotConfirmed =>
      'సైన్ ఇన్ చేయకముందు మీ ఇమెయిల్ చిరునామాను నిర్ధారించండి';

  @override
  String get authEmailAlreadyRegistered => 'ఈ ఇమెయిల్‌తో ఖాతా ఇప్పటికే ఉంది';

  @override
  String get authWeakPassword => 'మరింత పొడవైన పాస్‌వర్డ్ ఎంచుకోండి';

  @override
  String get authRateLimited =>
      'చాలాసార్లు ప్రయత్నించారు. కొన్ని నిమిషాల తర్వాత మళ్ళీ ప్రయత్నించండి';

  @override
  String get authNetworkError =>
      'కనెక్షన్ లేదు. నెట్‌వర్క్ చూసి మళ్ళీ ప్రయత్నించండి';

  @override
  String get authGenericError =>
      'ఏదో తప్పు జరిగింది. దయచేసి మళ్ళీ ప్రయత్నించండి';

  @override
  String get confirmEmailTitle => 'మీ ఇమెయిల్ చూడండి';

  @override
  String confirmEmailBody(String email) {
    return '$email కు నిర్ధారణ లింక్ పంపాం. ఖాతా పూర్తి చేయడానికి దాన్ని తెరవండి.';
  }

  @override
  String get resendConfirmation => 'నిర్ధారణ ఇమెయిల్ మళ్ళీ పంపు';

  @override
  String get confirmationResent => 'నిర్ధారణ ఇమెయిల్ పంపబడింది';

  @override
  String get forgotPasswordTitle => 'పాస్‌వర్డ్ రీసెట్ చేయండి';

  @override
  String get forgotPasswordSubtitle =>
      'మీరు సైన్ అప్ చేసిన ఇమెయిల్ నమోదు చేయండి, కొత్త పాస్‌వర్డ్ ఎంచుకునే లింక్ పంపుతాం.';

  @override
  String get sendResetLink => 'రీసెట్ లింక్ పంపు';

  @override
  String get resetLinkSentTitle => 'లింక్ పంపబడింది';

  @override
  String resetLinkSentBody(String email) {
    return '$email కు ఖాతా ఉంటే, రీసెట్ లింక్ దారిలో ఉంది.';
  }

  @override
  String get resetLinkSentHint =>
      'లింక్ ఒక గంటలో గడువు ముగుస్తుంది. రాకపోతే, కొత్తది అడగకముందు స్పామ్ ఫోల్డర్ చూడండి.';

  @override
  String get tryAnotherEmail => 'వేరే ఇమెయిల్ వాడు';

  @override
  String get resetPasswordTitle => 'కొత్త పాస్‌వర్డ్ ఎంచుకోండి';

  @override
  String get resetPasswordSubtitle =>
      'ఈ ఖాతాలో ఇంతకుముందు వాడని దాన్ని ఎంచుకోండి.';

  @override
  String get passwordChangedTitle => 'పాస్‌వర్డ్ నవీకరించబడింది';

  @override
  String get passwordChangedBody =>
      'మీ కొత్త పాస్‌వర్డ్ సేవ్ అయింది. మీరు సైన్ ఇన్‌లో ఉన్నారు, కొనసాగవచ్చు.';

  @override
  String get demoModeHint => 'డెమో వెర్షన్ — ఖాతా అవసరం లేదు';

  @override
  String get demoModeFill => 'నింపు';

  @override
  String get welcomeTrackTitle => 'మీ డబ్బు ఎక్కడికి వెళ్తుందో చూడండి';

  @override
  String get welcomeTrackBody =>
      'వచ్చేదీ పోయేదీ నమోదు చేయండి. RainyPenny దాన్ని నిజంగా చదవగలిగే చిత్రంగా మారుస్తుంది.';

  @override
  String get welcomeBudgetTitle => 'నిలిచే హద్దులు';

  @override
  String get welcomeBudgetBody =>
      'మీ ఖర్చులోని ప్రతి భాగానికీ నెలవారీ గరిష్ఠం పెట్టండి, దాటిన తర్వాత కాదు — దాటకముందే తెలుసుకోండి.';

  @override
  String get welcomeGoalsTitle => 'ముఖ్యమైనదాని కోసం పొదుపు';

  @override
  String get welcomeGoalsBody =>
      'లక్ష్యానికి పేరు పెట్టి, మొత్తం నిర్ణయించి, అది నిండటం చూడండి. కంటికి కనిపిస్తే అత్యవసర నిధి సులువుగా పోగవుతుంది.';

  @override
  String get welcomePrivacyTitle => 'మీ డబ్బు మీదే';

  @override
  String get welcomePrivacyBody =>
      'మీ లెక్కలు మీవే. ఏదీ అమ్మబడదు, ఎవరితోనూ పంచుకోబడదు.';

  @override
  String stepOf(int step, int total) {
    return 'దశ $step / $total';
  }

  @override
  String get onboardingNameTitle => 'మిమ్మల్ని ఏమని పిలవాలి?';

  @override
  String get onboardingNameBody =>
      'పలకరించడానికి మాత్రమే వాడతాం, ఇంకెక్కడా కాదు.';

  @override
  String get onboardingNameHint => 'మొదటి పేరు చాలు. తర్వాత మార్చుకోవచ్చు.';

  @override
  String get onboardingCurrencyTitle => 'మీరు ఏ కరెన్సీ వాడతారు?';

  @override
  String get onboardingCurrencyBody =>
      'యాప్‌లోని ప్రతి మొత్తం ఈ కరెన్సీలోనే కనిపిస్తుంది. దీన్ని ఎంచుకోవడం వల్ల ఏదీ మారదు.';

  @override
  String get onboardingCurrencySearch => 'అన్ని కరెన్సీలలో వెతకండి';

  @override
  String get onboardingAppearanceTitle => 'మీ ఇష్టం ప్రకారం';

  @override
  String get onboardingAppearanceBody =>
      'ఒక రూపం ఎంచుకోండి. తాకగానే అంతా మారుతుంది, ఎప్పుడైనా తిరిగి రావచ్చు.';

  @override
  String get onboardingNotificationsTitle => 'పట్టు కోల్పోకండి';

  @override
  String get onboardingNotificationsBody =>
      'సరైన సమయంలో వచ్చే నిశ్శబ్ద గుర్తుచేతే దీన్ని అలవాటుగా మారుస్తుంది.';

  @override
  String get onboardingNotifyReminders =>
      'ఖర్చు నమోదు చేయడానికి మృదువైన గుర్తుచేత';

  @override
  String get onboardingNotifyBudget => 'బడ్జెట్ అయిపోకముందే ఒక సూచన';

  @override
  String get onboardingNotifySummary =>
      'డబ్బు ఎక్కడికి వెళ్ళిందో వారపు సారాంశం';

  @override
  String get onboardingNotifyEnable => 'నోటిఫికేషన్లు ఆన్ చేయి';

  @override
  String get onboardingNotifyDone => 'నోటిఫికేషన్ సెట్టింగ్‌లు సేవ్ అయ్యాయి';

  @override
  String get onboardingNotifyLater =>
      'వీటన్నిటినీ సెట్టింగ్‌లలో ఎప్పుడైనా మార్చుకోవచ్చు.';

  @override
  String get onboardingReadyTitle => 'అంతా సిద్ధం';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'అంతా సిద్ధం, $name';
  }

  @override
  String get onboardingReadyBody =>
      'సెటప్ పూర్తయింది. అంతా ఎలా పనిచేస్తుందో త్వరగా చూద్దామా?';

  @override
  String get onboardingTakeTour => 'నాకు చూపించండి';

  @override
  String get onboardingGoToApp => 'యాప్‌కు తీసుకెళ్ళు';

  @override
  String get onboardingTourLater =>
      'ఇప్పుడు వద్దా? గైడ్ సెట్టింగ్‌లలో ఉంటుంది, ఎప్పుడైనా చూడొచ్చు.';

  @override
  String get beginnersGuide => 'ఆరంభకుల గైడ్';

  @override
  String get guideFinish => 'ముగించు';

  @override
  String chapterOf(int number, int total) {
    return 'అధ్యాయం $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen తెరువు';
  }

  @override
  String get guideDashboardTitle => 'మీ హోమ్';

  @override
  String get guideDashboardBody =>
      'అంతా ఇక్కడే మొదలవుతుంది. పైన ఉన్న కార్డు మీ దగ్గర మిగిలినది; దాని కింద ఈ కాలపు ఆదాయం, ఖర్చు, ఆ తర్వాత మీ ఖర్చులు, బడ్జెట్‌లు, లక్ష్యాలు.';

  @override
  String get guideDashboardTip1 =>
      'అన్నీ ఒకేసారి రిఫ్రెష్ చేయడానికి స్క్రీన్‌ను కిందికి లాగండి.';

  @override
  String get guideDashboardTip2 =>
      'ఆ జాబితాకు నేరుగా వెళ్ళడానికి ఆదాయం లేదా ఖర్చు కార్డును తాకండి.';

  @override
  String get guideDashboardTip3 =>
      'మీరు ఏదైనా నమోదు చేయగానే వలయాలు, అవగాహనలు నవీకరించబడతాయి.';

  @override
  String get guideAddTitle => 'డబ్బు నమోదు చేయడం';

  @override
  String get guideAddBody =>
      'బార్ మధ్యలో ఉన్న బటనే అన్నిటికీ మొదలు. అది చిన్న మెనూ తెరుస్తుంది: ఖర్చు, ఆదాయం, అప్పు, బడ్జెట్ లేదా పొదుపు లక్ష్యం.';

  @override
  String get guideAddTip1 =>
      'ఆదాయం లేదా ఖర్చు నమోదు చేయడానికి మధ్య బటన్ నొక్కండి.';

  @override
  String get guideAddTip2 =>
      'మెనూ దాటవేసి నేరుగా కొత్త ఖర్చుకు వెళ్ళడానికి దాన్ని నొక్కి పట్టుకోండి.';

  @override
  String get guideAddTip3 =>
      'ఎప్పుడూ ఒక వర్గం ఎంచుకోండి — చార్టులు, బడ్జెట్‌లు దానిపైనే ఆధారపడతాయి.';

  @override
  String get guideCategoriesTitle => 'వర్గాలు';

  @override
  String get guideCategoriesBody =>
      'వర్గాలే ఖర్చును గుంపులుగా విభజిస్తాయి. యాప్‌తో వచ్చేవి చాలామందికి సరిపోతాయి, మీరు పేర్లు మార్చుకోవచ్చు లేదా మీవి జోడించుకోవచ్చు.';

  @override
  String get guideCategoriesTip1 =>
      'మార్చడానికి లేదా జోడించడానికి సెట్టింగ్‌లు, ఆ తర్వాత వర్గాలను నిర్వహించు.';

  @override
  String get guideCategoriesTip2 =>
      'వర్గం లేని ప్రతిదీ «ఇతరాలు» లోకి వెళ్తుంది, తద్వారా చార్టులు నిజాయితీగా ఉంటాయి.';

  @override
  String get guideBudgetTitle => 'బడ్జెట్‌లు';

  @override
  String get guideBudgetBody =>
      'బడ్జెట్ అంటే ఒక వర్గానికి నెలవారీ గరిష్ఠం. ఖర్చు చేస్తున్న కొద్దీ పట్టీ నిండుతుంది, పరిమితి దగ్గరైతే రంగు మారుతుంది, కాబట్టి దాటకముందే తెలిసిపోతుంది.';

  @override
  String get guideBudgetTip1 =>
      'అన్నీ ఒకేసారి కాదు — రెండు మూడు వర్గాలతో మొదలుపెట్టండి.';

  @override
  String get guideBudgetTip2 =>
      'పరిమితిని మీ సాధారణ ఖర్చు కంటే కాస్త ఎక్కువగా పెట్టి, ఆ తర్వాత తగ్గించండి.';

  @override
  String get guideBudgetTip3 =>
      'బడ్జెట్ హెచ్చరికలు ఆన్‌లోనే ఉంచండి, అయిపోతున్నప్పుడు యాప్ చెబుతుంది.';

  @override
  String get guideSavingsTitle => 'పొదుపు లక్ష్యాలు';

  @override
  String get guideSavingsBody =>
      'దేని కోసం పొదుపు చేస్తున్నారో పేరు పెట్టి, మొత్తం, తేదీ నిర్ణయించండి — నెలకు ఎంత పక్కన పెట్టాలో యాప్ లెక్కిస్తుంది.';

  @override
  String get guideSavingsTip1 =>
      'పేరున్న లక్ష్యం, అస్పష్టమైన పొదుపు ఉద్దేశం కంటే సులువుగా నిలుస్తుంది.';

  @override
  String get guideSavingsTip2 =>
      'ఒక పెద్ద లక్ష్యం కంటే కొన్ని చిన్న లక్ష్యాలే ఎక్కువసార్లు పూర్తవుతాయి.';

  @override
  String get guideLoansTitle => 'అప్పులు, రుణాలు';

  @override
  String get guideLoansBody =>
      'ఎంత అప్పు, దాని ఖర్చు ఎంత, తదుపరి వాయిదా ఎప్పుడో నమోదు చేయండి. మీరు చెల్లిస్తున్నవన్నీ మిగిలిన మొత్తంతో ఒకే జాబితాలో ఉంటాయి.';

  @override
  String get guideLoansTip1 =>
      'గడువు తేదీ జోడించండి, చెల్లింపు గుర్తుచేతలు మీ తరఫున వెంటబడతాయి.';

  @override
  String get guideLoansTip2 =>
      'గడువు దాటిన అప్పు, చెల్లించేవరకు హోమ్‌లో ఎరుపు రంగులో కనిపిస్తుంది.';

  @override
  String get guideReportsTitle => 'నివేదికలు';

  @override
  String get guideReportsBody =>
      'లోతైన చూపు: ఆదాయం వర్సెస్ ఖర్చు, వర్గాల వారీగా ఖర్చు, బడ్జెట్‌లు ఎంత నిలిచాయి, మీ ఆదాయంలో ఎంత మిగిలింది.';

  @override
  String get guideReportsTip1 =>
      'స్క్రీన్ పైభాగంలో వారం, నెల, త్రైమాసికం మధ్య మారండి.';

  @override
  String get guideReportsTip2 =>
      'PDF ఎగుమతి చేయండి లేదా పంచుకోండి — అది మీ భాషలో, మీ దిశలోనే వస్తుంది.';

  @override
  String get guideSettingsTitle => 'సెట్టింగ్‌లు';

  @override
  String get guideSettingsBody =>
      'భాష, కరెన్సీ, రంగులు, హెచ్చరికలు అన్నీ ఇక్కడే ఉన్నాయి, మొదటి సెటప్‌తో ఏదీ శాశ్వతం కాదు — ఎప్పుడైనా మార్చండి.';

  @override
  String get guideSettingsTip1 =>
      'నలభై భాషలు, కుడి-నుండి-ఎడమకు చదివే భాషలకు మొత్తం లేఅవుట్ తిరగబడుతుంది.';

  @override
  String get guideSettingsTip2 =>
      'ఏ హెచ్చరికలు కావాలో, అవి ఏ గంటల్లో రావచ్చో ఎంచుకోండి.';

  @override
  String get guideSettingsTip3 =>
      'నిశ్శబ్ద గంటలు అన్నిటినీ ఉదయం వరకు ఆపి ఉంచుతాయి.';

  @override
  String get guideHabitTitle => 'అలవాటుగా మార్చుకోండి';

  @override
  String get guideHabitBody =>
      'మీరు ఎంత పెడితే యాప్ అంతే ఉపయోగం. నెలకు ఒక గంట కంటే రోజుకు ఒక నిమిషం మేలు, రెండు వారాల తర్వాత సంఖ్యలు మీకు ఏదో చెప్పడం మొదలుపెడతాయి.';

  @override
  String get guideHabitTip1 =>
      'వారాంతంలో కాదు, ఖర్చు చేసిన ఆ క్షణంలోనే నమోదు చేయండి.';

  @override
  String get guideHabitTip2 => 'రోజుకు ఒకసారి హోమ్ చూడండి. పది సెకన్లు చాలు.';

  @override
  String get guideHabitTip3 =>
      'ఈ గైడ్ సెట్టింగ్‌లలోనే ఉంటుంది — ఎప్పుడైనా తిరిగి రండి.';

  @override
  String get appearance => 'రూపం';

  @override
  String get themeCaption => 'లేత, ముదురు, లేదా మీ ఫోన్ ఏం చేస్తుందో అది.';

  @override
  String get accentColor => 'ముఖ్య రంగు';

  @override
  String get accentColorCaption =>
      'బటన్లు, ముఖ్యాంశాలు, చార్టులకు రంగు ఇస్తుంది.';

  @override
  String get accentSemanticsNote =>
      'ఆదాయం, ఖర్చు ప్రతి థీమ్‌లోనూ తమ రంగులను నిలుపుకుంటాయి, కాబట్టి ముఖ్య రంగు మార్చినంత మాత్రాన ఏ సంఖ్య అర్థమూ మారదు.';

  @override
  String get accentTeal => 'పచ్చ-నీలం';

  @override
  String get accentGreen => 'ఆకుపచ్చ';

  @override
  String get accentSky => 'ఆకాశనీలం';

  @override
  String get accentBlue => 'నీలం';

  @override
  String get accentIndigo => 'ముదురు నీలం';

  @override
  String get accentViolet => 'ఊదా';

  @override
  String get accentPink => 'గులాబీ';

  @override
  String get accentCrimson => 'ఎర్రటి ఎరుపు';

  @override
  String get accentOrange => 'నారింజ';

  @override
  String get accentSlate => 'బూడిద';

  @override
  String get searchLanguages => 'భాషలను వెతకండి';

  @override
  String get suggestedLanguages => 'సూచించినవి';

  @override
  String get allLanguages => 'అన్ని భాషలు';

  @override
  String get noLanguagesFound => 'భాష ఏదీ దొరకలేదు';

  @override
  String get noLanguagesFoundMessage =>
      'ఆంగ్ల పేరు లేదా రెండక్షరాల కోడ్ ప్రయత్నించండి.';

  @override
  String get rightToLeft => 'కుడి నుండి ఎడమకు';

  @override
  String get replayGuide => 'గైడ్ మళ్ళీ చూడు';

  @override
  String get replaySetup => 'సెటప్ మళ్ళీ చేయి';

  @override
  String get replaySetupBody =>
      'మొదటి ప్రశ్నల ద్వారా మళ్ళీ వెళ్ళండి. మీరు నమోదు చేసినది ఏదీ తొలగించబడదు.';

  @override
  String get rateTitle => 'RainyPenny నచ్చిందా?';

  @override
  String get rateBody =>
      'మీరు కొంతకాలంగా దీన్ని వాడుతున్నారు. రేటింగ్ ఇవ్వడానికి ఒక క్షణం చాలు, ఇతరులు యాప్‌ను కనుగొనడానికి ఇది సాయపడుతుంది.';

  @override
  String get rateAction => 'యాప్‌కు రేటింగ్ ఇవ్వండి';

  @override
  String get rateLater => 'తర్వాత చూద్దాం';

  @override
  String get rateNever => 'వద్దు, ధన్యవాదాలు';

  @override
  String get rateThanks => 'ధన్యవాదాలు';

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
}
