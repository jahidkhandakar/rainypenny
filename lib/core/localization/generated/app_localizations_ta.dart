// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppL10nTa extends AppL10n {
  AppL10nTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'மழைக்கால நாளுக்காகச் சேமியுங்கள்';

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navTransactions => 'பரிவர்த்தனைகள்';

  @override
  String get navAdd => 'சேர்';

  @override
  String get navReports => 'அறிக்கைகள்';

  @override
  String get navProfile => 'சுயவிவரம்';

  @override
  String greetingMorning(String name) {
    return 'காலை வணக்கம், $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'மதிய வணக்கம், $name';
  }

  @override
  String greetingEvening(String name) {
    return 'மாலை வணக்கம், $name';
  }

  @override
  String get greetingSubtitle => 'இதோ உங்கள் நிதி நிலை';

  @override
  String get totalBalance => 'மொத்த இருப்பு';

  @override
  String get vsLastPeriod => 'முந்தைய காலத்துடன் ஒப்பிடும்போது';

  @override
  String get income => 'வருமானம்';

  @override
  String get expenses => 'செலவுகள்';

  @override
  String get netBalance => 'நிகர இருப்பு';

  @override
  String get lastThirtyDays => 'கடந்த 30 நாட்கள்';

  @override
  String get quickActions => 'விரைவுச் செயல்கள்';

  @override
  String get addIncome => 'வருமானம் சேர்';

  @override
  String get addExpense => 'செலவு சேர்';

  @override
  String get spendingOverview => 'செலவுச் சுருக்கம்';

  @override
  String get recentTransactions => 'சமீபத்திய பரிவர்த்தனைகள்';

  @override
  String get seeAll => 'அனைத்தையும் பார்';

  @override
  String get viewAll => 'எல்லாம் காட்டு';

  @override
  String get budgetProgress => 'பட்ஜெட் முன்னேற்றம்';

  @override
  String get savingsGoals => 'சேமிப்பு இலக்குகள்';

  @override
  String get financialInsight => 'நிதி நுண்ணறிவு';

  @override
  String get financialHealth => 'நிதி ஆரோக்கியம்';

  @override
  String ofTotal(String total) {
    return '$total இல்';
  }

  @override
  String get searchTransactions => 'பரிவர்த்தனைகளைத் தேடு';

  @override
  String get filterAll => 'அனைத்தும்';

  @override
  String get filterIncome => 'வருமானம்';

  @override
  String get filterExpenses => 'செலவுகள்';

  @override
  String get today => 'இன்று';

  @override
  String get yesterday => 'நேற்று';

  @override
  String get noTransactionsTitle => 'பரிவர்த்தனைகள் எதுவும் இல்லை';

  @override
  String get noTransactionsBody =>
      'மேலும் பதிவுகளைப் பார்க்க வேறு தேடலையோ வடிகட்டியையோ முயலுங்கள்.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பரிவர்த்தனைகள்',
      one: '$count பரிவர்த்தனை',
      zero: 'பரிவர்த்தனைகள் இல்லை',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'பரிவர்த்தனை சேர்';

  @override
  String get amount => 'தொகை';

  @override
  String get category => 'வகை';

  @override
  String get date => 'தேதி';

  @override
  String get note => 'குறிப்பு';

  @override
  String get noteHint => 'குறிப்பு (விருப்பம்)';

  @override
  String get saveIncome => 'வருமானத்தைச் சேமி';

  @override
  String get saveExpense => 'செலவைச் சேமி';

  @override
  String get selectCategory => 'வகையைத் தேர்ந்தெடு';

  @override
  String get transactionSaved => 'பரிவர்த்தனை சேமிக்கப்பட்டது';

  @override
  String get amountRequired => 'பூஜ்ஜியத்தை விட அதிக தொகையை உள்ளிடுங்கள்';

  @override
  String get titleRequired => 'இந்தப் பரிவர்த்தனைக்கு ஒரு பெயர் கொடுங்கள்';

  @override
  String get descriptionLabel => 'விவரம்';

  @override
  String get descriptionHint => 'எ.கா. மளிகைப் பொருட்கள்';

  @override
  String get budget => 'பட்ஜெட்';

  @override
  String get budgets => 'பட்ஜெட்டுகள்';

  @override
  String get totalBudget => 'மொத்தப் பட்ஜெட்';

  @override
  String get spent => 'செலவானது';

  @override
  String get remaining => 'மீதம்';

  @override
  String budgetUsed(int percent) {
    return '$percent% பயன்படுத்தப்பட்டது';
  }

  @override
  String get onTrack => 'சரியான பாதையில்';

  @override
  String get approachingLimit => 'வரம்பை நெருங்குகிறது';

  @override
  String get overBudget => 'பட்ஜெட்டைத் தாண்டியது';

  @override
  String get savings => 'சேமிப்பு';

  @override
  String get yourGoals => 'உங்கள் இலக்குகள்';

  @override
  String get saved => 'சேமித்தது';

  @override
  String get target => 'இலக்கு';

  @override
  String get monthlyContribution => 'மாதம்தோறும்';

  @override
  String get addFunds => 'பணம் சேர்';

  @override
  String get goalComplete => 'இலக்கு எட்டப்பட்டது';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'இன்னும் $count மாதங்கள்',
      one: 'இன்னும் $count மாதம்',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'கடன்கள்';

  @override
  String get totalOutstanding => 'மொத்த நிலுவை';

  @override
  String get monthlyPayment => 'மாதம்தோறும்';

  @override
  String get nextPayment => 'அடுத்த தவணை';

  @override
  String paidOff(int percent) {
    return '$percent% கட்டப்பட்டது';
  }

  @override
  String get interestRate => 'வட்டி';

  @override
  String get upcomingPayments => 'வரவிருக்கும் தவணைகள்';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாட்களில்',
      one: '$count நாளில்',
      zero: 'இன்று கட்ட வேண்டும்',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'தவணை தாண்டியது';

  @override
  String get reports => 'அறிக்கைகள்';

  @override
  String get week => 'வாரம்';

  @override
  String get month => 'மாதம்';

  @override
  String get quarter => 'காலாண்டு';

  @override
  String get incomeVsExpenses => 'வருமானமும் செலவும்';

  @override
  String get spendingByCategory => 'வகை வாரியான செலவு';

  @override
  String get budgetPerformance => 'பட்ஜெட் செயல்திறன்';

  @override
  String get insights => 'நுண்ணறிவுகள்';

  @override
  String get savingsRate => 'சேமிப்பு விகிதம்';

  @override
  String get profile => 'சுயவிவரம்';

  @override
  String get account => 'கணக்கு';

  @override
  String get personalInformation => 'தனிப்பட்ட தகவல்';

  @override
  String get changePassword => 'கடவுச்சொல்லை மாற்று';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get preferences => 'விருப்பங்கள்';

  @override
  String get language => 'மொழி';

  @override
  String get currency => 'நாணயம்';

  @override
  String get theme => 'தீம்';

  @override
  String get security => 'பாதுகாப்பு';

  @override
  String get privacyAndSecurity => 'தனியுரிமையும் பாதுகாப்பும்';

  @override
  String get help => 'உதவி';

  @override
  String get helpAndSupport => 'உதவியும் ஆதரவும்';

  @override
  String get termsAndConditions => 'விதிமுறைகளும் நிபந்தனைகளும்';

  @override
  String get logOut => 'வெளியேறு';

  @override
  String memberSince(String date) {
    return '$date முதல் உறுப்பினர்';
  }

  @override
  String get themeSystem => 'சாதனத்தைப் பின்பற்று';

  @override
  String get themeLight => 'வெளிர்';

  @override
  String get themeDark => 'அடர்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get noNotificationsTitle => 'எல்லாம் பார்த்தாயிற்று';

  @override
  String get noNotificationsBody =>
      'புதிய நுண்ணறிவுகளும் நினைவூட்டல்களும் இங்கே தோன்றும்.';

  @override
  String get cancel => 'ரத்து';

  @override
  String get save => 'சேமி';

  @override
  String get done => 'முடிந்தது';

  @override
  String get retry => 'மீண்டும் முயலு';

  @override
  String get close => 'மூடு';

  @override
  String get somethingWentWrong => 'ஏதோ தவறாகிவிட்டது';

  @override
  String get comingSoon => 'முழுப் பதிப்பில் வரவிருக்கிறது';

  @override
  String get edit => 'திருத்து';

  @override
  String get delete => 'நீக்கு';

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String get add => 'சேர்';

  @override
  String get create => 'உருவாக்கு';

  @override
  String get nameRequired => 'இதற்கு ஒரு பெயர் கொடுங்கள்';

  @override
  String get amountAboveZero => 'பூஜ்ஜியத்தை விட அதிக தொகையை உள்ளிடுங்கள்';

  @override
  String get editTransaction => 'பரிவர்த்தனையைத் திருத்து';

  @override
  String get deleteTransaction => 'பரிவர்த்தனையை நீக்கவா?';

  @override
  String deleteTransactionBody(String title) {
    return '$title உங்கள் கணக்கிலிருந்து நீக்கப்படும்.';
  }

  @override
  String get transactionDeleted => 'பரிவர்த்தனை நீக்கப்பட்டது';

  @override
  String get transactionUpdated => 'பரிவர்த்தனை புதுப்பிக்கப்பட்டது';

  @override
  String get newBudget => 'புதிய பட்ஜெட்';

  @override
  String get editBudget => 'பட்ஜெட்டைத் திருத்து';

  @override
  String get budgetLimit => 'மாத வரம்பு';

  @override
  String get deleteBudget => 'பட்ஜெட்டை நீக்கவா?';

  @override
  String deleteBudgetBody(String category) {
    return '$category பட்ஜெட் நீக்கப்படும். உங்கள் பரிவர்த்தனைகள் பாதிக்கப்படாது.';
  }

  @override
  String get budgetSaved => 'பட்ஜெட் சேமிக்கப்பட்டது';

  @override
  String get budgetDeleted => 'பட்ஜெட் நீக்கப்பட்டது';

  @override
  String get allCategoriesBudgeted =>
      'ஒவ்வொரு வகைக்கும் ஏற்கெனவே பட்ஜெட் உள்ளது';

  @override
  String get noBudgetsTitle => 'இன்னும் பட்ஜெட் இல்லை';

  @override
  String get noBudgetsBody =>
      'ஒரு வகைக்கு மாத வரம்பு வையுங்கள், அப்போது கண்காணிப்பு தொடங்கும்.';

  @override
  String get newGoal => 'புதிய இலக்கு';

  @override
  String get editGoal => 'இலக்கைத் திருத்து';

  @override
  String get goalName => 'இலக்கின் பெயர்';

  @override
  String get goalNameHint => 'எ.கா. அவசர நிதி';

  @override
  String get targetAmount => 'இலக்குத் தொகை';

  @override
  String get alreadySaved => 'ஏற்கெனவே சேமித்தது';

  @override
  String get deleteGoal => 'இலக்கை நீக்கவா?';

  @override
  String deleteGoalBody(String name) {
    return '$name மற்றும் அதன் முன்னேற்றம் நீக்கப்படும்.';
  }

  @override
  String get goalSaved => 'இலக்கு சேமிக்கப்பட்டது';

  @override
  String get goalDeleted => 'இலக்கு நீக்கப்பட்டது';

  @override
  String get noGoalsTitle => 'இன்னும் சேமிப்பு இலக்குகள் இல்லை';

  @override
  String get noGoalsBody =>
      'ஒரு இலக்கை வையுங்கள், RainyPenny உங்கள் முன்னேற்றத்தைக் கண்காணிக்கும்.';

  @override
  String get fundsAdded => 'பணம் சேர்க்கப்பட்டது';

  @override
  String get newDebt => 'புதிய கடன் அல்லது அட்டை';

  @override
  String get editDebt => 'கடனைத் திருத்து';

  @override
  String get debtName => 'பெயர்';

  @override
  String get debtNameHint => 'எ.கா. கார் கடன்';

  @override
  String get lender => 'கடன் வழங்குநர்';

  @override
  String get lenderHint => 'எ.கா. இந்தியன் வங்கி';

  @override
  String get originalAmount => 'அசல் தொகை';

  @override
  String get creditLimit => 'கடன் வரம்பு';

  @override
  String get remainingBalance => 'மீதமுள்ள இருப்பு';

  @override
  String get interestRatePercent => 'வட்டி விகிதம் (%)';

  @override
  String get kindLoan => 'கடன்';

  @override
  String get kindCreditCard => 'கிரெடிட் கார்டு';

  @override
  String get recordPayment => 'தவணையைப் பதிவு செய்';

  @override
  String get paymentRecorded => 'தவணை பதிவானது';

  @override
  String get deleteDebt => 'இந்தக் கடனை நீக்கவா?';

  @override
  String deleteDebtBody(String name) {
    return '$name உங்கள் கடன்களிலிருந்து நீக்கப்படும்.';
  }

  @override
  String get debtSaved => 'சேமிக்கப்பட்டது';

  @override
  String get debtDeleted => 'நீக்கப்பட்டது';

  @override
  String get noDebtsTitle => 'கண்காணிக்கும் கடன் எதுவும் இல்லை';

  @override
  String get noDebtsBody =>
      'தவணைகளைக் கவனிக்க ஒரு கடனையோ கிரெடிட் கார்டையோ சேருங்கள்.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject பட்ஜெட் தாண்டிவிட்டது';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'இந்தக் காலத்தில் $subject பட்ஜெட்டை $amount தாண்டியுள்ளீர்கள்.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject வரம்பை நெருங்குகிறது';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'உங்கள் $subject பட்ஜெட்டில் $percent% பயன்படுத்தப்பட்டது, $amount மீதம்.';
  }

  @override
  String get insightOverIncomeTitle => 'வருமானத்தை விட செலவு அதிகம்';

  @override
  String get insightOverIncomeBody =>
      'இந்தக் காலத்தில் சம்பாதித்ததை விட அதிகம் செலவழித்துள்ளீர்கள். பெரிய வகைகளைப் பார்த்து சமநிலைக்குத் திரும்புங்கள்.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject செலவு உயர்ந்துள்ளது';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'உங்கள் $subject செலவு முந்தைய காலத்தை விட $percent% அதிகம்.';
  }

  @override
  String get insightTrendDownTitle => 'செலவு குறைந்து வருகிறது';

  @override
  String insightTrendDownBody(int percent) {
    return 'மொத்தச் செலவு முந்தைய காலத்தை விட $percent% குறைவு.';
  }

  @override
  String get insightTrendUpTitle => 'செலவு உயர்ந்து வருகிறது';

  @override
  String insightTrendUpBody(int percent) {
    return 'மொத்தச் செலவு முந்தைய காலத்தை விட $percent% அதிகம்.';
  }

  @override
  String get insightSavingsStrongTitle => 'இந்தக் காலத்தில் சேமிப்பு சிறப்பு';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'வருமானத்தில் $percent% வைத்திருக்கிறீர்கள் — $target% இலக்கை விட மிக அதிகம்.';
  }

  @override
  String get insightSavingsLowTitle => 'சேமிப்பு விகிதம் இலக்கை விடக் குறைவு';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'இந்தக் காலத்தில் வருமானத்தில் $percent% வைத்தீர்கள். இலக்கு $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject கிட்டத்தட்ட நிறைந்துவிட்டது';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject அடைய இன்னும் $amount மட்டுமே.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject சரியான பாதையில்';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months மாதங்களில்',
      one: '$months மாதத்தில்',
    );
    return 'மாதம் $amount வீதம், இந்த இலக்கை $_temp0 அடைவீர்கள்.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject தவணை தாமதம்';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days நாட்கள்',
      one: '$days நாள்',
    );
    return '$subject இன் $amount தவணை $_temp0 தாமதமாகியுள்ளது.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject தவணை நெருங்குகிறது';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days நாட்களில்',
      one: '$days நாளில்',
      zero: 'இன்று',
    );
    return '$amount $_temp0 கட்ட வேண்டும்.';
  }

  @override
  String get signIn => 'உள்நுழை';

  @override
  String get signUp => 'கணக்கை உருவாக்கு';

  @override
  String get signInSubtitle => 'மீண்டும் வருக. உங்கள் பணம் காத்திருக்கிறது.';

  @override
  String get signUpSubtitle => 'சில விவரங்கள், அவ்வளவுதான்.';

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'கடவுச்சொல்';

  @override
  String get passwordHint => 'குறைந்தது 8 எழுத்துகள்';

  @override
  String get fullNameLabel => 'முழுப் பெயர்';

  @override
  String get fullNameHint => 'அருண் குமார்';

  @override
  String get forgotPassword => 'கடவுச்சொல் மறந்துவிட்டதா?';

  @override
  String get resetSent =>
      'மீட்டமைப்பு இணைப்புக்கு உங்கள் அஞ்சல் பெட்டியைப் பாருங்கள்';

  @override
  String get noAccountYet => 'முதல் முறையா?';

  @override
  String get haveAccount => 'ஏற்கெனவே கணக்கு உள்ளதா?';

  @override
  String get emailInvalid => 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடுங்கள்';

  @override
  String get passwordTooShort => 'குறைந்தது 8 எழுத்துகள் பயன்படுத்துங்கள்';

  @override
  String get signOutConfirm => 'வெளியேறவா?';

  @override
  String get signOutBody =>
      'உங்கள் நிதி நிலையை மீண்டும் பார்க்க மீண்டும் உள்நுழைய வேண்டும்.';

  @override
  String get dataSource => 'தரவு ஆதாரம்';

  @override
  String get insightWeeklySummaryTitle => 'உங்கள் வாரத்தின் சுருக்கம்';

  @override
  String get insightWeeklySummaryBody =>
      'இந்த வாரம் பணம் எங்கே சென்றது, பட்ஜெட்டுகள் எப்படி நிலைத்தன என்று பாருங்கள்.';

  @override
  String get notificationSettings => 'அறிவிப்புகள்';

  @override
  String get alertsSection => 'எச்சரிக்கைகள்';

  @override
  String get budgetAlerts => 'பட்ஜெட் எச்சரிக்கைகள்';

  @override
  String get budgetAlertsBody =>
      'பட்ஜெட் வரம்பை நெருங்கும்போது அல்லது தாண்டும்போது';

  @override
  String get paymentReminders => 'தவணை நினைவூட்டல்கள்';

  @override
  String get paymentRemindersBody => 'தவணைத் தேதிக்கு சில நாட்கள் முன்பு';

  @override
  String get savingsUpdates => 'சேமிப்புத் தகவல்கள்';

  @override
  String get savingsUpdatesBody => 'உங்கள் இலக்குகளை நோக்கிய முன்னேற்றம்';

  @override
  String get weeklySummaryLabel => 'வாராந்திரச் சுருக்கம்';

  @override
  String get weeklySummaryBody => 'கடந்த வாரத்தின் தொகுப்பு';

  @override
  String get scheduleSection => 'நேரம்';

  @override
  String get reminderTime => 'நினைவூட்டல் நேரம்';

  @override
  String get quietHours => 'அமைதி நேரம்';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'சுருக்க நாள்';

  @override
  String get permissionRequired => 'அறிவிப்புகள் அணைக்கப்பட்டுள்ளன';

  @override
  String get permissionRequiredBody =>
      'பட்ஜெட்டோ தவணையோ கைமீறிப் போவதற்கு முன் RainyPenny எச்சரிக்க அறிவிப்புகளை அனுமதியுங்கள்.';

  @override
  String get allowNotifications => 'அறிவிப்புகளை அனுமதி';

  @override
  String get permissionDenied =>
      'அறிவிப்புகள் தடுக்கப்பட்டுள்ளன. சாதன அமைப்புகளில் அவற்றை இயக்கலாம்.';

  @override
  String get upcomingAlerts => 'திட்டமிடப்பட்டவை';

  @override
  String get noScheduledAlerts => 'இப்போது எதுவும் திட்டமிடப்படவில்லை';

  @override
  String get noScheduledAlertsBody =>
      'பட்ஜெட்டுகளும் தவணைகளும் வரம்பை நெருங்கும்போது எச்சரிக்கைகள் இங்கே தோன்றும்.';

  @override
  String scheduledFor(String date) {
    return '$date அன்று திட்டமிடப்பட்டது';
  }

  @override
  String get everyWeek => 'ஒவ்வொரு வாரமும்';

  @override
  String get allNotificationsOff => 'அனைத்து அறிவிப்புகளும் அணைக்கப்பட்டுள்ளன';

  @override
  String get needsAttention => 'கவனம் தேவை';

  @override
  String get quickActionsTitle => 'என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String get createSection => 'பதிவு செய்';

  @override
  String get jumpToSection => 'செல்';

  @override
  String get addLoanAction => 'கடன் சேர்';

  @override
  String get addBudgetAction => 'பட்ஜெட் சேர்';

  @override
  String get addGoalAction => 'இலக்கு சேர்';

  @override
  String get longPressHint =>
      'குறிப்பு: நேரடியாகச் செலவைப் பதிவு செய்ய + ஐ அழுத்திப் பிடியுங்கள்';

  @override
  String get searchCurrencies => 'நாணயங்களைத் தேடு';

  @override
  String get noCurrenciesFound => 'நாணயம் எதுவும் கிடைக்கவில்லை';

  @override
  String get noCurrenciesFoundMessage =>
      'வேறு குறியீடு, சின்னம் அல்லது பெயரை முயலுங்கள்.';

  @override
  String get popularCurrencies => 'பிரபலமானவை';

  @override
  String get allCurrencies => 'அனைத்து நாணயங்கள்';

  @override
  String get totalLoanAmount => 'மொத்தக் கடன் தொகை';

  @override
  String get installmentAmount => 'தவணைத் தொகை';

  @override
  String get numberOfInstallments => 'தவணைகளின் எண்ணிக்கை';

  @override
  String get paidInstallments => 'கட்டிய தவணைகள்';

  @override
  String get remainingInstallments => 'மீதமுள்ள தவணைகள்';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total இல் $paid கட்டப்பட்டது';
  }

  @override
  String get finalPayment => 'கடைசித் தவணை';

  @override
  String get paymentDueDate => 'தவணைத் தேதி';

  @override
  String dueOnDayOfMonth(int day) {
    return 'ஒவ்வொரு மாதமும் $day ஆம் தேதி';
  }

  @override
  String get loanStatus => 'நிலை';

  @override
  String get statusActive => 'சரியான பாதையில்';

  @override
  String get statusDueSoon => 'விரைவில் கட்ட வேண்டும்';

  @override
  String get statusOverdue => 'தவணை தாண்டியது';

  @override
  String get statusCompleted => 'முழுவதும் கட்டப்பட்டது';

  @override
  String get repaymentProgress => 'திருப்பிச் செலுத்தும் முன்னேற்றம்';

  @override
  String get byAmount => 'தொகையின்படி';

  @override
  String get byInstallments => 'தவணைகளின்படி';

  @override
  String get startDate => 'தொடங்கும் தேதி';

  @override
  String get openEnded => 'கால வரம்பு இல்லை';

  @override
  String get loanDetails => 'கடன் விவரங்கள்';

  @override
  String get notSet => 'அமைக்கப்படவில்லை';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject இன்று கட்ட வேண்டும்';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'உங்கள் $amount தவணை இன்று கட்ட வேண்டியது. ஒரு தட்டலில் நேரத்தோடு முடியும்.';
  }

  @override
  String get remindMorningTitle => 'காலை வணக்கம் ☀️';

  @override
  String get remindMorningBody =>
      'பணத்தின் மேல் பிடியுடன் நாளைத் தொடங்குங்கள். நேற்றைய ஏதேனும் சேர்க்க வேண்டுமா?';

  @override
  String get remindNoonTitle => 'நண்பகல் சரிபார்ப்பு';

  @override
  String get remindNoonBody =>
      'மதிய உணவு, காபி, பயணக் கட்டணம்? சில வினாடிகளில் பதிவு செய்யலாம்.';

  @override
  String get remindAfternoonTitle => 'விரைவான நிரப்புதல்';

  @override
  String get remindAfternoonBody =>
      'இதுவரை செலவழித்ததைப் பதிவு செய்யுங்கள், இன்றைய கணக்கு சரியாக இருக்கும்.';

  @override
  String get remindEveningTitle => 'நாளை நிறைவு செய்கிறோம்';

  @override
  String get remindEveningBody =>
      'இப்போது இரண்டு நிமிடம், இன்றைய கணக்கு முழுமையாகும்.';

  @override
  String get happyWeekendTitle => 'இனிய வார இறுதி! 🎉';

  @override
  String get happyWeekendBody =>
      'மகிழுங்கள் — வார இறுதிச் செலவின் மீதும் கொஞ்சம் கண் வையுங்கள்.';

  @override
  String get dailyReminders => 'தினசரி செலவு நினைவூட்டல்கள்';

  @override
  String get dailyRemindersBody =>
      'செலவுகள் நடப்பில் இருக்க மென்மையான நினைவூட்டல்கள்';

  @override
  String get weekendGreeting => 'வார இறுதி வாழ்த்து';

  @override
  String get weekendGreetingBody =>
      'உங்கள் வார இறுதியின் தொடக்கத்தில் ஒரு அன்பான வாழ்த்து';

  @override
  String get reminderTimesSection => 'நினைவூட்டல் நேரங்கள்';

  @override
  String get slotMorning => 'காலை';

  @override
  String get slotNoon => 'நண்பகல்';

  @override
  String get slotAfternoon => 'பிற்பகல்';

  @override
  String get slotEvening => 'மாலை';

  @override
  String get everyDay => 'தினமும்';

  @override
  String get financialReport => 'நிதி அறிக்கை';

  @override
  String get preparedFor => 'யாருக்காகத் தயாரிக்கப்பட்டது';

  @override
  String get generatedOn => 'உருவாக்கப்பட்ட நாள்';

  @override
  String get reportDisclaimer =>
      'உங்கள் சொந்தப் பதிவுகளிலிருந்து RainyPenny உருவாக்கியது.';

  @override
  String pageOf(int page, int total) {
    return 'பக்கம் $page / $total';
  }

  @override
  String get overview => 'சுருக்கம்';

  @override
  String get description => 'விவரம்';

  @override
  String get totalIncome => 'மொத்த வருமானம்';

  @override
  String get totalExpenses => 'மொத்தச் செலவு';

  @override
  String get totalSaved => 'மொத்தச் சேமிப்பு';

  @override
  String get shareOfTotal => 'பங்கு';

  @override
  String get used => 'பயன்படுத்தியது';

  @override
  String get goal => 'இலக்கு';

  @override
  String get targetDate => 'இலக்குத் தேதி';

  @override
  String get progress => 'முன்னேற்றம்';

  @override
  String get paidOffShort => 'கட்டியது';

  @override
  String get transactions => 'பரிவர்த்தனைகள்';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'மேலும் $count பரிவர்த்தனைகள்',
      one: 'மேலும் $count பரிவர்த்தனை',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF ஏற்றுமதி';

  @override
  String get sharePdf => 'அறிக்கையைப் பகிர்';

  @override
  String get preparingReport => 'உங்கள் அறிக்கை தயாராகிறது…';

  @override
  String get reportReady => 'அறிக்கை தயார்';

  @override
  String get reportFailed => 'அறிக்கையை உருவாக்க முடியவில்லை';

  @override
  String get categories => 'வகைகள்';

  @override
  String get categoriesIntro =>
      'உங்கள் சொந்த வகைகளைச் சேருங்கள், அப்போது வருமானமும் செலவும் நீங்கள் நினைக்கும் விதத்திலேயே பிரிக்கப்படும்.';

  @override
  String get expenseCategories => 'செலவு வகைகள்';

  @override
  String get incomeCategories => 'வருமான வகைகள்';

  @override
  String get newCategory => 'புதிய வகை';

  @override
  String get editCategory => 'வகையைத் திருத்து';

  @override
  String get categoryName => 'பெயர்';

  @override
  String get categoryNameHint => 'எ.கா. செல்லப் பிராணி';

  @override
  String get icon => 'ஐகான்';

  @override
  String get categorySaved => 'வகை சேமிக்கப்பட்டது';

  @override
  String get categoryDeleted => 'வகை நீக்கப்பட்டது';

  @override
  String get deleteCategory => 'இந்த வகையை நீக்கவா?';

  @override
  String deleteCategoryBody(String name) {
    return '$name உங்கள் வகைகளிலிருந்து நீக்கப்படும்.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பதிவுகள் இன்னும் இந்த வகையைப் பயன்படுத்துகின்றன',
      one: '$count பதிவு இன்னும் இந்த வகையைப் பயன்படுத்துகிறது',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'இங்கே இன்னும் எதுவும் இல்லை.';

  @override
  String get builtIn => 'உள்ளமைந்தது';

  @override
  String get manageCategories => 'வகைகளை நிர்வகி';

  @override
  String get expense => 'செலவு';

  @override
  String get languageNote =>
      'அரபு, உருது, பாரசீகம், எபிரேயம் ஆகியவை வரைபடங்கள், PDF அறிக்கைகள் உட்பட முழு இடைமுகத்தையும் வலமிருந்து இடமாக மாற்றுகின்றன.';

  @override
  String get next => 'அடுத்து';

  @override
  String get back => 'பின்';

  @override
  String get skip => 'தவிர்';

  @override
  String get continueLabel => 'தொடர்';

  @override
  String get selected => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get passwordRequired => 'உங்கள் கடவுச்சொல்லை உள்ளிடுங்கள்';

  @override
  String get newPasswordLabel => 'புதிய கடவுச்சொல்';

  @override
  String get confirmPasswordLabel => 'கடவுச்சொல்லை உறுதிப்படுத்து';

  @override
  String get passwordsDoNotMatch =>
      'இரு கடவுச்சொற்களும் ஒன்றாக இருக்க வேண்டும்';

  @override
  String get showPassword => 'கடவுச்சொல்லைக் காட்டு';

  @override
  String get hidePassword => 'கடவுச்சொல்லை மறை';

  @override
  String get savePassword => 'கடவுச்சொல்லைச் சேமி';

  @override
  String get backToSignIn => 'உள்நுழைவுக்குத் திரும்பு';

  @override
  String get alreadyHaveAccount => 'எனக்கு ஏற்கெனவே கணக்கு உள்ளது';

  @override
  String get getStarted => 'தொடங்குவோம்';

  @override
  String get acceptTerms =>
      'சேவை விதிமுறைகளையும் தனியுரிமைக் கொள்கையையும் ஏற்கிறேன்';

  @override
  String get acceptTermsRequired => 'தொடர ஏற்றுக்கொள்ளுங்கள்';

  @override
  String get passwordStrengthTooShort => 'மிகவும் சிறியது';

  @override
  String get passwordStrengthWeak => 'பலவீனம்';

  @override
  String get passwordStrengthFair => 'பரவாயில்லை';

  @override
  String get passwordStrengthGood => 'நல்லது';

  @override
  String get passwordStrengthStrong => 'வலிமையானது';

  @override
  String get passwordAdvice =>
      'நினைவில் நிற்கும் நீண்ட சொற்றொடர், குறியீடுகள் நிறைந்த சிறிய கடவுச்சொல்லை விடச் சிறந்தது. வேறு எங்கும் பயன்படுத்துவதைத் தவிர்க்கவும்.';

  @override
  String get authInvalidCredentials =>
      'இந்த மின்னஞ்சலும் கடவுச்சொல்லும் எந்தக் கணக்குடனும் பொருந்தவில்லை';

  @override
  String get authEmailNotConfirmed =>
      'உள்நுழைவதற்கு முன் உங்கள் மின்னஞ்சல் முகவரியை உறுதிப்படுத்துங்கள்';

  @override
  String get authEmailAlreadyRegistered =>
      'இந்த மின்னஞ்சலுடன் ஒரு கணக்கு ஏற்கெனவே உள்ளது';

  @override
  String get authWeakPassword => 'நீளமான கடவுச்சொல்லைத் தேர்ந்தெடுங்கள்';

  @override
  String get authRateLimited =>
      'பல முறை முயற்சி. சில நிமிடங்கள் கழித்து மீண்டும் முயலுங்கள்';

  @override
  String get authNetworkError =>
      'இணைப்பு இல்லை. நெட்வொர்க்கைச் சரிபார்த்து மீண்டும் முயலுங்கள்';

  @override
  String get authGenericError =>
      'ஏதோ தவறாகிவிட்டது. தயவுசெய்து மீண்டும் முயலுங்கள்';

  @override
  String get confirmEmailTitle => 'உங்கள் மின்னஞ்சலைப் பாருங்கள்';

  @override
  String confirmEmailBody(String email) {
    return '$email க்கு உறுதிப்படுத்தல் இணைப்பை அனுப்பியுள்ளோம். கணக்கை முடிக்க அதைத் திறங்கள்.';
  }

  @override
  String get resendConfirmation =>
      'உறுதிப்படுத்தல் மின்னஞ்சலை மீண்டும் அனுப்பு';

  @override
  String get confirmationResent => 'உறுதிப்படுத்தல் மின்னஞ்சல் அனுப்பப்பட்டது';

  @override
  String get forgotPasswordTitle => 'கடவுச்சொல்லை மீட்டமை';

  @override
  String get forgotPasswordSubtitle =>
      'நீங்கள் பதிவு செய்த மின்னஞ்சலை உள்ளிடுங்கள், புதிய கடவுச்சொல்லைத் தேர்ந்தெடுக்க இணைப்பை அனுப்புகிறோம்.';

  @override
  String get sendResetLink => 'மீட்டமைப்பு இணைப்பை அனுப்பு';

  @override
  String get resetLinkSentTitle => 'இணைப்பு அனுப்பப்பட்டது';

  @override
  String resetLinkSentBody(String email) {
    return '$email க்கு கணக்கு இருந்தால், மீட்டமைப்பு இணைப்பு வந்துகொண்டிருக்கிறது.';
  }

  @override
  String get resetLinkSentHint =>
      'இணைப்பு ஒரு மணி நேரத்தில் காலாவதியாகும். வரவில்லை என்றால், புதியதைக் கேட்பதற்கு முன் ஸ்பேம் கோப்புறையைப் பாருங்கள்.';

  @override
  String get tryAnotherEmail => 'வேறு மின்னஞ்சலைப் பயன்படுத்து';

  @override
  String get resetPasswordTitle => 'புதிய கடவுச்சொல்லைத் தேர்ந்தெடு';

  @override
  String get resetPasswordSubtitle =>
      'இந்தக் கணக்கில் இதுவரை பயன்படுத்தாத ஒன்றைத் தேர்ந்தெடுங்கள்.';

  @override
  String get passwordChangedTitle => 'கடவுச்சொல் புதுப்பிக்கப்பட்டது';

  @override
  String get passwordChangedBody =>
      'உங்கள் புதிய கடவுச்சொல் சேமிக்கப்பட்டது. நீங்கள் உள்நுழைந்துள்ளீர்கள், தொடரலாம்.';

  @override
  String get demoModeHint => 'டெமோ பதிப்பு — கணக்கு தேவையில்லை';

  @override
  String get demoModeFill => 'நிரப்பு';

  @override
  String get welcomeTrackTitle => 'உங்கள் பணம் எங்கே செல்கிறது என்று பாருங்கள்';

  @override
  String get welcomeTrackBody =>
      'வருவதையும் போவதையும் பதிவு செய்யுங்கள். RainyPenny அதை உண்மையிலேயே படிக்கக்கூடிய ஒரு படமாக மாற்றுகிறது.';

  @override
  String get welcomeBudgetTitle => 'நிலைக்கும் வரம்புகள்';

  @override
  String get welcomeBudgetBody =>
      'உங்கள் செலவின் ஒவ்வொரு பகுதிக்கும் மாத உச்சவரம்பு வையுங்கள், தாண்டிய பிறகல்ல — தாண்டுவதற்கு முன்பே தெரிந்துகொள்ளுங்கள்.';

  @override
  String get welcomeGoalsTitle => 'முக்கியமானதற்காகச் சேமியுங்கள்';

  @override
  String get welcomeGoalsBody =>
      'இலக்குக்கு ஒரு பெயர், ஒரு தொகை வையுங்கள், அது நிறைவதைப் பாருங்கள். கண்ணுக்குத் தெரியும்போது அவசர நிதி எளிதாக உருவாகும்.';

  @override
  String get welcomePrivacyTitle => 'உங்கள் பணம் உங்களுடையதே';

  @override
  String get welcomePrivacyBody =>
      'உங்கள் எண்கள் உங்களுக்கு மட்டுமே. எதுவும் விற்கப்படுவதில்லை, யாருடனும் பகிரப்படுவதில்லை.';

  @override
  String stepOf(int step, int total) {
    return 'படி $step / $total';
  }

  @override
  String get onboardingNameTitle => 'உங்களை என்ன அழைப்பது?';

  @override
  String get onboardingNameBody =>
      'வாழ்த்துவதற்கு மட்டுமே பயன்படுத்துவோம், வேறெங்கும் இல்லை.';

  @override
  String get onboardingNameHint =>
      'முதற்பெயர் போதும். பிறகு மாற்றிக்கொள்ளலாம்.';

  @override
  String get onboardingCurrencyTitle =>
      'நீங்கள் எந்த நாணயத்தைப் பயன்படுத்துகிறீர்கள்?';

  @override
  String get onboardingCurrencyBody =>
      'செயலியில் உள்ள ஒவ்வொரு தொகையும் இந்த நாணயத்தில் காட்டப்படும். தேர்ந்தெடுப்பது எதையும் மாற்றாது.';

  @override
  String get onboardingCurrencySearch => 'அனைத்து நாணயங்களிலும் தேடு';

  @override
  String get onboardingAppearanceTitle => 'உங்களுக்கேற்ப அமையுங்கள்';

  @override
  String get onboardingAppearanceBody =>
      'ஒரு தோற்றத்தைத் தேர்ந்தெடுங்கள். தொடும்போதே எல்லாம் மாறும், எப்போது வேண்டுமானாலும் திரும்பி வரலாம்.';

  @override
  String get onboardingNotificationsTitle => 'கண்காணித்துக்கொண்டே இருங்கள்';

  @override
  String get onboardingNotificationsBody =>
      'சரியான தருணத்தில் வரும் அமைதியான நினைவூட்டலே இதைப் பழக்கமாக்குகிறது.';

  @override
  String get onboardingNotifyReminders =>
      'செலவழித்ததைப் பதிவு செய்ய மென்மையான நினைவூட்டல்';

  @override
  String get onboardingNotifyBudget => 'பட்ஜெட் தீர்வதற்கு முன் ஒரு தகவல்';

  @override
  String get onboardingNotifySummary =>
      'பணம் எங்கே சென்றது என்பதன் வாராந்திரச் சுருக்கம்';

  @override
  String get onboardingNotifyEnable => 'அறிவிப்புகளை இயக்கு';

  @override
  String get onboardingNotifyDone => 'அறிவிப்பு அமைப்புகள் சேமிக்கப்பட்டன';

  @override
  String get onboardingNotifyLater =>
      'இவை அனைத்தையும் அமைப்புகளில் எப்போது வேண்டுமானாலும் மாற்றலாம்.';

  @override
  String get onboardingReadyTitle => 'எல்லாம் தயார்';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'எல்லாம் தயார், $name';
  }

  @override
  String get onboardingReadyBody =>
      'அமைப்பு முடிந்தது. எல்லாம் எப்படி வேலை செய்கிறது என்று சுருக்கமாகப் பார்க்கலாமா?';

  @override
  String get onboardingTakeTour => 'எனக்குக் காட்டுங்கள்';

  @override
  String get onboardingGoToApp => 'செயலிக்குச் செல்';

  @override
  String get onboardingTourLater =>
      'இப்போது வேண்டாமா? வழிகாட்டி அமைப்புகளில் இருக்கும், எப்போது வேண்டுமானாலும் பாருங்கள்.';

  @override
  String get beginnersGuide => 'தொடக்க வழிகாட்டி';

  @override
  String get guideFinish => 'முடி';

  @override
  String chapterOf(int number, int total) {
    return 'அத்தியாயம் $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen திற';
  }

  @override
  String get guideDashboardTitle => 'உங்கள் முகப்பு';

  @override
  String get guideDashboardBody =>
      'எல்லாம் இங்கிருந்தே தொடங்குகிறது. மேலே உள்ள அட்டை உங்களிடம் மீதமுள்ளதைக் காட்டுகிறது; அதற்குக் கீழே இந்தக் காலத்தின் வருமானமும் செலவும், பிறகு உங்கள் செலவு, பட்ஜெட்டுகள், இலக்குகள்.';

  @override
  String get guideDashboardTip1 =>
      'எல்லாவற்றையும் ஒரே நேரத்தில் புதுப்பிக்கத் திரையைக் கீழே இழுங்கள்.';

  @override
  String get guideDashboardTip2 =>
      'அந்தப் பட்டியலுக்கு நேரடியாகச் செல்ல வருமான அல்லது செலவு அட்டையைத் தட்டுங்கள்.';

  @override
  String get guideDashboardTip3 =>
      'நீங்கள் ஏதேனும் பதிவு செய்தவுடன் வளையங்களும் நுண்ணறிவுகளும் புதுப்பிக்கப்படும்.';

  @override
  String get guideAddTitle => 'பணத்தைப் பதிவு செய்தல்';

  @override
  String get guideAddBody =>
      'பட்டியின் நடுவில் உள்ள பொத்தானே எல்லாவற்றின் தொடக்கம். அது ஒரு சிறிய பட்டியலைத் திறக்கும்: செலவு, வருமானம், கடன், பட்ஜெட் அல்லது சேமிப்பு இலக்கு.';

  @override
  String get guideAddTip1 =>
      'வருமானத்தையோ செலவையோ பதிவு செய்ய நடுப் பொத்தானைத் தட்டுங்கள்.';

  @override
  String get guideAddTip2 =>
      'பட்டியலைத் தவிர்த்து நேரடியாகப் புதிய செலவுக்குச் செல்ல அதை அழுத்திப் பிடியுங்கள்.';

  @override
  String get guideAddTip3 =>
      'எப்போதும் ஒரு வகையைத் தேர்ந்தெடுங்கள் — வரைபடங்களும் பட்ஜெட்டுகளும் அதன் அடிப்படையிலேயே இயங்குகின்றன.';

  @override
  String get guideCategoriesTitle => 'வகைகள்';

  @override
  String get guideCategoriesBody =>
      'வகைகள்தான் செலவை குழுக்களாகப் பிரிக்கின்றன. செயலியுடன் வரும் வகைகள் பெரும்பாலானோருக்குப் போதும், நீங்கள் பெயரை மாற்றலாம் அல்லது உங்களுடையதைச் சேர்க்கலாம்.';

  @override
  String get guideCategoriesTip1 =>
      'மாற்றவோ சேர்க்கவோ அமைப்புகள், பிறகு வகைகளை நிர்வகி.';

  @override
  String get guideCategoriesTip2 =>
      'வகை இல்லாத அனைத்தும் «மற்றவை» இல் சேரும், அதனால் வரைபடங்கள் நேர்மையாக இருக்கும்.';

  @override
  String get guideBudgetTitle => 'பட்ஜெட்டுகள்';

  @override
  String get guideBudgetBody =>
      'பட்ஜெட் என்பது ஒரு வகைக்கான மாத உச்சவரம்பு. செலவழிக்கும்போது பட்டை நிரம்பும், வரம்பு நெருங்கும்போது நிறம் மாறும், அதனால் தாண்டுவதற்கு முன்பே தெரிந்துவிடும்.';

  @override
  String get guideBudgetTip1 =>
      'எல்லாவற்றையும் ஒரே நேரத்தில் அல்ல — இரண்டு மூன்று வகைகளில் தொடங்குங்கள்.';

  @override
  String get guideBudgetTip2 =>
      'வரம்பை உங்கள் வழக்கமான செலவை விடச் சற்று அதிகமாக வையுங்கள், பிறகு குறையுங்கள்.';

  @override
  String get guideBudgetTip3 =>
      'பட்ஜெட் எச்சரிக்கைகளை இயக்கியே வையுங்கள், தீரும்போது செயலி எச்சரிக்கும்.';

  @override
  String get guideSavingsTitle => 'சேமிப்பு இலக்குகள்';

  @override
  String get guideSavingsBody =>
      'எதற்காகச் சேமிக்கிறீர்கள் என்பதற்குப் பெயரிட்டு, தொகையையும் தேதியையும் வையுங்கள் — ஒவ்வொரு மாதமும் எவ்வளவு ஒதுக்க வேண்டும் என்று செயலி கணக்கிடும்.';

  @override
  String get guideSavingsTip1 =>
      'பெயரிடப்பட்ட இலக்கு, தெளிவற்ற சேமிப்பு எண்ணத்தை விட எளிதில் நிலைக்கும்.';

  @override
  String get guideSavingsTip2 =>
      'ஒரு பெரிய இலக்கை விடச் சில சிறிய இலக்குகளே அடிக்கடி நிறைவேறும்.';

  @override
  String get guideLoansTitle => 'கடன்கள்';

  @override
  String get guideLoansBody =>
      'எவ்வளவு கடன், அதன் செலவு என்ன, அடுத்த தவணை எப்போது என்று பதிவு செய்யுங்கள். நீங்கள் கட்டி வருபவை அனைத்தும் மீதத் தொகையுடன் ஒரே பட்டியலில் இருக்கும்.';

  @override
  String get guideLoansTip1 =>
      'தவணைத் தேதியைச் சேருங்கள், நினைவூட்டல்கள் உங்களுக்காகத் தொடர்ந்து நினைவூட்டும்.';

  @override
  String get guideLoansTip2 =>
      'தவணை தாண்டிய கடன், கட்டப்படும் வரை முகப்பில் சிவப்பாகத் தெரியும்.';

  @override
  String get guideReportsTitle => 'அறிக்கைகள்';

  @override
  String get guideReportsBody =>
      'ஆழமான பார்வை: வருமானமும் செலவும், வகை வாரியான செலவு, பட்ஜெட்டுகள் எவ்வளவு நிலைத்தன, உங்கள் வருமானத்தில் எவ்வளவு மீதம்.';

  @override
  String get guideReportsTip1 =>
      'திரையின் மேலே வாரம், மாதம், காலாண்டு இடையே மாறுங்கள்.';

  @override
  String get guideReportsTip2 =>
      'PDF ஐ ஏற்றுமதி செய்யுங்கள் அல்லது பகிருங்கள் — அது உங்கள் மொழியிலும் திசையிலும் வரும்.';

  @override
  String get guideSettingsTitle => 'அமைப்புகள்';

  @override
  String get guideSettingsBody =>
      'மொழி, நாணயம், நிறங்கள், எச்சரிக்கைகள் அனைத்தும் இங்கே. தொடக்க அமைப்பால் எதுவும் நிரந்தரமாகிவிடாது — எப்போது வேண்டுமானாலும் மாற்றுங்கள்.';

  @override
  String get guideSettingsTip1 =>
      'நாற்பது மொழிகள், மேலும் வலமிருந்து இடமாகப் படிக்கும் மொழிகளுக்கு முழு அமைப்பும் பிரதிபலிக்கும்.';

  @override
  String get guideSettingsTip2 =>
      'எந்த எச்சரிக்கைகள் வேண்டும், அவை எந்த நேரங்களில் வரலாம் என்று தேர்ந்தெடுங்கள்.';

  @override
  String get guideSettingsTip3 =>
      'அமைதி நேரம் அனைத்தையும் காலை வரை நிறுத்தி வைக்கும்.';

  @override
  String get guideHabitTitle => 'பழக்கமாக்குங்கள்';

  @override
  String get guideHabitBody =>
      'நீங்கள் எவ்வளவு போடுகிறீர்களோ அவ்வளவே செயலி பயனுள்ளது. மாதம் ஒரு மணி நேரத்தை விட நாளொன்றுக்கு ஒரு நிமிடம் மேல், இரண்டு வாரங்களில் எண்கள் ஏதோ சொல்லத் தொடங்கும்.';

  @override
  String get guideHabitTip1 =>
      'வாரக்கடைசியில் அல்ல, செலவழிக்கும் அந்த நேரத்திலேயே பதிவு செய்யுங்கள்.';

  @override
  String get guideHabitTip2 =>
      'நாளொன்றுக்கு ஒரு முறை முகப்பைப் பாருங்கள். பத்து வினாடிகள் போதும்.';

  @override
  String get guideHabitTip3 =>
      'இந்த வழிகாட்டி அமைப்புகளிலேயே இருக்கும் — எப்போது வேண்டுமானாலும் திரும்பி வாருங்கள்.';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get themeCaption =>
      'வெளிர், அடர், அல்லது உங்கள் தொலைபேசி என்ன செய்கிறதோ அது.';

  @override
  String get accentColor => 'முதன்மை நிறம்';

  @override
  String get accentColorCaption =>
      'பொத்தான்கள், சிறப்புக் கூறுகள், வரைபடங்களுக்கு நிறம் தருகிறது.';

  @override
  String get accentSemanticsNote =>
      'வருமானமும் செலவும் எல்லாத் தீம்களிலும் தங்கள் நிறங்களைத் தக்கவைக்கின்றன, எனவே முதன்மை நிறத்தை மாற்றியதால் எந்த எண்ணின் பொருளும் மாறாது.';

  @override
  String get accentTeal => 'பச்சை-நீலம்';

  @override
  String get accentGreen => 'பச்சை';

  @override
  String get accentSky => 'வானநீலம்';

  @override
  String get accentBlue => 'நீலம்';

  @override
  String get accentIndigo => 'அடர் நீலம்';

  @override
  String get accentViolet => 'ஊதா';

  @override
  String get accentPink => 'இளஞ்சிவப்பு';

  @override
  String get accentCrimson => 'கருஞ்சிவப்பு';

  @override
  String get accentOrange => 'ஆரஞ்சு';

  @override
  String get accentSlate => 'சாம்பல்';

  @override
  String get searchLanguages => 'மொழிகளைத் தேடு';

  @override
  String get suggestedLanguages => 'பரிந்துரைக்கப்பட்டவை';

  @override
  String get allLanguages => 'அனைத்து மொழிகள்';

  @override
  String get noLanguagesFound => 'மொழி எதுவும் கிடைக்கவில்லை';

  @override
  String get noLanguagesFoundMessage =>
      'ஆங்கிலப் பெயரையோ இரண்டெழுத்துக் குறியீட்டையோ முயலுங்கள்.';

  @override
  String get rightToLeft => 'வலமிருந்து இடம்';

  @override
  String get replayGuide => 'வழிகாட்டியை மீண்டும் பார்';

  @override
  String get replaySetup => 'அமைப்பை மீண்டும் இயக்கு';

  @override
  String get replaySetupBody =>
      'தொடக்கக் கேள்விகளுக்கு மீண்டும் பதிலளியுங்கள். நீங்கள் பதிவு செய்த எதுவும் நீக்கப்படாது.';

  @override
  String get rateTitle => 'RainyPenny பிடித்திருக்கிறதா?';

  @override
  String get rateBody =>
      'நீங்கள் சில காலமாக இதைப் பயன்படுத்தி வருகிறீர்கள். மதிப்பீடு அளிக்க ஒரு கணம் போதும், மற்றவர்கள் செயலியைக் கண்டறிய அது உதவும்.';

  @override
  String get rateAction => 'செயலியை மதிப்பிடுங்கள்';

  @override
  String get rateLater => 'பிறகு பார்க்கலாம்';

  @override
  String get rateNever => 'வேண்டாம், நன்றி';

  @override
  String get rateThanks => 'நன்றி';

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
