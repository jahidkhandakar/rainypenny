// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppL10nUk extends AppL10n {
  AppL10nUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Відкладайте на чорний день';

  @override
  String get navHome => 'Головна';

  @override
  String get navTransactions => 'Операції';

  @override
  String get navAdd => 'Додати';

  @override
  String get navReports => 'Звіти';

  @override
  String get navProfile => 'Профіль';

  @override
  String greetingMorning(String name) {
    return 'Доброго ранку, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Доброго дня, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Доброго вечора, $name';
  }

  @override
  String get greetingSubtitle => 'Ось ваша фінансова картина';

  @override
  String get totalBalance => 'Загальний баланс';

  @override
  String get vsLastPeriod => 'щодо попереднього періоду';

  @override
  String get income => 'Доходи';

  @override
  String get expenses => 'Витрати';

  @override
  String get netBalance => 'Чистий підсумок';

  @override
  String get lastThirtyDays => 'Останні 30 днів';

  @override
  String get quickActions => 'Швидкі дії';

  @override
  String get addIncome => 'Додати дохід';

  @override
  String get addExpense => 'Додати витрату';

  @override
  String get spendingOverview => 'Огляд витрат';

  @override
  String get recentTransactions => 'Останні операції';

  @override
  String get seeAll => 'Дивитися всі';

  @override
  String get viewAll => 'Показати всі';

  @override
  String get budgetProgress => 'Виконання бюджетів';

  @override
  String get savingsGoals => 'Цілі накопичень';

  @override
  String get financialInsight => 'Спостереження';

  @override
  String get financialHealth => 'Фінансове здоров’я';

  @override
  String ofTotal(String total) {
    return 'із $total';
  }

  @override
  String get searchTransactions => 'Пошук операцій';

  @override
  String get filterAll => 'Усі';

  @override
  String get filterIncome => 'Доходи';

  @override
  String get filterExpenses => 'Витрати';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'Учора';

  @override
  String get noTransactionsTitle => 'Операцій не знайдено';

  @override
  String get noTransactionsBody =>
      'Спробуйте інший запит або фільтр, щоб побачити більше записів.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count операції',
      many: '$count операцій',
      few: '$count операції',
      one: '$count операція',
      zero: 'Немає операцій',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Додати операцію';

  @override
  String get amount => 'Сума';

  @override
  String get category => 'Категорія';

  @override
  String get date => 'Дата';

  @override
  String get note => 'Нотатка';

  @override
  String get noteHint => 'Нотатка (необов’язково)';

  @override
  String get saveIncome => 'Зберегти дохід';

  @override
  String get saveExpense => 'Зберегти витрату';

  @override
  String get selectCategory => 'Оберіть категорію';

  @override
  String get transactionSaved => 'Операцію збережено';

  @override
  String get amountRequired => 'Введіть суму більшу за нуль';

  @override
  String get titleRequired => 'Дайте цій операції назву';

  @override
  String get descriptionLabel => 'Опис';

  @override
  String get descriptionHint => 'напр., продукти';

  @override
  String get budget => 'Бюджет';

  @override
  String get budgets => 'Бюджети';

  @override
  String get totalBudget => 'Загальний бюджет';

  @override
  String get spent => 'Витрачено';

  @override
  String get remaining => 'Залишилось';

  @override
  String budgetUsed(int percent) {
    return 'Використано $percent%';
  }

  @override
  String get onTrack => 'За планом';

  @override
  String get approachingLimit => 'Близько до ліміту';

  @override
  String get overBudget => 'Перевитрата';

  @override
  String get savings => 'Накопичення';

  @override
  String get yourGoals => 'Ваші цілі';

  @override
  String get saved => 'Накопичено';

  @override
  String get target => 'Ціль';

  @override
  String get monthlyContribution => 'Щомісяця';

  @override
  String get addFunds => 'Поповнити';

  @override
  String get goalComplete => 'Ціль досягнуто';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'залишилось $count місяця',
      many: 'залишилось $count місяців',
      few: 'залишилось $count місяці',
      one: 'залишився $count місяць',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Кредити та борги';

  @override
  String get totalOutstanding => 'Загальний залишок боргу';

  @override
  String get monthlyPayment => 'Щомісяця';

  @override
  String get nextPayment => 'Наступний платіж';

  @override
  String paidOff(int percent) {
    return 'Погашено $percent%';
  }

  @override
  String get interestRate => 'Ставка';

  @override
  String get upcomingPayments => 'Найближчі платежі';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Через $count дня',
      many: 'Через $count днів',
      few: 'Через $count дні',
      one: 'Через $count день',
      zero: 'Сьогодні',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Прострочено';

  @override
  String get reports => 'Звіти';

  @override
  String get week => 'Тиждень';

  @override
  String get month => 'Місяць';

  @override
  String get quarter => 'Квартал';

  @override
  String get incomeVsExpenses => 'Доходи та витрати';

  @override
  String get spendingByCategory => 'Витрати за категоріями';

  @override
  String get budgetPerformance => 'Виконання бюджету';

  @override
  String get insights => 'Спостереження';

  @override
  String get savingsRate => 'Норма заощаджень';

  @override
  String get profile => 'Профіль';

  @override
  String get account => 'Обліковий запис';

  @override
  String get personalInformation => 'Особисті дані';

  @override
  String get changePassword => 'Змінити пароль';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get preferences => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get currency => 'Валюта';

  @override
  String get theme => 'Тема';

  @override
  String get security => 'Безпека';

  @override
  String get privacyAndSecurity => 'Конфіденційність і безпека';

  @override
  String get help => 'Довідка';

  @override
  String get helpAndSupport => 'Довідка та підтримка';

  @override
  String get termsAndConditions => 'Умови користування';

  @override
  String get logOut => 'Вийти';

  @override
  String memberSince(String date) {
    return 'З нами від $date';
  }

  @override
  String get themeSystem => 'Як у системі';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String get settings => 'Налаштування';

  @override
  String get noNotificationsTitle => 'Усе переглянуто';

  @override
  String get noNotificationsBody =>
      'Нові спостереження та нагадування з’являться тут.';

  @override
  String get cancel => 'Скасувати';

  @override
  String get save => 'Зберегти';

  @override
  String get done => 'Готово';

  @override
  String get retry => 'Повторити';

  @override
  String get close => 'Закрити';

  @override
  String get somethingWentWrong => 'Щось пішло не так';

  @override
  String get comingSoon => 'З’явиться у повній версії';

  @override
  String get edit => 'Змінити';

  @override
  String get delete => 'Видалити';

  @override
  String get undo => 'Скасувати дію';

  @override
  String get add => 'Додати';

  @override
  String get create => 'Створити';

  @override
  String get nameRequired => 'Дайте цьому назву';

  @override
  String get amountAboveZero => 'Введіть суму більшу за нуль';

  @override
  String get editTransaction => 'Змінити операцію';

  @override
  String get deleteTransaction => 'Видалити операцію?';

  @override
  String deleteTransactionBody(String title) {
    return '$title зникне з ваших записів.';
  }

  @override
  String get transactionDeleted => 'Операцію видалено';

  @override
  String get transactionUpdated => 'Операцію оновлено';

  @override
  String get newBudget => 'Новий бюджет';

  @override
  String get editBudget => 'Змінити бюджет';

  @override
  String get budgetLimit => 'Місячний ліміт';

  @override
  String get deleteBudget => 'Видалити бюджет?';

  @override
  String deleteBudgetBody(String category) {
    return 'Бюджет «$category» буде видалено. Ваші операції не зміняться.';
  }

  @override
  String get budgetSaved => 'Бюджет збережено';

  @override
  String get budgetDeleted => 'Бюджет видалено';

  @override
  String get allCategoriesBudgeted => 'Усі категорії вже мають бюджет';

  @override
  String get noBudgetsTitle => 'Бюджетів поки немає';

  @override
  String get noBudgetsBody =>
      'Задайте місячний ліміт для категорії, щоб почати за нею стежити.';

  @override
  String get newGoal => 'Нова ціль';

  @override
  String get editGoal => 'Змінити ціль';

  @override
  String get goalName => 'Назва цілі';

  @override
  String get goalNameHint => 'напр., резервний фонд';

  @override
  String get targetAmount => 'Цільова сума';

  @override
  String get alreadySaved => 'Уже накопичено';

  @override
  String get deleteGoal => 'Видалити ціль?';

  @override
  String deleteGoalBody(String name) {
    return '$name та її поступ буде видалено.';
  }

  @override
  String get goalSaved => 'Ціль збережено';

  @override
  String get goalDeleted => 'Ціль видалено';

  @override
  String get noGoalsTitle => 'Цілей накопичень поки немає';

  @override
  String get noGoalsBody =>
      'Задайте ціль, і RainyPenny стежитиме за вашим поступом.';

  @override
  String get fundsAdded => 'Кошти додано';

  @override
  String get newDebt => 'Новий кредит або картка';

  @override
  String get editDebt => 'Змінити кредит';

  @override
  String get debtName => 'Назва';

  @override
  String get debtNameHint => 'напр., автокредит';

  @override
  String get lender => 'Кредитор';

  @override
  String get lenderHint => 'напр., ПриватБанк';

  @override
  String get originalAmount => 'Початкова сума';

  @override
  String get creditLimit => 'Кредитний ліміт';

  @override
  String get remainingBalance => 'Залишок боргу';

  @override
  String get interestRatePercent => 'Відсоткова ставка (%)';

  @override
  String get kindLoan => 'Кредит';

  @override
  String get kindCreditCard => 'Кредитна картка';

  @override
  String get recordPayment => 'Записати платіж';

  @override
  String get paymentRecorded => 'Платіж записано';

  @override
  String get deleteDebt => 'Видалити цей борг?';

  @override
  String deleteDebtBody(String name) {
    return '$name зникне зі списку ваших боргів.';
  }

  @override
  String get debtSaved => 'Збережено';

  @override
  String get debtDeleted => 'Видалено';

  @override
  String get noDebtsTitle => 'Боргів не відстежується';

  @override
  String get noDebtsBody =>
      'Додайте кредит або картку, щоб тримати виплати під контролем.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Бюджет «$subject» перевищено';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Цього періоду ви перевищили бюджет «$subject» на $amount.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '«$subject» близько до ліміту';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Бюджет «$subject» використано на $percent%, залишилось $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Витрати перевищили доходи';

  @override
  String get insightOverIncomeBody =>
      'Цього періоду ви витратили більше, ніж заробили. Перегляньте найбільші категорії, щоб вирівняти баланс.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Витрати на «$subject» зросли';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Ваші витрати на «$subject» на $percent% вищі, ніж у попередньому періоді.';
  }

  @override
  String get insightTrendDownTitle => 'Витрати знижуються';

  @override
  String insightTrendDownBody(int percent) {
    return 'Загальні витрати на $percent% нижчі, ніж у попередньому періоді.';
  }

  @override
  String get insightTrendUpTitle => 'Витрати зростають';

  @override
  String insightTrendUpBody(int percent) {
    return 'Загальні витрати на $percent% вищі, ніж у попередньому періоді.';
  }

  @override
  String get insightSavingsStrongTitle => 'Чудові накопичення цього періоду';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Ви зберегли $percent% доходу — помітно вище за ціль у $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Норма заощаджень нижча за ціль';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Цього періоду ви зберегли $percent% доходу. Прагніть до $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '«$subject» майже зібрано';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'До цілі «$subject» залишилось лише $amount.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '«$subject» — усе за планом';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months місяця',
      many: '$months місяців',
      few: '$months місяці',
      one: '$months місяць',
    );
    return 'За $amount на місяць ви досягнете цієї цілі за $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Платіж за «$subject» прострочено';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дня',
      many: '$days днів',
      few: '$days дні',
      one: '$days день',
    );
    return 'Платіж $amount за «$subject» прострочено на $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Скоро платіж за «$subject»';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'через $days дня',
      many: 'через $days днів',
      few: 'через $days дні',
      one: 'через $days день',
      zero: 'сьогодні',
    );
    return '$amount треба сплатити $_temp0.';
  }

  @override
  String get signIn => 'Увійти';

  @override
  String get signUp => 'Створити обліковий запис';

  @override
  String get signInSubtitle => 'З поверненням. Ваші гроші чекають.';

  @override
  String get signUpSubtitle => 'Кілька полів — і все готово.';

  @override
  String get emailLabel => 'Ел. пошта';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get passwordHint => 'Щонайменше 8 символів';

  @override
  String get fullNameLabel => 'Ім’я';

  @override
  String get fullNameHint => 'Олена Ковальчук';

  @override
  String get forgotPassword => 'Забули пароль?';

  @override
  String get resetSent => 'Перевірте пошту — там посилання для скидання';

  @override
  String get noAccountYet => 'Уперше тут?';

  @override
  String get haveAccount => 'Уже маєте обліковий запис?';

  @override
  String get emailInvalid => 'Введіть коректну адресу ел. пошти';

  @override
  String get passwordTooShort => 'Використайте щонайменше 8 символів';

  @override
  String get signOutConfirm => 'Вийти?';

  @override
  String get signOutBody =>
      'Щоб знову побачити свої фінанси, доведеться увійти ще раз.';

  @override
  String get dataSource => 'Джерело даних';

  @override
  String get insightWeeklySummaryTitle => 'Підсумок тижня';

  @override
  String get insightWeeklySummaryBody =>
      'Подивіться, куди пішли гроші цього тижня і як тримаються бюджети.';

  @override
  String get notificationSettings => 'Сповіщення';

  @override
  String get alertsSection => 'Оповіщення';

  @override
  String get budgetAlerts => 'Оповіщення про бюджет';

  @override
  String get budgetAlertsBody =>
      'Коли бюджет близький до ліміту або перевищений';

  @override
  String get paymentReminders => 'Нагадування про платежі';

  @override
  String get paymentRemindersBody => 'За кілька днів до строку платежу';

  @override
  String get savingsUpdates => 'Новини накопичень';

  @override
  String get savingsUpdatesBody => 'Поступ до ваших цілей';

  @override
  String get weeklySummaryLabel => 'Підсумок тижня';

  @override
  String get weeklySummaryBody => 'Зведення за минулий тиждень';

  @override
  String get scheduleSection => 'Час';

  @override
  String get reminderTime => 'Час нагадувань';

  @override
  String get quietHours => 'Тихі години';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'День підсумку';

  @override
  String get permissionRequired => 'Сповіщення вимкнено';

  @override
  String get permissionRequiredBody =>
      'Дозвольте сповіщення, щоб RainyPenny попереджав вас, поки бюджет чи платіж не вийшли з-під контролю.';

  @override
  String get allowNotifications => 'Дозволити сповіщення';

  @override
  String get permissionDenied =>
      'Сповіщення заблоковано. Їх можна увімкнути в налаштуваннях пристрою.';

  @override
  String get upcomingAlerts => 'Заплановано';

  @override
  String get noScheduledAlerts => 'Наразі нічого не заплановано';

  @override
  String get noScheduledAlertsBody =>
      'Оповіщення з’являться тут, коли бюджети та платежі наблизяться до своїх меж.';

  @override
  String scheduledFor(String date) {
    return 'Заплановано на $date';
  }

  @override
  String get everyWeek => 'Щотижня';

  @override
  String get allNotificationsOff => 'Усі сповіщення вимкнено';

  @override
  String get needsAttention => 'Потребує уваги';

  @override
  String get quickActionsTitle => 'Що бажаєте зробити?';

  @override
  String get createSection => 'Записати';

  @override
  String get jumpToSection => 'Перейти';

  @override
  String get addLoanAction => 'Додати кредит';

  @override
  String get addBudgetAction => 'Додати бюджет';

  @override
  String get addGoalAction => 'Додати ціль';

  @override
  String get longPressHint =>
      'Порада: утримуйте +, щоб одразу записати витрату';

  @override
  String get searchCurrencies => 'Пошук валют';

  @override
  String get noCurrenciesFound => 'Валют не знайдено';

  @override
  String get noCurrenciesFoundMessage =>
      'Спробуйте інший код, символ або назву.';

  @override
  String get popularCurrencies => 'Популярні';

  @override
  String get allCurrencies => 'Усі валюти';

  @override
  String get totalLoanAmount => 'Загальна сума кредиту';

  @override
  String get installmentAmount => 'Сума платежу';

  @override
  String get numberOfInstallments => 'Кількість платежів';

  @override
  String get paidInstallments => 'Сплачено платежів';

  @override
  String get remainingInstallments => 'Залишилось платежів';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Сплачено $paid із $total';
  }

  @override
  String get finalPayment => 'Останній платіж';

  @override
  String get paymentDueDate => 'Дата платежу';

  @override
  String dueOnDayOfMonth(int day) {
    return '$day-го числа щомісяця';
  }

  @override
  String get loanStatus => 'Стан';

  @override
  String get statusActive => 'За планом';

  @override
  String get statusDueSoon => 'Скоро платіж';

  @override
  String get statusOverdue => 'Прострочено';

  @override
  String get statusCompleted => 'Погашено';

  @override
  String get repaymentProgress => 'Поступ погашення';

  @override
  String get byAmount => 'За сумою';

  @override
  String get byInstallments => 'За платежами';

  @override
  String get startDate => 'Дата початку';

  @override
  String get openEnded => 'Без строку';

  @override
  String get loanDetails => 'Про кредит';

  @override
  String get notSet => 'Не задано';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '«$subject» — платіж сьогодні';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Платіж $amount треба внести сьогодні. Один дотик — і все вчасно.';
  }

  @override
  String get remindMorningTitle => 'Доброго ранку ☀️';

  @override
  String get remindMorningBody =>
      'Почніть день, тримаючи гроші під контролем. Є що додати з учора?';

  @override
  String get remindNoonTitle => 'Полуденна перевірка';

  @override
  String get remindNoonBody => 'Обід, кава, проїзд? Запишіть за пару секунд.';

  @override
  String get remindAfternoonTitle => 'Швидке доповнення';

  @override
  String get remindAfternoonBody =>
      'Запишіть витрачене від ранку, щоб сьогоднішні цифри були точні.';

  @override
  String get remindEveningTitle => 'Підбиваємо підсумок дня';

  @override
  String get remindEveningBody =>
      'Дві хвилини зараз — і сьогоднішні записи повні.';

  @override
  String get happyWeekendTitle => 'Гарних вихідних! 🎉';

  @override
  String get happyWeekendBody =>
      'Відпочивайте — і приглядайте за витратами на вихідних.';

  @override
  String get dailyReminders => 'Щоденні нагадування про витрати';

  @override
  String get dailyRemindersBody =>
      'М’які підказки, щоб витрати були записані вчасно';

  @override
  String get weekendGreeting => 'Вітання на вихідні';

  @override
  String get weekendGreetingBody => 'Дружнє привітання на початку вихідних';

  @override
  String get reminderTimesSection => 'Час нагадувань';

  @override
  String get slotMorning => 'Ранок';

  @override
  String get slotNoon => 'Полудень';

  @override
  String get slotAfternoon => 'День';

  @override
  String get slotEvening => 'Вечір';

  @override
  String get everyDay => 'Щодня';

  @override
  String get financialReport => 'Фінансовий звіт';

  @override
  String get preparedFor => 'Підготовлено для';

  @override
  String get generatedOn => 'Створено';

  @override
  String get reportDisclaimer =>
      'Створено RainyPenny на основі ваших власних записів.';

  @override
  String pageOf(int page, int total) {
    return 'Сторінка $page із $total';
  }

  @override
  String get overview => 'Огляд';

  @override
  String get description => 'Опис';

  @override
  String get totalIncome => 'Усього доходів';

  @override
  String get totalExpenses => 'Усього витрат';

  @override
  String get totalSaved => 'Усього накопичено';

  @override
  String get shareOfTotal => 'Частка';

  @override
  String get used => 'Використано';

  @override
  String get goal => 'Ціль';

  @override
  String get targetDate => 'Цільова дата';

  @override
  String get progress => 'Поступ';

  @override
  String get paidOffShort => 'Погашено';

  @override
  String get transactions => 'Операції';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'і ще $count операції',
      many: 'і ще $count операцій',
      few: 'і ще $count операції',
      one: 'і ще $count операція',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Експорт у PDF';

  @override
  String get sharePdf => 'Поділитися звітом';

  @override
  String get preparingReport => 'Готуємо звіт…';

  @override
  String get reportReady => 'Звіт готовий';

  @override
  String get reportFailed => 'Не вдалося створити звіт';

  @override
  String get categories => 'Категорії';

  @override
  String get categoriesIntro =>
      'Додайте власні категорії, щоб розкладати доходи й витрати так, як ви про них думаєте.';

  @override
  String get expenseCategories => 'Категорії витрат';

  @override
  String get incomeCategories => 'Категорії доходів';

  @override
  String get newCategory => 'Нова категорія';

  @override
  String get editCategory => 'Змінити категорію';

  @override
  String get categoryName => 'Назва';

  @override
  String get categoryNameHint => 'напр., улюбленці';

  @override
  String get icon => 'Піктограма';

  @override
  String get categorySaved => 'Категорію збережено';

  @override
  String get categoryDeleted => 'Категорію видалено';

  @override
  String get deleteCategory => 'Видалити цю категорію?';

  @override
  String deleteCategoryBody(String name) {
    return '$name зникне з ваших категорій.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count запису досі використовують цю категорію',
      many: '$count записів досі використовують цю категорію',
      few: '$count записи досі використовують цю категорію',
      one: '$count запис досі використовує цю категорію',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Тут поки що порожньо.';

  @override
  String get builtIn => 'Вбудована';

  @override
  String get manageCategories => 'Керування категоріями';

  @override
  String get expense => 'Витрата';

  @override
  String get languageNote =>
      'Арабська, урду, перська та іврит розвертають увесь інтерфейс справа наліво, включно з графіками та PDF-звітами.';

  @override
  String get next => 'Далі';

  @override
  String get back => 'Назад';

  @override
  String get skip => 'Пропустити';

  @override
  String get continueLabel => 'Продовжити';

  @override
  String get selected => 'Обрано';

  @override
  String get passwordRequired => 'Введіть свій пароль';

  @override
  String get newPasswordLabel => 'Новий пароль';

  @override
  String get confirmPasswordLabel => 'Підтвердьте пароль';

  @override
  String get passwordsDoNotMatch => 'Обидва паролі мають збігатися';

  @override
  String get showPassword => 'Показати пароль';

  @override
  String get hidePassword => 'Сховати пароль';

  @override
  String get savePassword => 'Зберегти пароль';

  @override
  String get backToSignIn => 'Назад до входу';

  @override
  String get alreadyHaveAccount => 'У мене вже є обліковий запис';

  @override
  String get getStarted => 'Почати';

  @override
  String get acceptTerms =>
      'Я приймаю Умови користування та Політику конфіденційності';

  @override
  String get acceptTermsRequired => 'Прийміть умови, щоб продовжити';

  @override
  String get passwordStrengthTooShort => 'Надто короткий';

  @override
  String get passwordStrengthWeak => 'Слабкий';

  @override
  String get passwordStrengthFair => 'Середній';

  @override
  String get passwordStrengthGood => 'Добрий';

  @override
  String get passwordStrengthStrong => 'Надійний';

  @override
  String get passwordAdvice =>
      'Довга фраза, яку ви запам’ятаєте, надійніша за короткий пароль із символів. Не беріть те, що вже використовуєте деінде.';

  @override
  String get authInvalidCredentials =>
      'Ця пошта й пароль не підходять до жодного облікового запису';

  @override
  String get authEmailNotConfirmed =>
      'Підтвердьте адресу ел. пошти перед входом';

  @override
  String get authEmailAlreadyRegistered =>
      'Обліковий запис із цією поштою вже існує';

  @override
  String get authWeakPassword => 'Оберіть довший пароль';

  @override
  String get authRateLimited => 'Забагато спроб. Повторіть за кілька хвилин';

  @override
  String get authNetworkError =>
      'Немає зв’язку. Перевірте мережу й спробуйте ще раз';

  @override
  String get authGenericError => 'Щось пішло не так. Спробуйте ще раз';

  @override
  String get confirmEmailTitle => 'Перевірте пошту';

  @override
  String confirmEmailBody(String email) {
    return 'Ми надіслали посилання для підтвердження на $email. Відкрийте його, щоб завершити створення облікового запису.';
  }

  @override
  String get resendConfirmation => 'Надіслати лист ще раз';

  @override
  String get confirmationResent => 'Лист із підтвердженням надіслано';

  @override
  String get forgotPasswordTitle => 'Скидання пароля';

  @override
  String get forgotPasswordSubtitle =>
      'Вкажіть пошту, з якою ви реєструвалися, і ми надішлемо посилання для вибору нового пароля.';

  @override
  String get sendResetLink => 'Надіслати посилання';

  @override
  String get resetLinkSentTitle => 'Посилання надіслано';

  @override
  String resetLinkSentBody(String email) {
    return 'Якщо в $email є обліковий запис, посилання вже в дорозі.';
  }

  @override
  String get resetLinkSentHint =>
      'Посилання дійсне годину. Якщо лист не прийшов, зазирніть у теку «Спам», перш ніж просити новий.';

  @override
  String get tryAnotherEmail => 'Інша адреса пошти';

  @override
  String get resetPasswordTitle => 'Оберіть новий пароль';

  @override
  String get resetPasswordSubtitle =>
      'Візьміть те, чого ви ще не використовували в цьому обліковому записі.';

  @override
  String get passwordChangedTitle => 'Пароль оновлено';

  @override
  String get passwordChangedBody =>
      'Новий пароль збережено. Ви увійшли й можете працювати далі.';

  @override
  String get demoModeHint => 'Демоверсія — обліковий запис не потрібен';

  @override
  String get demoModeFill => 'Заповнити';

  @override
  String get welcomeTrackTitle => 'Побачте, куди йдуть гроші';

  @override
  String get welcomeTrackBody =>
      'Записуйте, що надходить і що витрачається. RainyPenny перетворює це на картину, яку справді можна прочитати.';

  @override
  String get welcomeBudgetTitle => 'Межі, які тримаються';

  @override
  String get welcomeBudgetBody =>
      'Задайте кожній частині витрат місячну стелю й дізнавайтеся про перевищення до, а не після.';

  @override
  String get welcomeGoalsTitle => 'Відкладайте на важливе';

  @override
  String get welcomeGoalsBody =>
      'Назвіть ціль, задайте суму й дивіться, як вона наповнюється. Резервний фонд легше зібрати, коли його видно.';

  @override
  String get welcomePrivacyTitle => 'Ваші гроші лишаються вашими';

  @override
  String get welcomePrivacyBody =>
      'Ваші цифри належать тільки вам. Ми нічого не продаємо й ні з ким не ділимося.';

  @override
  String stepOf(int step, int total) {
    return 'Крок $step з $total';
  }

  @override
  String get onboardingNameTitle => 'Як до вас звертатися?';

  @override
  String get onboardingNameBody => 'Лише для привітання й більше ніде.';

  @override
  String get onboardingNameHint => 'Досить імені. Пізніше його можна змінити.';

  @override
  String get onboardingCurrencyTitle => 'Якою валютою ви користуєтеся?';

  @override
  String get onboardingCurrencyBody =>
      'Усі суми в застосунку показуються в цій валюті. Вибір нічого не конвертує.';

  @override
  String get onboardingCurrencySearch => 'Шукати серед усіх валют';

  @override
  String get onboardingAppearanceTitle => 'Зробіть по-своєму';

  @override
  String get onboardingAppearanceBody =>
      'Оберіть вигляд. Усе змінюється просто на дотик, і повернутися можна будь-коли.';

  @override
  String get onboardingNotificationsTitle => 'Тримайте руку на пульсі';

  @override
  String get onboardingNotificationsBody =>
      'Тиха підказка у слушний момент — саме те, що перетворює це на звичку.';

  @override
  String get onboardingNotifyReminders =>
      'М’яке нагадування записати витрачене';

  @override
  String get onboardingNotifyBudget => 'Попередження, поки бюджет не скінчився';

  @override
  String get onboardingNotifySummary => 'Щотижневе зведення, куди пішли гроші';

  @override
  String get onboardingNotifyEnable => 'Увімкнути сповіщення';

  @override
  String get onboardingNotifyDone => 'Налаштування сповіщень збережено';

  @override
  String get onboardingNotifyLater =>
      'Усе це можна змінити в налаштуваннях будь-коли.';

  @override
  String get onboardingReadyTitle => 'Усе готово';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Усе готово, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Налаштування завершено. Показати коротко, як усе влаштовано?';

  @override
  String get onboardingTakeTour => 'Покажіть мені';

  @override
  String get onboardingGoToApp => 'Перейти до застосунку';

  @override
  String get onboardingTourLater =>
      'Не зараз? Посібник лишається в налаштуваннях — на будь-який момент.';

  @override
  String get beginnersGuide => 'Посібник для початківців';

  @override
  String get guideFinish => 'Завершити';

  @override
  String chapterOf(int number, int total) {
    return 'Розділ $number з $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Відкрити: $screen';
  }

  @override
  String get guideDashboardTitle => 'Ваша головна';

  @override
  String get guideDashboardBody =>
      'Усе починається тут. Картка згори — скільки у вас лишилося; під нею доходи й витрати за період, далі витрати, бюджети та цілі.';

  @override
  String get guideDashboardTip1 =>
      'Потягніть екран донизу, щоб оновити все одразу.';

  @override
  String get guideDashboardTip2 =>
      'Натисніть картку доходів або витрат, щоб перейти просто до потрібного списку.';

  @override
  String get guideDashboardTip3 =>
      'Кільця та спостереження оновлюються щойно ви щось записали.';

  @override
  String get guideAddTitle => 'Як записувати гроші';

  @override
  String get guideAddBody =>
      'Кнопка посередині панелі — початок усього. Вона відкриває коротке меню: витрата, дохід, борг, бюджет або ціль накопичень.';

  @override
  String get guideAddTip1 =>
      'Натисніть центральну кнопку, щоб записати надходження чи витрату.';

  @override
  String get guideAddTip2 =>
      'Утримайте її, щоб одразу перейти до нової витрати, оминувши меню.';

  @override
  String get guideAddTip3 =>
      'Завжди обирайте категорію — саме на ній тримаються графіки й бюджети.';

  @override
  String get guideCategoriesTitle => 'Категорії';

  @override
  String get guideCategoriesBody =>
      'Категорії групують витрати. Вбудованих вистачає більшості, але їх можна перейменувати або додати власні.';

  @override
  String get guideCategoriesTip1 =>
      'Налаштування, потім «Керування категоріями» — змінити або додати.';

  @override
  String get guideCategoriesTip2 =>
      'Усе без категорії потрапляє до «Інше», щоб графіки лишалися чесними.';

  @override
  String get guideBudgetTitle => 'Бюджети';

  @override
  String get guideBudgetBody =>
      'Бюджет — це місячна стеля для однієї категорії. Смужка наповнюється в міру витрат і змінює колір біля межі, тож ви дізнаєтеся заздалегідь.';

  @override
  String get guideBudgetTip1 =>
      'Почніть із двох-трьох категорій, а не з усіх одразу.';

  @override
  String get guideBudgetTip2 =>
      'Поставте ліміт трохи вище звичайних витрат, а потім поступово звужуйте.';

  @override
  String get guideBudgetTip3 =>
      'Лишіть оповіщення увімкненими — застосунок попередить, коли бюджет добігає кінця.';

  @override
  String get guideSavingsTitle => 'Цілі накопичень';

  @override
  String get guideSavingsBody =>
      'Назвіть, на що відкладаєте, задайте суму й дату — застосунок порахує, скільки відкладати щомісяця.';

  @override
  String get guideSavingsTip1 =>
      'Названу ціль тримати легше, ніж туманний намір заощаджувати.';

  @override
  String get guideSavingsTip2 =>
      'Кілька невеликих цілей доводять до кінця частіше, ніж одну велику.';

  @override
  String get guideLoansTitle => 'Борги та кредити';

  @override
  String get guideLoansBody =>
      'Запишіть, скільки винні, у що це обходиться і коли наступний платіж. Усе, що ви гасите, зібрано в одному списку із залишком.';

  @override
  String get guideLoansTip1 =>
      'Вкажіть дату платежу — нагадування стежитимуть за нею замість вас.';

  @override
  String get guideLoansTip2 =>
      'Прострочений борг світиться червоним на головній, доки не буде сплачений.';

  @override
  String get guideReportsTitle => 'Звіти';

  @override
  String get guideReportsBody =>
      'Погляд углиб: доходи проти витрат, витрати за категоріями, як трималися бюджети і яка частка доходу лишилася у вас.';

  @override
  String get guideReportsTip1 =>
      'Перемикайте тиждень, місяць і квартал угорі екрана.';

  @override
  String get guideReportsTip2 =>
      'Вивантажте або надішліть PDF — він вийде вашою мовою та в її напрямку письма.';

  @override
  String get guideSettingsTitle => 'Налаштування';

  @override
  String get guideSettingsBody =>
      'Мова, валюта, кольори та оповіщення — усе тут, і початкове налаштування нічого не закріплює: змінюйте що завгодно й коли завгодно.';

  @override
  String get guideSettingsTip1 =>
      'Сорок мов, а для тих, що читаються справа наліво, увесь інтерфейс дзеркалиться.';

  @override
  String get guideSettingsTip2 =>
      'Оберіть потрібні оповіщення та години, коли вони можуть приходити.';

  @override
  String get guideSettingsTip3 => 'Тихі години притримують усе до ранку.';

  @override
  String get guideHabitTitle => 'Щоб увійшло у звичку';

  @override
  String get guideHabitBody =>
      'Застосунок корисний рівно настільки, наскільки ви його наповнюєте. Хвилина на день краща за годину раз на місяць, а за два тижні цифри почнуть говорити.';

  @override
  String get guideHabitTip1 =>
      'Записуйте витрати одразу, а не наприкінці тижня.';

  @override
  String get guideHabitTip2 =>
      'Зазирніть на головну раз на день. Десяти секунд досить.';

  @override
  String get guideHabitTip3 =>
      'Цей посібник лишається в налаштуваннях — повертайтеся коли завгодно.';

  @override
  String get appearance => 'Оформлення';

  @override
  String get themeCaption => 'Світле, темне або як у системі.';

  @override
  String get accentColor => 'Акцентний колір';

  @override
  String get accentColorCaption => 'Фарбує кнопки, виділення та графіки.';

  @override
  String get accentSemanticsNote =>
      'Надходження й витрати зберігають свої кольори в будь-якій темі, тож цифра не змінює значення через зміну акценту.';

  @override
  String get accentTeal => 'Бірюзовий';

  @override
  String get accentGreen => 'Зелений';

  @override
  String get accentSky => 'Небесний';

  @override
  String get accentBlue => 'Синій';

  @override
  String get accentIndigo => 'Індиго';

  @override
  String get accentViolet => 'Фіолетовий';

  @override
  String get accentPink => 'Рожевий';

  @override
  String get accentCrimson => 'Малиновий';

  @override
  String get accentOrange => 'Помаранчевий';

  @override
  String get accentSlate => 'Графітовий';

  @override
  String get searchLanguages => 'Пошук мов';

  @override
  String get suggestedLanguages => 'Рекомендовані';

  @override
  String get allLanguages => 'Усі мови';

  @override
  String get noLanguagesFound => 'Мов не знайдено';

  @override
  String get noLanguagesFoundMessage =>
      'Спробуйте назву англійською або дволітерний код.';

  @override
  String get rightToLeft => 'Справа наліво';

  @override
  String get replayGuide => 'Переглянути посібник знову';

  @override
  String get replaySetup => 'Пройти налаштування ще раз';

  @override
  String get replaySetupBody =>
      'Дайте відповіді на початкові запитання ще раз. Нічого із записаного вами не видаляється.';

  @override
  String get rateTitle => 'Подобається RainyPenny?';

  @override
  String get rateBody =>
      'Ви користуєтеся застосунком уже певний час. Оцінка займе мить і допоможе іншим його знайти.';

  @override
  String get rateAction => 'Оцінити застосунок';

  @override
  String get rateLater => 'Можливо, пізніше';

  @override
  String get rateNever => 'Ні, дякую';

  @override
  String get rateThanks => 'Дякуємо';

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
