// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppL10nSr extends AppL10n {
  AppL10nSr([String locale = 'sr']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Штедња за кишне дане';

  @override
  String get navHome => 'Почетна';

  @override
  String get navTransactions => 'Трансакције';

  @override
  String get navAdd => 'Додај';

  @override
  String get navReports => 'Извештаји';

  @override
  String get navProfile => 'Профил';

  @override
  String greetingMorning(String name) {
    return 'Добро јутро, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Добар дан, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Добро вече, $name';
  }

  @override
  String get greetingSubtitle => 'Ево како стоје ваше финансије';

  @override
  String get totalBalance => 'Укупно стање';

  @override
  String get vsLastPeriod => 'у односу на претходни период';

  @override
  String get income => 'Приходи';

  @override
  String get expenses => 'Расходи';

  @override
  String get netBalance => 'Нето стање';

  @override
  String get lastThirtyDays => 'Последњих 30 дана';

  @override
  String get quickActions => 'Брзе радње';

  @override
  String get addIncome => 'Додај приход';

  @override
  String get addExpense => 'Додај расход';

  @override
  String get spendingOverview => 'Преглед потрошње';

  @override
  String get recentTransactions => 'Недавне трансакције';

  @override
  String get seeAll => 'Прикажи све';

  @override
  String get viewAll => 'Прикажи све';

  @override
  String get budgetProgress => 'Стање буџета';

  @override
  String get savingsGoals => 'Циљеви штедње';

  @override
  String get financialInsight => 'Финансијски увид';

  @override
  String get financialHealth => 'Финансијско здравље';

  @override
  String ofTotal(String total) {
    return 'од $total';
  }

  @override
  String get searchTransactions => 'Претражи трансакције';

  @override
  String get filterAll => 'Све';

  @override
  String get filterIncome => 'Приходи';

  @override
  String get filterExpenses => 'Расходи';

  @override
  String get today => 'Данас';

  @override
  String get yesterday => 'Јуче';

  @override
  String get noTransactionsTitle => 'Није пронађена ниједна трансакција';

  @override
  String get noTransactionsBody =>
      'Пробајте другу претрагу или филтер да бисте видели више ставки.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count трансакција',
      few: '$count трансакције',
      one: '$count трансакција',
      zero: 'Нема трансакција',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Додај трансакцију';

  @override
  String get amount => 'Износ';

  @override
  String get category => 'Категорија';

  @override
  String get date => 'Датум';

  @override
  String get note => 'Белешка';

  @override
  String get noteHint => 'Белешка (необавезно)';

  @override
  String get saveIncome => 'Сачувај приход';

  @override
  String get saveExpense => 'Сачувај расход';

  @override
  String get selectCategory => 'Изаберите категорију';

  @override
  String get transactionSaved => 'Трансакција је сачувана';

  @override
  String get amountRequired => 'Унесите износ већи од нуле';

  @override
  String get titleRequired => 'Дајте назив овој трансакцији';

  @override
  String get descriptionLabel => 'Опис';

  @override
  String get descriptionHint => 'нпр. намирнице';

  @override
  String get budget => 'Буџет';

  @override
  String get budgets => 'Буџети';

  @override
  String get totalBudget => 'Укупан буџет';

  @override
  String get spent => 'Потрошено';

  @override
  String get remaining => 'Преостало';

  @override
  String budgetUsed(int percent) {
    return 'искоришћено $percent%';
  }

  @override
  String get onTrack => 'По плану';

  @override
  String get approachingLimit => 'Близу лимита';

  @override
  String get overBudget => 'Преко буџета';

  @override
  String get savings => 'Штедња';

  @override
  String get yourGoals => 'Ваши циљеви';

  @override
  String get saved => 'Уштеђено';

  @override
  String get target => 'Циљ';

  @override
  String get monthlyContribution => 'Месечно';

  @override
  String get addFunds => 'Уплати средства';

  @override
  String get goalComplete => 'Циљ је остварен';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'још $count месеци',
      few: 'још $count месеца',
      one: 'још $count месец',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Кредити и дугови';

  @override
  String get totalOutstanding => 'Укупно неизмирено';

  @override
  String get monthlyPayment => 'Месечна рата';

  @override
  String get nextPayment => 'Следећа уплата';

  @override
  String paidOff(int percent) {
    return 'отплаћено $percent%';
  }

  @override
  String get interestRate => 'Каматна стопа';

  @override
  String get upcomingPayments => 'Предстојеће уплате';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'За $count дана',
      few: 'За $count дана',
      one: 'За $count дан',
      zero: 'Доспева данас',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'У доцњи';

  @override
  String get reports => 'Извештаји';

  @override
  String get week => 'Недеља';

  @override
  String get month => 'Месец';

  @override
  String get quarter => 'Квартал';

  @override
  String get incomeVsExpenses => 'Приходи и расходи';

  @override
  String get spendingByCategory => 'Потрошња по категоријама';

  @override
  String get budgetPerformance => 'Испуњење буџета';

  @override
  String get insights => 'Увиди';

  @override
  String get savingsRate => 'Стопа штедње';

  @override
  String get profile => 'Профил';

  @override
  String get account => 'Налог';

  @override
  String get personalInformation => 'Лични подаци';

  @override
  String get changePassword => 'Промени лозинку';

  @override
  String get notifications => 'Обавештења';

  @override
  String get preferences => 'Подешавања';

  @override
  String get language => 'Језик';

  @override
  String get currency => 'Валута';

  @override
  String get theme => 'Тема';

  @override
  String get security => 'Безбедност';

  @override
  String get privacyAndSecurity => 'Приватност и безбедност';

  @override
  String get help => 'Помоћ';

  @override
  String get helpAndSupport => 'Помоћ и подршка';

  @override
  String get termsAndConditions => 'Услови коришћења';

  @override
  String get logOut => 'Одјави се';

  @override
  String memberSince(String date) {
    return 'Члан од $date';
  }

  @override
  String get themeSystem => 'Као на систему';

  @override
  String get themeLight => 'Светла';

  @override
  String get themeDark => 'Тамна';

  @override
  String get settings => 'Подешавања';

  @override
  String get noNotificationsTitle => 'Све сте испратили';

  @override
  String get noNotificationsBody => 'Нови увиди и подсетници појавиће се овде.';

  @override
  String get cancel => 'Откажи';

  @override
  String get save => 'Сачувај';

  @override
  String get done => 'Готово';

  @override
  String get retry => 'Покушај поново';

  @override
  String get close => 'Затвори';

  @override
  String get somethingWentWrong => 'Нешто није у реду';

  @override
  String get comingSoon => 'Стиже у пуној верзији';

  @override
  String get edit => 'Измени';

  @override
  String get delete => 'Обриши';

  @override
  String get undo => 'Опозови';

  @override
  String get add => 'Додај';

  @override
  String get create => 'Направи';

  @override
  String get nameRequired => 'Унесите назив';

  @override
  String get amountAboveZero => 'Унесите износ већи од нуле';

  @override
  String get editTransaction => 'Измени трансакцију';

  @override
  String get deleteTransaction => 'Обрисати ову трансакцију?';

  @override
  String deleteTransactionBody(String title) {
    return '$title ће нестати из ваше евиденције.';
  }

  @override
  String get transactionDeleted => 'Трансакција је обрисана';

  @override
  String get transactionUpdated => 'Трансакција је измењена';

  @override
  String get newBudget => 'Нови буџет';

  @override
  String get editBudget => 'Измени буџет';

  @override
  String get budgetLimit => 'Месечни лимит';

  @override
  String get deleteBudget => 'Обрисати овај буџет?';

  @override
  String deleteBudgetBody(String category) {
    return 'Буџет за категорију $category биће уклоњен. Ваше трансакције остају нетакнуте.';
  }

  @override
  String get budgetSaved => 'Буџет је сачуван';

  @override
  String get budgetDeleted => 'Буџет је обрисан';

  @override
  String get allCategoriesBudgeted => 'Све категорије већ имају буџет';

  @override
  String get noBudgetsTitle => 'Још нема буџета';

  @override
  String get noBudgetsBody =>
      'Поставите месечни лимит за неку категорију и почећемо да га пратимо.';

  @override
  String get newGoal => 'Нови циљ';

  @override
  String get editGoal => 'Измени циљ';

  @override
  String get goalName => 'Назив циља';

  @override
  String get goalNameHint => 'нпр. резерва за хитне случајеве';

  @override
  String get targetAmount => 'Циљани износ';

  @override
  String get alreadySaved => 'Већ уштеђено';

  @override
  String get deleteGoal => 'Обрисати овај циљ?';

  @override
  String deleteGoalBody(String name) {
    return '$name и напредак ка њему биће уклоњени.';
  }

  @override
  String get goalSaved => 'Циљ је сачуван';

  @override
  String get goalDeleted => 'Циљ је обрисан';

  @override
  String get noGoalsTitle => 'Још нема циљева штедње';

  @override
  String get noGoalsBody =>
      'Поставите циљ и RainyPenny ће пратити ваш напредак.';

  @override
  String get fundsAdded => 'Средства су уплаћена';

  @override
  String get newDebt => 'Нови кредит или картица';

  @override
  String get editDebt => 'Измени кредит';

  @override
  String get debtName => 'Назив';

  @override
  String get debtNameHint => 'нпр. кредит за аутомобил';

  @override
  String get lender => 'Зајмодавац';

  @override
  String get lenderHint => 'нпр. Комерцијална банка';

  @override
  String get originalAmount => 'Првобитни износ';

  @override
  String get creditLimit => 'Кредитни лимит';

  @override
  String get remainingBalance => 'Преостали дуг';

  @override
  String get interestRatePercent => 'Каматна стопа (%)';

  @override
  String get kindLoan => 'Кредит';

  @override
  String get kindCreditCard => 'Кредитна картица';

  @override
  String get recordPayment => 'Забележи уплату';

  @override
  String get paymentRecorded => 'Уплата је забележена';

  @override
  String get deleteDebt => 'Обрисати овај дуг?';

  @override
  String deleteDebtBody(String name) {
    return '$name ће нестати из ваших дугова.';
  }

  @override
  String get debtSaved => 'Сачувано';

  @override
  String get debtDeleted => 'Обрисано';

  @override
  String get noDebtsTitle => 'Нема праћених дугова';

  @override
  String get noDebtsBody =>
      'Додајте кредит или кредитну картицу да бисте пратили отплату.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Буџет за $subject је премашен';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Премашили сте буџет за $subject за $amount у овом периоду.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject се ближи лимиту';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Буџет за $subject искоришћен је $percent%, преостало је $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Расходи премашују приходе';

  @override
  String get insightOverIncomeBody =>
      'У овом периоду потрошили сте више него што сте зарадили. Прегледајте највеће категорије да бисте поново успоставили равнотежу.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Потрошња на $subject расте';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Потрошили сте $percent% више на $subject него у претходном периоду.';
  }

  @override
  String get insightTrendDownTitle => 'Потрошња опада';

  @override
  String insightTrendDownBody(int percent) {
    return 'Укупна потрошња је $percent% нижа него у претходном периоду.';
  }

  @override
  String get insightTrendUpTitle => 'Потрошња расте';

  @override
  String insightTrendUpBody(int percent) {
    return 'Укупна потрошња је $percent% виша него у претходном периоду.';
  }

  @override
  String get insightSavingsStrongTitle => 'Одлична штедња у овом периоду';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Задржали сте $percent% прихода — знатно изнад циља од $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Стопа штедње је испод циља';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'У овом периоду задржали сте $percent% прихода. Циљајте на $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject је скоро остварен';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Још само $amount до циља $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject иде по плану';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months месеци',
      few: '$months месеца',
      one: '$months месец',
    );
    return 'Уз $amount месечно, циљ ћете достићи за $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Уплата за $subject касни';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дана',
      few: '$days дана',
      one: '$days дан',
    );
    return 'Уплата од $amount за $subject касни $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Уплата за $subject се ближи';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'за $days дана',
      few: 'за $days дана',
      one: 'за $days дан',
      zero: 'данас',
    );
    return '$amount доспева $_temp0.';
  }

  @override
  String get signIn => 'Пријави се';

  @override
  String get signUp => 'Направи налог';

  @override
  String get signInSubtitle => 'Добро дошли назад. Ваш новац вас чека.';

  @override
  String get signUpSubtitle => 'Неколико података и спремни сте.';

  @override
  String get emailLabel => 'Имејл';

  @override
  String get emailHint => 'vi@email.com';

  @override
  String get passwordLabel => 'Лозинка';

  @override
  String get passwordHint => 'Најмање 8 знакова';

  @override
  String get fullNameLabel => 'Име и презиме';

  @override
  String get fullNameHint => 'Ана Јовановић';

  @override
  String get forgotPassword => 'Заборавили сте лозинку?';

  @override
  String get resetSent => 'Проверите пошту, послали смо везу за ресетовање';

  @override
  String get noAccountYet => 'Први пут сте овде?';

  @override
  String get haveAccount => 'Већ имате налог?';

  @override
  String get emailInvalid => 'Унесите исправну имејл адресу';

  @override
  String get passwordTooShort => 'Употребите најмање 8 знакова';

  @override
  String get signOutConfirm => 'Одјавити се?';

  @override
  String get signOutBody =>
      'Мораћете поново да се пријавите да бисте видели своје финансије.';

  @override
  String get dataSource => 'Извор података';

  @override
  String get insightWeeklySummaryTitle => 'Ваша недеља укратко';

  @override
  String get insightWeeklySummaryBody =>
      'Погледајте где је новац отишао ове недеље и како стоје ваши буџети.';

  @override
  String get notificationSettings => 'Обавештења';

  @override
  String get alertsSection => 'Упозорења';

  @override
  String get budgetAlerts => 'Упозорења о буџету';

  @override
  String get budgetAlertsBody => 'Када се буџет приближи лимиту или га пређе';

  @override
  String get paymentReminders => 'Подсетници за уплате';

  @override
  String get paymentRemindersBody => 'Неколико дана пре доспећа уплате';

  @override
  String get savingsUpdates => 'Новости о штедњи';

  @override
  String get savingsUpdatesBody => 'Напредак ка вашим циљевима';

  @override
  String get weeklySummaryLabel => 'Недељни преглед';

  @override
  String get weeklySummaryBody => 'Сажетак протекле недеље';

  @override
  String get scheduleSection => 'Распоред';

  @override
  String get reminderTime => 'Време подсетника';

  @override
  String get quietHours => 'Тихи сати';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Дан прегледа';

  @override
  String get permissionRequired => 'Обавештења су искључена';

  @override
  String get permissionRequiredBody =>
      'Дозволите обавештења да би вас RainyPenny упозорио пре него што буџет или уплата измакну контроли.';

  @override
  String get allowNotifications => 'Дозволи обавештења';

  @override
  String get permissionDenied =>
      'Обавештења су блокирана. Можете их укључити у подешавањима уређаја.';

  @override
  String get upcomingAlerts => 'Заказано';

  @override
  String get noScheduledAlerts => 'Тренутно ништа није заказано';

  @override
  String get noScheduledAlertsBody =>
      'Упозорења ће се појавити овде када се ваши буџети и уплате приближе лимитима.';

  @override
  String scheduledFor(String date) {
    return 'Заказано за $date';
  }

  @override
  String get everyWeek => 'Сваке недеље';

  @override
  String get allNotificationsOff => 'Сва обавештења су искључена';

  @override
  String get needsAttention => 'Захтева пажњу';

  @override
  String get quickActionsTitle => 'Шта желите да урадите?';

  @override
  String get createSection => 'Забележи';

  @override
  String get jumpToSection => 'Иди на';

  @override
  String get addLoanAction => 'Додај кредит';

  @override
  String get addBudgetAction => 'Додај буџет';

  @override
  String get addGoalAction => 'Додај циљ';

  @override
  String get longPressHint =>
      'Савет: држите + да бисте одмах забележили расход';

  @override
  String get searchCurrencies => 'Претражи валуте';

  @override
  String get noCurrenciesFound => 'Није пронађена ниједна валута';

  @override
  String get noCurrenciesFoundMessage =>
      'Пробајте другу ознаку, симбол или назив.';

  @override
  String get popularCurrencies => 'Уобичајене';

  @override
  String get allCurrencies => 'Све валуте';

  @override
  String get totalLoanAmount => 'Укупан износ кредита';

  @override
  String get installmentAmount => 'Износ рате';

  @override
  String get numberOfInstallments => 'Број рата';

  @override
  String get paidInstallments => 'Плаћене рате';

  @override
  String get remainingInstallments => 'Преостале рате';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'плаћено $paid од $total';
  }

  @override
  String get finalPayment => 'Последња рата';

  @override
  String get paymentDueDate => 'Датум доспећа';

  @override
  String dueOnDayOfMonth(int day) {
    return '$day. у месецу';
  }

  @override
  String get loanStatus => 'Статус';

  @override
  String get statusActive => 'По плану';

  @override
  String get statusDueSoon => 'Ускоро доспева';

  @override
  String get statusOverdue => 'У доцњи';

  @override
  String get statusCompleted => 'Отплаћено';

  @override
  String get repaymentProgress => 'Ток отплате';

  @override
  String get byAmount => 'По износу';

  @override
  String get byInstallments => 'По ратама';

  @override
  String get startDate => 'Датум почетка';

  @override
  String get openEnded => 'Без рока';

  @override
  String get loanDetails => 'О кредиту';

  @override
  String get notSet => 'Није постављено';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject доспева данас';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Уплата од $amount доспева данас. Један додир и стигла је на време.';
  }

  @override
  String get remindMorningTitle => 'Добро јутро ☀️';

  @override
  String get remindMorningBody =>
      'Почните дан са јасном сликом финансија. Има ли нешто од јуче да додате?';

  @override
  String get remindNoonTitle => 'Подневна провера';

  @override
  String get remindNoonBody =>
      'Ручак, кафа, карта за превоз? Бележење траје неколико секунди.';

  @override
  String get remindAfternoonTitle => 'Брза допуна';

  @override
  String get remindAfternoonBody =>
      'Забележите шта сте до сада потрошили и данашњи бројеви ће се слагати.';

  @override
  String get remindEveningTitle => 'Да заокружимо дан';

  @override
  String get remindEveningBody =>
      'Два минута сада и данашња евиденција је потпуна.';

  @override
  String get happyWeekendTitle => 'Пријатан викенд! 🎉';

  @override
  String get happyWeekendBody => 'Уживајте — и држите на оку викенд потрошњу.';

  @override
  String get dailyReminders => 'Дневни подсетници за расходе';

  @override
  String get dailyRemindersBody =>
      'Пријатељски подстицаји да расходи буду ажурни';

  @override
  String get weekendGreeting => 'Викенд поздрав';

  @override
  String get weekendGreetingBody => 'Срдачан поздрав на почетку викенда';

  @override
  String get reminderTimesSection => 'Време подсетника';

  @override
  String get slotMorning => 'Јутро';

  @override
  String get slotNoon => 'Подне';

  @override
  String get slotAfternoon => 'Поподне';

  @override
  String get slotEvening => 'Вече';

  @override
  String get everyDay => 'Сваког дана';

  @override
  String get financialReport => 'Финансијски извештај';

  @override
  String get preparedFor => 'Припремљено за';

  @override
  String get generatedOn => 'Направљено';

  @override
  String get reportDisclaimer =>
      'Направио RainyPenny на основу ваше сопствене евиденције.';

  @override
  String pageOf(int page, int total) {
    return 'Страна $page од $total';
  }

  @override
  String get overview => 'Преглед';

  @override
  String get description => 'Опис';

  @override
  String get totalIncome => 'Укупни приходи';

  @override
  String get totalExpenses => 'Укупни расходи';

  @override
  String get totalSaved => 'Укупно уштеђено';

  @override
  String get shareOfTotal => 'Удео';

  @override
  String get used => 'Искоришћено';

  @override
  String get goal => 'Циљ';

  @override
  String get targetDate => 'Циљани датум';

  @override
  String get progress => 'Напредак';

  @override
  String get paidOffShort => 'Плаћено';

  @override
  String get transactions => 'Трансакције';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'и још $count трансакција',
      few: 'и још $count трансакције',
      one: 'и још $count трансакција',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Извези PDF';

  @override
  String get sharePdf => 'Подели извештај';

  @override
  String get preparingReport => 'Припремамо ваш извештај…';

  @override
  String get reportReady => 'Извештај је спреман';

  @override
  String get reportFailed => 'Није успело прављење извештаја';

  @override
  String get categories => 'Категорије';

  @override
  String get categoriesIntro =>
      'Додајте сопствене категорије да би приходи и расходи били распоређени тачно онако како ви о њима размишљате.';

  @override
  String get expenseCategories => 'Категорије расхода';

  @override
  String get incomeCategories => 'Категорије прихода';

  @override
  String get newCategory => 'Нова категорија';

  @override
  String get editCategory => 'Измени категорију';

  @override
  String get categoryName => 'Назив';

  @override
  String get categoryNameHint => 'нпр. кућни љубимци';

  @override
  String get icon => 'Икона';

  @override
  String get categorySaved => 'Категорија је сачувана';

  @override
  String get categoryDeleted => 'Категорија је обрисана';

  @override
  String get deleteCategory => 'Обрисати ову категорију?';

  @override
  String deleteCategoryBody(String name) {
    return '$name ће нестати из ваших категорија.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ставки још увек користи ову категорију',
      few: '$count ставке још увек користе ову категорију',
      one: '$count ставка још увек користи ову категорију',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Овде још нема ничега.';

  @override
  String get builtIn => 'Уграђена';

  @override
  String get manageCategories => 'Управљај категоријама';

  @override
  String get expense => 'Расход';

  @override
  String get languageNote =>
      'Арапски, урду, персијски и хебрејски окрећу цео интерфејс здесна налево, укључујући графиконе и PDF извештаје.';

  @override
  String get next => 'Даље';

  @override
  String get back => 'Назад';

  @override
  String get skip => 'Прескочи';

  @override
  String get continueLabel => 'Настави';

  @override
  String get selected => 'Изабрано';

  @override
  String get passwordRequired => 'Унесите лозинку';

  @override
  String get newPasswordLabel => 'Нова лозинка';

  @override
  String get confirmPasswordLabel => 'Потврдите лозинку';

  @override
  String get passwordsDoNotMatch => 'Обе лозинке морају бити исте';

  @override
  String get showPassword => 'Прикажи лозинку';

  @override
  String get hidePassword => 'Сакриј лозинку';

  @override
  String get savePassword => 'Сачувај лозинку';

  @override
  String get backToSignIn => 'Назад на пријаву';

  @override
  String get alreadyHaveAccount => 'Већ имам налог';

  @override
  String get getStarted => 'Хајде да почнемо';

  @override
  String get acceptTerms => 'Прихватам услове коришћења и политику приватности';

  @override
  String get acceptTermsRequired => 'Прихватите да бисте наставили';

  @override
  String get passwordStrengthTooShort => 'Прекратка';

  @override
  String get passwordStrengthWeak => 'Слаба';

  @override
  String get passwordStrengthFair => 'Осредња';

  @override
  String get passwordStrengthGood => 'Добра';

  @override
  String get passwordStrengthStrong => 'Јака';

  @override
  String get passwordAdvice =>
      'Дуга фраза коју памтите боља је од кратке лозинке пуне знакова. Избегавајте оно што већ користите негде другде.';

  @override
  String get authInvalidCredentials =>
      'Тај имејл и лозинка не одговарају ниједном налогу';

  @override
  String get authEmailNotConfirmed =>
      'Потврдите своју имејл адресу пре пријаве';

  @override
  String get authEmailAlreadyRegistered =>
      'Налог са овом имејл адресом већ постоји';

  @override
  String get authWeakPassword => 'Изаберите дужу лозинку';

  @override
  String get authRateLimited =>
      'Превише покушаја. Пробајте поново за неколико минута';

  @override
  String get authNetworkError =>
      'Нема везе. Проверите мрежу и покушајте поново';

  @override
  String get authGenericError => 'Нешто није у реду. Покушајте поново';

  @override
  String get confirmEmailTitle => 'Проверите пошту';

  @override
  String confirmEmailBody(String email) {
    return 'Послали смо везу за потврду на $email. Отворите је да бисте довршили налог.';
  }

  @override
  String get resendConfirmation => 'Пошаљи потврду поново';

  @override
  String get confirmationResent => 'Имејл за потврду је послат';

  @override
  String get forgotPasswordTitle => 'Ресетујте лозинку';

  @override
  String get forgotPasswordSubtitle =>
      'Унесите имејл адресу са којом сте се регистровали и послаћемо вам везу за постављање нове лозинке.';

  @override
  String get sendResetLink => 'Пошаљи везу';

  @override
  String get resetLinkSentTitle => 'Веза је послата';

  @override
  String resetLinkSentBody(String email) {
    return 'Ако $email има налог, веза за ресетовање је на путу.';
  }

  @override
  String get resetLinkSentHint =>
      'Веза истиче за сат времена. Ако не стигне, проверите нежељену пошту пре него што затражите нову.';

  @override
  String get tryAnotherEmail => 'Употреби другу адресу';

  @override
  String get resetPasswordTitle => 'Изаберите нову лозинку';

  @override
  String get resetPasswordSubtitle =>
      'Изаберите нешто што раније нисте користили на овом налогу.';

  @override
  String get passwordChangedTitle => 'Лозинка је измењена';

  @override
  String get passwordChangedBody =>
      'Ваша нова лозинка је сачувана. Пријављени сте и све је спремно.';

  @override
  String get demoModeHint => 'Демо верзија — налог није потребан';

  @override
  String get demoModeFill => 'Попуни';

  @override
  String get welcomeTrackTitle => 'Видите где вам новац одлази';

  @override
  String get welcomeTrackBody =>
      'Бележите шта улази и шта излази. RainyPenny то претвара у слику коју заиста можете да прочитате.';

  @override
  String get welcomeBudgetTitle => 'Лимити који држе';

  @override
  String get welcomeBudgetBody =>
      'Дајте сваком делу потрошње месечни лимит и сазнајте пре него што га пређете, а не после.';

  @override
  String get welcomeGoalsTitle => 'Штедите за оно што вам је важно';

  @override
  String get welcomeGoalsBody =>
      'Дајте циљу име, поставите износ и гледајте како се пуни. Резерву је лакше градити када је видите.';

  @override
  String get welcomePrivacyTitle => 'Ваш новац остаје ваш';

  @override
  String get welcomePrivacyBody =>
      'Ваши бројеви припадају само вама. Ништа се не продаје и ни са ким не дели.';

  @override
  String stepOf(int step, int total) {
    return 'Корак $step од $total';
  }

  @override
  String get onboardingNameTitle => 'Како да вас зовемо?';

  @override
  String get onboardingNameBody =>
      'Користимо то само за поздрав, нигде другде.';

  @override
  String get onboardingNameHint =>
      'Само име је сасвим довољно. Можете га променити касније.';

  @override
  String get onboardingCurrencyTitle => 'Коју валуту користите?';

  @override
  String get onboardingCurrencyBody =>
      'Сви износи у апликацији приказују се у овој валути. Њен избор ништа не прерачунава.';

  @override
  String get onboardingCurrencySearch => 'Претражите све валуте';

  @override
  String get onboardingAppearanceTitle => 'Нека буде ваша';

  @override
  String get onboardingAppearanceBody =>
      'Изаберите изглед. Све се мења док додирујете, а можете се вратити кад год пожелите.';

  @override
  String get onboardingNotificationsTitle => 'Останите у току';

  @override
  String get onboardingNotificationsBody =>
      'Тих подстицај у правом тренутку је оно што од овога прави навику.';

  @override
  String get onboardingNotifyReminders =>
      'Пријатељски подсетник да забележите шта сте потрошили';

  @override
  String get onboardingNotifyBudget => 'Најава пре него што буџет истекне';

  @override
  String get onboardingNotifySummary => 'Недељни преглед где је новац отишао';

  @override
  String get onboardingNotifyEnable => 'Укључи обавештења';

  @override
  String get onboardingNotifyDone => 'Подешавања обавештења су сачувана';

  @override
  String get onboardingNotifyLater =>
      'Све ово можете променити у Подешавањима кад год пожелите.';

  @override
  String get onboardingReadyTitle => 'Све је спремно';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Све је спремно, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Подешавања су готова. Желите ли кратак обилазак свега што апликација ради?';

  @override
  String get onboardingTakeTour => 'Покажите ми';

  @override
  String get onboardingGoToApp => 'Води ме у апликацију';

  @override
  String get onboardingTourLater =>
      'Не сада? Водич остаје у Подешавањима, кад год вам затреба.';

  @override
  String get beginnersGuide => 'Водич за почетнике';

  @override
  String get guideFinish => 'Заврши';

  @override
  String chapterOf(int number, int total) {
    return 'Поглавље $number од $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Отвори $screen';
  }

  @override
  String get guideDashboardTitle => 'Ваш почетни екран';

  @override
  String get guideDashboardBody =>
      'Све почиње овде. Картица на врху показује шта вам је преостало; испод ње шта је ушло и изашло у овом периоду, а затим ваша потрошња, буџети и циљеви.';

  @override
  String get guideDashboardTip1 =>
      'Повуците екран надоле да бисте све освежили одједном.';

  @override
  String get guideDashboardTip2 =>
      'Додирните картицу прихода или расхода да бисте отишли право на ту листу.';

  @override
  String get guideDashboardTip3 =>
      'Прстенови и увиди се ажурирају оног тренутка када нешто забележите.';

  @override
  String get guideAddTitle => 'Бележење новца';

  @override
  String get guideAddBody =>
      'Дугме на средини траке је место где све почиње. Отвара кратак мени: расход, приход, дуг, буџет или циљ штедње.';

  @override
  String get guideAddTip1 =>
      'Додирните средње дугме да бисте забележили новац који улази или излази.';

  @override
  String get guideAddTip2 =>
      'Држите га да бисте отишли право на нови расход и прескочили мени.';

  @override
  String get guideAddTip3 =>
      'Увек изаберите категорију — она је оно што покреће графиконе и буџете.';

  @override
  String get guideCategoriesTitle => 'Категорије';

  @override
  String get guideCategoriesBody =>
      'Категорије су начин на који се потрошња групише. Оне које долазе са апликацијом покривају већину случајева, а можете их преименовати или додати своје.';

  @override
  String get guideCategoriesTip1 =>
      'Подешавања, па Управљај категоријама да бисте мењали или додавали.';

  @override
  String get guideCategoriesTip2 =>
      'Све без категорије иде под „Остало“, да би графикони остали поштени.';

  @override
  String get guideBudgetTitle => 'Буџети';

  @override
  String get guideBudgetBody =>
      'Буџет је месечни лимит за једну категорију. Трака се пуни како трошите и мења боју како се приближава, тако да сазнате пре него што пређете.';

  @override
  String get guideBudgetTip1 =>
      'Почните са две или три категорије, не са свима одједном.';

  @override
  String get guideBudgetTip2 =>
      'Поставите лимит мало изнад онога што обично потрошите, па га постепено стежите.';

  @override
  String get guideBudgetTip3 =>
      'Оставите упозорења о буџету укључена и апликација ће вам јавити када се буџет ближи крају.';

  @override
  String get guideSavingsTitle => 'Циљеви штедње';

  @override
  String get guideSavingsBody =>
      'Дајте име ономе за шта штедите, поставите износ и датум, а апликација ће израчунати колико месечно треба да одвојите.';

  @override
  String get guideSavingsTip1 =>
      'Циљ са именом лакше се одржава од нејасне намере да се штеди.';

  @override
  String get guideSavingsTip2 =>
      'Неколико малих циљева чешће се заврши него један велики.';

  @override
  String get guideLoansTitle => 'Дугови и кредити';

  @override
  String get guideLoansBody =>
      'Забележите шта дугујете, колико вас то кошта и када доспева следећа уплата. Све што отплатите остаје на листи заједно са оним што је преостало.';

  @override
  String get guideLoansTip1 =>
      'Унесите датум доспећа и подсетници за уплате ће водити рачуна о њему уместо вас.';

  @override
  String get guideLoansTip2 =>
      'Дуг у доцњи светли црвено на почетном екрану док не буде плаћен.';

  @override
  String get guideReportsTitle => 'Извештаји';

  @override
  String get guideReportsBody =>
      'Дубља слика: приходи наспрам расхода, потрошња по категоријама, како су се буџети држали и колики део прихода сте задржали.';

  @override
  String get guideReportsTip1 =>
      'Пребацујте између недеље, месеца и квартала на врху екрана.';

  @override
  String get guideReportsTip2 =>
      'Извезите или поделите PDF — излази на вашем језику и у његовом смеру читања.';

  @override
  String get guideSettingsTitle => 'Подешавања';

  @override
  String get guideSettingsBody =>
      'Језик, валута, боје и упозорења су сви овде, и ништа од тога није закључано првим избором — мењајте шта желите, кад желите.';

  @override
  String get guideSettingsTip1 =>
      'Четрдесет језика, а цео распоред се пресликава за оне који се читају здесна налево.';

  @override
  String get guideSettingsTip2 =>
      'Изаберите која упозорења желите и у ком сату смеју да стигну.';

  @override
  String get guideSettingsTip3 => 'Тихи сати задржавају све до јутра.';

  @override
  String get guideHabitTitle => 'Како да се одржи';

  @override
  String get guideHabitBody =>
      'Апликација вреди онолико колико у њу унесете. Минут дневно вреди више од сата месечно, а после две недеље бројеви почињу нешто да говоре.';

  @override
  String get guideHabitTip1 =>
      'Бележите расходе када се догоде, а не на крају недеље.';

  @override
  String get guideHabitTip2 =>
      'Баците поглед на почетни екран једном дневно. Десет секунди је довољно.';

  @override
  String get guideHabitTip3 =>
      'Овај водич остаје у Подешавањима — вратите се кад год пожелите.';

  @override
  String get appearance => 'Изглед';

  @override
  String get themeCaption => 'Светла, тамна или онако како ради телефон.';

  @override
  String get accentColor => 'Истицајна боја';

  @override
  String get accentColorCaption => 'Боји дугмад, изборе и графиконе.';

  @override
  String get accentSemanticsNote =>
      'Новац који улази и новац који излази задржавају своје боје у свакој теми, тако да број никада не промени значење зато што сте променили истицајну боју.';

  @override
  String get accentTeal => 'Тиркизна';

  @override
  String get accentGreen => 'Зелена';

  @override
  String get accentSky => 'Небеска';

  @override
  String get accentBlue => 'Плава';

  @override
  String get accentIndigo => 'Индиго';

  @override
  String get accentViolet => 'Љубичаста';

  @override
  String get accentPink => 'Розе';

  @override
  String get accentCrimson => 'Гримизна';

  @override
  String get accentOrange => 'Наранџаста';

  @override
  String get accentSlate => 'Шкриљаста';

  @override
  String get searchLanguages => 'Претражи језике';

  @override
  String get suggestedLanguages => 'Предложени';

  @override
  String get allLanguages => 'Сви језици';

  @override
  String get noLanguagesFound => 'Није пронађен ниједан језик';

  @override
  String get noLanguagesFoundMessage =>
      'Пробајте назив на енглеском или ознаку од два слова.';

  @override
  String get rightToLeft => 'Здесна налево';

  @override
  String get replayGuide => 'Погледај водич поново';

  @override
  String get replaySetup => 'Понови подешавање';

  @override
  String get replaySetupBody =>
      'Прођите поново кроз почетна питања. Ништа од онога што сте забележили неће бити обрисано.';

  @override
  String get rateTitle => 'Свиђа вам се RainyPenny?';

  @override
  String get rateBody =>
      'Већ неко време сте уз њега. Оцењивање траје тренутак и помаже другима да пронађу апликацију.';

  @override
  String get rateAction => 'Оцени апликацију';

  @override
  String get rateLater => 'Можда касније';

  @override
  String get rateNever => 'Не, хвала';

  @override
  String get rateThanks => 'Хвала вам';

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
