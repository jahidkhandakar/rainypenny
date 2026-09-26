// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppL10nEl extends AppL10n {
  AppL10nEl([String locale = 'el']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Αποταμιεύστε για δύσκολες μέρες';

  @override
  String get navHome => 'Αρχική';

  @override
  String get navTransactions => 'Κινήσεις';

  @override
  String get navAdd => 'Προσθήκη';

  @override
  String get navReports => 'Αναφορές';

  @override
  String get navProfile => 'Προφίλ';

  @override
  String greetingMorning(String name) {
    return 'Καλημέρα, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Καλό απόγευμα, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Καλησπέρα, $name';
  }

  @override
  String get greetingSubtitle => 'Αυτή είναι η οικονομική σας εικόνα';

  @override
  String get totalBalance => 'Συνολικό υπόλοιπο';

  @override
  String get vsLastPeriod => 'σε σχέση με την προηγούμενη περίοδο';

  @override
  String get income => 'Έσοδα';

  @override
  String get expenses => 'Έξοδα';

  @override
  String get netBalance => 'Καθαρό υπόλοιπο';

  @override
  String get lastThirtyDays => 'Τελευταίες 30 ημέρες';

  @override
  String get quickActions => 'Γρήγορες ενέργειες';

  @override
  String get addIncome => 'Προσθήκη εσόδου';

  @override
  String get addExpense => 'Προσθήκη εξόδου';

  @override
  String get spendingOverview => 'Επισκόπηση δαπανών';

  @override
  String get recentTransactions => 'Πρόσφατες κινήσεις';

  @override
  String get seeAll => 'Δείτε τα όλα';

  @override
  String get viewAll => 'Εμφάνιση όλων';

  @override
  String get budgetProgress => 'Πορεία προϋπολογισμών';

  @override
  String get savingsGoals => 'Στόχοι αποταμίευσης';

  @override
  String get financialInsight => 'Οικονομική παρατήρηση';

  @override
  String get financialHealth => 'Οικονομική υγεία';

  @override
  String ofTotal(String total) {
    return 'από $total';
  }

  @override
  String get searchTransactions => 'Αναζήτηση κινήσεων';

  @override
  String get filterAll => 'Όλα';

  @override
  String get filterIncome => 'Έσοδα';

  @override
  String get filterExpenses => 'Έξοδα';

  @override
  String get today => 'Σήμερα';

  @override
  String get yesterday => 'Χθες';

  @override
  String get noTransactionsTitle => 'Δεν βρέθηκαν κινήσεις';

  @override
  String get noTransactionsBody =>
      'Δοκιμάστε άλλη αναζήτηση ή φίλτρο για να δείτε περισσότερες εγγραφές.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count κινήσεις',
      one: '$count κίνηση',
      zero: 'Καμία κίνηση',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Προσθήκη κίνησης';

  @override
  String get amount => 'Ποσό';

  @override
  String get category => 'Κατηγορία';

  @override
  String get date => 'Ημερομηνία';

  @override
  String get note => 'Σημείωση';

  @override
  String get noteHint => 'Σημείωση (προαιρετικό)';

  @override
  String get saveIncome => 'Αποθήκευση εσόδου';

  @override
  String get saveExpense => 'Αποθήκευση εξόδου';

  @override
  String get selectCategory => 'Επιλογή κατηγορίας';

  @override
  String get transactionSaved => 'Η κίνηση αποθηκεύτηκε';

  @override
  String get amountRequired => 'Δώστε ποσό μεγαλύτερο από μηδέν';

  @override
  String get titleRequired => 'Δώστε όνομα σε αυτή την κίνηση';

  @override
  String get descriptionLabel => 'Περιγραφή';

  @override
  String get descriptionHint => 'π.χ. σούπερ μάρκετ';

  @override
  String get budget => 'Προϋπολογισμός';

  @override
  String get budgets => 'Προϋπολογισμοί';

  @override
  String get totalBudget => 'Συνολικός προϋπολογισμός';

  @override
  String get spent => 'Δαπανήθηκαν';

  @override
  String get remaining => 'Απομένουν';

  @override
  String budgetUsed(int percent) {
    return '$percent% σε χρήση';
  }

  @override
  String get onTrack => 'Σε καλό δρόμο';

  @override
  String get approachingLimit => 'Κοντά στο όριο';

  @override
  String get overBudget => 'Πάνω από τον προϋπολογισμό';

  @override
  String get savings => 'Αποταμίευση';

  @override
  String get yourGoals => 'Οι στόχοι σας';

  @override
  String get saved => 'Αποταμιεύτηκαν';

  @override
  String get target => 'Στόχος';

  @override
  String get monthlyContribution => 'Μηνιαίως';

  @override
  String get addFunds => 'Προσθήκη χρημάτων';

  @override
  String get goalComplete => 'Ο στόχος επιτεύχθηκε';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'απομένουν $count μήνες',
      one: 'απομένει $count μήνας',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Δάνεια και χρέη';

  @override
  String get totalOutstanding => 'Συνολικό υπόλοιπο οφειλής';

  @override
  String get monthlyPayment => 'Μηνιαίως';

  @override
  String get nextPayment => 'Επόμενη δόση';

  @override
  String paidOff(int percent) {
    return '$percent% εξοφλήθηκε';
  }

  @override
  String get interestRate => 'Επιτόκιο';

  @override
  String get upcomingPayments => 'Επερχόμενες δόσεις';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Σε $count ημέρες',
      one: 'Σε $count ημέρα',
      zero: 'Λήγει σήμερα',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Ληξιπρόθεσμο';

  @override
  String get reports => 'Αναφορές';

  @override
  String get week => 'Εβδομάδα';

  @override
  String get month => 'Μήνας';

  @override
  String get quarter => 'Τρίμηνο';

  @override
  String get incomeVsExpenses => 'Έσοδα και έξοδα';

  @override
  String get spendingByCategory => 'Δαπάνες ανά κατηγορία';

  @override
  String get budgetPerformance => 'Απόδοση προϋπολογισμών';

  @override
  String get insights => 'Παρατηρήσεις';

  @override
  String get savingsRate => 'Ποσοστό αποταμίευσης';

  @override
  String get profile => 'Προφίλ';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get personalInformation => 'Προσωπικά στοιχεία';

  @override
  String get changePassword => 'Αλλαγή κωδικού';

  @override
  String get notifications => 'Ειδοποιήσεις';

  @override
  String get preferences => 'Προτιμήσεις';

  @override
  String get language => 'Γλώσσα';

  @override
  String get currency => 'Νόμισμα';

  @override
  String get theme => 'Θέμα';

  @override
  String get security => 'Ασφάλεια';

  @override
  String get privacyAndSecurity => 'Απόρρητο και ασφάλεια';

  @override
  String get help => 'Βοήθεια';

  @override
  String get helpAndSupport => 'Βοήθεια και υποστήριξη';

  @override
  String get termsAndConditions => 'Όροι χρήσης';

  @override
  String get logOut => 'Αποσύνδεση';

  @override
  String memberSince(String date) {
    return 'Μέλος από $date';
  }

  @override
  String get themeSystem => 'Όπως το σύστημα';

  @override
  String get themeLight => 'Φωτεινό';

  @override
  String get themeDark => 'Σκούρο';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get noNotificationsTitle => 'Τα είδατε όλα';

  @override
  String get noNotificationsBody =>
      'Νέες παρατηρήσεις και υπενθυμίσεις θα εμφανίζονται εδώ.';

  @override
  String get cancel => 'Άκυρο';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get done => 'Έτοιμο';

  @override
  String get retry => 'Δοκιμή ξανά';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get somethingWentWrong => 'Κάτι πήγε στραβά';

  @override
  String get comingSoon => 'Έρχεται στην πλήρη έκδοση';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get undo => 'Αναίρεση';

  @override
  String get add => 'Προσθήκη';

  @override
  String get create => 'Δημιουργία';

  @override
  String get nameRequired => 'Δώστε του ένα όνομα';

  @override
  String get amountAboveZero => 'Δώστε ποσό μεγαλύτερο από μηδέν';

  @override
  String get editTransaction => 'Επεξεργασία κίνησης';

  @override
  String get deleteTransaction => 'Διαγραφή κίνησης;';

  @override
  String deleteTransactionBody(String title) {
    return 'Η κίνηση $title θα αφαιρεθεί από τις εγγραφές σας.';
  }

  @override
  String get transactionDeleted => 'Η κίνηση διαγράφηκε';

  @override
  String get transactionUpdated => 'Η κίνηση ενημερώθηκε';

  @override
  String get newBudget => 'Νέος προϋπολογισμός';

  @override
  String get editBudget => 'Επεξεργασία προϋπολογισμού';

  @override
  String get budgetLimit => 'Μηνιαίο όριο';

  @override
  String get deleteBudget => 'Διαγραφή προϋπολογισμού;';

  @override
  String deleteBudgetBody(String category) {
    return 'Ο προϋπολογισμός $category θα αφαιρεθεί. Οι κινήσεις σας δεν επηρεάζονται.';
  }

  @override
  String get budgetSaved => 'Ο προϋπολογισμός αποθηκεύτηκε';

  @override
  String get budgetDeleted => 'Ο προϋπολογισμός διαγράφηκε';

  @override
  String get allCategoriesBudgeted => 'Κάθε κατηγορία έχει ήδη προϋπολογισμό';

  @override
  String get noBudgetsTitle => 'Δεν υπάρχουν ακόμη προϋπολογισμοί';

  @override
  String get noBudgetsBody =>
      'Βάλτε μηνιαίο όριο σε μια κατηγορία για να αρχίσετε να την παρακολουθείτε.';

  @override
  String get newGoal => 'Νέος στόχος';

  @override
  String get editGoal => 'Επεξεργασία στόχου';

  @override
  String get goalName => 'Όνομα στόχου';

  @override
  String get goalNameHint => 'π.χ. ταμείο έκτακτης ανάγκης';

  @override
  String get targetAmount => 'Ποσό στόχου';

  @override
  String get alreadySaved => 'Ήδη αποταμιευμένα';

  @override
  String get deleteGoal => 'Διαγραφή στόχου;';

  @override
  String deleteGoalBody(String name) {
    return 'Ο στόχος $name και η πρόοδός του θα αφαιρεθούν.';
  }

  @override
  String get goalSaved => 'Ο στόχος αποθηκεύτηκε';

  @override
  String get goalDeleted => 'Ο στόχος διαγράφηκε';

  @override
  String get noGoalsTitle => 'Δεν υπάρχουν ακόμη στόχοι αποταμίευσης';

  @override
  String get noGoalsBody =>
      'Βάλτε έναν στόχο και το RainyPenny θα παρακολουθεί την πρόοδό σας.';

  @override
  String get fundsAdded => 'Τα χρήματα προστέθηκαν';

  @override
  String get newDebt => 'Νέο δάνειο ή κάρτα';

  @override
  String get editDebt => 'Επεξεργασία δανείου';

  @override
  String get debtName => 'Όνομα';

  @override
  String get debtNameHint => 'π.χ. δάνειο αυτοκινήτου';

  @override
  String get lender => 'Δανειστής';

  @override
  String get lenderHint => 'π.χ. Εθνική Τράπεζα';

  @override
  String get originalAmount => 'Αρχικό ποσό';

  @override
  String get creditLimit => 'Πιστωτικό όριο';

  @override
  String get remainingBalance => 'Υπόλοιπο οφειλής';

  @override
  String get interestRatePercent => 'Επιτόκιο (%)';

  @override
  String get kindLoan => 'Δάνειο';

  @override
  String get kindCreditCard => 'Πιστωτική κάρτα';

  @override
  String get recordPayment => 'Καταχώριση πληρωμής';

  @override
  String get paymentRecorded => 'Η πληρωμή καταχωρήθηκε';

  @override
  String get deleteDebt => 'Διαγραφή αυτού του χρέους;';

  @override
  String deleteDebtBody(String name) {
    return 'Το $name θα αφαιρεθεί από τα χρέη σας.';
  }

  @override
  String get debtSaved => 'Αποθηκεύτηκε';

  @override
  String get debtDeleted => 'Διαγράφηκε';

  @override
  String get noDebtsTitle => 'Δεν παρακολουθείται κανένα χρέος';

  @override
  String get noDebtsBody =>
      'Προσθέστε δάνειο ή πιστωτική κάρτα για να έχετε τις δόσεις υπό έλεγχο.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Ο προϋπολογισμός $subject ξεπεράστηκε';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Ξεπεράσατε τον προϋπολογισμό $subject κατά $amount αυτή την περίοδο.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'Το $subject πλησιάζει το όριο';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Ο προϋπολογισμός $subject έχει χρησιμοποιηθεί κατά $percent%, απομένουν $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Τα έξοδα ξεπερνούν τα έσοδα';

  @override
  String get insightOverIncomeBody =>
      'Αυτή την περίοδο ξοδέψατε περισσότερα από όσα κερδίσατε. Δείτε τις μεγαλύτερες κατηγορίες για να ισορροπήσετε ξανά.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Οι δαπάνες για $subject αυξήθηκαν';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Οι δαπάνες σας για $subject είναι $percent% υψηλότερες από την προηγούμενη περίοδο.';
  }

  @override
  String get insightTrendDownTitle => 'Οι δαπάνες μειώνονται';

  @override
  String insightTrendDownBody(int percent) {
    return 'Οι συνολικές δαπάνες είναι $percent% χαμηλότερες από την προηγούμενη περίοδο.';
  }

  @override
  String get insightTrendUpTitle => 'Οι δαπάνες αυξάνονται';

  @override
  String insightTrendUpBody(int percent) {
    return 'Οι συνολικές δαπάνες είναι $percent% υψηλότερες από την προηγούμενη περίοδο.';
  }

  @override
  String get insightSavingsStrongTitle => 'Δυνατή αποταμίευση αυτή την περίοδο';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Κρατήσατε $percent% του εισοδήματός σας — αρκετά πάνω από τον στόχο του $target%.';
  }

  @override
  String get insightSavingsLowTitle =>
      'Το ποσοστό αποταμίευσης είναι κάτω από τον στόχο';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Αυτή την περίοδο κρατήσατε $percent% του εισοδήματός σας. Στοχεύστε στο $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'Το $subject σχεδόν συμπληρώθηκε';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Απομένουν μόνο $amount για το $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Το $subject πάει καλά';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months μήνες',
      one: '$months μήνα',
    );
    return 'Με $amount τον μήνα θα φτάσετε αυτόν τον στόχο σε $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Η δόση $subject είναι ληξιπρόθεσμη';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ημέρες',
      one: '$days ημέρα',
    );
    return 'Η δόση $amount για $subject καθυστερεί $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Πλησιάζει η δόση $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'σε $days ημέρες',
      one: 'σε $days ημέρα',
      zero: 'σήμερα',
    );
    return 'Τα $amount πρέπει να πληρωθούν $_temp0.';
  }

  @override
  String get signIn => 'Σύνδεση';

  @override
  String get signUp => 'Δημιουργία λογαριασμού';

  @override
  String get signInSubtitle => 'Καλώς ορίσατε ξανά. Τα χρήματά σας περιμένουν.';

  @override
  String get signUpSubtitle => 'Λίγα στοιχεία και είστε έτοιμοι.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Κωδικός';

  @override
  String get passwordHint => 'Τουλάχιστον 8 χαρακτήρες';

  @override
  String get fullNameLabel => 'Ονοματεπώνυμο';

  @override
  String get fullNameHint => 'Γιώργος Παπαδόπουλος';

  @override
  String get forgotPassword => 'Ξεχάσατε τον κωδικό;';

  @override
  String get resetSent =>
      'Δείτε τα εισερχόμενά σας για τον σύνδεσμο επαναφοράς';

  @override
  String get noAccountYet => 'Πρώτη φορά εδώ;';

  @override
  String get haveAccount => 'Έχετε ήδη λογαριασμό;';

  @override
  String get emailInvalid => 'Δώστε έγκυρη διεύθυνση email';

  @override
  String get passwordTooShort => 'Χρησιμοποιήστε τουλάχιστον 8 χαρακτήρες';

  @override
  String get signOutConfirm => 'Αποσύνδεση;';

  @override
  String get signOutBody =>
      'Θα χρειαστεί να συνδεθείτε ξανά για να δείτε τα οικονομικά σας.';

  @override
  String get dataSource => 'Πηγή δεδομένων';

  @override
  String get insightWeeklySummaryTitle => 'Η εβδομάδα σας με μια ματιά';

  @override
  String get insightWeeklySummaryBody =>
      'Δείτε πού πήγαν τα χρήματά σας αυτή την εβδομάδα και πώς κρατούν οι προϋπολογισμοί.';

  @override
  String get notificationSettings => 'Ειδοποιήσεις';

  @override
  String get alertsSection => 'Ειδοποιήσεις';

  @override
  String get budgetAlerts => 'Ειδοποιήσεις προϋπολογισμού';

  @override
  String get budgetAlertsBody =>
      'Όταν ένας προϋπολογισμός πλησιάζει ή ξεπερνά το όριο';

  @override
  String get paymentReminders => 'Υπενθυμίσεις πληρωμών';

  @override
  String get paymentRemindersBody => 'Λίγες ημέρες πριν από τη λήξη μιας δόσης';

  @override
  String get savingsUpdates => 'Νέα αποταμίευσης';

  @override
  String get savingsUpdatesBody => 'Πρόοδος προς τους στόχους σας';

  @override
  String get weeklySummaryLabel => 'Εβδομαδιαία σύνοψη';

  @override
  String get weeklySummaryBody => 'Μια σύνοψη της εβδομάδας που πέρασε';

  @override
  String get scheduleSection => 'Χρονισμός';

  @override
  String get reminderTime => 'Ώρα υπενθύμισης';

  @override
  String get quietHours => 'Ώρες ησυχίας';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Ημέρα σύνοψης';

  @override
  String get permissionRequired => 'Οι ειδοποιήσεις είναι απενεργοποιημένες';

  @override
  String get permissionRequiredBody =>
      'Επιτρέψτε τις ειδοποιήσεις ώστε το RainyPenny να σας προειδοποιεί πριν ξεφύγει ένας προϋπολογισμός ή μια πληρωμή.';

  @override
  String get allowNotifications => 'Να επιτρέπονται οι ειδοποιήσεις';

  @override
  String get permissionDenied =>
      'Οι ειδοποιήσεις είναι αποκλεισμένες. Μπορείτε να τις ενεργοποιήσετε από τις ρυθμίσεις της συσκευής.';

  @override
  String get upcomingAlerts => 'Προγραμματισμένα';

  @override
  String get noScheduledAlerts =>
      'Δεν υπάρχει τίποτα προγραμματισμένο αυτή τη στιγμή';

  @override
  String get noScheduledAlertsBody =>
      'Οι ειδοποιήσεις θα εμφανίζονται εδώ καθώς οι προϋπολογισμοί και οι δόσεις πλησιάζουν τα όριά τους.';

  @override
  String scheduledFor(String date) {
    return 'Προγραμματισμένο για $date';
  }

  @override
  String get everyWeek => 'Κάθε εβδομάδα';

  @override
  String get allNotificationsOff =>
      'Όλες οι ειδοποιήσεις είναι απενεργοποιημένες';

  @override
  String get needsAttention => 'Χρειάζεται προσοχή';

  @override
  String get quickActionsTitle => 'Τι θα θέλατε να κάνετε;';

  @override
  String get createSection => 'Καταγραφή';

  @override
  String get jumpToSection => 'Μετάβαση σε';

  @override
  String get addLoanAction => 'Προσθήκη δανείου';

  @override
  String get addBudgetAction => 'Προσθήκη προϋπολογισμού';

  @override
  String get addGoalAction => 'Προσθήκη στόχου';

  @override
  String get longPressHint =>
      'Συμβουλή: κρατήστε πατημένο το + για άμεση καταγραφή εξόδου';

  @override
  String get searchCurrencies => 'Αναζήτηση νομισμάτων';

  @override
  String get noCurrenciesFound => 'Δεν βρέθηκαν νομίσματα';

  @override
  String get noCurrenciesFoundMessage =>
      'Δοκιμάστε άλλον κωδικό, σύμβολο ή όνομα.';

  @override
  String get popularCurrencies => 'Δημοφιλή';

  @override
  String get allCurrencies => 'Όλα τα νομίσματα';

  @override
  String get totalLoanAmount => 'Συνολικό ποσό δανείου';

  @override
  String get installmentAmount => 'Ποσό δόσης';

  @override
  String get numberOfInstallments => 'Αριθμός δόσεων';

  @override
  String get paidInstallments => 'Πληρωμένες δόσεις';

  @override
  String get remainingInstallments => 'Υπόλοιπες δόσεις';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid από $total πληρωμένες';
  }

  @override
  String get finalPayment => 'Τελευταία δόση';

  @override
  String get paymentDueDate => 'Ημερομηνία πληρωμής';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Στις $day κάθε μήνα';
  }

  @override
  String get loanStatus => 'Κατάσταση';

  @override
  String get statusActive => 'Σε καλό δρόμο';

  @override
  String get statusDueSoon => 'Λήγει σύντομα';

  @override
  String get statusOverdue => 'Ληξιπρόθεσμο';

  @override
  String get statusCompleted => 'Εξοφλήθηκε';

  @override
  String get repaymentProgress => 'Πρόοδος αποπληρωμής';

  @override
  String get byAmount => 'Κατά ποσό';

  @override
  String get byInstallments => 'Κατά δόσεις';

  @override
  String get startDate => 'Ημερομηνία έναρξης';

  @override
  String get openEnded => 'Χωρίς προθεσμία';

  @override
  String get loanDetails => 'Στοιχεία δανείου';

  @override
  String get notSet => 'Δεν ορίστηκε';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'Το $subject λήγει σήμερα';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Η πληρωμή $amount λήγει σήμερα. Ένα πάτημα και είναι στην ώρα της.';
  }

  @override
  String get remindMorningTitle => 'Καλημέρα ☀️';

  @override
  String get remindMorningBody =>
      'Ξεκινήστε τη μέρα με τα χρήματά σας υπό έλεγχο. Έμεινε κάτι από χθες;';

  @override
  String get remindNoonTitle => 'Μεσημεριανός έλεγχος';

  @override
  String get remindNoonBody =>
      'Γεύμα, καφές, εισιτήριο; Καταγράφεται σε δευτερόλεπτα.';

  @override
  String get remindAfternoonTitle => 'Μια γρήγορη συμπλήρωση';

  @override
  String get remindAfternoonBody =>
      'Καταγράψτε όσα ξοδέψατε μέχρι τώρα ώστε τα σημερινά νούμερα να είναι σωστά.';

  @override
  String get remindEveningTitle => 'Κλείνοντας τη μέρα';

  @override
  String get remindEveningBody =>
      'Δύο λεπτά τώρα και οι σημερινές εγγραφές είναι πλήρεις.';

  @override
  String get happyWeekendTitle => 'Καλό σαββατοκύριακο! 🎉';

  @override
  String get happyWeekendBody =>
      'Απολαύστε το — και κρατήστε ένα μάτι στα έξοδα του σαββατοκύριακου.';

  @override
  String get dailyReminders => 'Καθημερινές υπενθυμίσεις εξόδων';

  @override
  String get dailyRemindersBody =>
      'Διακριτικές υπενθυμίσεις για να μένουν τα έξοδα ενημερωμένα';

  @override
  String get weekendGreeting => 'Χαιρετισμός σαββατοκύριακου';

  @override
  String get weekendGreetingBody =>
      'Ένας φιλικός χαιρετισμός στην αρχή του σαββατοκύριακου';

  @override
  String get reminderTimesSection => 'Ώρες υπενθυμίσεων';

  @override
  String get slotMorning => 'Πρωί';

  @override
  String get slotNoon => 'Μεσημέρι';

  @override
  String get slotAfternoon => 'Απόγευμα';

  @override
  String get slotEvening => 'Βράδυ';

  @override
  String get everyDay => 'Κάθε μέρα';

  @override
  String get financialReport => 'Οικονομική αναφορά';

  @override
  String get preparedFor => 'Ετοιμάστηκε για';

  @override
  String get generatedOn => 'Δημιουργήθηκε στις';

  @override
  String get reportDisclaimer =>
      'Δημιουργήθηκε από το RainyPenny με βάση τις δικές σας εγγραφές.';

  @override
  String pageOf(int page, int total) {
    return 'Σελίδα $page από $total';
  }

  @override
  String get overview => 'Επισκόπηση';

  @override
  String get description => 'Περιγραφή';

  @override
  String get totalIncome => 'Συνολικά έσοδα';

  @override
  String get totalExpenses => 'Συνολικά έξοδα';

  @override
  String get totalSaved => 'Σύνολο αποταμίευσης';

  @override
  String get shareOfTotal => 'Μερίδιο';

  @override
  String get used => 'Σε χρήση';

  @override
  String get goal => 'Στόχος';

  @override
  String get targetDate => 'Ημερομηνία στόχου';

  @override
  String get progress => 'Πρόοδος';

  @override
  String get paidOffShort => 'Εξοφλήθηκε';

  @override
  String get transactions => 'Κινήσεις';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'και άλλες $count κινήσεις',
      one: 'και άλλη $count κίνηση',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Εξαγωγή PDF';

  @override
  String get sharePdf => 'Κοινοποίηση αναφοράς';

  @override
  String get preparingReport => 'Ετοιμάζεται η αναφορά σας…';

  @override
  String get reportReady => 'Η αναφορά είναι έτοιμη';

  @override
  String get reportFailed => 'Δεν ήταν δυνατή η δημιουργία της αναφοράς';

  @override
  String get categories => 'Κατηγορίες';

  @override
  String get categoriesIntro =>
      'Προσθέστε δικές σας κατηγορίες ώστε τα έσοδα και τα έξοδα να μπαίνουν ακριβώς όπως τα σκέφτεστε.';

  @override
  String get expenseCategories => 'Κατηγορίες εξόδων';

  @override
  String get incomeCategories => 'Κατηγορίες εσόδων';

  @override
  String get newCategory => 'Νέα κατηγορία';

  @override
  String get editCategory => 'Επεξεργασία κατηγορίας';

  @override
  String get categoryName => 'Όνομα';

  @override
  String get categoryNameHint => 'π.χ. κατοικίδια';

  @override
  String get icon => 'Εικονίδιο';

  @override
  String get categorySaved => 'Η κατηγορία αποθηκεύτηκε';

  @override
  String get categoryDeleted => 'Η κατηγορία διαγράφηκε';

  @override
  String get deleteCategory => 'Διαγραφή αυτής της κατηγορίας;';

  @override
  String deleteCategoryBody(String name) {
    return 'Η κατηγορία $name θα αφαιρεθεί.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count εγγραφές χρησιμοποιούν ακόμη αυτή την κατηγορία',
      one: '$count εγγραφή χρησιμοποιεί ακόμη αυτή την κατηγορία',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Δεν υπάρχει τίποτα εδώ ακόμη.';

  @override
  String get builtIn => 'Ενσωματωμένη';

  @override
  String get manageCategories => 'Διαχείριση κατηγοριών';

  @override
  String get expense => 'Έξοδο';

  @override
  String get languageNote =>
      'Τα αραβικά, τα ουρντού, τα περσικά και τα εβραϊκά αλλάζουν ολόκληρη τη διεπαφή σε φορά από δεξιά προς τα αριστερά, μαζί με τα γραφήματα και τις αναφορές PDF.';

  @override
  String get next => 'Επόμενο';

  @override
  String get back => 'Πίσω';

  @override
  String get skip => 'Παράλειψη';

  @override
  String get continueLabel => 'Συνέχεια';

  @override
  String get selected => 'Επιλεγμένο';

  @override
  String get passwordRequired => 'Δώστε τον κωδικό σας';

  @override
  String get newPasswordLabel => 'Νέος κωδικός';

  @override
  String get confirmPasswordLabel => 'Επιβεβαίωση κωδικού';

  @override
  String get passwordsDoNotMatch => 'Οι δύο κωδικοί πρέπει να ταιριάζουν';

  @override
  String get showPassword => 'Εμφάνιση κωδικού';

  @override
  String get hidePassword => 'Απόκρυψη κωδικού';

  @override
  String get savePassword => 'Αποθήκευση κωδικού';

  @override
  String get backToSignIn => 'Επιστροφή στη σύνδεση';

  @override
  String get alreadyHaveAccount => 'Έχω ήδη λογαριασμό';

  @override
  String get getStarted => 'Ας ξεκινήσουμε';

  @override
  String get acceptTerms =>
      'Αποδέχομαι τους Όρους χρήσης και την Πολιτική απορρήτου';

  @override
  String get acceptTermsRequired => 'Αποδεχτείτε για να συνεχίσετε';

  @override
  String get passwordStrengthTooShort => 'Πολύ σύντομος';

  @override
  String get passwordStrengthWeak => 'Αδύναμος';

  @override
  String get passwordStrengthFair => 'Μέτριος';

  @override
  String get passwordStrengthGood => 'Καλός';

  @override
  String get passwordStrengthStrong => 'Ισχυρός';

  @override
  String get passwordAdvice =>
      'Μια μεγάλη φράση που θυμάστε είναι καλύτερη από έναν σύντομο κωδικό γεμάτο σύμβολα. Αποφύγετε ό,τι χρησιμοποιείτε ήδη αλλού.';

  @override
  String get authInvalidCredentials =>
      'Αυτό το email και ο κωδικός δεν αντιστοιχούν σε κανέναν λογαριασμό';

  @override
  String get authEmailNotConfirmed =>
      'Επιβεβαιώστε τη διεύθυνση email σας πριν συνδεθείτε';

  @override
  String get authEmailAlreadyRegistered =>
      'Υπάρχει ήδη λογαριασμός με αυτό το email';

  @override
  String get authWeakPassword => 'Επιλέξτε μεγαλύτερο κωδικό';

  @override
  String get authRateLimited =>
      'Πάρα πολλές προσπάθειες. Δοκιμάστε ξανά σε λίγα λεπτά';

  @override
  String get authNetworkError =>
      'Δεν υπάρχει σύνδεση. Ελέγξτε το δίκτυο και δοκιμάστε ξανά';

  @override
  String get authGenericError => 'Κάτι πήγε στραβά. Δοκιμάστε ξανά';

  @override
  String get confirmEmailTitle => 'Ελέγξτε το email σας';

  @override
  String confirmEmailBody(String email) {
    return 'Στείλαμε σύνδεσμο επιβεβαίωσης στο $email. Ανοίξτε τον για να ολοκληρώσετε τον λογαριασμό σας.';
  }

  @override
  String get resendConfirmation => 'Νέα αποστολή email επιβεβαίωσης';

  @override
  String get confirmationResent => 'Το email επιβεβαίωσης στάλθηκε';

  @override
  String get forgotPasswordTitle => 'Επαναφορά κωδικού';

  @override
  String get forgotPasswordSubtitle =>
      'Δώστε το email με το οποίο εγγραφήκατε και θα σας στείλουμε σύνδεσμο για να ορίσετε νέο κωδικό.';

  @override
  String get sendResetLink => 'Αποστολή συνδέσμου';

  @override
  String get resetLinkSentTitle => 'Ο σύνδεσμος στάλθηκε';

  @override
  String resetLinkSentBody(String email) {
    return 'Αν το $email έχει λογαριασμό, ο σύνδεσμος επαναφοράς είναι καθ\' οδόν.';
  }

  @override
  String get resetLinkSentHint =>
      'Ο σύνδεσμος λήγει σε μία ώρα. Αν δεν φτάσει, δείτε τον φάκελο ανεπιθύμητων πριν ζητήσετε νέον.';

  @override
  String get tryAnotherEmail => 'Χρήση άλλου email';

  @override
  String get resetPasswordTitle => 'Επιλέξτε νέο κωδικό';

  @override
  String get resetPasswordSubtitle =>
      'Διαλέξτε κάτι που δεν έχετε ξαναχρησιμοποιήσει σε αυτόν τον λογαριασμό.';

  @override
  String get passwordChangedTitle => 'Ο κωδικός ενημερώθηκε';

  @override
  String get passwordChangedBody =>
      'Ο νέος σας κωδικός αποθηκεύτηκε. Είστε συνδεδεμένοι και έτοιμοι.';

  @override
  String get demoModeHint => 'Έκδοση επίδειξης — δεν χρειάζεται λογαριασμός';

  @override
  String get demoModeFill => 'Συμπλήρωση';

  @override
  String get welcomeTrackTitle => 'Δείτε πού πηγαίνουν τα χρήματά σας';

  @override
  String get welcomeTrackBody =>
      'Καταγράψτε τι μπαίνει και τι βγαίνει. Το RainyPenny το μετατρέπει σε μια εικόνα που διαβάζεται πραγματικά.';

  @override
  String get welcomeBudgetTitle => 'Όρια που κρατούν';

  @override
  String get welcomeBudgetBody =>
      'Δώστε σε κάθε κομμάτι των δαπανών σας ένα μηνιαίο ανώτατο όριο και μάθετέ το πριν το ξεπεράσετε, όχι μετά.';

  @override
  String get welcomeGoalsTitle => 'Αποταμιεύστε για ό,τι μετράει';

  @override
  String get welcomeGoalsBody =>
      'Δώστε όνομα σε έναν στόχο, ορίστε ποσό και δείτε τον να γεμίζει. Ένα ταμείο για δύσκολες μέρες χτίζεται ευκολότερα όταν το βλέπετε.';

  @override
  String get welcomePrivacyTitle => 'Τα χρήματά σας παραμένουν δικά σας';

  @override
  String get welcomePrivacyBody =>
      'Τα νούμερά σας ανήκουν μόνο σε εσάς. Τίποτα δεν πωλείται και τίποτα δεν μοιράζεται με κανέναν.';

  @override
  String stepOf(int step, int total) {
    return 'Βήμα $step από $total';
  }

  @override
  String get onboardingNameTitle => 'Πώς να σας λέμε;';

  @override
  String get onboardingNameBody =>
      'Θα το χρησιμοποιούμε μόνο για να σας χαιρετάμε, πουθενά αλλού.';

  @override
  String get onboardingNameHint =>
      'Το μικρό όνομα αρκεί. Μπορείτε να το αλλάξετε αργότερα.';

  @override
  String get onboardingCurrencyTitle => 'Ποιο νόμισμα χρησιμοποιείτε;';

  @override
  String get onboardingCurrencyBody =>
      'Όλα τα ποσά στην εφαρμογή εμφανίζονται σε αυτό το νόμισμα. Η επιλογή δεν μετατρέπει τίποτα.';

  @override
  String get onboardingCurrencySearch => 'Αναζήτηση σε όλα τα νομίσματα';

  @override
  String get onboardingAppearanceTitle => 'Κάντε την δική σας';

  @override
  String get onboardingAppearanceBody =>
      'Διαλέξτε εμφάνιση. Όλα αλλάζουν καθώς πατάτε και μπορείτε να επιστρέψετε όποτε θέλετε.';

  @override
  String get onboardingNotificationsTitle => 'Μείνετε από πάνω';

  @override
  String get onboardingNotificationsBody =>
      'Μια διακριτική υπενθύμιση τη σωστή στιγμή είναι αυτό που το κάνει συνήθεια.';

  @override
  String get onboardingNotifyReminders =>
      'Μια ήπια υπενθύμιση να καταγράψετε ό,τι ξοδέψατε';

  @override
  String get onboardingNotifyBudget =>
      'Μια προειδοποίηση πριν εξαντληθεί ένας προϋπολογισμός';

  @override
  String get onboardingNotifySummary =>
      'Μια εβδομαδιαία σύνοψη για το πού πήγαν τα χρήματά σας';

  @override
  String get onboardingNotifyEnable => 'Ενεργοποίηση ειδοποιήσεων';

  @override
  String get onboardingNotifyDone => 'Οι ρυθμίσεις ειδοποιήσεων αποθηκεύτηκαν';

  @override
  String get onboardingNotifyLater =>
      'Μπορείτε να τα αλλάξετε όλα αυτά στις Ρυθμίσεις, όποτε θέλετε.';

  @override
  String get onboardingReadyTitle => 'Όλα έτοιμα';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Όλα έτοιμα, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Η ρύθμιση ολοκληρώθηκε. Θέλετε μια γρήγορη ξενάγηση στο πώς λειτουργούν όλα;';

  @override
  String get onboardingTakeTour => 'Δείξτε μου';

  @override
  String get onboardingGoToApp => 'Πηγαίνετέ με στην εφαρμογή';

  @override
  String get onboardingTourLater =>
      'Όχι τώρα; Ο οδηγός μένει στις Ρυθμίσεις, για όποτε τον θελήσετε.';

  @override
  String get beginnersGuide => 'Οδηγός για αρχάριους';

  @override
  String get guideFinish => 'Τέλος';

  @override
  String chapterOf(int number, int total) {
    return 'Κεφάλαιο $number από $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Άνοιγμα: $screen';
  }

  @override
  String get guideDashboardTitle => 'Η αρχική σας';

  @override
  String get guideDashboardBody =>
      'Όλα ξεκινούν εδώ. Η κάρτα στην κορυφή δείχνει τι σας απομένει· από κάτω τι μπήκε και τι βγήκε αυτή την περίοδο, και μετά οι δαπάνες, οι προϋπολογισμοί και οι στόχοι σας.';

  @override
  String get guideDashboardTip1 =>
      'Τραβήξτε την οθόνη προς τα κάτω για να ανανεωθούν όλα μαζί.';

  @override
  String get guideDashboardTip2 =>
      'Πατήστε την κάρτα εσόδων ή εξόδων για να πάτε κατευθείαν σε εκείνη τη λίστα.';

  @override
  String get guideDashboardTip3 =>
      'Οι δακτύλιοι και οι παρατηρήσεις ενημερώνονται μόλις καταγράψετε κάτι.';

  @override
  String get guideAddTitle => 'Καταγραφή χρημάτων';

  @override
  String get guideAddBody =>
      'Το κουμπί στη μέση της μπάρας είναι η αφετηρία. Ανοίγει ένα σύντομο μενού: έξοδο, έσοδο, χρέος, προϋπολογισμός ή στόχος αποταμίευσης.';

  @override
  String get guideAddTip1 =>
      'Πατήστε το μεσαίο κουμπί για να καταγράψετε χρήματα που μπαίνουν ή βγαίνουν.';

  @override
  String get guideAddTip2 =>
      'Κρατήστε το πατημένο για να πάτε κατευθείαν σε νέο έξοδο, παρακάμπτοντας το μενού.';

  @override
  String get guideAddTip3 =>
      'Επιλέγετε πάντα κατηγορία — πάνω σε αυτήν στηρίζονται τα γραφήματα και οι προϋπολογισμοί.';

  @override
  String get guideCategoriesTitle => 'Κατηγορίες';

  @override
  String get guideCategoriesBody =>
      'Οι κατηγορίες ομαδοποιούν τις δαπάνες. Όσες έρχονται με την εφαρμογή αρκούν για τους περισσότερους, και μπορείτε να τις μετονομάσετε ή να προσθέσετε δικές σας.';

  @override
  String get guideCategoriesTip1 =>
      'Ρυθμίσεις, μετά Διαχείριση κατηγοριών, για αλλαγή ή προσθήκη.';

  @override
  String get guideCategoriesTip2 =>
      'Ό,τι μένει χωρίς κατηγορία πάει στο «Άλλα», ώστε τα γραφήματα να παραμένουν ειλικρινή.';

  @override
  String get guideBudgetTitle => 'Προϋπολογισμοί';

  @override
  String get guideBudgetBody =>
      'Ο προϋπολογισμός είναι ένα μηνιαίο ανώτατο όριο για μία κατηγορία. Η μπάρα γεμίζει καθώς ξοδεύετε και αλλάζει χρώμα όσο πλησιάζει, οπότε το μαθαίνετε πριν το ξεπεράσετε.';

  @override
  String get guideBudgetTip1 =>
      'Ξεκινήστε με δύο ή τρεις κατηγορίες, όχι με όλες μαζί.';

  @override
  String get guideBudgetTip2 =>
      'Βάλτε το όριο λίγο πάνω από τη συνηθισμένη σας δαπάνη και μετά σφίξτε το.';

  @override
  String get guideBudgetTip3 =>
      'Αφήστε τις ειδοποιήσεις ενεργές και η εφαρμογή θα σας προειδοποιήσει όταν ένας προϋπολογισμός λιγοστεύει.';

  @override
  String get guideSavingsTitle => 'Στόχοι αποταμίευσης';

  @override
  String get guideSavingsBody =>
      'Ονομάστε αυτό για το οποίο αποταμιεύετε, ορίστε ποσό και ημερομηνία, και η εφαρμογή υπολογίζει πόσα πρέπει να βάζετε στην άκρη κάθε μήνα.';

  @override
  String get guideSavingsTip1 =>
      'Έναν στόχο με όνομα τον κρατάτε ευκολότερα από μια αόριστη πρόθεση να αποταμιεύσετε.';

  @override
  String get guideSavingsTip2 =>
      'Αρκετοί μικροί στόχοι ολοκληρώνονται συχνότερα από έναν μεγάλο.';

  @override
  String get guideLoansTitle => 'Χρέη και δάνεια';

  @override
  String get guideLoansBody =>
      'Καταγράψτε τι χρωστάτε, πόσο κοστίζει και πότε λήγει η επόμενη δόση. Ό,τι αποπληρώνετε βρίσκεται σε μία λίστα μαζί με το υπόλοιπο.';

  @override
  String get guideLoansTip1 =>
      'Προσθέστε την ημερομηνία λήξης και οι υπενθυμίσεις θα την κυνηγούν για εσάς.';

  @override
  String get guideLoansTip2 =>
      'Ένα ληξιπρόθεσμο χρέος εμφανίζεται κόκκινο στην αρχική μέχρι να πληρωθεί.';

  @override
  String get guideReportsTitle => 'Αναφορές';

  @override
  String get guideReportsBody =>
      'Η βαθύτερη ματιά: έσοδα έναντι εξόδων, δαπάνες ανά κατηγορία, πώς κράτησαν οι προϋπολογισμοί σας και τι μερίδιο του εισοδήματος κρατήσατε.';

  @override
  String get guideReportsTip1 =>
      'Εναλλάξτε εβδομάδα, μήνα και τρίμηνο στο πάνω μέρος της οθόνης.';

  @override
  String get guideReportsTip2 =>
      'Εξαγάγετε ή μοιραστείτε ένα PDF — βγαίνει στη γλώσσα σας και στη φορά γραφής της.';

  @override
  String get guideSettingsTitle => 'Ρυθμίσεις';

  @override
  String get guideSettingsBody =>
      'Γλώσσα, νόμισμα, χρώματα και ειδοποιήσεις βρίσκονται όλα εδώ, και τίποτα δεν κλειδώνει από την αρχική ρύθμιση — αλλάξτε ό,τι θέλετε, όποτε θέλετε.';

  @override
  String get guideSettingsTip1 =>
      'Σαράντα γλώσσες, και ολόκληρη η διάταξη καθρεφτίζεται για όσες διαβάζονται από δεξιά προς τα αριστερά.';

  @override
  String get guideSettingsTip2 =>
      'Διαλέξτε ποιες ειδοποιήσεις θέλετε και σε ποιες ώρες επιτρέπεται να φτάνουν.';

  @override
  String get guideSettingsTip3 =>
      'Οι ώρες ησυχίας κρατούν τα πάντα μέχρι το πρωί.';

  @override
  String get guideHabitTitle => 'Κάντε το συνήθεια';

  @override
  String get guideHabitBody =>
      'Η εφαρμογή αξίζει όσα βάζετε μέσα της. Ένα λεπτό την ημέρα είναι καλύτερο από μία ώρα τον μήνα, και μετά από δύο εβδομάδες τα νούμερα αρχίζουν να σας λένε κάτι.';

  @override
  String get guideHabitTip1 =>
      'Καταγράφετε τα έξοδα τη στιγμή που γίνονται, όχι στο τέλος της εβδομάδας.';

  @override
  String get guideHabitTip2 =>
      'Ρίξτε μια ματιά στην αρχική μία φορά την ημέρα. Δέκα δευτερόλεπτα αρκούν.';

  @override
  String get guideHabitTip3 =>
      'Αυτός ο οδηγός μένει στις Ρυθμίσεις — επιστρέψτε όποτε θέλετε.';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get themeCaption => 'Φωτεινό, σκούρο, ή ό,τι κάνει το τηλέφωνό σας.';

  @override
  String get accentColor => 'Χρώμα τονισμού';

  @override
  String get accentColorCaption =>
      'Χρωματίζει τα κουμπιά, τις επισημάνσεις και τα γραφήματα.';

  @override
  String get accentSemanticsNote =>
      'Τα χρήματα που μπαίνουν και βγαίνουν κρατούν τα δικά τους χρώματα σε κάθε θέμα, ώστε ένα νούμερο να μην αλλάζει ποτέ νόημα επειδή αλλάξατε τον τονισμό.';

  @override
  String get accentTeal => 'Τιρκουάζ';

  @override
  String get accentGreen => 'Πράσινο';

  @override
  String get accentSky => 'Γαλάζιο';

  @override
  String get accentBlue => 'Μπλε';

  @override
  String get accentIndigo => 'Λουλακί';

  @override
  String get accentViolet => 'Βιολετί';

  @override
  String get accentPink => 'Ροζ';

  @override
  String get accentCrimson => 'Βαθύ κόκκινο';

  @override
  String get accentOrange => 'Πορτοκαλί';

  @override
  String get accentSlate => 'Ανθρακί';

  @override
  String get searchLanguages => 'Αναζήτηση γλωσσών';

  @override
  String get suggestedLanguages => 'Προτεινόμενες';

  @override
  String get allLanguages => 'Όλες οι γλώσσες';

  @override
  String get noLanguagesFound => 'Δεν βρέθηκαν γλώσσες';

  @override
  String get noLanguagesFoundMessage =>
      'Δοκιμάστε το όνομα στα αγγλικά ή τον διγράμματο κωδικό.';

  @override
  String get rightToLeft => 'Από δεξιά προς τα αριστερά';

  @override
  String get replayGuide => 'Δείτε ξανά τον οδηγό';

  @override
  String get replaySetup => 'Επανάληψη της αρχικής ρύθμισης';

  @override
  String get replaySetupBody =>
      'Περάστε ξανά από τις αρχικές ερωτήσεις. Τίποτα από όσα έχετε καταγράψει δεν διαγράφεται.';

  @override
  String get rateTitle => 'Σας αρέσει το RainyPenny;';

  @override
  String get rateBody =>
      'Το χρησιμοποιείτε εδώ και αρκετό καιρό. Μια αξιολόγηση παίρνει μια στιγμή και βοηθά άλλους να βρουν την εφαρμογή.';

  @override
  String get rateAction => 'Αξιολόγηση εφαρμογής';

  @override
  String get rateLater => 'Ίσως αργότερα';

  @override
  String get rateNever => 'Όχι, ευχαριστώ';

  @override
  String get rateThanks => 'Ευχαριστούμε';

  @override
  String get monthlySalary => 'Μηνιαίος μισθός';

  @override
  String get remainingAmount => 'Απομένουν';

  @override
  String get carriedForward => 'Μεταφορά υπολοίπου';

  @override
  String get carriedForwardHint => 'Υπόλοιπο από τον προηγούμενο κύκλο';

  @override
  String get totalSpending => 'Συνολικά έξοδα';

  @override
  String get salaryCycle => 'Κύκλος μισθοδοσίας';

  @override
  String get payday => 'Ημέρα πληρωμής';

  @override
  String get paydayDescription =>
      'Η ημέρα που λαμβάνετε τον μισθό σας. Ο οικονομικός σας μήνας ξεκινά αυτήν την ημέρα και διαρκεί μέχρι την ημέρα πριν από την επόμενη πληρωμή.';

  @override
  String get paydayUpdated => 'Η ημέρα πληρωμής ενημερώθηκε';

  @override
  String paydayDayOfMonth(int day) {
    return '$dayη ημέρα';
  }

  @override
  String get paydayShortMonthNote =>
      'Στους συντομότερους μήνες, ο κύκλος ξεκινά την τελευταία ημέρα του μήνα.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ημέρες μέχρι την πληρωμή',
      one: '1 ημέρα μέχρι την πληρωμή',
      zero: 'Τελευταία ημέρα του κύκλου',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Επόμενη ημέρα πληρωμής';

  @override
  String get spentSoFar => 'Έξοδα μέχρι τώρα';

  @override
  String get dailyAllowance => 'Ασφαλές ημερήσιο όριο εξόδων';

  @override
  String get overspentNotice =>
      'Ξοδέψατε περισσότερα από όσα εισπράξατε σε αυτόν τον κύκλο.';

  @override
  String get backToThisMonth => 'Επιστροφή σε αυτόν τον μήνα';

  @override
  String get cycleRangeLabel => 'Κύκλος';

  @override
  String get noSalaryRecorded => 'Δεν έχει καταγραφεί μισθός ακόμη';

  @override
  String get addSalaryAction => 'Προσθέστε τον μισθό σας';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Εξαιρετική';

  @override
  String get healthGood => 'Καλή';

  @override
  String get healthFair => 'Μέτρια';

  @override
  String get healthNeedsWork => 'Χρειάζεται βελτίωση';

  @override
  String get healthExcellentBody =>
      'Αποταμιεύετε ικανοποιητικά και παραμένετε εντός των προϋπολογισμών σας.';

  @override
  String get healthGoodBody =>
      'Είστε εντός στόχου με τα έξοδά σας αυτήν την περίοδο.';

  @override
  String get healthFairBody =>
      'Μερικοί προϋπολογισμοί πλησιάζουν στο όριο. Μικρές προσαρμογές θα βοηθήσουν.';

  @override
  String get healthNeedsWorkBody =>
      'Τα έξοδα υπερβαίνουν τον σχεδιασμό σας. Ξεκινήστε από τη μεγαλύτερη κατηγορία εξόδων σας.';

  @override
  String get factorSavingsRate => 'Ποσοστό αποταμίευσης';

  @override
  String get factorBudgetControl => 'Έλεγχος προϋπολογισμού';

  @override
  String get factorDebtLoad => 'Βάρος οφειλών';

  @override
  String get factorSpendingTrend => 'Τάση εξόδων';

  @override
  String factorKept(String percent) {
    return '$percent% αποταμιεύτηκε';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% χρησιμοποιήθηκε';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% του εισοδήματος';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Αύξηση $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Μείωση $percent%';
  }

  @override
  String get howScoreWorks => 'Πώς λειτουργεί αυτή η βαθμολογία';

  @override
  String get healthScoreExplainer =>
      'Η βαθμολογία σας συνδυάζει τέσσερις παράγοντες: πόσο μέρος του εισοδήματός σας αποταμιεύετε, πόσο πιστά τηρείτε τους προϋπολογισμούς σας, πόσο εισόδημα διατίθεται για οφειλές και αν τα έξοδά σας αυξάνονται ή μειώνονται.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% της συνολικής βαθμολογίας';
  }

  @override
  String get viewHealthDetails => 'Δείτε την αναλυτική εικόνα';

  @override
  String get saveChanges => 'Αποθήκευση αλλαγών';

  @override
  String get profileUpdated => 'Το προφίλ ενημερώθηκε';

  @override
  String get changePhoto => 'Αλλαγή φωτογραφίας';

  @override
  String get removePhoto => 'Αφαίρεση φωτογραφίας';

  @override
  String get personalInformationIntro =>
      'Το όνομα και η φωτογραφία σας εμφανίζονται σε όλη την εφαρμογή. Το email σας είναι η διεύθυνση με την οποία συνδέεστε.';

  @override
  String get emailNotEditable =>
      'Επικοινωνήστε με την υποστήριξη για να αλλάξετε τη διεύθυνση σύνδεσης.';

  @override
  String get pressBackAgainToExit => 'Πατήστε ξανά πίσω για έξοδο';

  @override
  String get categoryHousing => 'Στέγαση';

  @override
  String get categoryFood => 'Φαγητό & εστίαση';

  @override
  String get categoryTransport => 'Μετακινήσεις';

  @override
  String get categoryShopping => 'Αγορές';

  @override
  String get categoryBills => 'Λογαριασμοί & υπηρεσίες';

  @override
  String get categoryEntertainment => 'Ψυχαγωγία';

  @override
  String get categoryHealth => 'Υγεία & ευεξία';

  @override
  String get categoryEducation => 'Εκπαίδευση';

  @override
  String get categoryTravel => 'Ταξίδια';

  @override
  String get categorySalary => 'Μισθός';

  @override
  String get categoryFreelance => 'Ελεύθερο επάγγελμα';

  @override
  String get categoryInvestments => 'Επενδύσεις';

  @override
  String get categoryGift => 'Δώρο';

  @override
  String get categoryOther => 'Διάφορα';

  @override
  String get categoryGroceries => 'Σούπερ μάρκετ';

  @override
  String get categoryDining => 'Εστιατόρια';

  @override
  String get categoryCoffee => 'Καφές';

  @override
  String get categoryUtilities => 'Κοινόχρηστα & παροχές';

  @override
  String get categoryInternet => 'Ίντερνετ';

  @override
  String get categoryPhone => 'Τηλέφωνο';

  @override
  String get categoryInsurance => 'Ασφάλιση';

  @override
  String get categorySubscriptions => 'Συνδρομές';

  @override
  String get categoryPersonalCare => 'Προσωπική φροντίδα';

  @override
  String get categoryClothing => 'Ένδυση';

  @override
  String get categoryElectronics => 'Ηλεκτρονικά';

  @override
  String get categoryHomeSupplies => 'Είδη σπιτιού';

  @override
  String get categoryPets => 'Κατοικίδια';

  @override
  String get categoryChildcare => 'Φροντίδα παιδιών';

  @override
  String get categoryFamily => 'Οικογένεια';

  @override
  String get categoryFitness => 'Γυμναστική';

  @override
  String get categorySports => 'Αθλητισμός';

  @override
  String get categoryMedicine => 'Φάρμακα';

  @override
  String get categoryMedical => 'Ιατρικά';

  @override
  String get categoryCharity => 'Φιλανθρωπία';

  @override
  String get categoryTaxes => 'Φόροι';

  @override
  String get categoryFees => 'Τραπεζικά έξοδα & τέλη';

  @override
  String get categoryDebt => 'Οφειλές';

  @override
  String get categorySavings => 'Αποταμίευση';

  @override
  String get categoryRepairs => 'Επισκευές';

  @override
  String get categoryCarMaintenance => 'Συντήρηση αυτοκινήτου';

  @override
  String get categoryFuel => 'Καύσιμα';

  @override
  String get categoryParking => 'Στάθμευση';

  @override
  String get categoryPublicTransport => 'Μέσα μαζικής μεταφοράς';

  @override
  String get categoryRent => 'Ενοίκιο';

  @override
  String get categoryMortgage => 'Στεγαστικό δάνειο';

  @override
  String get categoryBonus => 'Μπόνους';

  @override
  String get categoryCommission => 'Προμήθεια';

  @override
  String get categoryPension => 'Σύνταξη';

  @override
  String get categoryInterest => 'Τόκοι';

  @override
  String get categoryDividends => 'Μερίσματα';

  @override
  String get categoryCashback => 'Επιστροφή μετρητών';

  @override
  String get categoryRefund => 'Επιστροφή χρημάτων';

  @override
  String get categoryRentalIncome => 'Εισόδημα από ενοίκια';

  @override
  String get addCategory => 'Νέα κατηγορία';

  @override
  String get filterByCategory => 'Φιλτράρισμα ανά κατηγορία';

  @override
  String get allCategories => 'Όλες οι κατηγορίες';

  @override
  String get clearFilters => 'Εκκαθάριση φίλτρων';

  @override
  String spentInCategory(String category, String amount) {
    return '$category · $amount';
  }

  @override
  String get allTime => 'Όλων των εποχών';

  @override
  String get customRange => 'Προσαρμοσμένο';

  @override
  String get selectDateRange => 'Επιλέξτε περίοδο';

  @override
  String rangeApplied(String start, String end) {
    return 'Εμφάνιση $start – $end';
  }

  @override
  String get loans => 'Δάνεια';

  @override
  String get debts => 'Οφειλές';

  @override
  String get noLoansTitle => 'Δεν υπάρχουν δάνεια';

  @override
  String get noLoansBody => 'Δεν έχετε ενεργά δάνεια.';

  @override
  String get emptyHealthTitle => 'Δεν υπάρχει ακόμη βαθμολογία υγείας';

  @override
  String get emptyHealthDescription =>
      'Χρειαζόμαστε λίγη περισσότερη οικονομική δραστηριότητα προτού υπολογίσουμε μια ακριβή βαθμολογία οικονομικής υγείας.';

  @override
  String get emptyHealthAddTransactions =>
      'Προσθέστε συναλλαγές εσόδων ή εξόδων';

  @override
  String get emptyHealthSetBudgets =>
      'Ορίστε τους μηνιαίους προϋπολογισμούς σας';

  @override
  String get emptyHealthTrackLoans =>
      'Παρακολουθήστε δάνεια ή οφειλές (προαιρετικό)';

  @override
  String get emptyHealthCardSubtitle =>
      'Προσθέστε συναλλαγές για να υπολογίσετε τη βαθμολογία σας και να λάβετε αναλύσεις.';

  @override
  String get smartBudgetSplit => 'Έξυπνος καταμερισμός προϋπολογισμού';

  @override
  String get smartBudgetSplitSubtitle =>
      'Εισαγάγετε τον μηνιαίο μισθό σας για να υπολογίσετε προτεινόμενα όρια';

  @override
  String get monthlyNetSalary => 'Μηνιαίος καθαρός μισθός';

  @override
  String get categoryAllocations => 'Κατανομή ανά κατηγορία';

  @override
  String totalBudgeted(String amount) {
    return 'Σύνολο: $amount';
  }

  @override
  String get applyAllBudgets => 'Εφαρμογή όλων των προϋπολογισμών';

  @override
  String get applyingBudgets => 'Εφαρμογή προϋπολογισμών...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Δημιουργήθηκαν $count προϋπολογισμοί κατηγοριών.',
      one: 'Δημιουργήθηκε 1 προϋπολογισμός κατηγορίας.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Αποτυχία αποθήκευσης προϋπολογισμών.';

  @override
  String get recommendedBudget => 'Προτεινόμενος προϋπολογισμός';

  @override
  String get due => 'Due';

  @override
  String get dueAmount => 'Due amount';
}
