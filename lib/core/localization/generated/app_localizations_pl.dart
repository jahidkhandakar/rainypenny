// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppL10nPl extends AppL10n {
  AppL10nPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Odkładaj na czarną godzinę';

  @override
  String get navHome => 'Start';

  @override
  String get navTransactions => 'Transakcje';

  @override
  String get navAdd => 'Dodaj';

  @override
  String get navReports => 'Raporty';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Dzień dobry, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Dzień dobry, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Dobry wieczór, $name';
  }

  @override
  String get greetingSubtitle => 'Oto twój obraz finansów';

  @override
  String get totalBalance => 'Saldo całkowite';

  @override
  String get vsLastPeriod => 'wzgl. poprzedniego okresu';

  @override
  String get income => 'Przychody';

  @override
  String get expenses => 'Wydatki';

  @override
  String get netBalance => 'Saldo netto';

  @override
  String get lastThirtyDays => 'Ostatnie 30 dni';

  @override
  String get quickActions => 'Szybkie akcje';

  @override
  String get addIncome => 'Dodaj przychód';

  @override
  String get addExpense => 'Dodaj wydatek';

  @override
  String get spendingOverview => 'Przegląd wydatków';

  @override
  String get recentTransactions => 'Ostatnie transakcje';

  @override
  String get seeAll => 'Zobacz wszystkie';

  @override
  String get viewAll => 'Pokaż wszystkie';

  @override
  String get budgetProgress => 'Postęp budżetów';

  @override
  String get savingsGoals => 'Cele oszczędnościowe';

  @override
  String get financialInsight => 'Spostrzeżenie';

  @override
  String get financialHealth => 'Kondycja finansowa';

  @override
  String ofTotal(String total) {
    return 'z $total';
  }

  @override
  String get searchTransactions => 'Szukaj transakcji';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterIncome => 'Przychody';

  @override
  String get filterExpenses => 'Wydatki';

  @override
  String get today => 'Dziś';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get noTransactionsTitle => 'Nie znaleziono transakcji';

  @override
  String get noTransactionsBody =>
      'Spróbuj innej frazy lub filtra, aby zobaczyć więcej wpisów.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transakcji',
      many: '$count transakcji',
      few: '$count transakcje',
      one: '$count transakcja',
      zero: 'Brak transakcji',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Dodaj transakcję';

  @override
  String get amount => 'Kwota';

  @override
  String get category => 'Kategoria';

  @override
  String get date => 'Data';

  @override
  String get note => 'Notatka';

  @override
  String get noteHint => 'Notatka (opcjonalnie)';

  @override
  String get saveIncome => 'Zapisz przychód';

  @override
  String get saveExpense => 'Zapisz wydatek';

  @override
  String get selectCategory => 'Wybierz kategorię';

  @override
  String get transactionSaved => 'Transakcja zapisana';

  @override
  String get amountRequired => 'Podaj kwotę większą od zera';

  @override
  String get titleRequired => 'Nadaj tej transakcji nazwę';

  @override
  String get descriptionLabel => 'Opis';

  @override
  String get descriptionHint => 'np. zakupy spożywcze';

  @override
  String get budget => 'Budżet';

  @override
  String get budgets => 'Budżety';

  @override
  String get totalBudget => 'Budżet łącznie';

  @override
  String get spent => 'Wydano';

  @override
  String get remaining => 'Pozostało';

  @override
  String budgetUsed(int percent) {
    return 'Wykorzystano $percent%';
  }

  @override
  String get onTrack => 'Zgodnie z planem';

  @override
  String get approachingLimit => 'Blisko limitu';

  @override
  String get overBudget => 'Ponad budżet';

  @override
  String get savings => 'Oszczędności';

  @override
  String get yourGoals => 'Twoje cele';

  @override
  String get saved => 'Odłożono';

  @override
  String get target => 'Cel';

  @override
  String get monthlyContribution => 'Miesięcznie';

  @override
  String get addFunds => 'Wpłać';

  @override
  String get goalComplete => 'Cel osiągnięty';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'zostało $count miesiąca',
      many: 'zostało $count miesięcy',
      few: 'zostały $count miesiące',
      one: 'został $count miesiąc',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Kredyty i długi';

  @override
  String get totalOutstanding => 'Łączne zadłużenie';

  @override
  String get monthlyPayment => 'Miesięcznie';

  @override
  String get nextPayment => 'Następna rata';

  @override
  String paidOff(int percent) {
    return 'Spłacono $percent%';
  }

  @override
  String get interestRate => 'Oprocentowanie';

  @override
  String get upcomingPayments => 'Nadchodzące raty';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Za $count dnia',
      many: 'Za $count dni',
      few: 'Za $count dni',
      one: 'Za $count dzień',
      zero: 'Termin dziś',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Po terminie';

  @override
  String get reports => 'Raporty';

  @override
  String get week => 'Tydzień';

  @override
  String get month => 'Miesiąc';

  @override
  String get quarter => 'Kwartał';

  @override
  String get incomeVsExpenses => 'Przychody a wydatki';

  @override
  String get spendingByCategory => 'Wydatki według kategorii';

  @override
  String get budgetPerformance => 'Wykonanie budżetów';

  @override
  String get insights => 'Spostrzeżenia';

  @override
  String get savingsRate => 'Stopa oszczędności';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Konto';

  @override
  String get personalInformation => 'Dane osobowe';

  @override
  String get changePassword => 'Zmień hasło';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get preferences => 'Preferencje';

  @override
  String get language => 'Język';

  @override
  String get currency => 'Waluta';

  @override
  String get theme => 'Motyw';

  @override
  String get security => 'Bezpieczeństwo';

  @override
  String get privacyAndSecurity => 'Prywatność i bezpieczeństwo';

  @override
  String get help => 'Pomoc';

  @override
  String get helpAndSupport => 'Pomoc i wsparcie';

  @override
  String get termsAndConditions => 'Regulamin';

  @override
  String get logOut => 'Wyloguj';

  @override
  String memberSince(String date) {
    return 'Użytkownik od $date';
  }

  @override
  String get themeSystem => 'Systemowy';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get settings => 'Ustawienia';

  @override
  String get noNotificationsTitle => 'Wszystko przejrzane';

  @override
  String get noNotificationsBody =>
      'Nowe spostrzeżenia i przypomnienia pojawią się tutaj.';

  @override
  String get cancel => 'Anuluj';

  @override
  String get save => 'Zapisz';

  @override
  String get done => 'Gotowe';

  @override
  String get retry => 'Ponów';

  @override
  String get close => 'Zamknij';

  @override
  String get somethingWentWrong => 'Coś poszło nie tak';

  @override
  String get comingSoon => 'Wkrótce w pełnej wersji';

  @override
  String get edit => 'Edytuj';

  @override
  String get delete => 'Usuń';

  @override
  String get undo => 'Cofnij';

  @override
  String get add => 'Dodaj';

  @override
  String get create => 'Utwórz';

  @override
  String get nameRequired => 'Nadaj temu nazwę';

  @override
  String get amountAboveZero => 'Podaj kwotę większą od zera';

  @override
  String get editTransaction => 'Edytuj transakcję';

  @override
  String get deleteTransaction => 'Usunąć transakcję?';

  @override
  String deleteTransactionBody(String title) {
    return '$title zniknie z twoich zapisów.';
  }

  @override
  String get transactionDeleted => 'Transakcja usunięta';

  @override
  String get transactionUpdated => 'Transakcja zaktualizowana';

  @override
  String get newBudget => 'Nowy budżet';

  @override
  String get editBudget => 'Edytuj budżet';

  @override
  String get budgetLimit => 'Limit miesięczny';

  @override
  String get deleteBudget => 'Usunąć budżet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Budżet $category zostanie usunięty. Twoje transakcje pozostaną nietknięte.';
  }

  @override
  String get budgetSaved => 'Budżet zapisany';

  @override
  String get budgetDeleted => 'Budżet usunięty';

  @override
  String get allCategoriesBudgeted => 'Każda kategoria ma już budżet';

  @override
  String get noBudgetsTitle => 'Nie ma jeszcze budżetów';

  @override
  String get noBudgetsBody =>
      'Ustaw miesięczny limit dla kategorii, żeby zacząć ją śledzić.';

  @override
  String get newGoal => 'Nowy cel';

  @override
  String get editGoal => 'Edytuj cel';

  @override
  String get goalName => 'Nazwa celu';

  @override
  String get goalNameHint => 'np. poduszka finansowa';

  @override
  String get targetAmount => 'Kwota docelowa';

  @override
  String get alreadySaved => 'Już odłożone';

  @override
  String get deleteGoal => 'Usunąć cel?';

  @override
  String deleteGoalBody(String name) {
    return '$name wraz z postępem zostanie usunięty.';
  }

  @override
  String get goalSaved => 'Cel zapisany';

  @override
  String get goalDeleted => 'Cel usunięty';

  @override
  String get noGoalsTitle => 'Nie ma jeszcze celów oszczędnościowych';

  @override
  String get noGoalsBody =>
      'Ustaw cel, a RainyPenny będzie śledzić twoje postępy.';

  @override
  String get fundsAdded => 'Środki dodane';

  @override
  String get newDebt => 'Nowy kredyt lub karta';

  @override
  String get editDebt => 'Edytuj kredyt';

  @override
  String get debtName => 'Nazwa';

  @override
  String get debtNameHint => 'np. kredyt samochodowy';

  @override
  String get lender => 'Kredytodawca';

  @override
  String get lenderHint => 'np. PKO BP';

  @override
  String get originalAmount => 'Kwota początkowa';

  @override
  String get creditLimit => 'Limit kredytowy';

  @override
  String get remainingBalance => 'Pozostało do spłaty';

  @override
  String get interestRatePercent => 'Oprocentowanie (%)';

  @override
  String get kindLoan => 'Kredyt';

  @override
  String get kindCreditCard => 'Karta kredytowa';

  @override
  String get recordPayment => 'Zapisz spłatę';

  @override
  String get paymentRecorded => 'Spłata zapisana';

  @override
  String get deleteDebt => 'Usunąć ten dług?';

  @override
  String deleteDebtBody(String name) {
    return '$name zniknie z listy twoich długów.';
  }

  @override
  String get debtSaved => 'Zapisano';

  @override
  String get debtDeleted => 'Usunięto';

  @override
  String get noDebtsTitle => 'Brak śledzonych długów';

  @override
  String get noDebtsBody => 'Dodaj kredyt lub kartę, żeby mieć spłaty na oku.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budżet $subject przekroczony';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'W tym okresie przekroczyłeś budżet $subject o $amount.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject zbliża się do limitu';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Budżet $subject wykorzystany w $percent%, zostało $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Wydatki przewyższają przychody';

  @override
  String get insightOverIncomeBody =>
      'W tym okresie wydałeś więcej, niż zarobiłeś. Przejrzyj największe kategorie, żeby wrócić do równowagi.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Wydatki na $subject wzrosły';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Twoje wydatki na $subject są o $percent% wyższe niż w poprzednim okresie.';
  }

  @override
  String get insightTrendDownTitle => 'Wydatki spadają';

  @override
  String insightTrendDownBody(int percent) {
    return 'Całkowite wydatki są o $percent% niższe niż w poprzednim okresie.';
  }

  @override
  String get insightTrendUpTitle => 'Wydatki rosną';

  @override
  String insightTrendUpBody(int percent) {
    return 'Całkowite wydatki są o $percent% wyższe niż w poprzednim okresie.';
  }

  @override
  String get insightSavingsStrongTitle => 'Świetne oszczędności w tym okresie';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Zatrzymałeś $percent% przychodów — znacznie powyżej celu $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Stopa oszczędności poniżej celu';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'W tym okresie zatrzymałeś $percent% przychodów. Celuj w $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject prawie zebrany';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Do celu $subject brakuje tylko $amount.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject — zgodnie z planem';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months miesiąca',
      many: '$months miesięcy',
      few: '$months miesiące',
      one: '$months miesiąc',
    );
    return 'Przy $amount miesięcznie osiągniesz ten cel za $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Rata $subject po terminie';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dnia',
      many: '$days dni',
      few: '$days dni',
      one: '$days dzień',
    );
    return 'Rata $amount za $subject jest opóźniona o $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Zbliża się rata $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'za $days dnia',
      many: 'za $days dni',
      few: 'za $days dni',
      one: 'za $days dzień',
      zero: 'dziś',
    );
    return '$amount do zapłaty $_temp0.';
  }

  @override
  String get signIn => 'Zaloguj się';

  @override
  String get signUp => 'Załóż konto';

  @override
  String get signInSubtitle => 'Witaj z powrotem. Twoje pieniądze czekają.';

  @override
  String get signUpSubtitle => 'Kilka danych i gotowe.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'ty@email.com';

  @override
  String get passwordLabel => 'Hasło';

  @override
  String get passwordHint => 'Co najmniej 8 znaków';

  @override
  String get fullNameLabel => 'Imię i nazwisko';

  @override
  String get fullNameHint => 'Anna Kowalska';

  @override
  String get forgotPassword => 'Nie pamiętasz hasła?';

  @override
  String get resetSent => 'Sprawdź skrzynkę — wysłaliśmy link do zmiany hasła';

  @override
  String get noAccountYet => 'Pierwszy raz tutaj?';

  @override
  String get haveAccount => 'Masz już konto?';

  @override
  String get emailInvalid => 'Podaj poprawny adres e-mail';

  @override
  String get passwordTooShort => 'Użyj co najmniej 8 znaków';

  @override
  String get signOutConfirm => 'Wylogować?';

  @override
  String get signOutBody =>
      'Żeby znowu zobaczyć swoje finanse, trzeba będzie się zalogować.';

  @override
  String get dataSource => 'Źródło danych';

  @override
  String get insightWeeklySummaryTitle => 'Twój tydzień w skrócie';

  @override
  String get insightWeeklySummaryBody =>
      'Zobacz, gdzie poszły pieniądze w tym tygodniu i jak trzymają się budżety.';

  @override
  String get notificationSettings => 'Powiadomienia';

  @override
  String get alertsSection => 'Alerty';

  @override
  String get budgetAlerts => 'Alerty budżetowe';

  @override
  String get budgetAlertsBody =>
      'Gdy budżet zbliża się do limitu lub go przekracza';

  @override
  String get paymentReminders => 'Przypomnienia o ratach';

  @override
  String get paymentRemindersBody => 'Kilka dni przed terminem płatności';

  @override
  String get savingsUpdates => 'Postępy oszczędności';

  @override
  String get savingsUpdatesBody => 'Postęp w kierunku twoich celów';

  @override
  String get weeklySummaryLabel => 'Podsumowanie tygodnia';

  @override
  String get weeklySummaryBody => 'Zestawienie minionego tygodnia';

  @override
  String get scheduleSection => 'Pora';

  @override
  String get reminderTime => 'Godzina przypomnień';

  @override
  String get quietHours => 'Godziny ciszy';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dzień podsumowania';

  @override
  String get permissionRequired => 'Powiadomienia są wyłączone';

  @override
  String get permissionRequiredBody =>
      'Zezwól na powiadomienia, żeby RainyPenny ostrzegł cię, zanim budżet albo rata wymkną się spod kontroli.';

  @override
  String get allowNotifications => 'Zezwól na powiadomienia';

  @override
  String get permissionDenied =>
      'Powiadomienia są zablokowane. Możesz je włączyć w ustawieniach urządzenia.';

  @override
  String get upcomingAlerts => 'Zaplanowane';

  @override
  String get noScheduledAlerts => 'Na razie nic nie jest zaplanowane';

  @override
  String get noScheduledAlertsBody =>
      'Alerty pojawią się tutaj, gdy budżety i raty zbliżą się do swoich granic.';

  @override
  String scheduledFor(String date) {
    return 'Zaplanowano na $date';
  }

  @override
  String get everyWeek => 'Co tydzień';

  @override
  String get allNotificationsOff => 'Wszystkie powiadomienia wyłączone';

  @override
  String get needsAttention => 'Wymaga uwagi';

  @override
  String get quickActionsTitle => 'Co chcesz zrobić?';

  @override
  String get createSection => 'Zapisz';

  @override
  String get jumpToSection => 'Przejdź do';

  @override
  String get addLoanAction => 'Dodaj kredyt';

  @override
  String get addBudgetAction => 'Dodaj budżet';

  @override
  String get addGoalAction => 'Dodaj cel';

  @override
  String get longPressHint =>
      'Wskazówka: przytrzymaj +, żeby od razu zapisać wydatek';

  @override
  String get searchCurrencies => 'Szukaj walut';

  @override
  String get noCurrenciesFound => 'Nie znaleziono walut';

  @override
  String get noCurrenciesFoundMessage =>
      'Spróbuj innego kodu, symbolu lub nazwy.';

  @override
  String get popularCurrencies => 'Popularne';

  @override
  String get allCurrencies => 'Wszystkie waluty';

  @override
  String get totalLoanAmount => 'Łączna kwota kredytu';

  @override
  String get installmentAmount => 'Kwota raty';

  @override
  String get numberOfInstallments => 'Liczba rat';

  @override
  String get paidInstallments => 'Zapłacone raty';

  @override
  String get remainingInstallments => 'Pozostałe raty';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Zapłacono $paid z $total';
  }

  @override
  String get finalPayment => 'Ostatnia rata';

  @override
  String get paymentDueDate => 'Termin płatności';

  @override
  String dueOnDayOfMonth(int day) {
    return '$day. dnia każdego miesiąca';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Zgodnie z planem';

  @override
  String get statusDueSoon => 'Wkrótce termin';

  @override
  String get statusOverdue => 'Po terminie';

  @override
  String get statusCompleted => 'Spłacony';

  @override
  String get repaymentProgress => 'Postęp spłaty';

  @override
  String get byAmount => 'Według kwoty';

  @override
  String get byInstallments => 'Według rat';

  @override
  String get startDate => 'Data rozpoczęcia';

  @override
  String get openEnded => 'Bezterminowo';

  @override
  String get loanDetails => 'Szczegóły kredytu';

  @override
  String get notSet => 'Nie ustawiono';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject — termin dziś';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Rata $amount przypada dziś. Jedno dotknięcie i będzie na czas.';
  }

  @override
  String get remindMorningTitle => 'Dzień dobry ☀️';

  @override
  String get remindMorningBody =>
      'Zacznij dzień z pieniędzmi pod kontrolą. Zostało coś z wczoraj do dopisania?';

  @override
  String get remindNoonTitle => 'Południowy przegląd';

  @override
  String get remindNoonBody => 'Obiad, kawa, bilet? Zapiszesz w kilka sekund.';

  @override
  String get remindAfternoonTitle => 'Szybkie uzupełnienie';

  @override
  String get remindAfternoonBody =>
      'Zapisz, co wydałeś do tej pory, żeby dzisiejsze liczby się zgadzały.';

  @override
  String get remindEveningTitle => 'Zamykamy dzień';

  @override
  String get remindEveningBody =>
      'Dwie minuty teraz i dzisiejsze zapisy są kompletne.';

  @override
  String get happyWeekendTitle => 'Udanego weekendu! 🎉';

  @override
  String get happyWeekendBody =>
      'Odpocznij — i miej oko na weekendowe wydatki.';

  @override
  String get dailyReminders => 'Codzienne przypomnienia o wydatkach';

  @override
  String get dailyRemindersBody =>
      'Delikatne przypomnienia, żeby wydatki były na bieżąco';

  @override
  String get weekendGreeting => 'Weekendowe powitanie';

  @override
  String get weekendGreetingBody =>
      'Przyjazne pozdrowienie na początek weekendu';

  @override
  String get reminderTimesSection => 'Pory przypomnień';

  @override
  String get slotMorning => 'Rano';

  @override
  String get slotNoon => 'Południe';

  @override
  String get slotAfternoon => 'Popołudnie';

  @override
  String get slotEvening => 'Wieczór';

  @override
  String get everyDay => 'Codziennie';

  @override
  String get financialReport => 'Raport finansowy';

  @override
  String get preparedFor => 'Przygotowano dla';

  @override
  String get generatedOn => 'Wygenerowano';

  @override
  String get reportDisclaimer =>
      'Utworzone przez RainyPenny na podstawie twoich własnych zapisów.';

  @override
  String pageOf(int page, int total) {
    return 'Strona $page z $total';
  }

  @override
  String get overview => 'Przegląd';

  @override
  String get description => 'Opis';

  @override
  String get totalIncome => 'Przychody razem';

  @override
  String get totalExpenses => 'Wydatki razem';

  @override
  String get totalSaved => 'Odłożono razem';

  @override
  String get shareOfTotal => 'Udział';

  @override
  String get used => 'Wykorzystano';

  @override
  String get goal => 'Cel';

  @override
  String get targetDate => 'Data docelowa';

  @override
  String get progress => 'Postęp';

  @override
  String get paidOffShort => 'Spłacono';

  @override
  String get transactions => 'Transakcje';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'i jeszcze $count transakcji',
      many: 'i jeszcze $count transakcji',
      few: 'i jeszcze $count transakcje',
      one: 'i jeszcze $count transakcja',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksportuj PDF';

  @override
  String get sharePdf => 'Udostępnij raport';

  @override
  String get preparingReport => 'Przygotowuję raport…';

  @override
  String get reportReady => 'Raport gotowy';

  @override
  String get reportFailed => 'Nie udało się utworzyć raportu';

  @override
  String get categories => 'Kategorie';

  @override
  String get categoriesIntro =>
      'Dodaj własne kategorie, żeby układać przychody i wydatki dokładnie tak, jak o nich myślisz.';

  @override
  String get expenseCategories => 'Kategorie wydatków';

  @override
  String get incomeCategories => 'Kategorie przychodów';

  @override
  String get newCategory => 'Nowa kategoria';

  @override
  String get editCategory => 'Edytuj kategorię';

  @override
  String get categoryName => 'Nazwa';

  @override
  String get categoryNameHint => 'np. zwierzęta';

  @override
  String get icon => 'Ikona';

  @override
  String get categorySaved => 'Kategoria zapisana';

  @override
  String get categoryDeleted => 'Kategoria usunięta';

  @override
  String get deleteCategory => 'Usunąć tę kategorię?';

  @override
  String deleteCategoryBody(String name) {
    return '$name zniknie z twoich kategorii.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisu nadal korzysta z tej kategorii',
      many: '$count wpisów nadal korzysta z tej kategorii',
      few: '$count wpisy nadal korzystają z tej kategorii',
      one: '$count wpis nadal korzysta z tej kategorii',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Na razie pusto.';

  @override
  String get builtIn => 'Wbudowana';

  @override
  String get manageCategories => 'Zarządzaj kategoriami';

  @override
  String get expense => 'Wydatek';

  @override
  String get languageNote =>
      'Arabski, urdu, perski i hebrajski przestawiają cały interfejs na kierunek od prawej do lewej, łącznie z wykresami i raportami PDF.';

  @override
  String get next => 'Dalej';

  @override
  String get back => 'Wstecz';

  @override
  String get skip => 'Pomiń';

  @override
  String get continueLabel => 'Kontynuuj';

  @override
  String get selected => 'Wybrane';

  @override
  String get passwordRequired => 'Wpisz swoje hasło';

  @override
  String get newPasswordLabel => 'Nowe hasło';

  @override
  String get confirmPasswordLabel => 'Potwierdź hasło';

  @override
  String get passwordsDoNotMatch => 'Oba hasła muszą być takie same';

  @override
  String get showPassword => 'Pokaż hasło';

  @override
  String get hidePassword => 'Ukryj hasło';

  @override
  String get savePassword => 'Zapisz hasło';

  @override
  String get backToSignIn => 'Wróć do logowania';

  @override
  String get alreadyHaveAccount => 'Mam już konto';

  @override
  String get getStarted => 'Zaczynajmy';

  @override
  String get acceptTerms => 'Akceptuję Regulamin i Politykę prywatności';

  @override
  String get acceptTermsRequired => 'Zaakceptuj, aby kontynuować';

  @override
  String get passwordStrengthTooShort => 'Za krótkie';

  @override
  String get passwordStrengthWeak => 'Słabe';

  @override
  String get passwordStrengthFair => 'Przeciętne';

  @override
  String get passwordStrengthGood => 'Dobre';

  @override
  String get passwordStrengthStrong => 'Silne';

  @override
  String get passwordAdvice =>
      'Długie zdanie, które zapamiętasz, jest lepsze niż krótkie hasło pełne znaków. Nie używaj czegoś, czego używasz już gdzie indziej.';

  @override
  String get authInvalidCredentials =>
      'Ten e-mail i hasło nie pasują do żadnego konta';

  @override
  String get authEmailNotConfirmed =>
      'Potwierdź adres e-mail przed zalogowaniem';

  @override
  String get authEmailAlreadyRegistered =>
      'Konto z tym adresem e-mail już istnieje';

  @override
  String get authWeakPassword => 'Wybierz dłuższe hasło';

  @override
  String get authRateLimited =>
      'Zbyt wiele prób. Spróbuj ponownie za kilka minut';

  @override
  String get authNetworkError =>
      'Brak połączenia. Sprawdź sieć i spróbuj ponownie';

  @override
  String get authGenericError => 'Coś poszło nie tak. Spróbuj jeszcze raz';

  @override
  String get confirmEmailTitle => 'Sprawdź skrzynkę';

  @override
  String confirmEmailBody(String email) {
    return 'Wysłaliśmy link potwierdzający na $email. Otwórz go, żeby dokończyć zakładanie konta.';
  }

  @override
  String get resendConfirmation => 'Wyślij potwierdzenie ponownie';

  @override
  String get confirmationResent => 'Wiadomość potwierdzająca wysłana';

  @override
  String get forgotPasswordTitle => 'Zresetuj hasło';

  @override
  String get forgotPasswordSubtitle =>
      'Podaj adres e-mail, którym się rejestrowałeś, a wyślemy link do ustawienia nowego hasła.';

  @override
  String get sendResetLink => 'Wyślij link';

  @override
  String get resetLinkSentTitle => 'Link wysłany';

  @override
  String resetLinkSentBody(String email) {
    return 'Jeśli $email ma konto, link do resetu jest już w drodze.';
  }

  @override
  String get resetLinkSentHint =>
      'Link wygasa po godzinie. Jeśli nie dotrze, zajrzyj do spamu, zanim poprosisz o kolejny.';

  @override
  String get tryAnotherEmail => 'Użyj innego adresu';

  @override
  String get resetPasswordTitle => 'Wybierz nowe hasło';

  @override
  String get resetPasswordSubtitle =>
      'Wybierz coś, czego nie używałeś wcześniej na tym koncie.';

  @override
  String get passwordChangedTitle => 'Hasło zaktualizowane';

  @override
  String get passwordChangedBody =>
      'Nowe hasło zostało zapisane. Jesteś zalogowany i możesz działać dalej.';

  @override
  String get demoModeHint => 'Wersja demo — konto nie jest potrzebne';

  @override
  String get demoModeFill => 'Wypełnij';

  @override
  String get welcomeTrackTitle => 'Zobacz, gdzie idą twoje pieniądze';

  @override
  String get welcomeTrackBody =>
      'Zapisuj, co wpływa i co wypływa. RainyPenny zamienia to w obraz, który naprawdę da się odczytać.';

  @override
  String get welcomeBudgetTitle => 'Granice, które się trzymają';

  @override
  String get welcomeBudgetBody =>
      'Nadaj każdej części wydatków miesięczny pułap i dowiedz się, zanim go przekroczysz, a nie po fakcie.';

  @override
  String get welcomeGoalsTitle => 'Oszczędzaj na to, co ważne';

  @override
  String get welcomeGoalsBody =>
      'Nazwij cel, ustal kwotę i patrz, jak się wypełnia. Poduszkę finansową łatwiej zbudować, gdy się ją widzi.';

  @override
  String get welcomePrivacyTitle => 'Twoje pieniądze pozostają twoje';

  @override
  String get welcomePrivacyBody =>
      'Twoje liczby należą tylko do ciebie. Niczego nie sprzedajemy ani nie udostępniamy.';

  @override
  String stepOf(int step, int total) {
    return 'Krok $step z $total';
  }

  @override
  String get onboardingNameTitle => 'Jak mamy się do ciebie zwracać?';

  @override
  String get onboardingNameBody =>
      'Użyjemy tego tylko do powitania i nigdzie indziej.';

  @override
  String get onboardingNameHint =>
      'Imię w zupełności wystarczy. Możesz je później zmienić.';

  @override
  String get onboardingCurrencyTitle => 'Jakiej waluty używasz?';

  @override
  String get onboardingCurrencyBody =>
      'Wszystkie kwoty w aplikacji pokazujemy w tej walucie. Wybór niczego nie przelicza.';

  @override
  String get onboardingCurrencySearch => 'Szukaj wśród wszystkich walut';

  @override
  String get onboardingAppearanceTitle => 'Dostosuj do siebie';

  @override
  String get onboardingAppearanceBody =>
      'Wybierz wygląd. Wszystko zmienia się przy dotknięciu i zawsze możesz tu wrócić.';

  @override
  String get onboardingNotificationsTitle => 'Miej to pod kontrolą';

  @override
  String get onboardingNotificationsBody =>
      'Ciche przypomnienie we właściwej chwili zamienia to w nawyk.';

  @override
  String get onboardingNotifyReminders =>
      'Delikatne przypomnienie, żeby zapisać wydatki';

  @override
  String get onboardingNotifyBudget => 'Sygnał, zanim budżet się skończy';

  @override
  String get onboardingNotifySummary =>
      'Cotygodniowe zestawienie, gdzie poszły pieniądze';

  @override
  String get onboardingNotifyEnable => 'Włącz powiadomienia';

  @override
  String get onboardingNotifyDone => 'Ustawienia powiadomień zapisane';

  @override
  String get onboardingNotifyLater =>
      'Wszystko to możesz zmienić w Ustawieniach, kiedy zechcesz.';

  @override
  String get onboardingReadyTitle => 'Wszystko gotowe';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Wszystko gotowe, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Konfiguracja skończona. Chcesz szybki przegląd tego, jak to działa?';

  @override
  String get onboardingTakeTour => 'Pokaż mi';

  @override
  String get onboardingGoToApp => 'Przejdź do aplikacji';

  @override
  String get onboardingTourLater =>
      'Nie teraz? Przewodnik zostaje w Ustawieniach, na kiedy zechcesz.';

  @override
  String get beginnersGuide => 'Przewodnik dla początkujących';

  @override
  String get guideFinish => 'Zakończ';

  @override
  String chapterOf(int number, int total) {
    return 'Rozdział $number z $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Otwórz: $screen';
  }

  @override
  String get guideDashboardTitle => 'Twój ekran główny';

  @override
  String get guideDashboardBody =>
      'Wszystko zaczyna się tutaj. Karta na górze to, co ci zostało; pod nią to, co wpłynęło i wypłynęło w tym okresie, a dalej wydatki, budżety i cele.';

  @override
  String get guideDashboardTip1 =>
      'Pociągnij ekran w dół, żeby odświeżyć wszystko naraz.';

  @override
  String get guideDashboardTip2 =>
      'Dotknij karty przychodów lub wydatków, żeby przejść wprost do tej listy.';

  @override
  String get guideDashboardTip3 =>
      'Pierścienie i spostrzeżenia odświeżają się, gdy tylko coś zapiszesz.';

  @override
  String get guideAddTitle => 'Zapisywanie pieniędzy';

  @override
  String get guideAddBody =>
      'Przycisk na środku paska to punkt wyjścia. Otwiera krótkie menu: wydatek, przychód, dług, budżet albo cel oszczędnościowy.';

  @override
  String get guideAddTip1 =>
      'Dotknij środkowego przycisku, żeby zapisać wpływ lub wydatek.';

  @override
  String get guideAddTip2 =>
      'Przytrzymaj go, żeby pominąć menu i przejść wprost do nowego wydatku.';

  @override
  String get guideAddTip3 =>
      'Zawsze wybieraj kategorię — na niej opierają się wykresy i budżety.';

  @override
  String get guideCategoriesTitle => 'Kategorie';

  @override
  String get guideCategoriesBody =>
      'Kategorie grupują wydatki. Te wbudowane wystarczą większości osób, a możesz je przemianować albo dodać własne.';

  @override
  String get guideCategoriesTip1 =>
      'Ustawienia, potem Zarządzaj kategoriami, żeby zmienić lub dodać.';

  @override
  String get guideCategoriesTip2 =>
      'Wszystko bez kategorii trafia do «Inne», dzięki czemu wykresy pozostają uczciwe.';

  @override
  String get guideBudgetTitle => 'Budżety';

  @override
  String get guideBudgetBody =>
      'Budżet to miesięczny pułap dla jednej kategorii. Pasek zapełnia się w miarę wydatków i zmienia kolor blisko granicy, więc dowiadujesz się, zanim ją przekroczysz.';

  @override
  String get guideBudgetTip1 =>
      'Zacznij od dwóch, trzech kategorii, a nie od wszystkich naraz.';

  @override
  String get guideBudgetTip2 =>
      'Ustaw limit nieco powyżej zwykłych wydatków, a potem go zaciskaj.';

  @override
  String get guideBudgetTip3 =>
      'Zostaw alerty budżetowe włączone, a aplikacja ostrzeże cię, gdy budżet się kończy.';

  @override
  String get guideSavingsTitle => 'Cele oszczędnościowe';

  @override
  String get guideSavingsBody =>
      'Nazwij to, na co odkładasz, ustal kwotę i datę, a aplikacja wyliczy, ile trzeba odkładać co miesiąc.';

  @override
  String get guideSavingsTip1 =>
      'Nazwanego celu łatwiej się trzymać niż mglistego zamiaru oszczędzania.';

  @override
  String get guideSavingsTip2 =>
      'Kilka małych celów kończy się częściej niż jeden duży.';

  @override
  String get guideLoansTitle => 'Długi i kredyty';

  @override
  String get guideLoansBody =>
      'Zapisz, ile jesteś winien, ile to kosztuje i kiedy przypada następna rata. Wszystko, co spłacasz, jest na jednej liście wraz z kwotą pozostałą.';

  @override
  String get guideLoansTip1 =>
      'Dodaj termin płatności, a przypomnienia będą go pilnować za ciebie.';

  @override
  String get guideLoansTip2 =>
      'Dług po terminie świeci się na czerwono na ekranie głównym, dopóki nie zostanie spłacony.';

  @override
  String get guideReportsTitle => 'Raporty';

  @override
  String get guideReportsBody =>
      'Głębsze spojrzenie: przychody wobec wydatków, wydatki według kategorii, jak trzymały się budżety i jaką część przychodów udało ci się zatrzymać.';

  @override
  String get guideReportsTip1 =>
      'Na górze ekranu przełączaj tydzień, miesiąc i kwartał.';

  @override
  String get guideReportsTip2 =>
      'Wyeksportuj lub udostępnij PDF — powstaje w twoim języku i kierunku pisma.';

  @override
  String get guideSettingsTitle => 'Ustawienia';

  @override
  String get guideSettingsBody =>
      'Język, waluta, kolory i alerty są tutaj, i nic z tego nie jest przypieczętowane przy pierwszym uruchomieniu — zmieniaj, kiedy chcesz.';

  @override
  String get guideSettingsTip1 =>
      'Czterdzieści języków, a przy pisanych od prawej do lewej cały układ się odbija.';

  @override
  String get guideSettingsTip2 =>
      'Wybierz, jakie alerty chcesz i w jakich godzinach mogą przychodzić.';

  @override
  String get guideSettingsTip3 => 'Godziny ciszy wstrzymują wszystko do rana.';

  @override
  String get guideHabitTitle => 'Niech to zostanie nawykiem';

  @override
  String get guideHabitBody =>
      'Aplikacja jest tyle warta, ile w nią włożysz. Minuta dziennie bije godzinę raz w miesiącu, a po dwóch tygodniach liczby zaczynają coś mówić.';

  @override
  String get guideHabitTip1 =>
      'Zapisuj wydatki na bieżąco, a nie na koniec tygodnia.';

  @override
  String get guideHabitTip2 =>
      'Zerknij na ekran główny raz dziennie. Dziesięć sekund wystarczy.';

  @override
  String get guideHabitTip3 =>
      'Ten przewodnik zostaje w Ustawieniach — wracaj, kiedy chcesz.';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeCaption => 'Jasny, ciemny albo tak jak w telefonie.';

  @override
  String get accentColor => 'Kolor akcentu';

  @override
  String get accentColorCaption =>
      'Nadaje kolor przyciskom, wyróżnieniom i wykresom.';

  @override
  String get accentSemanticsNote =>
      'Wpływy i wydatki zachowują własne kolory w każdym motywie, więc liczba nigdy nie zmienia znaczenia dlatego, że zmieniłeś akcent.';

  @override
  String get accentTeal => 'Morski';

  @override
  String get accentGreen => 'Zielony';

  @override
  String get accentSky => 'Błękitny';

  @override
  String get accentBlue => 'Niebieski';

  @override
  String get accentIndigo => 'Indygo';

  @override
  String get accentViolet => 'Fioletowy';

  @override
  String get accentPink => 'Różowy';

  @override
  String get accentCrimson => 'Karmazynowy';

  @override
  String get accentOrange => 'Pomarańczowy';

  @override
  String get accentSlate => 'Grafitowy';

  @override
  String get searchLanguages => 'Szukaj języków';

  @override
  String get suggestedLanguages => 'Proponowane';

  @override
  String get allLanguages => 'Wszystkie języki';

  @override
  String get noLanguagesFound => 'Nie znaleziono języków';

  @override
  String get noLanguagesFoundMessage =>
      'Spróbuj nazwy po angielsku albo dwuliterowego kodu.';

  @override
  String get rightToLeft => 'Od prawej do lewej';

  @override
  String get replayGuide => 'Obejrzyj przewodnik ponownie';

  @override
  String get replaySetup => 'Przejdź konfigurację jeszcze raz';

  @override
  String get replaySetupBody =>
      'Odpowiedz ponownie na pytania początkowe. Nic z tego, co zapisałeś, nie zostanie usunięte.';

  @override
  String get rateTitle => 'Podoba Ci się RainyPenny?';

  @override
  String get rateBody =>
      'Korzystasz z tego już od jakiegoś czasu. Ocena zajmuje chwilę i pomaga innym znaleźć aplikację.';

  @override
  String get rateAction => 'Oceń aplikację';

  @override
  String get rateLater => 'Może później';

  @override
  String get rateNever => 'Nie, dziękuję';

  @override
  String get rateThanks => 'Dziękujemy';

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
