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
  String get appTagline => 'Αποταμιεύστε για μια δύσκολη στιγμή';

  @override
  String get navHome => 'Αρχική';

  @override
  String get navTransactions => 'Συναλλαγές';

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
    return 'Καλό βράδυ, $name';
  }

  @override
  String get greetingSubtitle => 'Εδώ είναι η οικονομική σας επισκόπηση';

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
  String get spendingOverview => 'Επισκόπηση εξόδων';

  @override
  String get recentTransactions => 'Πρόσφατες συναλλαγές';

  @override
  String get seeAll => 'Προβολή όλων';

  @override
  String get viewAll => 'Προβολή όλων';

  @override
  String get budgetProgress => 'Πορεία προϋπολογισμού';

  @override
  String get savingsGoals => 'Στόχοι αποταμίευσης';

  @override
  String get financialInsight => 'Οικονομική ανάλυση';

  @override
  String get financialHealth => 'Οικονομική υγεία';

  @override
  String ofTotal(String total) {
    return 'από $total';
  }

  @override
  String get searchTransactions => 'Αναζήτηση συναλλαγών';

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
  String get noTransactionsTitle => 'Δεν βρέθηκαν συναλλαγές';

  @override
  String get noTransactionsBody =>
      'Δοκιμάστε διαφορετική αναζήτηση ή φίλτρο για να δείτε περισσότερη δραστηριότητα.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count συναλλαγές',
      one: '1 συναλλαγή',
      zero: 'Καμία συναλλαγή',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Προσθήκη συναλλαγής';

  @override
  String get amount => 'Ποσό';

  @override
  String get category => 'Κατηγορία';

  @override
  String get date => 'Ημερομηνία';

  @override
  String get note => 'Σημείωση';

  @override
  String get noteHint => 'Προαιρετική σημείωση';

  @override
  String get saveIncome => 'Αποθήκευση εσόδου';

  @override
  String get saveExpense => 'Αποθήκευση εξόδου';

  @override
  String get selectCategory => 'Επιλογή κατηγορίας';

  @override
  String get transactionSaved => 'Η συναλλαγή αποθηκεύτηκε';

  @override
  String get amountRequired => 'Εισαγάγετε ποσό μεγαλύτερο από μηδέν';

  @override
  String get titleRequired => 'Δώστε ένα όνομα σε αυτήν τη συναλλαγή';

  @override
  String get descriptionLabel => 'Περιγραφή';

  @override
  String get descriptionHint => 'π.χ. Σούπερ μάρκετ';

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
    return '$percent% χρησιμοποιήθηκε';
  }

  @override
  String get onTrack => 'Εντός στόχου';

  @override
  String get approachingLimit => 'Πλησιάζει το όριο';

  @override
  String get overBudget => 'Υπέρβαση προϋπολογισμού';

  @override
  String get savings => 'Αποταμιεύσεις';

  @override
  String get yourGoals => 'Οι στόχοι σας';

  @override
  String get saved => 'Αποταμιευμένα';

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
      other: 'Απομένουν $count μήνες',
      one: 'Απομένει 1 μήνας',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Δάνεια & οφειλές';

  @override
  String get totalOutstanding => 'Συνολικό ανεξόφλητο ποσό';

  @override
  String get monthlyPayment => 'Μηνιαία δόση';

  @override
  String get nextPayment => 'Επόμενη πληρωμή';

  @override
  String paidOff(int percent) {
    return '$percent% εξοφλήθηκε';
  }

  @override
  String get interestRate => 'Επιτόκιο';

  @override
  String get upcomingPayments => 'Επερχόμενες πληρωμές';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Πληρωμή σε $count ημέρες',
      one: 'Πληρωμή αύριο',
      zero: 'Πληρωμή σήμερα',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Εκπρόθεσμο';

  @override
  String get reports => 'Αναφορές';

  @override
  String get week => 'Εβδομάδα';

  @override
  String get month => 'Μήνας';

  @override
  String get quarter => 'Τρίμηνο';

  @override
  String get incomeVsExpenses => 'Έσοδα έναντι εξόδων';

  @override
  String get spendingByCategory => 'Έξοδα ανά κατηγορία';

  @override
  String get budgetPerformance => 'Απόδοση προϋπολογισμού';

  @override
  String get insights => 'Στατιστικά στοιχεία';

  @override
  String get savingsRate => 'Ποσοστό αποταμίευσης';

  @override
  String get profile => 'Προφίλ';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get personalInformation => 'Προσωπικές πληροφορίες';

  @override
  String get changePassword => 'Αλλαγή κωδικού πρόσβασης';

  @override
  String get notifications => 'Ειδοποιήσεις';

  @override
  String get preferences => 'Προτιμήσεις';

  @override
  String get language => 'Γλώσσα';

  @override
  String get currency => 'Νόμισμα';

  @override
  String get theme => 'Εμφάνιση';

  @override
  String get security => 'Ασφάλεια';

  @override
  String get privacyAndSecurity => 'Απόρρητο & ασφάλεια';

  @override
  String get help => 'Βοήθεια';

  @override
  String get helpAndSupport => 'Βοήθεια & υποστήριξη';

  @override
  String get termsAndConditions => 'Όροι & προϋποθέσεις';

  @override
  String get logOut => 'Αποσύνδεση';

  @override
  String memberSince(String date) {
    return 'Μέλος από $date';
  }

  @override
  String get themeSystem => 'Σύστημα';

  @override
  String get themeLight => 'Φωτεινό';

  @override
  String get themeDark => 'Σκοτεινό';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get noNotificationsTitle => 'Δεν υπάρχουν νέες ειδοποιήσεις';

  @override
  String get noNotificationsBody =>
      'Νέες αναλύσεις και υπενθυμίσεις θα εμφανίζονται εδώ.';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get done => 'Τέλος';

  @override
  String get retry => 'Δοκιμάστε ξανά';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get somethingWentWrong => 'Κάτι πήγε στραβά';

  @override
  String get comingSoon => 'Σύντομα διαθέσιμο στην πλήρη έκδοση';

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
  String get nameRequired => 'Εισαγάγετε το όνομά σας';

  @override
  String get amountAboveZero => 'Εισαγάγετε ποσό μεγαλύτερο από μηδέν';

  @override
  String get editTransaction => 'Επεξεργασία συναλλαγής';

  @override
  String get deleteTransaction => 'Διαγραφή συναλλαγής;';

  @override
  String deleteTransactionBody(String title) {
    return 'Η συναλλαγή «$title» θα αφαιρεθεί από το αρχείο σας.';
  }

  @override
  String get transactionDeleted => 'Η συναλλαγή διαγράφηκε';

  @override
  String get transactionUpdated => 'Η συναλλαγή ενημερώθηκε';

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
    return 'Ο προϋπολογισμός για την κατηγορία «$category» θα αφαιρεθεί. Οι συναλλαγές σας δεν επηρεάζονται.';
  }

  @override
  String get budgetSaved => 'Ο προϋπολογισμός αποθηκεύτηκε';

  @override
  String get budgetDeleted => 'Ο προϋπολογισμός διαγράφηκε';

  @override
  String get allCategoriesBudgeted =>
      'Όλες οι κατηγορίες έχουν ήδη προϋπολογισμό';

  @override
  String get noBudgetsTitle => 'Δεν υπάρχουν ακόμη προϋπολογισμοί';

  @override
  String get noBudgetsBody =>
      'Ορίστε ένα μηνιαίο όριο σε μια κατηγορία για να ξεκινήσετε την παρακολούθησή της.';

  @override
  String get newGoal => 'Νέος στόχος';

  @override
  String get editGoal => 'Επεξεργασία στόχου';

  @override
  String get goalName => 'Όνομα στόχου';

  @override
  String get goalNameHint => 'π.χ. Ταμείο έκτακτης ανάγκης';

  @override
  String get targetAmount => 'Ποσό στόχου';

  @override
  String get alreadySaved => 'Ήδη αποταμιευμένα';

  @override
  String get deleteGoal => 'Διαγραφή στόχου;';

  @override
  String deleteGoalBody(String name) {
    return 'Ο στόχος «$name» και η πρόοδός του θα αφαιρεθούν.';
  }

  @override
  String get goalSaved => 'Ο στόχος αποθηκεύτηκε';

  @override
  String get goalDeleted => 'Ο στόχος διαγράφηκε';

  @override
  String get noGoalsTitle => 'Δεν υπάρχουν ακόμη στόχοι αποταμίευσης';

  @override
  String get noGoalsBody =>
      'Ορίστε έναν στόχο και το RainyPenny θα παρακολουθεί την πρόοδό σας.';

  @override
  String get fundsAdded => 'Τα χρήματα προστέθηκαν';

  @override
  String get newDebt => 'Νέο δάνειο ή κάρτα';

  @override
  String get editDebt => 'Επεξεργασία δανείου';

  @override
  String get debtName => 'Όνομα';

  @override
  String get debtNameHint => 'π.χ. Δάνειο αυτοκινήτου';

  @override
  String get lender => 'Δανειστής';

  @override
  String get lenderHint => 'π.χ. Τράπεζα';

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
  String get recordPayment => 'Καταγραφή πληρωμής';

  @override
  String get paymentRecorded => 'Η πληρωμή καταγράφηκε';

  @override
  String get deleteDebt => 'Διαγραφή αυτής της οφειλής;';

  @override
  String deleteDebtBody(String name) {
    return 'Η οφειλή «$name» θα αφαιρεθεί από τις οφειλές σας.';
  }

  @override
  String get debtSaved => 'Αποθηκεύτηκε';

  @override
  String get debtDeleted => 'Διαγράφηκε';

  @override
  String get noDebtsTitle => 'Δεν παρακολουθούνται οφειλές';

  @override
  String get noDebtsBody =>
      'Προσθέστε ένα δάνειο ή πιστωτική κάρτα για να παρακολουθείτε τις αποπληρωμές.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Υπέρβαση προϋπολογισμού: $subject';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Ξεπεράσατε κατά $amount τον προϋπολογισμό σας για την κατηγορία «$subject» αυτήν την περίοδο.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return 'Η κατηγορία «$subject» πλησιάζει το όριο';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Ο προϋπολογισμός σας για την κατηγορία «$subject» έχει χρησιμοποιηθεί κατά $percent%, με $amount να απομένουν.';
  }

  @override
  String get insightOverIncomeTitle => 'Τα έξοδα υπερβαίνουν τα έσοδα';

  @override
  String get insightOverIncomeBody =>
      'Ξοδέψατε περισσότερα από όσα κερδίσατε αυτήν την περίοδο. Ελέγξτε τις μεγαλύτερες κατηγορίες εξόδων σας για να εξισορροπήσετε τα οικονομικά σας.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Αύξηση εξόδων στην κατηγορία «$subject»';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Τα έξοδά σας στην κατηγορία «$subject» είναι κατά $percent% υψηλότερα από την προηγούμενη περίοδο.';
  }

  @override
  String get insightTrendDownTitle => 'Τα έξοδα μειώνονται';

  @override
  String insightTrendDownBody(int percent) {
    return 'Οι συνολικές δαπάνες είναι κατά $percent% χαμηλότερες από την προηγούμενη περίοδο.';
  }

  @override
  String get insightTrendUpTitle => 'Τα έξοδα αυξάνονται';

  @override
  String insightTrendUpBody(int percent) {
    return 'Οι συνολικές δαπάνες είναι κατά $percent% υψηλότερες από την προηγούμενη περίοδο.';
  }

  @override
  String get insightSavingsStrongTitle =>
      'Εξαιρετική αποταμίευση αυτήν την περίοδο';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Κρατήσατε το $percent% του εισοδήματός σας — πολύ πάνω από τον στόχο του $target%.';
  }

  @override
  String get insightSavingsLowTitle =>
      'Το ποσοστό αποταμίευσης είναι κάτω από τον στόχο';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Κρατήσατε το $percent% του εισοδήματός σας αυτήν την περίοδο. Στοχεύστε στο $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return 'Ο στόχος «$subject» σχεδόν ολοκληρώθηκε';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Απομένουν μόνο $amount για να φτάσετε τον στόχο «$subject».';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Εντός στόχου για το «$subject»';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months μήνες',
      one: '1 μήνα',
    );
    return 'Με $amount τον μήνα, θα επιτύχετε αυτόν τον στόχο σε $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Εκπρόθεσμη πληρωμή για το «$subject»';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ημέρες',
      one: '1 ημέρα',
    );
    return 'Η πληρωμή $amount για το «$subject» έχει καθυστερήσει κατά $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Πλησιάζει πληρωμή για το «$subject»';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'σε $days ημέρες',
      one: 'αύριο',
      zero: 'σήμερα',
    );
    return 'Το ποσό $amount λήγει $_temp0.';
  }

  @override
  String get signIn => 'Σύνδεση';

  @override
  String get signUp => 'Δημιουργία λογαριασμού';

  @override
  String get signInSubtitle =>
      'Καλώς ήρθατε πίσω. Τα οικονομικά σας σας περιμένουν.';

  @override
  String get signUpSubtitle => 'Λίγα στοιχεία και είστε έτοιμοι.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Κωδικός πρόσβασης';

  @override
  String get passwordHint => 'Τουλάχιστον 8 χαρακτήρες';

  @override
  String get fullNameLabel => 'Ονοματεπώνυμο';

  @override
  String get fullNameHint => 'Γιώργος Παπαδόπουλος';

  @override
  String get forgotPassword => 'Ξεχάσατε τον κωδικό πρόσβασης;';

  @override
  String get resetSent =>
      'Ελέγξτε τα εισερχόμενά σας για τον σύνδεσμο επαναφοράς';

  @override
  String get noAccountYet => 'Νέος χρήστης;';

  @override
  String get haveAccount => 'Έχετε ήδη λογαριασμό;';

  @override
  String get emailInvalid => 'Εισαγάγετε μια έγκυρη διεύθυνση email';

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
  String get insightWeeklySummaryTitle => 'Η εβδομάδα σας σε ανασκόπηση';

  @override
  String get insightWeeklySummaryBody =>
      'Δείτε πού πήγαν τα χρήματά σας αυτήν την εβδομάδα και πώς τα πάνε οι προϋπολογισμοί σας.';

  @override
  String get notificationSettings => 'Ειδοποιήσεις';

  @override
  String get alertsSection => 'Ειδοποιήσεις';

  @override
  String get budgetAlerts => 'Ειδοποιήσεις προϋπολογισμού';

  @override
  String get budgetAlertsBody =>
      'Όταν ένας προϋπολογισμός πλησιάζει ή υπερβαίνει το όριό του';

  @override
  String get paymentReminders => 'Υπενθυμίσεις πληρωμών';

  @override
  String get paymentRemindersBody =>
      'Λίγες ημέρες πριν από τη λήξη μιας πληρωμής';

  @override
  String get savingsUpdates => 'Ενημερώσεις αποταμίευσης';

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
      'Επιτρέψτε τις ειδοποιήσεις ώστε το RainyPenny να σας προειδοποιεί προτού ξεφύγει ένας προϋπολογισμός ή μια πληρωμή.';

  @override
  String get allowNotifications => 'Ενεργοποίηση ειδοποιήσεων';

  @override
  String get permissionDenied =>
      'Οι ειδοποιήσεις είναι αποκλεισμένες. Μπορείτε να τις ενεργοποιήσετε στις ρυθμίσεις της συσκευής σας.';

  @override
  String get upcomingAlerts => 'Προγραμματισμένες';

  @override
  String get noScheduledAlerts => 'Τίποτα προγραμματισμένο αυτήν τη στιγμή';

  @override
  String get noScheduledAlertsBody =>
      'Οι ειδοποιήσεις θα εμφανίζονται εδώ καθώς οι προϋπολογισμοί και οι πληρωμές σας πλησιάζουν στα όριά τους.';

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
      'Δοκιμάστε διαφορετικό κωδικό, σύμβολο ή όνομα.';

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
  String get remainingInstallments => 'Υπολειπόμενες δόσεις';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Πληρώθηκαν $paid από $total';
  }

  @override
  String get finalPayment => 'Τελευταία πληρωμή';

  @override
  String get paymentDueDate => 'Ημερομηνία λήξης πληρωμής';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Την $dayη κάθε μήνα';
  }

  @override
  String get loanStatus => 'Κατάσταση';

  @override
  String get statusActive => 'Ενεργό';

  @override
  String get statusDueSoon => 'Λήγει σύντομα';

  @override
  String get statusOverdue => 'Εκπρόθεσμο';

  @override
  String get statusCompleted => 'Εξοφλήθηκε';

  @override
  String get repaymentProgress => 'Πρόοδος αποπληρωμής';

  @override
  String get byAmount => 'Βάσει ποσού';

  @override
  String get byInstallments => 'Βάσει δόσεων';

  @override
  String get startDate => 'Ημερομηνία έναρξης';

  @override
  String get openEnded => 'Αορίστου χρόνου';

  @override
  String get loanDetails => 'Στοιχεία δανείου';

  @override
  String get notSet => 'Δεν έχει οριστεί';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return 'Η πληρωμή για το «$subject» λήγει σήμερα';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Η πληρωμή σας $amount λήγει σήμερα. Ένα γρήγορο πάτημα την κρατά στην ώρα της.';
  }

  @override
  String get remindMorningTitle => 'Καλημέρα ☀️';

  @override
  String get remindMorningBody =>
      'Ξεκινήστε τη μέρα έχοντας τον έλεγχο των χρημάτων σας. Υπάρχει κάτι να προσθέσετε από χθες;';

  @override
  String get remindNoonTitle => 'Μεσημεριανός έλεγχος';

  @override
  String get remindNoonBody =>
      'Μεσημεριανό, καφές ή εισιτήριο; Προσθέστε το σε λίγα δευτερόλεπτα.';

  @override
  String get remindAfternoonTitle => 'Γρήγορη καταγραφή';

  @override
  String get remindAfternoonBody =>
      'Καταγράψτε όσα ξοδέψατε μέχρι τώρα και κρατήστε τα στοιχεία της ημέρας ακριβή.';

  @override
  String get remindEveningTitle => 'Κλείσιμο της ημέρας';

  @override
  String get remindEveningBody =>
      'Δύο λεπτά τώρα και τα νούμερα της ημέρας είναι πλήρη.';

  @override
  String get happyWeekendTitle => 'Καλό σαββατοκύριακο! 🎉';

  @override
  String get happyWeekendBody =>
      'Απολαύστε το — και παρακολουθείτε τα έξοδα του σαββατοκύριακου.';

  @override
  String get dailyReminders => 'Καθημερινές υπενθυμίσεις εξόδων';

  @override
  String get dailyRemindersBody =>
      'Φιλικές υπενθυμίσεις για να διατηρείτε τα έξοδά σας ενημερωμένα';

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
  String get preparedFor => 'Προετοιμάστηκε για';

  @override
  String get generatedOn => 'Δημιουργήθηκε στις';

  @override
  String get reportDisclaimer =>
      'Δημιουργήθηκε από το RainyPenny βάσει των δικών σας καταγραφών.';

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
  String get totalSaved => 'Συνολική αποταμίευση';

  @override
  String get shareOfTotal => 'Μερίδιο';

  @override
  String get used => 'Χρήση';

  @override
  String get goal => 'Στόχος';

  @override
  String get targetDate => 'Ημερομηνία στόχου';

  @override
  String get progress => 'Πρόοδος';

  @override
  String get paidOffShort => 'Εξοφλήθηκε';

  @override
  String get transactions => 'Συναλλαγές';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'και $count ακόμη συναλλαγές',
      one: 'και 1 ακόμη συναλλαγή',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Εξαγωγή PDF';

  @override
  String get sharePdf => 'Κοινοποίηση αναφοράς';

  @override
  String get preparingReport => 'Προετοιμασία της αναφοράς σας…';

  @override
  String get reportReady => 'Η αναφορά είναι έτοιμη';

  @override
  String get reportFailed => 'Αδυναμία δημιουργίας αναφοράς';

  @override
  String get categories => 'Κατηγορίες';

  @override
  String get categoriesIntro =>
      'Προσθέστε τις δικές σας κατηγορίες για να ταξινομείτε τα έσοδα και τα έξοδα ακριβώς όπως εσείς θέλετε.';

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
  String get categoryNameHint => 'π.χ. Φροντίδα κατοικιδίων';

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
    return 'Η κατηγορία «$name» θα αφαιρεθεί από τις κατηγορίες σας.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count εγγραφές χρησιμοποιούν ακόμη αυτήν την κατηγορία',
      one: '1 εγγραφή χρησιμοποιεί ακόμη αυτήν την κατηγορία',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Δεν υπάρχει τίποτα εδώ ακόμα.';

  @override
  String get builtIn => 'Ενσωματωμένη';

  @override
  String get manageCategories => 'Διαχείριση κατηγοριών';

  @override
  String get expense => 'Έξοδο';

  @override
  String get languageNote =>
      'Τα αραβικά, τα ούρντου, τα περσικά και τα εβραϊκά αλλάζουν ολόκληρη τη διεπαφή από δεξιά προς τα αριστερά, συμπεριλαμβανομένων των διαγραμμάτων και των αναφορών PDF.';

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
  String get passwordRequired => 'Εισαγάγετε τον κωδικό πρόσβασής σας';

  @override
  String get newPasswordLabel => 'Νέος κωδικός πρόσβασης';

  @override
  String get confirmPasswordLabel => 'Επιβεβαίωση κωδικού πρόσβασης';

  @override
  String get passwordsDoNotMatch => 'Οι κωδικοί πρόσβασης πρέπει να ταιριάζουν';

  @override
  String get showPassword => 'Εμφάνιση κωδικού πρόσβασης';

  @override
  String get hidePassword => 'Απόκρυψη κωδικού πρόσβασης';

  @override
  String get savePassword => 'Αποθήκευση κωδικού πρόσβασης';

  @override
  String get backToSignIn => 'Επιστροφή στη σύνδεση';

  @override
  String get alreadyHaveAccount => 'Έχω ήδη λογαριασμό';

  @override
  String get getStarted => 'Ξεκινήστε';

  @override
  String get acceptTerms =>
      'Συμφωνώ με τους Όρους Χρήσης και την Πολιτική Απορρήτου';

  @override
  String get acceptTermsRequired => 'Παρακαλούμε αποδεχτείτε για να συνεχίσετε';

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
      'Μια μεγάλη φράση που θυμάστε είναι καλύτερη από μια σύντομη γεμάτη σύμβολα. Αποφύγετε οτιδήποτε χρησιμοποιείτε ήδη αλλού.';

  @override
  String get authInvalidCredentials =>
      'Αυτό το email και ο κωδικός πρόσβασης δεν αντιστοιχούν σε λογαριασμό';

  @override
  String get authEmailNotConfirmed =>
      'Επιβεβαιώστε τη διεύθυνση email σας πριν συνδεθείτε';

  @override
  String get authEmailAlreadyRegistered =>
      'Υπάρχει ήδη λογαριασμός με αυτό το email';

  @override
  String get authWeakPassword => 'Επιλέξτε έναν μεγαλύτερο κωδικό πρόσβασης';

  @override
  String get authRateLimited =>
      'Πάρα πολλές προσπάθειες. Δοκιμάστε ξανά σε λίγα λεπτά';

  @override
  String get authNetworkError =>
      'Δεν υπάρχει σύνδεση. Ελέγξτε το δίκτυό σας και δοκιμάστε ξανά';

  @override
  String get authGenericError => 'Κάτι πήγε στραβά. Παρακαλούμε δοκιμάστε ξανά';

  @override
  String get confirmEmailTitle => 'Ελέγξτε το email σας';

  @override
  String confirmEmailBody(String email) {
    return 'Στείλαμε έναν σύνδεσμο επιβεβαίωσης στο $email. Ανοίξτε τον για να ολοκληρώσετε τη ρύθμιση του λογαριασμού σας.';
  }

  @override
  String get resendConfirmation => 'Επαναποστολή email επιβεβαίωσης';

  @override
  String get confirmationResent => 'Το email επιβεβαίωσης στάλθηκε';

  @override
  String get forgotPasswordTitle => 'Επαναφορά κωδικού πρόσβασης';

  @override
  String get forgotPasswordSubtitle =>
      'Εισαγάγετε το email με το οποίο εγγραφήκατε και θα σας στείλουμε έναν σύνδεσμο για να επιλέξετε νέο κωδικό πρόσβασης.';

  @override
  String get sendResetLink => 'Αποστολή συνδέσμου επαναφοράς';

  @override
  String get resetLinkSentTitle => 'Ο σύνδεσμος επαναφοράς στάλθηκε';

  @override
  String resetLinkSentBody(String email) {
    return 'Εάν το $email αντιστοιχεί σε λογαριασμό, ο σύνδεσμος επαναφοράς έχει σταλεί.';
  }

  @override
  String get resetLinkSentHint =>
      'Ο σύνδεσμος λήγει σε μία ώρα. Αν δεν φτάσει, ελέγξτε τον φάκελο ανεπιθύμητης αλληλογραφίας πριν ζητήσετε άλλον.';

  @override
  String get tryAnotherEmail => 'Χρησιμοποιήστε άλλο email';

  @override
  String get resetPasswordTitle => 'Επιλέξτε νέο κωδικό πρόσβασης';

  @override
  String get resetPasswordSubtitle =>
      'Επιλέξτε κάτι που δεν έχετε χρησιμοποιήσει ξανά σε αυτόν τον λογαριασμό.';

  @override
  String get passwordChangedTitle => 'Ο κωδικός πρόσβασης ενημερώθηκε';

  @override
  String get passwordChangedBody =>
      'Ο νέος κωδικός πρόσβασής σας αποθηκεύτηκε. Έχετε συνδεθεί και είστε έτοιμοι.';

  @override
  String get demoModeHint => 'Έκδοση επίδειξης — δεν απαιτείται λογαριασμός';

  @override
  String get demoModeFill => 'Συμπλήρωση';

  @override
  String get welcomeTrackTitle => 'Δείτε πού πάνε τα χρήματά σας';

  @override
  String get welcomeTrackBody =>
      'Καταγράψτε τι μπαίνει και τι βγαίνει. Το RainyPenny το μετατρέπει σε μια εικόνα που μπορείτε πραγματικά να κατανοήσετε.';

  @override
  String get welcomeBudgetTitle => 'Θέστε όρια που αντέχουν';

  @override
  String get welcomeBudgetBody =>
      'Δώστε σε κάθε μέρος των εξόδων σας ένα μηνιαίο ανώτατο όριο και ενημερωθείτε πριν το ξεπεράσετε αντί για μετά.';

  @override
  String get welcomeGoalsTitle => 'Αποταμιεύστε για ό,τι έχει σημασία';

  @override
  String get welcomeGoalsBody =>
      'Ονομάστε έναν στόχο, ορίστε ένα ποσό και δείτε το να γεμίζει. Ένα ταμείο έκτακτης ανάγκης δημιουργείται ευκολότερα όταν μπορείτε να το παρακολουθείτε.';

  @override
  String get welcomePrivacyTitle => 'Τα χρήματά σας παραμένουν δικά σας';

  @override
  String get welcomePrivacyBody =>
      'Τα στοιχεία σας ανήκουν αποκλειστικά σε εσάς. Τίποτα δεν πωλείται και τίποτα δεν κοινοποιείται σε κανέναν.';

  @override
  String stepOf(int step, int total) {
    return 'Βήμα $step από $total';
  }

  @override
  String get onboardingNameTitle => 'Πώς θα θέλατε να σας αποκαλούμε;';

  @override
  String get onboardingNameBody =>
      'Θα το χρησιμοποιήσουμε μόνο για να σας χαιρετάμε και πουθενά αλλού.';

  @override
  String get onboardingNameHint =>
      'Ένα μικρό όνομα είναι αρκετό. Μπορείτε να το αλλάξετε αργότερα.';

  @override
  String get onboardingCurrencyTitle => 'Ποιο νόμισμα χρησιμοποιείτε;';

  @override
  String get onboardingCurrencyBody =>
      'Κάθε ποσό στην εφαρμογή εμφανίζεται σε αυτό το νόμισμα. Η επιλογή του δεν μετατρέπει τίποτα.';

  @override
  String get onboardingCurrencySearch => 'Αναζήτηση σε όλα τα νομίσματα';

  @override
  String get onboardingAppearanceTitle => 'Κάντε το δικό σας';

  @override
  String get onboardingAppearanceBody =>
      'Επιλέξτε εμφάνιση. Όλα αλλάζουν καθώς πατάτε και μπορείτε να επιστρέψετε σε αυτό ανά πάσα στιγμή.';

  @override
  String get onboardingNotificationsTitle => 'Μείνετε ενημερωμένοι';

  @override
  String get onboardingNotificationsBody =>
      'Μια διακριτική υπενθύμιση την κατάλληλη στιγμή είναι αυτό που μετατρέπει τη συνήθεια σε τρόπο ζωής.';

  @override
  String get onboardingNotifyReminders =>
      'Μια απαλή υπενθύμιση για να καταγράφετε τι ξοδέψατε';

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
  String get onboardingReadyTitle => 'Είστε έτοιμοι';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Είστε έτοιμοι, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Η ρύθμιση ολοκληρώθηκε. Θα θέλατε μια γρήγορη περιήγηση στον τρόπο λειτουργίας;';

  @override
  String get onboardingTakeTour => 'Ξενάγηση';

  @override
  String get onboardingGoToApp => 'Μετάβαση στην εφαρμογή';

  @override
  String get onboardingTourLater =>
      'Όχι τώρα; Ο οδηγός παραμένει στις Ρυθμίσεις για όποτε τον χρειαστείτε.';

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
    return 'Άνοιγμα $screen';
  }

  @override
  String get guideDashboardTitle => 'Ο πίνακας ελέγχου σας';

  @override
  String get guideDashboardBody =>
      'Όλα ξεκινούν εδώ. Η καρτέλα στην κορυφή δείχνει τι σας απομένει. Από κάτω βρίσκονται τα έσοδα και τα έξοδα της περιόδου, και στη συνέχεια τα έξοδα, οι προϋπολογισμοί και οι στόχοι σας.';

  @override
  String get guideDashboardTip1 =>
      'Σύρετε την οθόνη προς τα κάτω για να ανανεώσετε τα πάντα ταυτόχρονα.';

  @override
  String get guideDashboardTip2 =>
      'Πατήστε την καρτέλα εσόδων ή εξόδων για να μεταβείτε στη σχετική λίστα.';

  @override
  String get guideDashboardTip3 =>
      'Οι κύκλοι και τα στατιστικά ενημερώνονται τη στιγμή που καταγράφετε κάτι.';

  @override
  String get guideAddTitle => 'Καταγραφή χρημάτων';

  @override
  String get guideAddBody =>
      'Το κουμπί στη μέση της γραμμής είναι το σημείο εκκίνησης. Ανοίγει ένα σύντομο μενού: έξοδο, έσοδο, οφειλή, προϋπολογισμός ή στόχος αποταμίευσης.';

  @override
  String get guideAddTip1 =>
      'Πατήστε το κεντρικό κουμπί για να καταγράψετε έσοδα ή έξοδα.';

  @override
  String get guideAddTip2 =>
      'Κρατήστε το πατημένο για να πάτε απευθείας σε νέο έξοδο, παρακάμπτοντας το μενού.';

  @override
  String get guideAddTip3 =>
      'Επιλέγετε πάντα κατηγορία — αυτό είναι που κάνει τα γραφήματα και τους προϋπολογισμούς να λειτουργούν σωστά.';

  @override
  String get guideCategoriesTitle => 'Κατηγορίες';

  @override
  String get guideCategoriesBody =>
      'Οι κατηγορίες είναι ο τρόπος ομαδοποίησης των εξόδων. Αυτές που παρέχονται καλύπτουν τις περισσότερες ανάγκες, αλλά μπορείτε να τις μετονομάσετε ή να προσθέσετε δικές σας.';

  @override
  String get guideCategoriesTip1 =>
      'Ρυθμίσεις και μετά Διαχείριση κατηγοριών για αλλαγή ή προσθήκη.';

  @override
  String get guideCategoriesTip2 =>
      'Οτιδήποτε μείνει χωρίς κατηγορία πηγαίνει στα «Διάφορα», ώστε τα γραφήματα να παραμένουν ακριβή.';

  @override
  String get guideBudgetTitle => 'Προϋπολογισμοί';

  @override
  String get guideBudgetBody =>
      'Ο προϋπολογισμός είναι ένα μηνιαίο ανώτατο όριο για μία κατηγορία. Η γραμμή γεμίζει καθώς ξοδεύετε και αλλάζει χρώμα όταν πλησιάζει, ώστε να το γνωρίζετε έγκαιρα.';

  @override
  String get guideBudgetTip1 =>
      'Ξεκινήστε με δύο ή τρεις κατηγορίες, όχι με όλες ταυτόχρονα.';

  @override
  String get guideBudgetTip2 =>
      'Ορίστε το όριο ελαφρώς πάνω από όσα ξοδεύετε συνήθως και στη συνέχεια προσαρμόστε το.';

  @override
  String get guideBudgetTip3 =>
      'Αφήστε τις ειδοποιήσεις προϋπολογισμού ενεργές για να προειδοποιείστε εγκαίρως.';

  @override
  String get guideSavingsTitle => 'Στόχοι αποταμίευσης';

  @override
  String get guideSavingsBody =>
      'Ονομάστε αυτό για το οποίο αποταμιεύετε, ορίστε στόχο και ημερομηνία, και η εφαρμογή υπολογίζει τι χρειάζεται να βάζετε στην άκρη κάθε μήνα.';

  @override
  String get guideSavingsTip1 =>
      'Ένας συγκεκριμένος στόχος επιτυγχάνεται ευκολότερα από μια αόριστη πρόθεση για αποταμίευση.';

  @override
  String get guideSavingsTip2 =>
      'Πολλοί μικροί στόχοι ολοκληρώνονται συχνότερα από έναν μεγάλο.';

  @override
  String get guideLoansTitle => 'Οφειλές και δάνεια';

  @override
  String get guideLoansBody =>
      'Καταγράψτε τι χρωστάτε, ποιο είναι το κόστος και πότε λήγει η επόμενη πληρωμή. Όλα όσα αποπληρώνετε βρίσκονται σε μία λίστα με το συνολικό υπόλοιπο.';

  @override
  String get guideLoansTip1 =>
      'Προσθέστε την ημερομηνία λήξης και οι υπενθυμίσεις πληρωμών θα φροντίσουν να μην την ξεχάσετε.';

  @override
  String get guideLoansTip2 =>
      'Μια εκπρόθεσμη οφειλή εμφανίζεται με κόκκινο χρώμα στον πίνακα ελέγχου μέχρι να εξοφληθεί.';

  @override
  String get guideReportsTitle => 'Αναφορές';

  @override
  String get guideReportsBody =>
      'Η αναλυτική εικόνα: έσοδα έναντι εξόδων, έξοδα ανά κατηγορία, απόδοση προϋπολογισμών και ποιο ποσοστό του εισοδήματός σας κρατήσατε.';

  @override
  String get guideReportsTip1 =>
      'Κάντε εναλλαγή μεταξύ εβδομάδας, μήνα και τριμήνου στο επάνω μέρος της οθόνης.';

  @override
  String get guideReportsTip2 =>
      'Εξαγάγετε ή μοιραστείτε ένα PDF — δημιουργείται στη γλώσσα και τη φορά ανάγνωσής σας.';

  @override
  String get guideSettingsTitle => 'Ρυθμίσεις';

  @override
  String get guideSettingsBody =>
      'Γλώσσα, νόμισμα, χρώματα και ειδοποιήσεις βρίσκονται εδώ, και τίποτα δεν είναι κλειδωμένο — αλλάξτε τα όποτε θέλετε.';

  @override
  String get guideSettingsTip1 =>
      'Σαράντα γλώσσες, με πλήρη προσαρμογή διάταξης για γλώσσες δεξιάς-προς-αριστερά γραφής.';

  @override
  String get guideSettingsTip2 =>
      'Επιλέξτε ποιες ειδοποιήσεις θέλετε και τις ώρες που επιτρέπεται να εμφανίζονται.';

  @override
  String get guideSettingsTip3 =>
      'Οι ώρες ησυχίας συγκρατούν όλες τις ειδοποιήσεις μέχρι το πρωί.';

  @override
  String get guideHabitTitle => 'Κάντε το συνήθεια';

  @override
  String get guideHabitBody =>
      'Η εφαρμογή είναι τόσο χρήσιμη όσο τα στοιχεία που εισάγετε. Ένα λεπτό την ημέρα αποδίδει καλύτερα από μία ώρα τον μήνα, και μετά από δύο εβδομάδες τα νούμερα αρχίζουν να δείχνουν ξεκάθαρα την εικόνα.';

  @override
  String get guideHabitTip1 =>
      'Καταγράφετε τα έξοδά σας τη στιγμή που γίνονται, όχι στο τέλος της εβδομάδας.';

  @override
  String get guideHabitTip2 =>
      'Ρίξτε μια ματιά στον πίνακα ελέγχου μία φορά την ημέρα. Δέκα δευτερόλεπτα αρκούν.';

  @override
  String get guideHabitTip3 =>
      'Αυτός ο οδηγός παραμένει στις Ρυθμίσεις — επιστρέψτε σε αυτόν όποτε θέλετε.';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get themeCaption =>
      'Φωτεινό, σκοτεινό ή σύμφωνα με τις ρυθμίσεις του τηλεφώνου σας.';

  @override
  String get accentColor => 'Χρώμα έμφασης';

  @override
  String get accentColorCaption =>
      'Χρωματίζει τα κουμπιά, τα επιλεγμένα στοιχεία και τα γραφήματα.';

  @override
  String get accentSemanticsNote =>
      'Τα έσοδα και τα έξοδα διατηρούν τα δικά τους χρώματα σε κάθε θέμα, ώστε τα νούμερα να μη χάνουν ποτέ το νόημά τους.';

  @override
  String get accentTeal => 'Πετρόλ';

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
  String get accentCrimson => 'Βυσσινί';

  @override
  String get accentOrange => 'Πορτοκαλί';

  @override
  String get accentSlate => 'Γκρι του σχιστόλιθου';

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
      'Δοκιμάστε το όνομα στα αγγλικά ή τον κωδικό δύο γραμμάτων.';

  @override
  String get rightToLeft => 'Από δεξιά προς τα αριστερά';

  @override
  String get replayGuide => 'Επανάληψη οδηγού';

  @override
  String get replaySetup => 'Επανάληψη αρχικής ρύθμισης';

  @override
  String get replaySetupBody =>
      'Περάστε ξανά από τις αρχικές ερωτήσεις. Τίποτα από όσα έχετε καταγράψει δεν θα διαγραφεί.';

  @override
  String get rateTitle => 'Σας αρέσει το RainyPenny;';

  @override
  String get rateBody =>
      'Χρησιμοποιείτε την εφαρμογή εδώ και λίγο καιρό. Μια αξιολόγηση παίρνει μόνο μια στιγμή και βοηθά άλλους χρήστες να την ανακαλύψουν.';

  @override
  String get rateAction => 'Αξιολογήστε την εφαρμογή';

  @override
  String get rateLater => 'Ίσως αργότερα';

  @override
  String get rateNever => 'Όχι, ευχαριστώ';

  @override
  String get rateThanks => 'Σας ευχαριστούμε';

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
}
