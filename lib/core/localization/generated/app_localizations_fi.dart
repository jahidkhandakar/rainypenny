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
  String get appTagline => 'Säästä pahan päivän varalle';

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
    return 'Hyvää iltapäivää, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Hyvää iltaa, $name';
  }

  @override
  String get greetingSubtitle => 'Tässä on taloutesi yhteenveto';

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
  String get spendingOverview => 'Menojen yleiskatsaus';

  @override
  String get recentTransactions => 'Viimeisimmät tapahtumat';

  @override
  String get seeAll => 'Näytä kaikki';

  @override
  String get viewAll => 'Näytä kaikki';

  @override
  String get budgetProgress => 'Budjetin edistyminen';

  @override
  String get savingsGoals => 'Säästötavoitteet';

  @override
  String get financialInsight => 'Taloudellinen oivallus';

  @override
  String get financialHealth => 'Taloudellinen hyvinvointi';

  @override
  String ofTotal(String total) {
    return '$total:sta';
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
      'Kokeile toista hakua tai suodatinta nähdäksesi lisää tapahtumia.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tapahtumaa',
      one: '1 tapahtuma',
      zero: 'Ei tapahtumia',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Lisää tapahtuma';

  @override
  String get amount => 'Summa';

  @override
  String get category => 'Kategoria';

  @override
  String get date => 'Päivämäärä';

  @override
  String get note => 'Muistiinpano';

  @override
  String get noteHint => 'Valinnainen muistiinpano';

  @override
  String get saveIncome => 'Tallenna tulo';

  @override
  String get saveExpense => 'Tallenna meno';

  @override
  String get selectCategory => 'Valitse kategoria';

  @override
  String get transactionSaved => 'Tapahtuma tallennettu';

  @override
  String get amountRequired => 'Anna nollaa suurempi summa';

  @override
  String get titleRequired => 'Anna tapahtumalle nimi';

  @override
  String get descriptionLabel => 'Kuvaus';

  @override
  String get descriptionHint => 'esim. Ruokaostokset';

  @override
  String get budget => 'Budjetti';

  @override
  String get budgets => 'Budjetit';

  @override
  String get totalBudget => 'Budjetit yhteensä';

  @override
  String get spent => 'Käytetty';

  @override
  String get remaining => 'Jäljellä';

  @override
  String budgetUsed(int percent) {
    return '$percent % käytetty';
  }

  @override
  String get onTrack => 'Suunnitelman mukainen';

  @override
  String get approachingLimit => 'Lähestyy rajaa';

  @override
  String get overBudget => 'Budjetti ylitetty';

  @override
  String get savings => 'Säästöt';

  @override
  String get yourGoals => 'Tavoitteesi';

  @override
  String get saved => 'Säästetty';

  @override
  String get target => 'Tavoite';

  @override
  String get monthlyContribution => 'Kuukausittain';

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
      one: '1 kuukausi jäljellä',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Lainat ja velat';

  @override
  String get totalOutstanding => 'Velkaa jäljellä';

  @override
  String get monthlyPayment => 'Kuukausierä';

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
      other: 'Erääntyy $count päivän kuluttua',
      one: 'Erääntyy huomenna',
      zero: 'Erääntyy tänään',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Myöhässä';

  @override
  String get reports => 'Raportit';

  @override
  String get week => 'Viikko';

  @override
  String get month => 'Kuukausi';

  @override
  String get quarter => 'Neljännesvuosi';

  @override
  String get incomeVsExpenses => 'Tulot vs. menot';

  @override
  String get spendingByCategory => 'Menot kategorioittain';

  @override
  String get budgetPerformance => 'Budjettien toteutuminen';

  @override
  String get insights => 'Oivallukset';

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
  String get security => 'Turvallisuus';

  @override
  String get privacyAndSecurity => 'Tietosuoja ja turvallisuus';

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
    return 'Jäsen alkaen $date';
  }

  @override
  String get themeSystem => 'Järjestelmän oletus';

  @override
  String get themeLight => 'Vaalea';

  @override
  String get themeDark => 'Tumma';

  @override
  String get settings => 'Asetukset';

  @override
  String get noNotificationsTitle => 'Kaikki on ajan tasalla';

  @override
  String get noNotificationsBody =>
      'Uudet oivallukset ja muistutukset näkyvät täällä.';

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
  String get comingSoon => 'Tulossa täydessä julkaisussa';

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
  String get nameRequired => 'Anna nimesi';

  @override
  String get amountAboveZero => 'Anna nollaa suurempi summa';

  @override
  String get editTransaction => 'Muokkaa tapahtumaa';

  @override
  String get deleteTransaction => 'Poistetaanko tapahtuma?';

  @override
  String deleteTransactionBody(String title) {
    return '$title poistetaan tapahtumaluettelostasi.';
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
  String get deleteBudget => 'Poistetaanko budjetti?';

  @override
  String deleteBudgetBody(String category) {
    return 'Kategorian $category budjetti poistetaan. Tapahtumiisi tämä ei vaikuta.';
  }

  @override
  String get budgetSaved => 'Budjetti tallennettu';

  @override
  String get budgetDeleted => 'Budjetti poistettu';

  @override
  String get allCategoriesBudgeted => 'Kaikilla kategorioilla on jo budjetti';

  @override
  String get noBudgetsTitle => 'Ei budjetteja vielä';

  @override
  String get noBudgetsBody =>
      'Aseta kategorialle kuukausiraja seurataksesi sen käyttöä.';

  @override
  String get newGoal => 'Uusi tavoite';

  @override
  String get editGoal => 'Muokkaa tavoitetta';

  @override
  String get goalName => 'Tavoitteen nimi';

  @override
  String get goalNameHint => 'esim. Hätärahasto';

  @override
  String get targetAmount => 'Tavoitesumma';

  @override
  String get alreadySaved => 'Jo säästetty';

  @override
  String get deleteGoal => 'Poistetaanko tavoite?';

  @override
  String deleteGoalBody(String name) {
    return '$name ja sen edistyminen poistetaan.';
  }

  @override
  String get goalSaved => 'Tavoite tallennettu';

  @override
  String get goalDeleted => 'Tavoite poistettu';

  @override
  String get noGoalsTitle => 'Ei säästötavoitteita vielä';

  @override
  String get noGoalsBody => 'Aseta tavoite ja RainyPenny seuraa edistymistäsi.';

  @override
  String get fundsAdded => 'Varat lisätty';

  @override
  String get newDebt => 'Uusi laina tai kortti';

  @override
  String get editDebt => 'Muokkaa lainaa';

  @override
  String get debtName => 'Nimi';

  @override
  String get debtNameHint => 'esim. Autolaina';

  @override
  String get lender => 'Lainanantaja';

  @override
  String get lenderHint => 'esim. Meridian Bank';

  @override
  String get originalAmount => 'Alkuperäinen summa';

  @override
  String get creditLimit => 'Luottoraja';

  @override
  String get remainingBalance => 'Jäljellä oleva saldo';

  @override
  String get interestRatePercent => 'Korkoprosentti (%)';

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
    return '$name poistetaan veloistasi.';
  }

  @override
  String get debtSaved => 'Tallennettu';

  @override
  String get debtDeleted => 'Poistettu';

  @override
  String get noDebtsTitle => 'Ei seurattavia velkoja';

  @override
  String get noDebtsBody =>
      'Lisää laina tai luottokortti seurataksesi takaisinmaksuja.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject-budjetti ylitetty';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Olet $amount yli kategorian $subject budjetin tällä jaksolla.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject lähestyy budjettirajaansa';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Kategorian $subject budjetista on käytetty $percent %, ja jäljellä on $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Menot ylittävät tulot';

  @override
  String get insightOverIncomeBody =>
      'Olet käyttänyt tällä jaksolla enemmän kuin ansainnut. Tarkista suurimmat menokategoriat saadaksesi tilanteen jälleen tasapainoon.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject-menot ovat kasvaneet';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Kategorian $subject menot ovat $percent % suuremmat kuin edellisellä jaksolla.';
  }

  @override
  String get insightTrendDownTitle => 'Menot ovat laskusuunnassa';

  @override
  String insightTrendDownBody(int percent) {
    return 'Kokonaismenot ovat $percent % pienemmät kuin edellisellä jaksolla.';
  }

  @override
  String get insightTrendUpTitle => 'Menot ovat noususuunnassa';

  @override
  String insightTrendUpBody(int percent) {
    return 'Kokonaismenot ovat $percent % suuremmat kuin edellisellä jaksolla.';
  }

  @override
  String get insightSavingsStrongTitle => 'Hyvät säästöt tällä jaksolla';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Säästit $percent % tuloistasi – selvästi yli $target % tavoitteen.';
  }

  @override
  String get insightSavingsLowTitle => 'Säästöaste on tavoitteen alapuolella';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Säästit tällä jaksolla $percent % tuloistasi. Tavoittele $target %:a.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject on lähes rahoitettu';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Tarvitset enää $amount saavuttaaksesi tavoitteen $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Tavoite $subject etenee suunnitelman mukaan';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months kuukaudessa',
      one: '1 kuukaudessa',
    );
    return 'Kun säästät $amount kuukaudessa, saavutat tämän tavoitteen $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject-maksu on myöhässä';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivää',
      one: '1 päivän',
    );
    return 'Kategorian $subject $amount maksu on myöhässä $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject-maksu erääntyy pian';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days päivän kuluttua',
      one: 'huomenna',
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
  String get signUpSubtitle => 'Muutama tieto ja olet valmis.';

  @override
  String get emailLabel => 'Sähköposti';

  @override
  String get emailHint => 'sinä@sähköposti.fi';

  @override
  String get passwordLabel => 'Salasana';

  @override
  String get passwordHint => 'Vähintään 8 merkkiä';

  @override
  String get fullNameLabel => 'Koko nimi';

  @override
  String get fullNameHint => 'Matti Meikäläinen';

  @override
  String get forgotPassword => 'Unohditko salasanan?';

  @override
  String get resetSent =>
      'Tarkista sähköpostisi salasanan palautuslinkin varalta';

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
      'Sinun on kirjauduttava uudelleen nähdäksesi taloustietosi.';

  @override
  String get dataSource => 'Tietolähde';

  @override
  String get insightWeeklySummaryTitle => 'Viikkosi katsaus';

  @override
  String get insightWeeklySummaryBody =>
      'Katso, mihin rahasi menivät tällä viikolla ja miten budjettisi pitivät.';

  @override
  String get notificationSettings => 'Ilmoitukset';

  @override
  String get alertsSection => 'Hälytykset';

  @override
  String get budgetAlerts => 'Budjettihälytykset';

  @override
  String get budgetAlertsBody => 'Kun budjetti lähestyy tai ylittää rajansa';

  @override
  String get paymentReminders => 'Maksumuistutukset';

  @override
  String get paymentRemindersBody => 'Muutama päivä ennen maksun erääntymistä';

  @override
  String get savingsUpdates => 'Säästöpäivitykset';

  @override
  String get savingsUpdatesBody => 'Tavoitteidesi edistyminen';

  @override
  String get weeklySummaryLabel => 'Viikkoyhteenveto';

  @override
  String get weeklySummaryBody => 'Yhteenveto kuluneesta viikosta';

  @override
  String get scheduleSection => 'Ajankohta';

  @override
  String get reminderTime => 'Muistutusaika';

  @override
  String get quietHours => 'Hiljaiset tunnit';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Yhteenvetopäivä';

  @override
  String get permissionRequired => 'Ilmoitukset ovat pois käytöstä';

  @override
  String get permissionRequiredBody =>
      'Salli ilmoitukset, jotta RainyPenny voi varoittaa sinua ennen kuin budjetti tai maksu karkaa käsistä.';

  @override
  String get allowNotifications => 'Salli ilmoitukset';

  @override
  String get permissionDenied =>
      'Ilmoitukset on estetty. Voit ottaa ne käyttöön laitteen asetuksista.';

  @override
  String get upcomingAlerts => 'Ajastetut';

  @override
  String get noScheduledAlerts => 'Mitään ei ole ajastettu';

  @override
  String get noScheduledAlertsBody =>
      'Hälytykset näkyvät täällä, kun budjetit ja maksut lähestyvät rajojaan tai eräpäiviään.';

  @override
  String scheduledFor(String date) {
    return 'Ajastettu: $date';
  }

  @override
  String get everyWeek => 'Joka viikko';

  @override
  String get allNotificationsOff => 'Kaikki ilmoitukset ovat pois käytöstä';

  @override
  String get needsAttention => 'Vaatii huomiota';

  @override
  String get quickActionsTitle => 'Mitä haluaisit tehdä?';

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
      'Vinkki: pidä +-painiketta painettuna kirjataksesi menon heti';

  @override
  String get searchCurrencies => 'Hae valuuttoja';

  @override
  String get noCurrenciesFound => 'Valuuttoja ei löytynyt';

  @override
  String get noCurrenciesFoundMessage =>
      'Kokeile toista koodia, symbolia tai nimeä.';

  @override
  String get popularCurrencies => 'Suositut';

  @override
  String get allCurrencies => 'Kaikki valuutat';

  @override
  String get totalLoanAmount => 'Lainan kokonaismäärä';

  @override
  String get installmentAmount => 'Maksuerän määrä';

  @override
  String get numberOfInstallments => 'Maksuerien määrä';

  @override
  String get paidInstallments => 'Maksetut maksuerät';

  @override
  String get remainingInstallments => 'Jäljellä olevat maksuerät';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid/$total maksettu';
  }

  @override
  String get finalPayment => 'Viimeinen maksu';

  @override
  String get paymentDueDate => 'Maksun eräpäivä';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Joka kuukauden $day. päivä';
  }

  @override
  String get loanStatus => 'Tila';

  @override
  String get statusActive => 'Suunnitelman mukainen';

  @override
  String get statusDueSoon => 'Erääntyy pian';

  @override
  String get statusOverdue => 'Myöhässä';

  @override
  String get statusCompleted => 'Maksettu pois';

  @override
  String get repaymentProgress => 'Takaisinmaksun edistyminen';

  @override
  String get byAmount => 'Summan mukaan';

  @override
  String get byInstallments => 'Maksuerien mukaan';

  @override
  String get startDate => 'Aloituspäivä';

  @override
  String get openEnded => 'Toistaiseksi jatkuva';

  @override
  String get loanDetails => 'Lainan tiedot';

  @override
  String get notSet => 'Ei määritetty';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject erääntyy tänään';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Maksusi $amount erääntyy tänään. Nopea napautus pitää maksun aikataulussa.';
  }

  @override
  String get remindMorningTitle => 'Hyvää huomenta ☀️';

  @override
  String get remindMorningBody =>
      'Aloita päivä pitämällä taloutesi hallinnassa. Onko eiliseltä jotain lisättävää?';

  @override
  String get remindNoonTitle => 'Keskipäivän tarkistus';

  @override
  String get remindNoonBody =>
      'Lounas, kahvi, matka? Lisää se muutamassa sekunnissa.';

  @override
  String get remindAfternoonTitle => 'Nopea päivitys';

  @override
  String get remindAfternoonBody =>
      'Kirjaa tähän mennessä käyttämäsi rahat ja pidä tämän päivän luvut ajan tasalla.';

  @override
  String get remindEveningTitle => 'Päivän päätös';

  @override
  String get remindEveningBody =>
      'Käytä nyt kaksi minuuttia ja saat tämän päivän luvut valmiiksi.';

  @override
  String get happyWeekendTitle => 'Hyvää viikonloppua! 🎉';

  @override
  String get happyWeekendBody =>
      'Nauti viikonlopusta – ja pidä samalla viikonlopun menot silmällä.';

  @override
  String get dailyReminders => 'Päivittäiset menomuistutukset';

  @override
  String get dailyRemindersBody =>
      'Ystävällisiä muistutuksia pitääksesi menosi ajan tasalla';

  @override
  String get weekendGreeting => 'Viikonlopputervehdys';

  @override
  String get weekendGreetingBody => 'Ystävällinen tervehdys viikonlopun aluksi';

  @override
  String get reminderTimesSection => 'Muistutusajat';

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
  String get financialReport => 'Taloudellinen raportti';

  @override
  String get preparedFor => 'Laadittu henkilölle';

  @override
  String get generatedOn => 'Luotu';

  @override
  String get reportDisclaimer =>
      'RainyPenny loi tämän raportin omien tietojesi perusteella.';

  @override
  String pageOf(int page, int total) {
    return 'Sivu $page/$total';
  }

  @override
  String get overview => 'Yleiskatsaus';

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
      other: 'ja $count muuta tapahtumaa',
      one: 'ja 1 muu tapahtuma',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Vie PDF';

  @override
  String get sharePdf => 'Jaa raportti';

  @override
  String get preparingReport => 'Raporttia valmistellaan…';

  @override
  String get reportReady => 'Raportti valmis';

  @override
  String get reportFailed => 'Raportin luominen epäonnistui';

  @override
  String get categories => 'Kategoriat';

  @override
  String get categoriesIntro =>
      'Lisää omia kategorioita, jotta voit luokitella tulot ja menot juuri omalla tavallasi.';

  @override
  String get expenseCategories => 'Menokategoriat';

  @override
  String get incomeCategories => 'Tulokategoriat';

  @override
  String get newCategory => 'Uusi kategoria';

  @override
  String get editCategory => 'Muokkaa kategoriaa';

  @override
  String get categoryName => 'Nimi';

  @override
  String get categoryNameHint => 'esim. Lemmikkien hoito';

  @override
  String get icon => 'Kuvake';

  @override
  String get categorySaved => 'Kategoria tallennettu';

  @override
  String get categoryDeleted => 'Kategoria poistettu';

  @override
  String get deleteCategory => 'Poistetaanko tämä kategoria?';

  @override
  String deleteCategoryBody(String name) {
    return '$name poistetaan kategorioistasi.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tietuetta käyttää edelleen tätä kategoriaa',
      one: '1 tietue käyttää edelleen tätä kategoriaa',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Ei vielä mitään.';

  @override
  String get builtIn => 'Sisäänrakennettu';

  @override
  String get manageCategories => 'Hallitse kategorioita';

  @override
  String get expense => 'Meno';

  @override
  String get languageNote =>
      'Arabia, urdu, persia ja heprea vaihtavat koko käyttöliittymän oikealta vasemmalle, mukaan lukien kaaviot ja PDF-raportit.';

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
  String get passwordsDoNotMatch => 'Salasanojen on vastattava toisiaan';

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
  String get getStarted => 'Aloita';

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
      'Pitkä, helposti muistettava lause on parempi kuin lyhyt salasana täynnä symboleja. Vältä salasanoja, joita käytät jo muualla.';

  @override
  String get authInvalidCredentials =>
      'Sähköpostiosoite ja salasana eivät vastaa tiliä';

  @override
  String get authEmailNotConfirmed =>
      'Vahvista sähköpostiosoitteesi ennen kirjautumista';

  @override
  String get authEmailAlreadyRegistered =>
      'Tällä sähköpostiosoitteella on jo tili';

  @override
  String get authWeakPassword => 'Valitse pidempi salasana';

  @override
  String get authRateLimited =>
      'Liian monta yritystä. Yritä uudelleen muutaman minuutin kuluttua';

  @override
  String get authNetworkError =>
      'Ei yhteyttä. Tarkista verkkoyhteytesi ja yritä uudelleen';

  @override
  String get authGenericError => 'Jokin meni pieleen. Yritä uudelleen';

  @override
  String get confirmEmailTitle => 'Tarkista sähköpostisi';

  @override
  String confirmEmailBody(String email) {
    return 'Lähetimme vahvistuslinkin osoitteeseen $email. Avaa se viimeistelläksesi tilisi käyttöönoton.';
  }

  @override
  String get resendConfirmation => 'Lähetä vahvistussähköposti uudelleen';

  @override
  String get confirmationResent => 'Vahvistussähköposti lähetetty';

  @override
  String get forgotPasswordTitle => 'Palauta salasanasi';

  @override
  String get forgotPasswordSubtitle =>
      'Anna sähköpostiosoite, jolla rekisteröidyit, niin lähetämme sinulle linkin uuden salasanan valitsemiseen.';

  @override
  String get sendResetLink => 'Lähetä palautuslinkki';

  @override
  String get resetLinkSentTitle => 'Palautuslinkki lähetetty';

  @override
  String resetLinkSentBody(String email) {
    return 'Jos osoitteella $email on tili, palautuslinkki on matkalla.';
  }

  @override
  String get resetLinkSentHint =>
      'Linkki vanhenee tunnin kuluttua. Jos se ei saavu, tarkista roskapostikansio ennen uuden pyytämistä.';

  @override
  String get tryAnotherEmail => 'Käytä toista sähköpostiosoitetta';

  @override
  String get resetPasswordTitle => 'Valitse uusi salasana';

  @override
  String get resetPasswordSubtitle =>
      'Valitse salasana, jota et ole käyttänyt tällä tilillä aiemmin.';

  @override
  String get passwordChangedTitle => 'Salasana päivitetty';

  @override
  String get passwordChangedBody =>
      'Uusi salasanasi on tallennettu. Olet kirjautunut sisään ja valmis jatkamaan.';

  @override
  String get demoModeHint => 'Demoversio — tiliä ei tarvita';

  @override
  String get demoModeFill => 'Täytä';

  @override
  String get welcomeTrackTitle => 'Näe, mihin rahasi menevät';

  @override
  String get welcomeTrackBody =>
      'Kirjaa tulot ja menot. RainyPenny muuttaa ne näkymäksi, jota on helppo ymmärtää.';

  @override
  String get welcomeBudgetTitle => 'Aseta rajat, jotka pitävät';

  @override
  String get welcomeBudgetBody =>
      'Anna kullekin menojen osa-alueelle kuukausittainen yläraja ja saat ilmoituksen ennen rajan ylittämistä sen sijaan, että huomaisit sen vasta jälkeenpäin.';

  @override
  String get welcomeGoalsTitle => 'Säästä siihen, millä on merkitystä';

  @override
  String get welcomeGoalsBody =>
      'Nimeä tavoite, aseta tavoitesumma ja seuraa sen täyttymistä. Pahan päivän rahastoa on helpompi kasvattaa, kun näet edistymisen.';

  @override
  String get welcomePrivacyTitle => 'Rahasi pysyvät sinunasi';

  @override
  String get welcomePrivacyBody =>
      'Taloustietosi kuuluvat vain sinulle. Mitään ei myydä eikä jaeta kenenkään kanssa.';

  @override
  String stepOf(int step, int total) {
    return 'Vaihe $step/$total';
  }

  @override
  String get onboardingNameTitle => 'Millä nimellä kutsumme sinua?';

  @override
  String get onboardingNameBody =>
      'Käytämme sitä tervehtiessämme sinua emmekä missään muualla.';

  @override
  String get onboardingNameHint =>
      'Etunimi riittää. Voit vaihtaa sen myöhemmin.';

  @override
  String get onboardingCurrencyTitle => 'Mitä valuuttaa käytät?';

  @override
  String get onboardingCurrencyBody =>
      'Kaikki sovelluksen summat näytetään tässä valuutassa. Valinta ei muunna mitään.';

  @override
  String get onboardingCurrencySearch => 'Hae kaikista valuutoista';

  @override
  String get onboardingAppearanceTitle => 'Tee siitä omasi';

  @override
  String get onboardingAppearanceBody =>
      'Valitse ulkoasu. Kaikki muuttuu napauttaessasi, ja voit palata asetukseen milloin tahansa.';

  @override
  String get onboardingNotificationsTitle => 'Pysy ajan tasalla';

  @override
  String get onboardingNotificationsBody =>
      'Hiljainen muistutus oikealla hetkellä auttaa tekemään tästä tavan.';

  @override
  String get onboardingNotifyReminders =>
      'Ystävällinen muistutus kirjaamaan käyttämäsi rahat';

  @override
  String get onboardingNotifyBudget => 'Ilmoitus ennen budjetin loppumista';

  @override
  String get onboardingNotifySummary =>
      'Viikoittainen yhteenveto rahojesi käytöstä';

  @override
  String get onboardingNotifyEnable => 'Ota ilmoitukset käyttöön';

  @override
  String get onboardingNotifyDone => 'Ilmoitusasetukset tallennettu';

  @override
  String get onboardingNotifyLater =>
      'Voit muuttaa kaikkia näitä asetuksia myöhemmin Asetuksissa.';

  @override
  String get onboardingReadyTitle => 'Kaikki on valmista';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Kaikki on valmista, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Asetukset ovat nyt valmiit. Haluaisitko nopean kierroksen siitä, miten kaikki toimii?';

  @override
  String get onboardingTakeTour => 'Näytä minulle';

  @override
  String get onboardingGoToApp => 'Siirry sovellukseen';

  @override
  String get onboardingTourLater =>
      'Ei nyt? Opas säilyy Asetuksissa myöhempää käyttöä varten.';

  @override
  String get beginnersGuide => 'Aloittelijan opas';

  @override
  String get guideFinish => 'Valmis';

  @override
  String chapterOf(int number, int total) {
    return 'Luku $number/$total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Avaa $screen';
  }

  @override
  String get guideDashboardTitle => 'Kojelautasi';

  @override
  String get guideDashboardBody =>
      'Kaikki alkaa täältä. Yläreunan kortissa näet jäljellä olevan saldon; sen alla ovat tämän jakson tulot ja menot sekä menot, budjetit ja tavoitteet.';

  @override
  String get guideDashboardTip1 =>
      'Vedä näyttöä alaspäin päivittääksesi kaiken kerralla.';

  @override
  String get guideDashboardTip2 =>
      'Napauta tulo- tai menokorttia siirtyäksesi kyseiseen luetteloon.';

  @override
  String get guideDashboardTip3 =>
      'Renkaat ja oivallukset päivittyvät heti, kun kirjaat jotain.';

  @override
  String get guideAddTitle => 'Rahan kirjaaminen';

  @override
  String get guideAddBody =>
      'Alapalkin keskellä oleva painike on kaiken lähtöpiste. Se avaa lyhyen valikon: meno, tulo, velka, budjetti tai säästötavoite.';

  @override
  String get guideAddTip1 =>
      'Napauta keskimmäistä painiketta kirjataksesi tulon tai menon.';

  @override
  String get guideAddTip2 =>
      'Pidä painiketta painettuna siirtyäksesi suoraan uuden menon kirjaukseen ja ohittaaksesi valikon.';

  @override
  String get guideAddTip3 =>
      'Valitse aina kategoria – sen avulla kaaviot ja budjetit toimivat.';

  @override
  String get guideCategoriesTitle => 'Kategoriat';

  @override
  String get guideCategoriesBody =>
      'Kategoriat ryhmittelevät menot. Sovelluksen mukana tulevat kategoriat kattavat useimmat tarpeet, ja voit nimetä niitä uudelleen tai lisätä omia.';

  @override
  String get guideCategoriesTip1 =>
      'Avaa Asetukset ja valitse Hallitse kategorioita muokataksesi tai lisätäksesi kategorian.';

  @override
  String get guideCategoriesTip2 =>
      'Luokittelemattomat tapahtumat päätyvät Muut-kategoriaan, jotta kaaviot pysyvät totuudenmukaisina.';

  @override
  String get guideBudgetTitle => 'Budjetit';

  @override
  String get guideBudgetBody =>
      'Budjetti on yhden kategorian kuukausittainen yläraja. Palkki täyttyy kulutuksen kasvaessa ja muuttuu rajan lähestyessä, joten tiedät tilanteen ennen rajan ylittämistä.';

  @override
  String get guideBudgetTip1 =>
      'Aloita kahdesta tai kolmesta kategoriasta, älä kaikista kerralla.';

  @override
  String get guideBudgetTip2 =>
      'Aseta raja hieman tavallisen kulutuksesi yläpuolelle ja kiristä sitä sitten.';

  @override
  String get guideBudgetTip3 =>
      'Pidä budjettihälytykset päällä, niin sovellus varoittaa budjetin ollessa vähissä.';

  @override
  String get guideSavingsTitle => 'Säästötavoitteet';

  @override
  String get guideSavingsBody =>
      'Nimeä säästökohde, aseta tavoite ja päivämäärä, niin sovellus laskee, kuinka paljon sinun pitäisi säästää kuukaudessa saavuttaaksesi sen.';

  @override
  String get guideSavingsTip1 =>
      'Nimetty tavoite on helpompi saavuttaa kuin epämääräinen aikomus säästää.';

  @override
  String get guideSavingsTip2 =>
      'Useat pienet tavoitteet saavutetaan useammin kuin yksi suuri tavoite.';

  @override
  String get guideLoansTitle => 'Velat ja lainat';

  @override
  String get guideLoansBody =>
      'Kirjaa velan määrä, kustannukset ja seuraavan maksun eräpäivä. Kaikki maksettavat velat ovat yhdessä luettelossa, josta näet myös jäljellä olevan kokonaismäärän.';

  @override
  String get guideLoansTip1 =>
      'Lisää eräpäivä, niin maksumuistutukset muistuttavat sinua.';

  @override
  String get guideLoansTip2 =>
      'Myöhässä oleva velka näkyy kojelaudalla punaisena, kunnes se on maksettu.';

  @override
  String get guideReportsTitle => 'Raportit';

  @override
  String get guideReportsBody =>
      'Syvempi näkymä: tulot suhteessa menoihin, menot kategorioittain, budjettien toteutuminen ja tuloistasi säästämäsi osuus.';

  @override
  String get guideReportsTip1 =>
      'Vaihda viikon, kuukauden ja neljännesvuoden välillä näytön yläreunasta.';

  @override
  String get guideReportsTip2 =>
      'Vie tai jaa PDF-raportti – se luodaan omalla kielelläsi ja kirjoitussuunnallasi.';

  @override
  String get guideSettingsTitle => 'Asetukset';

  @override
  String get guideSettingsBody =>
      'Kieli, valuutta, värit ja hälytykset löytyvät täältä. Mikään niistä ei ole lukittu käyttöönotossa – voit muuttaa niitä milloin tahansa.';

  @override
  String get guideSettingsTip1 =>
      'Neljäkymmentä kieltä, ja koko asettelu peilautuu oikealta vasemmalle luettavissa kielissä.';

  @override
  String get guideSettingsTip2 =>
      'Valitse haluamasi hälytykset ja ajat, jolloin ne voivat saapua.';

  @override
  String get guideSettingsTip3 =>
      'Hiljaiset tunnit siirtävät kaikki ilmoitukset aamuun.';

  @override
  String get guideHabitTitle => 'Tee siitä tapa';

  @override
  String get guideHabitBody =>
      'Sovellus on vain niin hyvä kuin sinne syöttämäsi tiedot. Minuutti päivässä voittaa tunnin kerran kuukaudessa, ja kahden viikon jälkeen luvut alkavat kertoa sinulle jotain.';

  @override
  String get guideHabitTip1 =>
      'Kirjaa käyttämäsi rahat heti, älä viikon lopussa.';

  @override
  String get guideHabitTip2 =>
      'Katso kojelautaa kerran päivässä. Kymmenen sekuntia riittää.';

  @override
  String get guideHabitTip3 =>
      'Tämä opas säilyy Asetuksissa – palaa siihen milloin tahansa.';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get themeCaption => 'Vaalea, tumma tai puhelimesi nykyinen tila.';

  @override
  String get accentColor => 'Korostusväri';

  @override
  String get accentColorCaption =>
      'Värittää painikkeet, korostukset ja kaaviot.';

  @override
  String get accentSemanticsNote =>
      'Tulot ja menot säilyttävät omat värinsä kaikissa teemoissa, joten luvun merkitys ei muutu teeman korostusvärin mukana.';

  @override
  String get accentTeal => 'Sinivihreä';

  @override
  String get accentGreen => 'Vihreä';

  @override
  String get accentSky => 'Taivaansininen';

  @override
  String get accentBlue => 'Sininen';

  @override
  String get accentIndigo => 'Indigonsininen';

  @override
  String get accentViolet => 'Violetti';

  @override
  String get accentPink => 'Vaaleanpunainen';

  @override
  String get accentCrimson => 'Karmiininpunainen';

  @override
  String get accentOrange => 'Oranssi';

  @override
  String get accentSlate => 'Liuskeenharmaa';

  @override
  String get searchLanguages => 'Hae kieliä';

  @override
  String get suggestedLanguages => 'Suositellut';

  @override
  String get allLanguages => 'Kaikki kielet';

  @override
  String get noLanguagesFound => 'Kieliä ei löytynyt';

  @override
  String get noLanguagesFoundMessage =>
      'Kokeile nimeä englanniksi tai kaksikirjaimista koodia.';

  @override
  String get rightToLeft => 'Oikealta vasemmalle';

  @override
  String get replayGuide => 'Näytä opas uudelleen';

  @override
  String get replaySetup => 'Suorita käyttöönotto uudelleen';

  @override
  String get replaySetupBody =>
      'Käy ensimmäisen käyttökerran kysymykset uudelleen läpi. Mitään kirjaamaasi ei poisteta.';

  @override
  String get rateTitle => 'Pidätkö RainyPennystä?';

  @override
  String get rateBody =>
      'Olet pitänyt tästä jo jonkin aikaa. Arvostelu vie hetken ja auttaa muita löytämään sovelluksen.';

  @override
  String get rateAction => 'Arvostele sovellus';

  @override
  String get rateLater => 'Ehkä myöhemmin';

  @override
  String get rateNever => 'Ei kiitos';

  @override
  String get rateThanks => 'Kiitos';

  @override
  String get monthlySalary => 'Kuukausipalkka';

  @override
  String get remainingAmount => 'Jäljellä';

  @override
  String get carriedForward => 'Siirretty edelliseltä jaksolta';

  @override
  String get carriedForwardHint => 'Edellisestä jaksosta jäljelle jäänyt';

  @override
  String get totalSpending => 'Menot yhteensä';

  @override
  String get salaryCycle => 'Palkkakausi';

  @override
  String get payday => 'Palkkapäivä';

  @override
  String get paydayDescription =>
      'Päivä, jolloin palkkasi saapuu. Talouskuukautesi alkaa tästä päivästä ja päättyy seuraavaa palkkapäivää edeltävään päivään.';

  @override
  String get paydayUpdated => 'Palkkapäivä päivitetty';

  @override
  String paydayDayOfMonth(int day) {
    return 'Päivä $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Lyhyempinä kuukausina jakso alkaa sen sijaan kuukauden viimeisenä päivänä.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää palkkapäivään',
      one: '1 päivä palkkapäivään',
      zero: 'Jakson viimeinen päivä',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Seuraava palkkapäivä';

  @override
  String get spentSoFar => 'Käytetty tähän mennessä';

  @override
  String get dailyAllowance => 'Turvallinen päivittäinen käyttövara';

  @override
  String get overspentNotice =>
      'Olet käyttänyt tällä jaksolla enemmän kuin olet saanut tuloja.';

  @override
  String get backToThisMonth => 'Takaisin tähän kuukauteen';

  @override
  String get cycleRangeLabel => 'Jakso';

  @override
  String get noSalaryRecorded => 'Palkkaa ei ole vielä kirjattu';

  @override
  String get addSalaryAction => 'Lisää palkkasi';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Erinomainen';

  @override
  String get healthGood => 'Hyvä';

  @override
  String get healthFair => 'Kohtalainen';

  @override
  String get healthNeedsWork => 'Vaatii työtä';

  @override
  String get healthExcellentBody =>
      'Säästät hyvin ja pysyt budjettiesi rajoissa.';

  @override
  String get healthGoodBody =>
      'Menosi ovat tällä jaksolla suunnitelman mukaiset.';

  @override
  String get healthFairBody =>
      'Muutama budjetti käy kuumana. Pienet muutokset auttavat.';

  @override
  String get healthNeedsWorkBody =>
      'Menot kasvavat suunnitelmaasi nopeammin. Aloita suurimmasta kategoriasta.';

  @override
  String get factorSavingsRate => 'Säästöaste';

  @override
  String get factorBudgetControl => 'Budjetin hallinta';

  @override
  String get factorDebtLoad => 'Velkataakka';

  @override
  String get factorSpendingTrend => 'Menojen kehitys';

  @override
  String factorKept(String percent) {
    return '$percent % pidetty';
  }

  @override
  String factorUsed(String percent) {
    return '$percent % käytetty';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent % tuloista';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Nousua $percent %';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Laskua $percent %';
  }

  @override
  String get howScoreWorks => 'Miten pisteet lasketaan';

  @override
  String get healthScoreExplainer =>
      'Pisteesi yhdistää neljä asiaa: kuinka paljon tuloistasi pidät, kuinka hyvin pysyt budjeteissasi, kuinka suuri osa tuloistasi menee velkoihin ja ovatko menosi kasvussa vai laskussa.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent % pisteistä';
  }

  @override
  String get viewHealthDetails => 'Näytä erittely';

  @override
  String get saveChanges => 'Tallenna muutokset';

  @override
  String get profileUpdated => 'Profiili päivitetty';

  @override
  String get changePhoto => 'Vaihda kuva';

  @override
  String get removePhoto => 'Poista kuva';

  @override
  String get personalInformationIntro =>
      'Nimesi ja kuvasi näkyvät eri puolilla sovellusta. Sähköpostiosoitteesi on osoite, jolla kirjaudut sisään.';

  @override
  String get emailNotEditable =>
      'Ota yhteyttä tukeen vaihtaaksesi kirjautumiseen käyttämääsi osoitetta.';

  @override
  String get pressBackAgainToExit => 'Paina takaisin uudelleen poistuaksesi';

  @override
  String get categoryHousing => 'Asuminen';

  @override
  String get categoryFood => 'Ruoka ja ravintolat';

  @override
  String get categoryTransport => 'Liikenne';

  @override
  String get categoryShopping => 'Ostokset';

  @override
  String get categoryBills => 'Laskut ja palvelut';

  @override
  String get categoryEntertainment => 'Viihde';

  @override
  String get categoryHealth => 'Terveys ja hyvinvointi';

  @override
  String get categoryEducation => 'Koulutus';

  @override
  String get categoryTravel => 'Matkailu';

  @override
  String get categorySalary => 'Palkka';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Sijoitukset';

  @override
  String get categoryGift => 'Lahja';

  @override
  String get categoryOther => 'Muut';

  @override
  String get categoryGroceries => 'Ruokaostokset';

  @override
  String get categoryDining => 'Ravintolat';

  @override
  String get categoryCoffee => 'Kahvi';

  @override
  String get categoryUtilities => 'Palvelumaksut';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Puhelin';

  @override
  String get categoryInsurance => 'Vakuutukset';

  @override
  String get categorySubscriptions => 'Tilaukset';

  @override
  String get categoryPersonalCare => 'Henkilökohtainen hoito';

  @override
  String get categoryClothing => 'Vaatteet';

  @override
  String get categoryElectronics => 'Elektroniikka';

  @override
  String get categoryHomeSupplies => 'Kodintarvikkeet';

  @override
  String get categoryPets => 'Lemmikit';

  @override
  String get categoryChildcare => 'Lastenhoito';

  @override
  String get categoryFamily => 'Perhe';

  @override
  String get categoryFitness => 'Kuntoilu';

  @override
  String get categorySports => 'Urheilu';

  @override
  String get categoryMedicine => 'Lääkkeet';

  @override
  String get categoryMedical => 'Terveydenhoito';

  @override
  String get categoryCharity => 'Hyväntekeväisyys';

  @override
  String get categoryTaxes => 'Verot';

  @override
  String get categoryFees => 'Maksut';

  @override
  String get categoryDebt => 'Velka';

  @override
  String get categorySavings => 'Säästöt';

  @override
  String get categoryRepairs => 'Korjaukset';

  @override
  String get categoryCarMaintenance => 'Auton huolto';

  @override
  String get categoryFuel => 'Polttoaine';

  @override
  String get categoryParking => 'Pysäköinti';

  @override
  String get categoryPublicTransport => 'Julkinen liikenne';

  @override
  String get categoryRent => 'Vuokra';

  @override
  String get categoryMortgage => 'Asuntolaina';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Provisio';

  @override
  String get categoryPension => 'Eläke';

  @override
  String get categoryInterest => 'Korkotuotot';

  @override
  String get categoryDividends => 'Osingot';

  @override
  String get categoryCashback => 'Käteispalautus';

  @override
  String get categoryRefund => 'Hyvitys';

  @override
  String get categoryRentalIncome => 'Vuokratulot';

  @override
  String get addCategory => 'Uusi kategoria';

  @override
  String get filterByCategory => 'Suodata kategorian mukaan';

  @override
  String get allCategories => 'Kaikki kategoriat';

  @override
  String get clearFilters => 'Tyhjennä suodattimet';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Kaikki ajat';

  @override
  String get customRange => 'Mukautettu';

  @override
  String get selectDateRange => 'Valitse ajanjakso';

  @override
  String rangeApplied(String start, String end) {
    return 'Näytetään $start – $end';
  }

  @override
  String get loans => 'Lainat';

  @override
  String get debts => 'Velat';

  @override
  String get noLoansTitle => 'Ei lainoja';

  @override
  String get noLoansBody => 'Sinulla ei ole aktiivisia lainoja.';

  @override
  String get emptyHealthTitle => 'Taloudellista pistemäärää ei vielä ole';

  @override
  String get emptyHealthDescription =>
      'Tarvitsemme hieman taloudellista aktiivisuutta ennen kuin voimme laskea tarkan hyvinvointipisteesi.';

  @override
  String get emptyHealthAddTransactions => 'Lisää tulo- tai menotapahtumia';

  @override
  String get emptyHealthSetBudgets => 'Määritä kuukausibudjettisi';

  @override
  String get emptyHealthTrackLoans =>
      'Seuraa lainoja tai velkoja (valinnainen)';

  @override
  String get emptyHealthCardSubtitle =>
      'Lisää tapahtumia laskeaksesi pisteesi ja saadaksesi oivalluksia.';

  @override
  String get smartBudgetSplit => 'Älykäs budjettijako';

  @override
  String get smartBudgetSplitSubtitle =>
      'Syötä kuukausipalkkasi laskeaksesi suositellut rajat';

  @override
  String get monthlyNetSalary => 'Kuukausittainen nettopalkka';

  @override
  String get categoryAllocations => 'Kategoriakohtaiset osuudet';

  @override
  String totalBudgeted(String amount) {
    return 'Yhteensä: $amount';
  }

  @override
  String get applyAllBudgets => 'Ota kaikki budjetit käyttöön';

  @override
  String get applyingBudgets => 'Budjetteja otetaan käyttöön...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kategoriabudjettia luotu.',
      one: '1 kategoriabudjetti luotu.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Budjettien tallennus epäonnistui.';

  @override
  String get recommendedBudget => 'Suositeltu budjetti';
}
