// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppL10nHi extends AppL10n {
  AppL10nHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'मुश्किल दिनों के लिए बचत करें';

  @override
  String get navHome => 'होम';

  @override
  String get navTransactions => 'लेन-देन';

  @override
  String get navAdd => 'जोड़ें';

  @override
  String get navReports => 'रिपोर्ट';

  @override
  String get navProfile => 'प्रोफ़ाइल';

  @override
  String greetingMorning(String name) {
    return 'सुप्रभात, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'शुभ संध्या, $name';
  }

  @override
  String get greetingSubtitle => 'यह रहा आपका वित्तीय सारांश';

  @override
  String get totalBalance => 'कुल शेष';

  @override
  String get vsLastPeriod => 'पिछली अवधि की तुलना में';

  @override
  String get income => 'आय';

  @override
  String get expenses => 'व्यय';

  @override
  String get netBalance => 'शुद्ध शेष';

  @override
  String get lastThirtyDays => 'पिछले 30 दिन';

  @override
  String get quickActions => 'त्वरित कार्य';

  @override
  String get addIncome => 'आय जोड़ें';

  @override
  String get addExpense => 'व्यय जोड़ें';

  @override
  String get spendingOverview => 'खर्च का अवलोकन';

  @override
  String get recentTransactions => 'हाल के लेन-देन';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get viewAll => 'सभी देखें';

  @override
  String get budgetProgress => 'बजट प्रगति';

  @override
  String get savingsGoals => 'बचत लक्ष्य';

  @override
  String get financialInsight => 'वित्तीय अंतर्दृष्टि';

  @override
  String get financialHealth => 'वित्तीय स्वास्थ्य';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'लेन-देन खोजें';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterIncome => 'आय';

  @override
  String get filterExpenses => 'व्यय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get noTransactionsTitle => 'कोई लेन-देन नहीं मिला';

  @override
  String get noTransactionsBody => 'कोई दूसरी खोज या फ़िल्टर आज़माएँ।';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'लेन-देन जोड़ें';

  @override
  String get amount => 'राशि';

  @override
  String get category => 'श्रेणी';

  @override
  String get date => 'तारीख़';

  @override
  String get note => 'टिप्पणी';

  @override
  String get noteHint => 'वैकल्पिक टिप्पणी';

  @override
  String get saveIncome => 'आय सहेजें';

  @override
  String get saveExpense => 'व्यय सहेजें';

  @override
  String get selectCategory => 'श्रेणी चुनें';

  @override
  String get transactionSaved => 'लेन-देन सहेजा गया';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे किराना';

  @override
  String get budget => 'बजट';

  @override
  String get budgets => 'बजट';

  @override
  String get totalBudget => 'कुल बजट';

  @override
  String get spent => 'खर्च';

  @override
  String get remaining => 'शेष';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'सही राह पर';

  @override
  String get approachingLimit => 'सीमा के करीब';

  @override
  String get overBudget => 'बजट से अधिक';

  @override
  String get savings => 'बचत';

  @override
  String get yourGoals => 'आपके लक्ष्य';

  @override
  String get saved => 'बचाया गया';

  @override
  String get target => 'लक्ष्य';

  @override
  String get monthlyContribution => 'मासिक';

  @override
  String get addFunds => 'राशि जोड़ें';

  @override
  String get goalComplete => 'लक्ष्य पूरा';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months to go',
      one: '1 month to go',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'ऋण और देनदारियाँ';

  @override
  String get totalOutstanding => 'कुल बकाया';

  @override
  String get monthlyPayment => 'मासिक';

  @override
  String get nextPayment => 'अगला भुगतान';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'ब्याज';

  @override
  String get upcomingPayments => 'आगामी भुगतान';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'अतिदेय';

  @override
  String get reports => 'रिपोर्ट';

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'माह';

  @override
  String get quarter => 'तिमाही';

  @override
  String get incomeVsExpenses => 'आय बनाम व्यय';

  @override
  String get spendingByCategory => 'श्रेणी अनुसार खर्च';

  @override
  String get budgetPerformance => 'बजट प्रदर्शन';

  @override
  String get insights => 'अंतर्दृष्टि';

  @override
  String get savingsRate => 'बचत दर';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get account => 'खाता';

  @override
  String get personalInformation => 'व्यक्तिगत जानकारी';

  @override
  String get changePassword => 'पासवर्ड बदलें';

  @override
  String get notifications => 'सूचनाएँ';

  @override
  String get preferences => 'प्राथमिकताएँ';

  @override
  String get language => 'भाषा';

  @override
  String get currency => 'मुद्रा';

  @override
  String get theme => 'थीम';

  @override
  String get security => 'सुरक्षा';

  @override
  String get privacyAndSecurity => 'गोपनीयता और सुरक्षा';

  @override
  String get help => 'सहायता';

  @override
  String get helpAndSupport => 'सहायता और समर्थन';

  @override
  String get termsAndConditions => 'नियम और शर्तें';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get dashboard => 'डैशबोर्ड';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get noNotificationsTitle => 'सब कुछ अपडेट है';

  @override
  String get noNotificationsBody => 'नई अंतर्दृष्टि और अनुस्मारक यहाँ दिखेंगे।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get done => 'हो गया';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get close => 'बंद करें';

  @override
  String get somethingWentWrong => 'कुछ गड़बड़ हो गई';

  @override
  String get comingSoon => 'जल्द ही आ रहा है';
}
