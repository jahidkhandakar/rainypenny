// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppL10nFi extends AppL10n {
  AppL10nFi([String locale = 'fi']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Säästöä pahan päivän varalle';

  @override
  String get navHome => 'Etusivu';

  @override
  String get navTransactions => 'Tapahtumat';

  @override
  String get navAdd => 'Lisää';

  @override
  String get navReports => 'Raportit';

  @override
  String get navProfile => 'Profiili';

  @override
  String greetingMorning(String name) {
    return 'Hyvää huomenta, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Hyvää päivää, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Hyvää iltaa, $name';
  }

  @override
  String get greetingSubtitle => 'Näin taloutesi voi';

  @override
  String get totalBalance => 'Kokonaissaldo';

  @override
  String get vsLastPeriod => 'edelliseen jaksoon verrattuna';

  @override
  String get income => 'Tulot';

  @override
  String get expenses => 'Menot';

  @override
  String get netBalance => 'Nettosaldo';

  @override
  String get lastThirtyDays => 'Viimeiset 30 päivää';

  @override
  String get quickActions => 'Pikatoiminnot';

  @override
  String get addIncome => 'Lisää tulo';

  @override
  String get addExpense => 'Lisää meno';

  @override
  String get spendingOverview => 'Kulutuksen yleiskuva';

  @override
  String get recentTransactions => 'Viimeisimmät tapahtumat';

  @override
  String get seeAll => 'Näytä kaikki';

  @override
  String get viewAll => 'Näytä kaikki';

  @override
  String get budgetProgress => 'Budjettien tilanne';

  @override
  String get savingsGoals => 'Säästötavoitteet';

  @override
  String get financialInsight => 'Talousvinkki';

  @override
  String get financialHealth => 'Talouden kunto';

  @override
  String ofTotal(String total) {
    return '/ $total';
  }

  @override
  String get searchTransactions => 'Hae tapahtumia';

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterIncome => 'Tulot';

  @override
  String get filterExpenses => 'Menot';

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get noTransactionsTitle => 'Tapahtumia ei löytynyt';

  @override
  String get noTransactionsBody =>
      'Kokeile toista hakua tai suodatinta nähdäksesi lisää merkintöjä.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tapahtumaa',
      one: '$count tapahtuma',
      zero: 'Ei tapahtumia',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Lisää tapahtuma';

  @override
  String get amount => 'Summa';

  @override
  String get category => 'Luokka';

  @override
  String get date => 'Päivämäärä';

  @override
  String get note => 'Muistiinpano';

  @override
  String get noteHint => 'Muistiinpano (valinnainen)';

  @override
  String get saveIncome => 'Tallenna tulo';

  @override
  String get saveExpense => 'Tallenna meno';

  @override
  String get selectCategory => 'Valitse luokka';

  @override
  String get transactionSaved => 'Tapahtuma tallennettu';

  @override
  String get amountRequired => 'Anna nollaa suurempi summa';

  @override
  String get titleRequired => 'Anna tälle tapahtumalle nimi';

  @override
  String get descriptionLabel => 'Kuvaus';

  @override
  String get descriptionHint => 'esim. ruokaostokset';

  @override
  String get budget => 'Budjetti';

  @override
  String get budgets => 'Budjetit';

  @override
  String get totalBudget => 'Budjetti yhteensä';

  @override
  String get spent => 'Käytetty';

  @override
  String get remaining => 'Jäljellä';

  @override
  String budgetUsed(int percent) {
    return '$percent % käytetty';
  }

  @override
  String get onTrack => 'Aikataulussa';

  @override
  String get approachingLimit => 'Lähellä rajaa';

  @override
  String get overBudget => 'Budjetin yli';

  @override
  String get savings => 'Säästöt';

  @override
  String get yourGoals => 'Tavoitteesi';

  @override
  String get saved => 'Säästetty';

  @override
  String get target => 'Tavoite';

  @override
  String get monthlyContribution => 'Kuukaudessa';

  @override
  String get addFunds => 'Lisää varoja';

  @override
  String get goalComplete => 'Tavoite saavutettu';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kuukautta jäljellä',
      one: '$count kuukausi jäljellä',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lainat ja velat';

  @override
  String get totalOutstanding => 'Maksamatta yhteensä';

  @override
  String get monthlyPayment => 'Kuukaudessa';

  @override
  String get nextPayment => 'Seuraava maksu';

  @override
  String paidOff(int percent) {
    return '$percent % maksettu';
  }

  @override
  String get interestRate => 'Korko';

  @override
  String get upcomingPayments => 'Tulevat maksut';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivän päästä',
      one: '$count päivän päästä',
      zero: 'Erääntyy tänään',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Erääntynyt';

  @override
  String get reports => 'Raportit';

  @override
  String get week => 'Viikko';

  @override
  String get month => 'Kuukausi';

  @override
  String get quarter => 'Neljännes';

  @override
  String get incomeVsExpenses => 'Tulot ja menot';

  @override
  String get spendingByCategory => 'Kulutus luokittain';

  @override
  String get budgetPerformance => 'Budjettien toteuma';

  @override
  String get insights => 'Havainnot';

  @override
  String get savingsRate => 'Säästöaste';

  @override
  String get profile => 'Profiili';

  @override
  String get account => 'Tili';

  @override
  String get personalInformation => 'Henkilötiedot';

  @override
  String get changePassword => 'Vaihda salasana';

  @override
  String get notifications => 'Ilmoitukset';

  @override
  String get preferences => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get currency => 'Valuutta';

  @override
  String get theme => 'Teema';

  @override
  String get security => 'Tietoturva';

  @override
  String get privacyAndSecurity => 'Yksityisyys ja tietoturva';

  @override
  String get help => 'Ohje';

  @override
  String get helpAndSupport => 'Ohje ja tuki';

  @override
  String get termsAndConditions => 'Käyttöehdot';

  @override
  String get logOut => 'Kirjaudu ulos';

  @override
  String memberSince(String date) {
    return 'Jäsen $date alkaen';
  }

  @override
  String get themeSystem => 'Järjestelmän mukaan';

  @override
  String get themeLight => 'Vaalea';

  @override
  String get themeDark => 'Tumma';

  @override
  String get settings => 'Asetukset';

  @override
  String get noNotificationsTitle => 'Olet ajan tasalla';

  @override
  String get noNotificationsBody =>
      'Uudet havainnot ja muistutukset ilmestyvät tähän.';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get done => 'Valmis';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get close => 'Sulje';

  @override
  String get somethingWentWrong => 'Jokin meni pieleen';

  @override
  String get comingSoon => 'Tulossa täysversioon';

  @override
  String get edit => 'Muokkaa';

  @override
  String get delete => 'Poista';

  @override
  String get undo => 'Kumoa';

  @override
  String get add => 'Lisää';

  @override
  String get create => 'Luo';

  @override
  String get nameRequired => 'Anna sille nimi';

  @override
  String get amountAboveZero => 'Anna nollaa suurempi summa';

  @override
  String get editTransaction => 'Muokkaa tapahtumaa';

  @override
  String get deleteTransaction => 'Poistetaanko tämä tapahtuma?';

  @override
  String deleteTransactionBody(String title) {
    return '$title katoaa merkinnöistäsi.';
  }

  @override
  String get transactionDeleted => 'Tapahtuma poistettu';

  @override
  String get transactionUpdated => 'Tapahtuma päivitetty';

  @override
  String get newBudget => 'Uusi budjetti';

  @override
  String get editBudget => 'Muokkaa budjettia';

  @override
  String get budgetLimit => 'Kuukausiraja';

  @override
  String get deleteBudget => 'Poistetaanko tämä budjetti?';

  @override
  String deleteBudgetBody(String category) {
    return 'Luokan $category budjetti poistetaan. Tapahtumiisi ei kosketa.';
  }

  @override
  String get budgetSaved => 'Budjetti tallennettu';

  @override
  String get budgetDeleted => 'Budjetti poistettu';

  @override
  String get allCategoriesBudgeted => 'Kaikilla luokilla on jo budjetti';

  @override
  String get noBudgetsTitle => 'Ei vielä budjetteja';

  @override
  String get noBudgetsBody =>
      'Aseta jollekin luokalle kuukausiraja, niin alamme seurata sitä.';

  @override
  String get newGoal => 'Uusi tavoite';

  @override
  String get editGoal => 'Muokkaa tavoitetta';

  @override
  String get goalName => 'Tavoitteen nimi';

  @override
  String get goalNameHint => 'esim. puskurirahasto';

  @override
  String get targetAmount => 'Tavoitesumma';

  @override
  String get alreadySaved => 'Jo säästetty';

  @override
  String get deleteGoal => 'Poistetaanko tämä tavoite?';

  @override
  String deleteGoalBody(String name) {
    return '$name ja sen edistyminen poistetaan.';
  }

  @override
  String get goalSaved => 'Tavoite tallennettu';

  @override
  String get goalDeleted => 'Tavoite poistettu';

  @override
  String get noGoalsTitle => 'Ei vielä säästötavoitteita';

  @override
  String get noGoalsBody =>
      'Aseta tavoite, niin RainyPenny seuraa edistymistäsi.';

  @override
  String get fundsAdded => 'Varat lisätty';

  @override
  String get newDebt => 'Uusi laina tai kortti';

  @override
  String get editDebt => 'Muokkaa lainaa';

  @override
  String get debtName => 'Nimi';

  @override
  String get debtNameHint => 'esim. autolaina';

  @override
  String get lender => 'Lainanantaja';

  @override
  String get lenderHint => 'esim. Nordea';

  @override
  String get originalAmount => 'Alkuperäinen summa';

  @override
  String get creditLimit => 'Luottoraja';

  @override
  String get remainingBalance => 'Jäljellä oleva velka';

  @override
  String get interestRatePercent => 'Korko (%)';

  @override
  String get kindLoan => 'Laina';

  @override
  String get kindCreditCard => 'Luottokortti';

  @override
  String get recordPayment => 'Kirjaa maksu';

  @override
  String get paymentRecorded => 'Maksu kirjattu';

  @override
  String get deleteDebt => 'Poistetaanko tämä velka?';

  @override
  String deleteDebtBody(String name) {
    return '$name katoaa veloistasi.';
  }

  @override
  String get debtSaved => 'Tallennettu';

  @override
  String get debtDeleted => 'Poistettu';

  @override
  String get noDebtsTitle => 'Ei seurattavia velkoja';

  @override
  String get noDebtsBody =>
      'Lisää laina tai luottokortti pysyäksesi kärryillä takaisinmaksusta.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budjetti $subject on ylitetty';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Olet $amount yli $subject-budjettisi tällä jaksolla.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject lähestyy rajaa';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject-budjetistasi on käytetty $percent %, jäljellä $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Menot ylittävät tulot';

  @override
  String get insightOverIncomeBody =>
      'Tällä jaksolla käytit enemmän kuin ansaitsit. Käy suurimmat luokat läpi tasapainon palauttamiseksi.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Kulutus luokassa $subject kasvaa';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Käytit $subject-luokkaan $percent % enemmän kuin edellisellä jaksolla.';
  }

  @override
  String get insightTrendDownTitle => 'Kulutus laskee';

  @override
  String insightTrendDownBody(int percent) {
    return 'Kokonaiskulutus on $percent % pienempi kuin edellisellä jaksolla.';
  }

  @override
  String get insightTrendUpTitle => 'Kulutus nousee';

  @override
  String insightTrendUpBody(int percent) {
    return 'Kokonaiskulutus on $percent % suurempi kuin edellisellä jaksolla.';
  }

  @override
  String get insightSavingsStrongTitle => 'Vahva säästöjakso';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Pidit $percent % tuloistasi — selvästi yli $target %:n tavoitteen.';
  }

  @override
  String get insightSavingsLowTitle => 'Säästöaste on tavoitteen alle';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Tällä jaksolla pidit $percent % tuloistasi. Tavoittele $target %.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject on melkein kasassa';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Enää $amount tavoitteeseen $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject etenee aikataulussa';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months kuukaudessa',
      one: '$months kuukaudessa',
    );
    return 'Summalla $amount kuukaudessa saavutat tavoitteen $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Maksu kohteeseen $subject on myöhässä';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivän',
      one: '$days päivän',
    );
    return 'Maksu $amount kohteeseen $subject on $_temp0 myöhässä.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Maksu kohteeseen $subject lähestyy';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivän päästä',
      one: '$days päivän päästä',
      zero: 'tänään',
    );
    return '$amount erääntyy $_temp0.';
  }

  @override
  String get signIn => 'Kirjaudu sisään';

  @override
  String get signUp => 'Luo tili';

  @override
  String get signInSubtitle => 'Tervetuloa takaisin. Rahasi odottavat.';

  @override
  String get signUpSubtitle => 'Muutama tieto, niin pääset alkuun.';

  @override
  String get emailLabel => 'Sähköposti';

  @override
  String get emailHint => 'sina@email.com';

  @override
  String get passwordLabel => 'Salasana';

  @override
  String get passwordHint => 'Vähintään 8 merkkiä';

  @override
  String get fullNameLabel => 'Koko nimi';

  @override
  String get fullNameHint => 'Anna Virtanen';

  @override
  String get forgotPassword => 'Unohtuiko salasana?';

  @override
  String get resetSent => 'Tarkista sähköpostisi, lähetimme palautuslinkin';

  @override
  String get noAccountYet => 'Uusi täällä?';

  @override
  String get haveAccount => 'Onko sinulla jo tili?';

  @override
  String get emailInvalid => 'Anna kelvollinen sähköpostiosoite';

  @override
  String get passwordTooShort => 'Käytä vähintään 8 merkkiä';

  @override
  String get signOutConfirm => 'Kirjaudutaanko ulos?';

  @override
  String get signOutBody =>
      'Sinun on kirjauduttava uudelleen nähdäksesi taloutesi.';

  @override
  String get dataSource => 'Tietolähde';

  @override
  String get insightWeeklySummaryTitle => 'Viikkosi lyhyesti';

  @override
  String get insightWeeklySummaryBody =>
      'Katso, mihin rahat menivät tällä viikolla ja miten budjetit pitävät.';

  @override
  String get notificationSettings => 'Ilmoitukset';

  @override
  String get alertsSection => 'Hälytykset';

  @override
  String get budgetAlerts => 'Budjettihälytykset';

  @override
  String get budgetAlertsBody =>
      'Kun budjetti lähestyy rajaansa tai ylittää sen';

  @override
  String get paymentReminders => 'Maksumuistutukset';

  @override
  String get paymentRemindersBody => 'Muutama päivä ennen maksun eräpäivää';

  @override
  String get savingsUpdates => 'Säästöuutiset';

  @override
  String get savingsUpdatesBody => 'Edistyminen tavoitteitasi kohti';

  @override
  String get weeklySummaryLabel => 'Viikkokatsaus';

  @override
  String get weeklySummaryBody => 'Yhteenveto kuluneesta viikosta';

  @override
  String get scheduleSection => 'Ajoitus';

  @override
  String get reminderTime => 'Muistutuksen aika';

  @override
  String get quietHours => 'Hiljaiset tunnit';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Katsauksen päivä';

  @override
  String get permissionRequired => 'Ilmoitukset ovat pois päältä';

  @override
  String get permissionRequiredBody =>
      'Salli ilmoitukset, niin RainyPenny voi varoittaa ennen kuin budjetti tai maksu karkaa käsistä.';

  @override
  String get allowNotifications => 'Salli ilmoitukset';

  @override
  String get permissionDenied =>
      'Ilmoitukset on estetty. Voit ottaa ne käyttöön laitteen asetuksissa.';

  @override
  String get upcomingAlerts => 'Ajastettu';

  @override
  String get noScheduledAlerts => 'Mitään ei ole ajastettuna juuri nyt';

  @override
  String get noScheduledAlertsBody =>
      'Hälytykset ilmestyvät tähän, kun budjettisi ja maksusi lähestyvät rajojaan.';

  @override
  String scheduledFor(String date) {
    return 'Ajastettu: $date';
  }

  @override
  String get everyWeek => 'Joka viikko';

  @override
  String get allNotificationsOff => 'Kaikki ilmoitukset ovat pois päältä';

  @override
  String get needsAttention => 'Vaatii huomiota';

  @override
  String get quickActionsTitle => 'Mitä haluat tehdä?';

  @override
  String get createSection => 'Kirjaa';

  @override
  String get jumpToSection => 'Siirry';

  @override
  String get addLoanAction => 'Lisää laina';

  @override
  String get addBudgetAction => 'Lisää budjetti';

  @override
  String get addGoalAction => 'Lisää tavoite';

  @override
  String get longPressHint =>
      'Vinkki: pidä +-painiketta pohjassa kirjataksesi menon heti';

  @override
  String get searchCurrencies => 'Hae valuuttoja';

  @override
  String get noCurrenciesFound => 'Valuuttoja ei löytynyt';

  @override
  String get noCurrenciesFoundMessage =>
      'Kokeile toista koodia, symbolia tai nimeä.';

  @override
  String get popularCurrencies => 'Yleiset';

  @override
  String get allCurrencies => 'Kaikki valuutat';

  @override
  String get totalLoanAmount => 'Lainan kokonaismäärä';

  @override
  String get installmentAmount => 'Erän suuruus';

  @override
  String get numberOfInstallments => 'Erien määrä';

  @override
  String get paidInstallments => 'Maksetut erät';

  @override
  String get remainingInstallments => 'Jäljellä olevat erät';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid / $total maksettu';
  }

  @override
  String get finalPayment => 'Viimeinen maksu';

  @override
  String get paymentDueDate => 'Eräpäivä';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Kuukauden $day. päivä';
  }

  @override
  String get loanStatus => 'Tila';

  @override
  String get statusActive => 'Aikataulussa';

  @override
  String get statusDueSoon => 'Erääntyy pian';

  @override
  String get statusOverdue => 'Erääntynyt';

  @override
  String get statusCompleted => 'Maksettu loppuun';

  @override
  String get repaymentProgress => 'Takaisinmaksun tilanne';

  @override
  String get byAmount => 'Summan mukaan';

  @override
  String get byInstallments => 'Erien mukaan';

  @override
  String get startDate => 'Alkamispäivä';

  @override
  String get openEnded => 'Ei päättymispäivää';

  @override
  String get loanDetails => 'Tietoja lainasta';

  @override
  String get notSet => 'Ei asetettu';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject erääntyy tänään';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Maksu $amount erääntyy tänään. Yksi napautus, ja se on ajoissa.';
  }

  @override
  String get remindMorningTitle => 'Hyvää huomenta ☀️';

  @override
  String get remindMorningBody =>
      'Aloita päivä selkeällä kuvalla rahoistasi. Onko eiliseltä jotain lisättävää?';

  @override
  String get remindNoonTitle => 'Päivän puolivälin tarkistus';

  @override
  String get remindNoonBody =>
      'Lounas, kahvi, matkalippu? Kirjaaminen vie muutaman sekunnin.';

  @override
  String get remindAfternoonTitle => 'Nopea täydennys';

  @override
  String get remindAfternoonBody =>
      'Kirjaa tähän mennessä käyttämäsi, niin päivän luvut täsmäävät.';

  @override
  String get remindEveningTitle => 'Päätetään päivä';

  @override
  String get remindEveningBody =>
      'Kaksi minuuttia nyt, niin päivän merkinnät ovat valmiit.';

  @override
  String get happyWeekendTitle => 'Hyvää viikonloppua! 🎉';

  @override
  String get happyWeekendBody =>
      'Nauti siitä — ja pidä silmällä viikonlopun menoja.';

  @override
  String get dailyReminders => 'Päivittäiset menomuistutukset';

  @override
  String get dailyRemindersBody =>
      'Ystävällisiä tönäisyjä, jotta menot pysyvät ajan tasalla';

  @override
  String get weekendGreeting => 'Viikonlopputervehdys';

  @override
  String get weekendGreetingBody =>
      'Ystävällinen tervehdys viikonlopun alkaessa';

  @override
  String get reminderTimesSection => 'Muistutusten ajat';

  @override
  String get slotMorning => 'Aamu';

  @override
  String get slotNoon => 'Keskipäivä';

  @override
  String get slotAfternoon => 'Iltapäivä';

  @override
  String get slotEvening => 'Ilta';

  @override
  String get everyDay => 'Joka päivä';

  @override
  String get financialReport => 'Talousraportti';

  @override
  String get preparedFor => 'Laadittu käyttäjälle';

  @override
  String get generatedOn => 'Luotu';

  @override
  String get reportDisclaimer =>
      'RainyPennyn laatima omien merkintöjesi pohjalta.';

  @override
  String pageOf(int page, int total) {
    return 'Sivu $page / $total';
  }

  @override
  String get overview => 'Yleiskuva';

  @override
  String get description => 'Kuvaus';

  @override
  String get totalIncome => 'Tulot yhteensä';

  @override
  String get totalExpenses => 'Menot yhteensä';

  @override
  String get totalSaved => 'Säästetty yhteensä';

  @override
  String get shareOfTotal => 'Osuus';

  @override
  String get used => 'Käytetty';

  @override
  String get goal => 'Tavoite';

  @override
  String get targetDate => 'Tavoitepäivä';

  @override
  String get progress => 'Edistyminen';

  @override
  String get paidOffShort => 'Maksettu';

  @override
  String get transactions => 'Tapahtumat';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ja $count tapahtumaa lisää',
      one: 'ja $count tapahtuma lisää',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Vie PDF';

  @override
  String get sharePdf => 'Jaa raportti';

  @override
  String get preparingReport => 'Raporttiasi valmistellaan…';

  @override
  String get reportReady => 'Raportti on valmis';

  @override
  String get reportFailed => 'Raportin luonti epäonnistui';

  @override
  String get categories => 'Luokat';

  @override
  String get categoriesIntro =>
      'Lisää omia luokkia, jotta tulot ja menot asettuvat juuri niin kuin itse ajattelet niistä.';

  @override
  String get expenseCategories => 'Menoluokat';

  @override
  String get incomeCategories => 'Tuloluokat';

  @override
  String get newCategory => 'Uusi luokka';

  @override
  String get editCategory => 'Muokkaa luokkaa';

  @override
  String get categoryName => 'Nimi';

  @override
  String get categoryNameHint => 'esim. lemmikit';

  @override
  String get icon => 'Kuvake';

  @override
  String get categorySaved => 'Luokka tallennettu';

  @override
  String get categoryDeleted => 'Luokka poistettu';

  @override
  String get deleteCategory => 'Poistetaanko tämä luokka?';

  @override
  String deleteCategoryBody(String name) {
    return '$name katoaa luokistasi.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count merkintää käyttää yhä tätä luokkaa',
      one: '$count merkintä käyttää yhä tätä luokkaa',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Täällä ei ole vielä mitään.';

  @override
  String get builtIn => 'Sisäänrakennettu';

  @override
  String get manageCategories => 'Hallitse luokkia';

  @override
  String get expense => 'Meno';

  @override
  String get languageNote =>
      'Arabia, urdu, persia ja heprea kääntävät koko käyttöliittymän oikealta vasemmalle, mukaan lukien kaaviot ja PDF-raportit.';

  @override
  String get next => 'Seuraava';

  @override
  String get back => 'Takaisin';

  @override
  String get skip => 'Ohita';

  @override
  String get continueLabel => 'Jatka';

  @override
  String get selected => 'Valittu';

  @override
  String get passwordRequired => 'Anna salasanasi';

  @override
  String get newPasswordLabel => 'Uusi salasana';

  @override
  String get confirmPasswordLabel => 'Vahvista salasana';

  @override
  String get passwordsDoNotMatch => 'Salasanojen on oltava samat';

  @override
  String get showPassword => 'Näytä salasana';

  @override
  String get hidePassword => 'Piilota salasana';

  @override
  String get savePassword => 'Tallenna salasana';

  @override
  String get backToSignIn => 'Takaisin kirjautumiseen';

  @override
  String get alreadyHaveAccount => 'Minulla on jo tili';

  @override
  String get getStarted => 'Aloitetaan';

  @override
  String get acceptTerms => 'Hyväksyn käyttöehdot ja tietosuojakäytännön';

  @override
  String get acceptTermsRequired => 'Hyväksy jatkaaksesi';

  @override
  String get passwordStrengthTooShort => 'Liian lyhyt';

  @override
  String get passwordStrengthWeak => 'Heikko';

  @override
  String get passwordStrengthFair => 'Kohtalainen';

  @override
  String get passwordStrengthGood => 'Hyvä';

  @override
  String get passwordStrengthStrong => 'Vahva';

  @override
  String get passwordAdvice =>
      'Pitkä lause, jonka muistat, voittaa lyhyen erikoismerkkejä täynnä olevan salasanan. Vältä sellaista, jota käytät jo muualla.';

  @override
  String get authInvalidCredentials =>
      'Tuo sähköposti ja salasana eivät vastaa mitään tiliä';

  @override
  String get authEmailNotConfirmed =>
      'Vahvista sähköpostiosoitteesi ennen kirjautumista';

  @override
  String get authEmailAlreadyRegistered => 'Tällä sähköpostilla on jo tili';

  @override
  String get authWeakPassword => 'Valitse pidempi salasana';

  @override
  String get authRateLimited =>
      'Liian monta yritystä. Yritä uudelleen muutaman minuutin kuluttua';

  @override
  String get authNetworkError =>
      'Ei yhteyttä. Tarkista verkko ja yritä uudelleen';

  @override
  String get authGenericError => 'Jokin meni pieleen. Yritä uudelleen';

  @override
  String get confirmEmailTitle => 'Tarkista sähköpostisi';

  @override
  String confirmEmailBody(String email) {
    return 'Lähetimme vahvistuslinkin osoitteeseen $email. Avaa se viimeistelläksesi tilin.';
  }

  @override
  String get resendConfirmation => 'Lähetä vahvistus uudelleen';

  @override
  String get confirmationResent => 'Vahvistusviesti lähetetty';

  @override
  String get forgotPasswordTitle => 'Palauta salasanasi';

  @override
  String get forgotPasswordSubtitle =>
      'Anna sähköpostiosoite, jolla rekisteröidyit, niin lähetämme linkin uuden salasanan valitsemiseen.';

  @override
  String get sendResetLink => 'Lähetä linkki';

  @override
  String get resetLinkSentTitle => 'Linkki lähetetty';

  @override
  String resetLinkSentBody(String email) {
    return 'Jos osoitteella $email on tili, palautuslinkki on matkalla.';
  }

  @override
  String get resetLinkSentHint =>
      'Linkki vanhenee tunnin kuluttua. Jos se ei saavu, tarkista roskaposti ennen kuin pyydät uutta.';

  @override
  String get tryAnotherEmail => 'Käytä toista osoitetta';

  @override
  String get resetPasswordTitle => 'Valitse uusi salasana';

  @override
  String get resetPasswordSubtitle =>
      'Valitse jotain, jota et ole käyttänyt tällä tilillä aiemmin.';

  @override
  String get passwordChangedTitle => 'Salasana päivitetty';

  @override
  String get passwordChangedBody =>
      'Uusi salasanasi on tallennettu. Olet kirjautuneena ja valmiina.';

  @override
  String get demoModeHint => 'Demoversio — tiliä ei tarvita';

  @override
  String get demoModeFill => 'Täytä';

  @override
  String get welcomeTrackTitle => 'Näe, mihin rahasi menevät';

  @override
  String get welcomeTrackBody =>
      'Kirjaa, mitä tulee sisään ja mitä menee ulos. RainyPenny tekee siitä kuvan, jota oikeasti pystyy lukemaan.';

  @override
  String get welcomeBudgetTitle => 'Rajoja, jotka pitävät';

  @override
  String get welcomeBudgetBody =>
      'Anna jokaiselle kulutuksen osalle kuukausikatto ja saat tiedon ennen kuin ylität sen — et jälkikäteen.';

  @override
  String get welcomeGoalsTitle => 'Säästä siihen, mikä on tärkeää';

  @override
  String get welcomeGoalsBody =>
      'Anna tavoitteelle nimi, aseta summa ja katso sen täyttyvän. Puskuria on helpompi kerätä, kun sen näkee.';

  @override
  String get welcomePrivacyTitle => 'Rahasi pysyvät sinun';

  @override
  String get welcomePrivacyBody =>
      'Lukusi kuuluvat vain sinulle. Mitään ei myydä eikä jaeta kenellekään.';

  @override
  String stepOf(int step, int total) {
    return 'Vaihe $step / $total';
  }

  @override
  String get onboardingNameTitle => 'Miksi sinua kutsutaan?';

  @override
  String get onboardingNameBody =>
      'Käytämme sitä vain tervehtimiseen, emme missään muualla.';

  @override
  String get onboardingNameHint =>
      'Etunimi riittää hyvin. Voit muuttaa sen myöhemmin.';

  @override
  String get onboardingCurrencyTitle => 'Mitä valuuttaa käytät?';

  @override
  String get onboardingCurrencyBody =>
      'Kaikki summat sovelluksessa näytetään tässä valuutassa. Sen valitseminen ei muunna mitään.';

  @override
  String get onboardingCurrencySearch => 'Hae kaikista valuutoista';

  @override
  String get onboardingAppearanceTitle => 'Tee siitä omasi';

  @override
  String get onboardingAppearanceBody =>
      'Valitse ulkoasu. Kaikki muuttuu napauttaessasi, ja voit palata milloin tahansa.';

  @override
  String get onboardingNotificationsTitle => 'Pysy kärryillä';

  @override
  String get onboardingNotificationsBody =>
      'Hiljainen tönäisy oikeaan aikaan on se, mikä tekee tästä tavan.';

  @override
  String get onboardingNotifyReminders =>
      'Ystävällinen muistutus kirjata, mitä olet käyttänyt';

  @override
  String get onboardingNotifyBudget =>
      'Ennakkovaroitus ennen kuin budjetti loppuu';

  @override
  String get onboardingNotifySummary =>
      'Viikoittainen katsaus siihen, mihin rahat menivät';

  @override
  String get onboardingNotifyEnable => 'Ota ilmoitukset käyttöön';

  @override
  String get onboardingNotifyDone => 'Ilmoitusasetukset tallennettu';

  @override
  String get onboardingNotifyLater =>
      'Kaikkea tätä voit muuttaa Asetuksissa milloin tahansa.';

  @override
  String get onboardingReadyTitle => 'Kaikki on valmista';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Kaikki on valmista, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Asetukset ovat kunnossa. Haluatko nopean kierroksen siitä, miten kaikki toimii?';

  @override
  String get onboardingTakeTour => 'Näytä minulle';

  @override
  String get onboardingGoToApp => 'Vie minut sovellukseen';

  @override
  String get onboardingTourLater =>
      'Ei nyt? Opas jää Asetuksiin, kun tarvitset sitä.';

  @override
  String get beginnersGuide => 'Aloittelijan opas';

  @override
  String get guideFinish => 'Lopeta';

  @override
  String chapterOf(int number, int total) {
    return 'Luku $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Avaa $screen';
  }

  @override
  String get guideDashboardTitle => 'Aloitusnäyttösi';

  @override
  String get guideDashboardBody =>
      'Kaikki alkaa täältä. Ylimmäinen kortti näyttää, mitä sinulla on jäljellä; sen alla mitä on tullut sisään ja mennyt ulos tällä jaksolla, ja sitten kulutuksesi, budjettisi ja tavoitteesi.';

  @override
  String get guideDashboardTip1 =>
      'Vedä näyttöä alaspäin päivittääksesi kaiken kerralla.';

  @override
  String get guideDashboardTip2 =>
      'Napauta tulo- tai menokorttia siirtyäksesi suoraan siihen listaan.';

  @override
  String get guideDashboardTip3 =>
      'Renkaat ja havainnot päivittyvät samalla hetkellä, kun kirjaat jotain.';

  @override
  String get guideAddTitle => 'Rahan kirjaaminen';

  @override
  String get guideAddBody =>
      'Rivin keskellä oleva painike on paikka, josta kaikki alkaa. Se avaa lyhyen valikon: meno, tulo, velka, budjetti tai säästötavoite.';

  @override
  String get guideAddTip1 =>
      'Napauta keskimmäistä painiketta kirjataksesi rahaa sisään tai ulos.';

  @override
  String get guideAddTip2 =>
      'Pidä sitä pohjassa siirtyäksesi suoraan uuteen menoon ja ohittaaksesi valikon.';

  @override
  String get guideAddTip3 =>
      'Valitse aina luokka — se saa kaaviot ja budjetit toimimaan.';

  @override
  String get guideCategoriesTitle => 'Luokat';

  @override
  String get guideCategoriesBody =>
      'Luokat ovat tapa, jolla kulutus ryhmitellään. Mukana tulevat riittävät useimmille, ja voit nimetä ne uudelleen tai lisätä omia.';

  @override
  String get guideCategoriesTip1 =>
      'Asetukset ja sitten Hallitse luokkia muuttaaksesi tai lisätäksesi.';

  @override
  String get guideCategoriesTip2 =>
      'Kaikki ilman luokkaa menee kohtaan ”Muut”, jotta kaaviot pysyvät rehellisinä.';

  @override
  String get guideBudgetTitle => 'Budjetit';

  @override
  String get guideBudgetBody =>
      'Budjetti on yhden luokan kuukausikatto. Palkki täyttyy kuluttaessasi ja vaihtaa väriä rajan lähestyessä, joten saat tiedon ennen kuin ylität sen.';

  @override
  String get guideBudgetTip1 =>
      'Aloita kahdesta tai kolmesta luokasta, älä kaikista kerralla.';

  @override
  String get guideBudgetTip2 =>
      'Aseta raja hieman yli sen, mitä yleensä kulutat, ja kiristä sitä sitten vähitellen.';

  @override
  String get guideBudgetTip3 =>
      'Jätä budjettihälytykset päälle, niin sovellus kertoo, kun budjetti alkaa loppua.';

  @override
  String get guideSavingsTitle => 'Säästötavoitteet';

  @override
  String get guideSavingsBody =>
      'Anna nimi sille, mihin säästät, aseta summa ja päivä, niin sovellus laskee, kuinka paljon sinun on pantava sivuun kuukausittain.';

  @override
  String get guideSavingsTip1 =>
      'Nimetystä tavoitteesta on helpompi pitää kiinni kuin epämääräisestä aikeesta säästää.';

  @override
  String get guideSavingsTip2 =>
      'Useampi pieni tavoite tulee valmiiksi useammin kuin yksi suuri.';

  @override
  String get guideLoansTitle => 'Velat ja lainat';

  @override
  String get guideLoansBody =>
      'Kirjaa, mitä olet velkaa, mitä se maksaa ja milloin seuraava maksu erääntyy. Kaikki maksamasi näkyy listana yhdessä jäljellä olevan kanssa.';

  @override
  String get guideLoansTip1 =>
      'Syötä eräpäivä, niin maksumuistutukset pitävät siitä huolen puolestasi.';

  @override
  String get guideLoansTip2 =>
      'Erääntynyt velka palaa punaisena aloitusnäytöllä, kunnes se on maksettu.';

  @override
  String get guideReportsTitle => 'Raportit';

  @override
  String get guideReportsBody =>
      'Syvempi kuva: tulot vastaan menot, kulutus luokittain, miten budjetit pitivät ja kuinka suuren osan tuloista säilytit.';

  @override
  String get guideReportsTip1 =>
      'Vaihda viikon, kuukauden ja neljänneksen välillä näytön yläreunassa.';

  @override
  String get guideReportsTip2 =>
      'Vie tai jaa PDF — se tulee ulos omalla kielelläsi ja sen lukusuunnassa.';

  @override
  String get guideSettingsTitle => 'Asetukset';

  @override
  String get guideSettingsBody =>
      'Kieli, valuutta, värit ja hälytykset ovat kaikki täällä, eikä mikään niistä lukitu ensimmäisestä valinnasta — muuta mitä haluat, milloin haluat.';

  @override
  String get guideSettingsTip1 =>
      'Neljäkymmentä kieltä, ja koko asettelu peilataan niille, joita luetaan oikealta vasemmalle.';

  @override
  String get guideSettingsTip2 =>
      'Valitse, mitkä hälytykset haluat ja mihin aikaan ne saavat saapua.';

  @override
  String get guideSettingsTip3 =>
      'Hiljaiset tunnit pidättelevät kaiken aamuun asti.';

  @override
  String get guideHabitTitle => 'Näin siitä tulee tapa';

  @override
  String get guideHabitBody =>
      'Sovellus on vain niin hyvä kuin se, mitä siihen syötät. Minuutti päivässä voittaa tunnin kuukaudessa, ja kahden viikon jälkeen luvut alkavat kertoa jotain.';

  @override
  String get guideHabitTip1 =>
      'Kirjaa menot silloin kun ne tapahtuvat, älä viikon lopussa.';

  @override
  String get guideHabitTip2 =>
      'Vilkaise aloitusnäyttöä kerran päivässä. Kymmenen sekuntia riittää.';

  @override
  String get guideHabitTip3 =>
      'Tämä opas jää Asetuksiin — palaa siihen milloin tahansa.';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get themeCaption => 'Vaalea, tumma tai puhelimen mukaan.';

  @override
  String get accentColor => 'Korostusväri';

  @override
  String get accentColorCaption => 'Värittää painikkeet, valinnat ja kaaviot.';

  @override
  String get accentSemanticsNote =>
      'Sisään tuleva ja ulos menevä raha säilyttävät omat värinsä kaikissa teemoissa, joten luku ei koskaan vaihda merkitystään siksi, että vaihdoit korostusväriä.';

  @override
  String get accentTeal => 'Sinivihreä';

  @override
  String get accentGreen => 'Vihreä';

  @override
  String get accentSky => 'Taivaansininen';

  @override
  String get accentBlue => 'Sininen';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violetti';

  @override
  String get accentPink => 'Pinkki';

  @override
  String get accentCrimson => 'Karmiini';

  @override
  String get accentOrange => 'Oranssi';

  @override
  String get accentSlate => 'Liuskeenharmaa';

  @override
  String get searchLanguages => 'Hae kieliä';

  @override
  String get suggestedLanguages => 'Ehdotetut';

  @override
  String get allLanguages => 'Kaikki kielet';

  @override
  String get noLanguagesFound => 'Kieliä ei löytynyt';

  @override
  String get noLanguagesFoundMessage =>
      'Kokeile nimeä englanniksi tai sen kaksikirjaimista koodia.';

  @override
  String get rightToLeft => 'Oikealta vasemmalle';

  @override
  String get replayGuide => 'Katso opas uudelleen';

  @override
  String get replaySetup => 'Tee käyttöönotto uudelleen';

  @override
  String get replaySetupBody =>
      'Käy aloituskysymykset läpi vielä kerran. Mitään kirjaamaasi ei poisteta.';

  @override
  String get rateTitle => 'Pidätkö RainyPennystä?';

  @override
  String get rateBody =>
      'Olet jaksanut tämän parissa jo jonkin aikaa. Arvion antaminen vie hetken ja auttaa muita löytämään sovelluksen.';

  @override
  String get rateAction => 'Arvioi sovellus';

  @override
  String get rateLater => 'Ehkä myöhemmin';

  @override
  String get rateNever => 'Ei kiitos';

  @override
  String get rateThanks => 'Kiitos';

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
