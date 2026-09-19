// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppL10nRo extends AppL10n {
  AppL10nRo([String locale = 'ro']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Pune deoparte pentru zile negre';

  @override
  String get navHome => 'Acasă';

  @override
  String get navTransactions => 'Tranzacții';

  @override
  String get navAdd => 'Adaugă';

  @override
  String get navReports => 'Rapoarte';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Bună dimineața, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Bună ziua, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Bună seara, $name';
  }

  @override
  String get greetingSubtitle => 'Iată imaginea ta financiară';

  @override
  String get totalBalance => 'Sold total';

  @override
  String get vsLastPeriod => 'față de perioada anterioară';

  @override
  String get income => 'Venituri';

  @override
  String get expenses => 'Cheltuieli';

  @override
  String get netBalance => 'Sold net';

  @override
  String get lastThirtyDays => 'Ultimele 30 de zile';

  @override
  String get quickActions => 'Acțiuni rapide';

  @override
  String get addIncome => 'Adaugă venit';

  @override
  String get addExpense => 'Adaugă cheltuială';

  @override
  String get spendingOverview => 'Privire de ansamblu';

  @override
  String get recentTransactions => 'Tranzacții recente';

  @override
  String get seeAll => 'Vezi toate';

  @override
  String get viewAll => 'Arată toate';

  @override
  String get budgetProgress => 'Progresul bugetelor';

  @override
  String get savingsGoals => 'Obiective de economisire';

  @override
  String get financialInsight => 'Observație financiară';

  @override
  String get financialHealth => 'Sănătate financiară';

  @override
  String ofTotal(String total) {
    return 'din $total';
  }

  @override
  String get searchTransactions => 'Caută tranzacții';

  @override
  String get filterAll => 'Toate';

  @override
  String get filterIncome => 'Venituri';

  @override
  String get filterExpenses => 'Cheltuieli';

  @override
  String get today => 'Azi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get noTransactionsTitle => 'Nu s-au găsit tranzacții';

  @override
  String get noTransactionsBody =>
      'Încearcă alt termen sau alt filtru ca să vezi mai multe înregistrări.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de tranzacții',
      few: '$count tranzacții',
      one: 'o tranzacție',
      zero: 'Nicio tranzacție',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Adaugă tranzacție';

  @override
  String get amount => 'Sumă';

  @override
  String get category => 'Categorie';

  @override
  String get date => 'Dată';

  @override
  String get note => 'Notiță';

  @override
  String get noteHint => 'Notiță (opțional)';

  @override
  String get saveIncome => 'Salvează venitul';

  @override
  String get saveExpense => 'Salvează cheltuiala';

  @override
  String get selectCategory => 'Alege categoria';

  @override
  String get transactionSaved => 'Tranzacție salvată';

  @override
  String get amountRequired => 'Introdu o sumă mai mare decât zero';

  @override
  String get titleRequired => 'Dă un nume acestei tranzacții';

  @override
  String get descriptionLabel => 'Descriere';

  @override
  String get descriptionHint => 'ex. cumpărături';

  @override
  String get budget => 'Buget';

  @override
  String get budgets => 'Bugete';

  @override
  String get totalBudget => 'Buget total';

  @override
  String get spent => 'Cheltuit';

  @override
  String get remaining => 'Rămas';

  @override
  String budgetUsed(int percent) {
    return '$percent% folosit';
  }

  @override
  String get onTrack => 'Conform planului';

  @override
  String get approachingLimit => 'Aproape de limită';

  @override
  String get overBudget => 'Peste buget';

  @override
  String get savings => 'Economii';

  @override
  String get yourGoals => 'Obiectivele tale';

  @override
  String get saved => 'Economisit';

  @override
  String get target => 'Țintă';

  @override
  String get monthlyContribution => 'Lunar';

  @override
  String get addFunds => 'Adaugă bani';

  @override
  String get goalComplete => 'Obiectiv atins';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'au mai rămas $count de luni',
      few: 'au mai rămas $count luni',
      one: 'a mai rămas o lună',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Credite și datorii';

  @override
  String get totalOutstanding => 'Total de plată';

  @override
  String get monthlyPayment => 'Lunar';

  @override
  String get nextPayment => 'Următoarea rată';

  @override
  String paidOff(int percent) {
    return '$percent% achitat';
  }

  @override
  String get interestRate => 'Dobândă';

  @override
  String get upcomingPayments => 'Rate apropiate';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Peste $count de zile',
      few: 'Peste $count zile',
      one: 'Peste o zi',
      zero: 'Scadent azi',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Restant';

  @override
  String get reports => 'Rapoarte';

  @override
  String get week => 'Săptămână';

  @override
  String get month => 'Lună';

  @override
  String get quarter => 'Trimestru';

  @override
  String get incomeVsExpenses => 'Venituri și cheltuieli';

  @override
  String get spendingByCategory => 'Cheltuieli pe categorii';

  @override
  String get budgetPerformance => 'Respectarea bugetelor';

  @override
  String get insights => 'Observații';

  @override
  String get savingsRate => 'Rata de economisire';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Cont';

  @override
  String get personalInformation => 'Date personale';

  @override
  String get changePassword => 'Schimbă parola';

  @override
  String get notifications => 'Notificări';

  @override
  String get preferences => 'Preferințe';

  @override
  String get language => 'Limbă';

  @override
  String get currency => 'Monedă';

  @override
  String get theme => 'Temă';

  @override
  String get security => 'Securitate';

  @override
  String get privacyAndSecurity => 'Confidențialitate și securitate';

  @override
  String get help => 'Ajutor';

  @override
  String get helpAndSupport => 'Ajutor și asistență';

  @override
  String get termsAndConditions => 'Termeni și condiții';

  @override
  String get logOut => 'Deconectare';

  @override
  String memberSince(String date) {
    return 'Membru din $date';
  }

  @override
  String get themeSystem => 'Ca sistemul';

  @override
  String get themeLight => 'Deschis';

  @override
  String get themeDark => 'Întunecat';

  @override
  String get settings => 'Setări';

  @override
  String get noNotificationsTitle => 'Ești la zi';

  @override
  String get noNotificationsBody =>
      'Observațiile și mementourile noi apar aici.';

  @override
  String get cancel => 'Anulează';

  @override
  String get save => 'Salvează';

  @override
  String get done => 'Gata';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get close => 'Închide';

  @override
  String get somethingWentWrong => 'Ceva n-a mers bine';

  @override
  String get comingSoon => 'Vine în versiunea completă';

  @override
  String get edit => 'Editează';

  @override
  String get delete => 'Șterge';

  @override
  String get undo => 'Anulează acțiunea';

  @override
  String get add => 'Adaugă';

  @override
  String get create => 'Creează';

  @override
  String get nameRequired => 'Dă-i un nume';

  @override
  String get amountAboveZero => 'Introdu o sumă mai mare decât zero';

  @override
  String get editTransaction => 'Editează tranzacția';

  @override
  String get deleteTransaction => 'Ștergi tranzacția?';

  @override
  String deleteTransactionBody(String title) {
    return '$title va dispărea din evidența ta.';
  }

  @override
  String get transactionDeleted => 'Tranzacție ștearsă';

  @override
  String get transactionUpdated => 'Tranzacție actualizată';

  @override
  String get newBudget => 'Buget nou';

  @override
  String get editBudget => 'Editează bugetul';

  @override
  String get budgetLimit => 'Limită lunară';

  @override
  String get deleteBudget => 'Ștergi bugetul?';

  @override
  String deleteBudgetBody(String category) {
    return 'Bugetul $category va fi eliminat. Tranzacțiile tale rămân neatinse.';
  }

  @override
  String get budgetSaved => 'Buget salvat';

  @override
  String get budgetDeleted => 'Buget șters';

  @override
  String get allCategoriesBudgeted => 'Fiecare categorie are deja buget';

  @override
  String get noBudgetsTitle => 'Încă niciun buget';

  @override
  String get noBudgetsBody =>
      'Pune o limită lunară pe o categorie ca să începi s-o urmărești.';

  @override
  String get newGoal => 'Obiectiv nou';

  @override
  String get editGoal => 'Editează obiectivul';

  @override
  String get goalName => 'Numele obiectivului';

  @override
  String get goalNameHint => 'ex. fond de urgență';

  @override
  String get targetAmount => 'Suma țintă';

  @override
  String get alreadySaved => 'Deja economisit';

  @override
  String get deleteGoal => 'Ștergi obiectivul?';

  @override
  String deleteGoalBody(String name) {
    return '$name și progresul lui vor fi eliminate.';
  }

  @override
  String get goalSaved => 'Obiectiv salvat';

  @override
  String get goalDeleted => 'Obiectiv șters';

  @override
  String get noGoalsTitle => 'Încă niciun obiectiv de economisire';

  @override
  String get noGoalsBody =>
      'Pune-ți o țintă și RainyPenny îți urmărește progresul.';

  @override
  String get fundsAdded => 'Bani adăugați';

  @override
  String get newDebt => 'Credit sau card nou';

  @override
  String get editDebt => 'Editează creditul';

  @override
  String get debtName => 'Nume';

  @override
  String get debtNameHint => 'ex. credit auto';

  @override
  String get lender => 'Creditor';

  @override
  String get lenderHint => 'ex. Banca Transilvania';

  @override
  String get originalAmount => 'Suma inițială';

  @override
  String get creditLimit => 'Limită de credit';

  @override
  String get remainingBalance => 'Sold rămas';

  @override
  String get interestRatePercent => 'Rata dobânzii (%)';

  @override
  String get kindLoan => 'Credit';

  @override
  String get kindCreditCard => 'Card de credit';

  @override
  String get recordPayment => 'Înregistrează plata';

  @override
  String get paymentRecorded => 'Plată înregistrată';

  @override
  String get deleteDebt => 'Ștergi această datorie?';

  @override
  String deleteDebtBody(String name) {
    return '$name va fi eliminat din datoriile tale.';
  }

  @override
  String get debtSaved => 'Salvat';

  @override
  String get debtDeleted => 'Șters';

  @override
  String get noDebtsTitle => 'Nicio datorie urmărită';

  @override
  String get noDebtsBody =>
      'Adaugă un credit sau un card ca să ții ratele sub ochi.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Bugetul $subject a fost depășit';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Ai depășit bugetul $subject cu $amount în această perioadă.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject se apropie de limită';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Bugetul $subject e folosit în proporție de $percent%, au mai rămas $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Cheltuielile depășesc veniturile';

  @override
  String get insightOverIncomeBody =>
      'În această perioadă ai cheltuit mai mult decât ai câștigat. Uită-te la categoriile mari ca să reechilibrezi.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Cheltuielile pe $subject au crescut';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Cheltuielile tale pe $subject sunt cu $percent% mai mari decât în perioada anterioară.';
  }

  @override
  String get insightTrendDownTitle => 'Cheltuielile scad';

  @override
  String insightTrendDownBody(int percent) {
    return 'Cheltuielile totale sunt cu $percent% mai mici decât în perioada anterioară.';
  }

  @override
  String get insightTrendUpTitle => 'Cheltuielile cresc';

  @override
  String insightTrendUpBody(int percent) {
    return 'Cheltuielile totale sunt cu $percent% mai mari decât în perioada anterioară.';
  }

  @override
  String get insightSavingsStrongTitle => 'Economii bune în această perioadă';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Ai păstrat $percent% din venit — mult peste ținta de $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Rata de economisire sub țintă';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'În această perioadă ai păstrat $percent% din venit. Țintește $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject e aproape gata';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Mai sunt doar $amount până la $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject merge conform planului';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months de luni',
      few: '$months luni',
      one: 'o lună',
    );
    return 'Cu $amount pe lună ajungi la acest obiectiv în $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Rata $subject e restantă';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days de zile',
      few: '$days zile',
      one: 'o zi',
    );
    return 'Rata de $amount pentru $subject întârzie cu $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Urmează rata $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'peste $days de zile',
      few: 'peste $days zile',
      one: 'peste o zi',
      zero: 'azi',
    );
    return '$amount sunt de plată $_temp0.';
  }

  @override
  String get signIn => 'Conectare';

  @override
  String get signUp => 'Creează cont';

  @override
  String get signInSubtitle => 'Bine ai revenit. Banii tăi te așteaptă.';

  @override
  String get signUpSubtitle => 'Câteva detalii și ești gata.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'tu@email.com';

  @override
  String get passwordLabel => 'Parolă';

  @override
  String get passwordHint => 'Cel puțin 8 caractere';

  @override
  String get fullNameLabel => 'Nume complet';

  @override
  String get fullNameHint => 'Andrei Popescu';

  @override
  String get forgotPassword => 'Ai uitat parola?';

  @override
  String get resetSent => 'Verifică-ți e-mailul pentru linkul de resetare';

  @override
  String get noAccountYet => 'Prima dată aici?';

  @override
  String get haveAccount => 'Ai deja un cont?';

  @override
  String get emailInvalid => 'Introdu o adresă de e-mail validă';

  @override
  String get passwordTooShort => 'Folosește cel puțin 8 caractere';

  @override
  String get signOutConfirm => 'Te deconectezi?';

  @override
  String get signOutBody =>
      'Va trebui să te conectezi din nou ca să-ți vezi finanțele.';

  @override
  String get dataSource => 'Sursa datelor';

  @override
  String get insightWeeklySummaryTitle => 'Săptămâna ta pe scurt';

  @override
  String get insightWeeklySummaryBody =>
      'Vezi unde s-au dus banii săptămâna asta și cum se țin bugetele.';

  @override
  String get notificationSettings => 'Notificări';

  @override
  String get alertsSection => 'Alerte';

  @override
  String get budgetAlerts => 'Alerte de buget';

  @override
  String get budgetAlertsBody =>
      'Când un buget se apropie de limită sau o depășește';

  @override
  String get paymentReminders => 'Mementouri de plată';

  @override
  String get paymentRemindersBody => 'Cu câteva zile înainte de scadență';

  @override
  String get savingsUpdates => 'Noutăți despre economii';

  @override
  String get savingsUpdatesBody => 'Progresul către obiectivele tale';

  @override
  String get weeklySummaryLabel => 'Rezumat săptămânal';

  @override
  String get weeklySummaryBody => 'Un rezumat al săptămânii trecute';

  @override
  String get scheduleSection => 'Momentul';

  @override
  String get reminderTime => 'Ora mementoului';

  @override
  String get quietHours => 'Ore liniștite';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Ziua rezumatului';

  @override
  String get permissionRequired => 'Notificările sunt oprite';

  @override
  String get permissionRequiredBody =>
      'Permite notificările ca RainyPenny să te avertizeze înainte ca un buget sau o rată să-ți scape de sub control.';

  @override
  String get allowNotifications => 'Permite notificările';

  @override
  String get permissionDenied =>
      'Notificările sunt blocate. Le poți activa din setările telefonului.';

  @override
  String get upcomingAlerts => 'Programate';

  @override
  String get noScheduledAlerts => 'Momentan nu e nimic programat';

  @override
  String get noScheduledAlertsBody =>
      'Alertele apar aici pe măsură ce bugetele și ratele se apropie de limitele lor.';

  @override
  String scheduledFor(String date) {
    return 'Programat pentru $date';
  }

  @override
  String get everyWeek => 'În fiecare săptămână';

  @override
  String get allNotificationsOff => 'Toate notificările sunt oprite';

  @override
  String get needsAttention => 'Necesită atenție';

  @override
  String get quickActionsTitle => 'Ce vrei să faci?';

  @override
  String get createSection => 'Înregistrează';

  @override
  String get jumpToSection => 'Mergi la';

  @override
  String get addLoanAction => 'Adaugă credit';

  @override
  String get addBudgetAction => 'Adaugă buget';

  @override
  String get addGoalAction => 'Adaugă obiectiv';

  @override
  String get longPressHint =>
      'Sfat: ține apăsat + ca să notezi direct o cheltuială';

  @override
  String get searchCurrencies => 'Caută monede';

  @override
  String get noCurrenciesFound => 'Nicio monedă găsită';

  @override
  String get noCurrenciesFoundMessage => 'Încearcă alt cod, simbol sau nume.';

  @override
  String get popularCurrencies => 'Populare';

  @override
  String get allCurrencies => 'Toate monedele';

  @override
  String get totalLoanAmount => 'Valoarea totală a creditului';

  @override
  String get installmentAmount => 'Valoarea ratei';

  @override
  String get numberOfInstallments => 'Numărul de rate';

  @override
  String get paidInstallments => 'Rate plătite';

  @override
  String get remainingInstallments => 'Rate rămase';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid din $total plătite';
  }

  @override
  String get finalPayment => 'Ultima rată';

  @override
  String get paymentDueDate => 'Data scadenței';

  @override
  String dueOnDayOfMonth(int day) {
    return 'În data de $day a fiecărei luni';
  }

  @override
  String get loanStatus => 'Stare';

  @override
  String get statusActive => 'Conform planului';

  @override
  String get statusDueSoon => 'Scadent curând';

  @override
  String get statusOverdue => 'Restant';

  @override
  String get statusCompleted => 'Achitat';

  @override
  String get repaymentProgress => 'Progresul rambursării';

  @override
  String get byAmount => 'După sumă';

  @override
  String get byInstallments => 'După rate';

  @override
  String get startDate => 'Data de început';

  @override
  String get openEnded => 'Fără termen';

  @override
  String get loanDetails => 'Detaliile creditului';

  @override
  String get notSet => 'Nesetat';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject e scadent azi';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Rata de $amount e scadentă azi. O atingere și e la timp.';
  }

  @override
  String get remindMorningTitle => 'Bună dimineața ☀️';

  @override
  String get remindMorningBody =>
      'Începe ziua cu banii sub control. Mai e ceva de adăugat de ieri?';

  @override
  String get remindNoonTitle => 'Verificare de prânz';

  @override
  String get remindNoonBody =>
      'Prânz, cafea, un bilet? Le notezi în câteva secunde.';

  @override
  String get remindAfternoonTitle => 'O completare rapidă';

  @override
  String get remindAfternoonBody =>
      'Notează ce ai cheltuit până acum ca cifrele de azi să fie corecte.';

  @override
  String get remindEveningTitle => 'Încheiem ziua';

  @override
  String get remindEveningBody =>
      'Două minute acum și cifrele de azi sunt complete.';

  @override
  String get happyWeekendTitle => 'Weekend plăcut! 🎉';

  @override
  String get happyWeekendBody =>
      'Bucură-te — și mai aruncă un ochi pe cheltuielile de weekend.';

  @override
  String get dailyReminders => 'Mementouri zilnice pentru cheltuieli';

  @override
  String get dailyRemindersBody =>
      'Îndemnuri blânde ca să-ți ții cheltuielile la zi';

  @override
  String get weekendGreeting => 'Salut de weekend';

  @override
  String get weekendGreetingBody =>
      'Un salut prietenos la începutul weekendului';

  @override
  String get reminderTimesSection => 'Orele mementourilor';

  @override
  String get slotMorning => 'Dimineață';

  @override
  String get slotNoon => 'Prânz';

  @override
  String get slotAfternoon => 'După-amiază';

  @override
  String get slotEvening => 'Seară';

  @override
  String get everyDay => 'În fiecare zi';

  @override
  String get financialReport => 'Raport financiar';

  @override
  String get preparedFor => 'Pregătit pentru';

  @override
  String get generatedOn => 'Generat la';

  @override
  String get reportDisclaimer =>
      'Generat de RainyPenny din propriile tale înregistrări.';

  @override
  String pageOf(int page, int total) {
    return 'Pagina $page din $total';
  }

  @override
  String get overview => 'Prezentare';

  @override
  String get description => 'Descriere';

  @override
  String get totalIncome => 'Total venituri';

  @override
  String get totalExpenses => 'Total cheltuieli';

  @override
  String get totalSaved => 'Total economisit';

  @override
  String get shareOfTotal => 'Pondere';

  @override
  String get used => 'Folosit';

  @override
  String get goal => 'Obiectiv';

  @override
  String get targetDate => 'Data țintă';

  @override
  String get progress => 'Progres';

  @override
  String get paidOffShort => 'Achitat';

  @override
  String get transactions => 'Tranzacții';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'și încă $count de tranzacții',
      few: 'și încă $count tranzacții',
      one: 'și încă o tranzacție',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportă PDF';

  @override
  String get sharePdf => 'Distribuie raportul';

  @override
  String get preparingReport => 'Se pregătește raportul…';

  @override
  String get reportReady => 'Raportul e gata';

  @override
  String get reportFailed => 'Raportul nu a putut fi creat';

  @override
  String get categories => 'Categorii';

  @override
  String get categoriesIntro =>
      'Adaugă-ți propriile categorii ca să-ți așezi veniturile și cheltuielile exact așa cum te gândești la ele.';

  @override
  String get expenseCategories => 'Categorii de cheltuieli';

  @override
  String get incomeCategories => 'Categorii de venituri';

  @override
  String get newCategory => 'Categorie nouă';

  @override
  String get editCategory => 'Editează categoria';

  @override
  String get categoryName => 'Nume';

  @override
  String get categoryNameHint => 'ex. animale de companie';

  @override
  String get icon => 'Pictogramă';

  @override
  String get categorySaved => 'Categorie salvată';

  @override
  String get categoryDeleted => 'Categorie ștearsă';

  @override
  String get deleteCategory => 'Ștergi această categorie?';

  @override
  String deleteCategoryBody(String name) {
    return '$name va dispărea din categoriile tale.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de înregistrări încă folosesc această categorie',
      few: '$count înregistrări încă folosesc această categorie',
      one: 'o înregistrare încă folosește această categorie',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Încă nimic aici.';

  @override
  String get builtIn => 'Predefinită';

  @override
  String get manageCategories => 'Gestionează categoriile';

  @override
  String get expense => 'Cheltuială';

  @override
  String get languageNote =>
      'Araba, urdu, persana și ebraica trec toată interfața de la dreapta la stânga, inclusiv graficele și rapoartele PDF.';

  @override
  String get next => 'Înainte';

  @override
  String get back => 'Înapoi';

  @override
  String get skip => 'Sari peste';

  @override
  String get continueLabel => 'Continuă';

  @override
  String get selected => 'Selectat';

  @override
  String get passwordRequired => 'Introdu parola';

  @override
  String get newPasswordLabel => 'Parolă nouă';

  @override
  String get confirmPasswordLabel => 'Confirmă parola';

  @override
  String get passwordsDoNotMatch => 'Ambele parole trebuie să fie identice';

  @override
  String get showPassword => 'Arată parola';

  @override
  String get hidePassword => 'Ascunde parola';

  @override
  String get savePassword => 'Salvează parola';

  @override
  String get backToSignIn => 'Înapoi la conectare';

  @override
  String get alreadyHaveAccount => 'Am deja un cont';

  @override
  String get getStarted => 'Să începem';

  @override
  String get acceptTerms =>
      'Sunt de acord cu Termenii serviciului și cu Politica de confidențialitate';

  @override
  String get acceptTermsRequired => 'Acceptă pentru a continua';

  @override
  String get passwordStrengthTooShort => 'Prea scurtă';

  @override
  String get passwordStrengthWeak => 'Slabă';

  @override
  String get passwordStrengthFair => 'Acceptabilă';

  @override
  String get passwordStrengthGood => 'Bună';

  @override
  String get passwordStrengthStrong => 'Puternică';

  @override
  String get passwordAdvice =>
      'O frază lungă pe care ți-o amintești bate o parolă scurtă plină de simboluri. Evită orice folosești deja în altă parte.';

  @override
  String get authInvalidCredentials =>
      'Acest e-mail și această parolă nu se potrivesc cu niciun cont';

  @override
  String get authEmailNotConfirmed =>
      'Confirmă-ți adresa de e-mail înainte de conectare';

  @override
  String get authEmailAlreadyRegistered =>
      'Există deja un cont cu acest e-mail';

  @override
  String get authWeakPassword => 'Alege o parolă mai lungă';

  @override
  String get authRateLimited =>
      'Prea multe încercări. Reîncearcă peste câteva minute';

  @override
  String get authNetworkError =>
      'Fără conexiune. Verifică rețeaua și reîncearcă';

  @override
  String get authGenericError => 'Ceva n-a mers bine. Te rugăm să reîncerci';

  @override
  String get confirmEmailTitle => 'Verifică-ți e-mailul';

  @override
  String confirmEmailBody(String email) {
    return 'Am trimis un link de confirmare la $email. Deschide-l ca să-ți finalizezi contul.';
  }

  @override
  String get resendConfirmation => 'Retrimite e-mailul de confirmare';

  @override
  String get confirmationResent => 'E-mail de confirmare trimis';

  @override
  String get forgotPasswordTitle => 'Resetează parola';

  @override
  String get forgotPasswordSubtitle =>
      'Scrie e-mailul cu care te-ai înregistrat și îți trimitem un link ca să-ți alegi o parolă nouă.';

  @override
  String get sendResetLink => 'Trimite linkul';

  @override
  String get resetLinkSentTitle => 'Link trimis';

  @override
  String resetLinkSentBody(String email) {
    return 'Dacă $email are un cont, linkul de resetare e deja pe drum.';
  }

  @override
  String get resetLinkSentHint =>
      'Linkul expiră într-o oră. Dacă nu ajunge, uită-te în folderul spam înainte să ceri altul.';

  @override
  String get tryAnotherEmail => 'Folosește alt e-mail';

  @override
  String get resetPasswordTitle => 'Alege o parolă nouă';

  @override
  String get resetPasswordSubtitle =>
      'Alege ceva ce n-ai mai folosit pe acest cont.';

  @override
  String get passwordChangedTitle => 'Parolă actualizată';

  @override
  String get passwordChangedBody =>
      'Noua parolă e salvată. Ești conectat și gata de treabă.';

  @override
  String get demoModeHint => 'Versiune demo — nu e nevoie de cont';

  @override
  String get demoModeFill => 'Completează';

  @override
  String get welcomeTrackTitle => 'Vezi unde se duc banii';

  @override
  String get welcomeTrackBody =>
      'Notează ce intră și ce iese. RainyPenny transformă totul într-o imagine pe care chiar o poți citi.';

  @override
  String get welcomeBudgetTitle => 'Limite care chiar țin';

  @override
  String get welcomeBudgetBody =>
      'Pune un plafon lunar pe fiecare parte a cheltuielilor și află înainte să-l depășești, nu după.';

  @override
  String get welcomeGoalsTitle => 'Economisește pentru ce contează';

  @override
  String get welcomeGoalsBody =>
      'Dă-i un nume obiectivului, stabilește o sumă și privește-l cum se umple. Un fond de urgență se strânge mai ușor când îl vezi.';

  @override
  String get welcomePrivacyTitle => 'Banii tăi rămân ai tăi';

  @override
  String get welcomePrivacyBody =>
      'Cifrele tale sunt doar ale tale. Nimic nu se vinde și nimic nu se împarte cu nimeni.';

  @override
  String stepOf(int step, int total) {
    return 'Pasul $step din $total';
  }

  @override
  String get onboardingNameTitle => 'Cum să-ți spunem?';

  @override
  String get onboardingNameBody =>
      'Îl folosim doar ca să te salutăm, nicăieri altundeva.';

  @override
  String get onboardingNameHint =>
      'Prenumele e de ajuns. Îl poți schimba mai târziu.';

  @override
  String get onboardingCurrencyTitle => 'Ce monedă folosești?';

  @override
  String get onboardingCurrencyBody =>
      'Toate sumele din aplicație sunt afișate în această monedă. Alegerea nu convertește nimic.';

  @override
  String get onboardingCurrencySearch => 'Caută în toate monedele';

  @override
  String get onboardingAppearanceTitle => 'Fă-o pe gustul tău';

  @override
  String get onboardingAppearanceBody =>
      'Alege un aspect. Totul se schimbă în timp ce atingi și poți reveni oricând.';

  @override
  String get onboardingNotificationsTitle => 'Rămâi cu ochii pe ele';

  @override
  String get onboardingNotificationsBody =>
      'Un semnal discret la momentul potrivit e ceea ce transformă asta într-un obicei.';

  @override
  String get onboardingNotifyReminders =>
      'Un memento blând ca să notezi ce ai cheltuit';

  @override
  String get onboardingNotifyBudget =>
      'Un avertisment înainte să se termine un buget';

  @override
  String get onboardingNotifySummary =>
      'Un rezumat săptămânal despre unde s-au dus banii';

  @override
  String get onboardingNotifyEnable => 'Activează notificările';

  @override
  String get onboardingNotifyDone => 'Setările de notificare au fost salvate';

  @override
  String get onboardingNotifyLater =>
      'Poți schimba toate astea în Setări, oricând.';

  @override
  String get onboardingReadyTitle => 'Totul e pregătit';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Totul e pregătit, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Configurarea s-a încheiat. Vrei un tur rapid prin aplicație?';

  @override
  String get onboardingTakeTour => 'Arată-mi';

  @override
  String get onboardingGoToApp => 'Du-mă în aplicație';

  @override
  String get onboardingTourLater =>
      'Nu acum? Ghidul rămâne în Setări, pentru când vrei.';

  @override
  String get beginnersGuide => 'Ghidul începătorului';

  @override
  String get guideFinish => 'Termină';

  @override
  String chapterOf(int number, int total) {
    return 'Capitolul $number din $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Deschide $screen';
  }

  @override
  String get guideDashboardTitle => 'Ecranul tău principal';

  @override
  String get guideDashboardBody =>
      'Totul începe aici. Cardul de sus arată cât ți-a rămas; sub el ce a intrat și ce a ieșit în perioada asta, apoi cheltuielile, bugetele și obiectivele.';

  @override
  String get guideDashboardTip1 =>
      'Trage ecranul în jos ca să reîmprospătezi tot dintr-o dată.';

  @override
  String get guideDashboardTip2 =>
      'Atinge cardul de venituri sau de cheltuieli ca să sari direct la lista respectivă.';

  @override
  String get guideDashboardTip3 =>
      'Inelele și observațiile se actualizează în clipa în care notezi ceva.';

  @override
  String get guideAddTitle => 'Cum notezi banii';

  @override
  String get guideAddBody =>
      'Butonul din mijlocul barei e punctul de plecare. Deschide un meniu scurt: cheltuială, venit, datorie, buget sau obiectiv de economisire.';

  @override
  String get guideAddTip1 =>
      'Atinge butonul din mijloc ca să notezi bani intrați sau ieșiți.';

  @override
  String get guideAddTip2 =>
      'Ține-l apăsat ca să treci direct la o cheltuială nouă, sărind meniul.';

  @override
  String get guideAddTip3 =>
      'Alege întotdeauna o categorie — pe ea se sprijină graficele și bugetele.';

  @override
  String get guideCategoriesTitle => 'Categorii';

  @override
  String get guideCategoriesBody =>
      'Categoriile grupează cheltuielile. Cele care vin cu aplicația ajung pentru majoritatea, iar tu le poți redenumi sau adăuga altele.';

  @override
  String get guideCategoriesTip1 =>
      'Setări, apoi Gestionează categoriile, ca să modifici sau să adaugi.';

  @override
  String get guideCategoriesTip2 =>
      'Tot ce rămâne fără categorie ajunge la «Altele», ca graficele să rămână cinstite.';

  @override
  String get guideBudgetTitle => 'Bugete';

  @override
  String get guideBudgetBody =>
      'Un buget e un plafon lunar pentru o categorie. Bara se umple pe măsură ce cheltuiești și își schimbă culoarea când se apropie, deci afli înainte să-l depășești.';

  @override
  String get guideBudgetTip1 =>
      'Începe cu două-trei categorii, nu cu toate deodată.';

  @override
  String get guideBudgetTip2 =>
      'Pune limita puțin peste cheltuiala obișnuită, apoi strânge-o.';

  @override
  String get guideBudgetTip3 =>
      'Lasă alertele pornite și aplicația te avertizează când un buget se apropie de fund.';

  @override
  String get guideSavingsTitle => 'Obiective de economisire';

  @override
  String get guideSavingsBody =>
      'Spune pentru ce economisești, pune o sumă și o dată, iar aplicația calculează cât trebuie să pui deoparte lunar.';

  @override
  String get guideSavingsTip1 =>
      'Un obiectiv cu nume se ține mai ușor decât o intenție vagă de a economisi.';

  @override
  String get guideSavingsTip2 =>
      'Mai multe obiective mici se termină mai des decât unul mare.';

  @override
  String get guideLoansTitle => 'Datorii și credite';

  @override
  String get guideLoansBody =>
      'Notează cât datorezi, cât te costă și când vine următoarea rată. Tot ce achiți stă într-o singură listă, cu soldul rămas.';

  @override
  String get guideLoansTip1 =>
      'Adaugă data scadenței și mementourile o urmăresc în locul tău.';

  @override
  String get guideLoansTip2 =>
      'O datorie restantă apare cu roșu pe ecranul principal până e plătită.';

  @override
  String get guideReportsTitle => 'Rapoarte';

  @override
  String get guideReportsBody =>
      'Privirea în adâncime: venituri față de cheltuieli, cheltuieli pe categorii, cum s-au ținut bugetele și ce parte din venit ți-a rămas.';

  @override
  String get guideReportsTip1 =>
      'Comută între săptămână, lună și trimestru în partea de sus a ecranului.';

  @override
  String get guideReportsTip2 =>
      'Exportă sau trimite un PDF — iese în limba și în direcția ta de citire.';

  @override
  String get guideSettingsTitle => 'Setări';

  @override
  String get guideSettingsBody =>
      'Limba, moneda, culorile și alertele sunt toate aici, și nimic nu rămâne fixat după configurare — schimbă orice, oricând.';

  @override
  String get guideSettingsTip1 =>
      'Patruzeci de limbi, iar întregul aranjament se oglindește pentru cele care se citesc de la dreapta la stânga.';

  @override
  String get guideSettingsTip2 =>
      'Alege ce alerte vrei și la ce ore au voie să sosească.';

  @override
  String get guideSettingsTip3 => 'Orele liniștite rețin totul până dimineața.';

  @override
  String get guideHabitTitle => 'Fă-ți un obicei';

  @override
  String get guideHabitBody =>
      'Aplicația face cât pui tu în ea. Un minut pe zi bate o oră pe lună, iar după două săptămâni cifrele încep să-ți spună ceva.';

  @override
  String get guideHabitTip1 =>
      'Notează cheltuielile pe loc, nu la sfârșitul săptămânii.';

  @override
  String get guideHabitTip2 =>
      'Aruncă o privire pe ecranul principal o dată pe zi. Zece secunde ajung.';

  @override
  String get guideHabitTip3 => 'Ghidul rămâne în Setări — revino oricând.';

  @override
  String get appearance => 'Aspect';

  @override
  String get themeCaption => 'Deschis, întunecat, sau cum e telefonul tău.';

  @override
  String get accentColor => 'Culoare de accent';

  @override
  String get accentColorCaption =>
      'Colorează butoanele, evidențierile și graficele.';

  @override
  String get accentSemanticsNote =>
      'Banii intrați și cei ieșiți își păstrează culorile în orice temă, așa că o cifră nu-și schimbă niciodată sensul doar pentru că ai schimbat accentul.';

  @override
  String get accentTeal => 'Turcoaz';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentSky => 'Albastru cer';

  @override
  String get accentBlue => 'Albastru';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Roz';

  @override
  String get accentCrimson => 'Purpuriu';

  @override
  String get accentOrange => 'Portocaliu';

  @override
  String get accentSlate => 'Gri ardezie';

  @override
  String get searchLanguages => 'Caută limbi';

  @override
  String get suggestedLanguages => 'Sugerate';

  @override
  String get allLanguages => 'Toate limbile';

  @override
  String get noLanguagesFound => 'Nicio limbă găsită';

  @override
  String get noLanguagesFoundMessage =>
      'Încearcă numele în engleză sau codul din două litere.';

  @override
  String get rightToLeft => 'De la dreapta la stânga';

  @override
  String get replayGuide => 'Reia ghidul';

  @override
  String get replaySetup => 'Reia configurarea';

  @override
  String get replaySetupBody =>
      'Treci din nou prin întrebările de la început. Nimic din ce ai înregistrat nu se șterge.';

  @override
  String get rateTitle => 'Îți place RainyPenny?';

  @override
  String get rateBody =>
      'Îl folosești de ceva vreme. O evaluare durează o clipă și îi ajută pe alții să găsească aplicația.';

  @override
  String get rateAction => 'Evaluează aplicația';

  @override
  String get rateLater => 'Poate mai târziu';

  @override
  String get rateNever => 'Nu, mulțumesc';

  @override
  String get rateThanks => 'Mulțumim';

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
