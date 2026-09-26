// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppL10nRu extends AppL10n {
  AppL10nRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Копите на чёрный день';

  @override
  String get navHome => 'Главная';

  @override
  String get navTransactions => 'Операции';

  @override
  String get navAdd => 'Добавить';

  @override
  String get navReports => 'Отчёты';

  @override
  String get navProfile => 'Профиль';

  @override
  String greetingMorning(String name) {
    return 'Доброе утро, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Добрый день, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Добрый вечер, $name';
  }

  @override
  String get greetingSubtitle => 'Вот ваша финансовая картина';

  @override
  String get totalBalance => 'Общий баланс';

  @override
  String get vsLastPeriod => 'к прошлому периоду';

  @override
  String get income => 'Доходы';

  @override
  String get expenses => 'Расходы';

  @override
  String get netBalance => 'Чистый итог';

  @override
  String get lastThirtyDays => 'Последние 30 дней';

  @override
  String get quickActions => 'Быстрые действия';

  @override
  String get addIncome => 'Добавить доход';

  @override
  String get addExpense => 'Добавить расход';

  @override
  String get spendingOverview => 'Обзор расходов';

  @override
  String get recentTransactions => 'Последние операции';

  @override
  String get seeAll => 'Смотреть все';

  @override
  String get viewAll => 'Показать все';

  @override
  String get budgetProgress => 'Ход по бюджетам';

  @override
  String get savingsGoals => 'Цели накоплений';

  @override
  String get financialInsight => 'Наблюдение';

  @override
  String get financialHealth => 'Финансовое здоровье';

  @override
  String ofTotal(String total) {
    return 'из $total';
  }

  @override
  String get searchTransactions => 'Поиск операций';

  @override
  String get filterAll => 'Все';

  @override
  String get filterIncome => 'Доходы';

  @override
  String get filterExpenses => 'Расходы';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get noTransactionsTitle => 'Операции не найдены';

  @override
  String get noTransactionsBody =>
      'Измените запрос или фильтр, чтобы увидеть больше записей.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count операции',
      many: '$count операций',
      few: '$count операции',
      one: '$count операция',
      zero: 'Нет операций',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Добавить операцию';

  @override
  String get amount => 'Сумма';

  @override
  String get category => 'Категория';

  @override
  String get date => 'Дата';

  @override
  String get note => 'Заметка';

  @override
  String get noteHint => 'Заметка (необязательно)';

  @override
  String get saveIncome => 'Сохранить доход';

  @override
  String get saveExpense => 'Сохранить расход';

  @override
  String get selectCategory => 'Выберите категорию';

  @override
  String get transactionSaved => 'Операция сохранена';

  @override
  String get amountRequired => 'Введите сумму больше нуля';

  @override
  String get titleRequired => 'Дайте операции название';

  @override
  String get descriptionLabel => 'Описание';

  @override
  String get descriptionHint => 'например, продукты';

  @override
  String get budget => 'Бюджет';

  @override
  String get budgets => 'Бюджеты';

  @override
  String get totalBudget => 'Общий бюджет';

  @override
  String get spent => 'Потрачено';

  @override
  String get remaining => 'Осталось';

  @override
  String budgetUsed(int percent) {
    return 'Использовано $percent%';
  }

  @override
  String get onTrack => 'В графике';

  @override
  String get approachingLimit => 'Близко к лимиту';

  @override
  String get overBudget => 'Перерасход';

  @override
  String get savings => 'Накопления';

  @override
  String get yourGoals => 'Ваши цели';

  @override
  String get saved => 'Накоплено';

  @override
  String get target => 'Цель';

  @override
  String get monthlyContribution => 'В месяц';

  @override
  String get addFunds => 'Пополнить';

  @override
  String get goalComplete => 'Цель достигнута';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'осталось $count месяца',
      many: 'осталось $count месяцев',
      few: 'осталось $count месяца',
      one: 'остался $count месяц',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Кредиты и долги';

  @override
  String get totalOutstanding => 'Всего к погашению';

  @override
  String get monthlyPayment => 'В месяц';

  @override
  String get nextPayment => 'Следующий платёж';

  @override
  String paidOff(int percent) {
    return 'Погашено $percent%';
  }

  @override
  String get interestRate => 'Ставка';

  @override
  String get upcomingPayments => 'Ближайшие платежи';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Через $count дня',
      many: 'Через $count дней',
      few: 'Через $count дня',
      one: 'Через $count день',
      zero: 'Сегодня',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Просрочено';

  @override
  String get reports => 'Отчёты';

  @override
  String get week => 'Неделя';

  @override
  String get month => 'Месяц';

  @override
  String get quarter => 'Квартал';

  @override
  String get incomeVsExpenses => 'Доходы и расходы';

  @override
  String get spendingByCategory => 'Расходы по категориям';

  @override
  String get budgetPerformance => 'Исполнение бюджетов';

  @override
  String get insights => 'Наблюдения';

  @override
  String get savingsRate => 'Норма сбережений';

  @override
  String get profile => 'Профиль';

  @override
  String get account => 'Аккаунт';

  @override
  String get personalInformation => 'Личные данные';

  @override
  String get changePassword => 'Сменить пароль';

  @override
  String get notifications => 'Уведомления';

  @override
  String get preferences => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get currency => 'Валюта';

  @override
  String get theme => 'Тема';

  @override
  String get security => 'Безопасность';

  @override
  String get privacyAndSecurity => 'Конфиденциальность и безопасность';

  @override
  String get help => 'Помощь';

  @override
  String get helpAndSupport => 'Помощь и поддержка';

  @override
  String get termsAndConditions => 'Условия использования';

  @override
  String get logOut => 'Выйти';

  @override
  String memberSince(String date) {
    return 'С нами с $date';
  }

  @override
  String get themeSystem => 'Как в системе';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get settings => 'Настройки';

  @override
  String get noNotificationsTitle => 'Всё просмотрено';

  @override
  String get noNotificationsBody =>
      'Новые наблюдения и напоминания появятся здесь.';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get done => 'Готово';

  @override
  String get retry => 'Повторить';

  @override
  String get close => 'Закрыть';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get comingSoon => 'Появится в полной версии';

  @override
  String get edit => 'Изменить';

  @override
  String get delete => 'Удалить';

  @override
  String get undo => 'Отменить';

  @override
  String get add => 'Добавить';

  @override
  String get create => 'Создать';

  @override
  String get nameRequired => 'Дайте этому название';

  @override
  String get amountAboveZero => 'Введите сумму больше нуля';

  @override
  String get editTransaction => 'Изменить операцию';

  @override
  String get deleteTransaction => 'Удалить операцию?';

  @override
  String deleteTransactionBody(String title) {
    return '$title будет удалена из ваших записей.';
  }

  @override
  String get transactionDeleted => 'Операция удалена';

  @override
  String get transactionUpdated => 'Операция обновлена';

  @override
  String get newBudget => 'Новый бюджет';

  @override
  String get editBudget => 'Изменить бюджет';

  @override
  String get budgetLimit => 'Месячный лимит';

  @override
  String get deleteBudget => 'Удалить бюджет?';

  @override
  String deleteBudgetBody(String category) {
    return 'Бюджет «$category» будет удалён. Ваши операции не изменятся.';
  }

  @override
  String get budgetSaved => 'Бюджет сохранён';

  @override
  String get budgetDeleted => 'Бюджет удалён';

  @override
  String get allCategoriesBudgeted => 'У всех категорий уже есть бюджет';

  @override
  String get noBudgetsTitle => 'Бюджетов пока нет';

  @override
  String get noBudgetsBody =>
      'Задайте месячный лимит для категории, чтобы начать следить за ней.';

  @override
  String get newGoal => 'Новая цель';

  @override
  String get editGoal => 'Изменить цель';

  @override
  String get goalName => 'Название цели';

  @override
  String get goalNameHint => 'например, подушка безопасности';

  @override
  String get targetAmount => 'Целевая сумма';

  @override
  String get alreadySaved => 'Уже накоплено';

  @override
  String get deleteGoal => 'Удалить цель?';

  @override
  String deleteGoalBody(String name) {
    return '$name и её прогресс будут удалены.';
  }

  @override
  String get goalSaved => 'Цель сохранена';

  @override
  String get goalDeleted => 'Цель удалена';

  @override
  String get noGoalsTitle => 'Целей накоплений пока нет';

  @override
  String get noGoalsBody =>
      'Задайте цель, и RainyPenny будет следить за вашим прогрессом.';

  @override
  String get fundsAdded => 'Средства добавлены';

  @override
  String get newDebt => 'Новый кредит или карта';

  @override
  String get editDebt => 'Изменить кредит';

  @override
  String get debtName => 'Название';

  @override
  String get debtNameHint => 'например, автокредит';

  @override
  String get lender => 'Кредитор';

  @override
  String get lenderHint => 'например, Сбербанк';

  @override
  String get originalAmount => 'Первоначальная сумма';

  @override
  String get creditLimit => 'Кредитный лимит';

  @override
  String get remainingBalance => 'Остаток долга';

  @override
  String get interestRatePercent => 'Процентная ставка (%)';

  @override
  String get kindLoan => 'Кредит';

  @override
  String get kindCreditCard => 'Кредитная карта';

  @override
  String get recordPayment => 'Записать платёж';

  @override
  String get paymentRecorded => 'Платёж записан';

  @override
  String get deleteDebt => 'Удалить этот долг?';

  @override
  String deleteDebtBody(String name) {
    return '$name будет удалён из ваших долгов.';
  }

  @override
  String get debtSaved => 'Сохранено';

  @override
  String get debtDeleted => 'Удалено';

  @override
  String get noDebtsTitle => 'Долги не отслеживаются';

  @override
  String get noDebtsBody =>
      'Добавьте кредит или карту, чтобы держать выплаты под контролем.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Бюджет «$subject» превышен';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Вы превысили бюджет «$subject» на $amount за этот период.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '«$subject» близко к лимиту';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Бюджет «$subject» израсходован на $percent%, осталось $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Расходы превысили доходы';

  @override
  String get insightOverIncomeBody =>
      'В этом периоде вы потратили больше, чем заработали. Посмотрите самые крупные категории и выровняйте баланс.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Расходы на «$subject» выросли';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Ваши расходы на «$subject» на $percent% выше, чем в прошлом периоде.';
  }

  @override
  String get insightTrendDownTitle => 'Расходы снижаются';

  @override
  String insightTrendDownBody(int percent) {
    return 'Общие расходы на $percent% ниже, чем в прошлом периоде.';
  }

  @override
  String get insightTrendUpTitle => 'Расходы растут';

  @override
  String insightTrendUpBody(int percent) {
    return 'Общие расходы на $percent% выше, чем в прошлом периоде.';
  }

  @override
  String get insightSavingsStrongTitle => 'Отличные накопления за период';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Вы сохранили $percent% дохода — заметно выше цели в $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Норма сбережений ниже цели';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'За этот период вы сохранили $percent% дохода. Стремитесь к $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '«$subject» почти собрана';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'До цели «$subject» осталось всего $amount.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '«$subject» — идёте по плану';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months месяца',
      many: '$months месяцев',
      few: '$months месяца',
      one: '$months месяц',
    );
    return 'При $amount в месяц вы достигнете этой цели за $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Платёж по «$subject» просрочен';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дня',
      many: '$days дней',
      few: '$days дня',
      one: '$days день',
    );
    return 'Платёж $amount по «$subject» просрочен на $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Скоро платёж по «$subject»';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'через $days дня',
      many: 'через $days дней',
      few: 'через $days дня',
      one: 'через $days день',
      zero: 'сегодня',
    );
    return '$amount нужно внести $_temp0.';
  }

  @override
  String get signIn => 'Войти';

  @override
  String get signUp => 'Создать аккаунт';

  @override
  String get signInSubtitle => 'С возвращением. Ваши деньги ждут.';

  @override
  String get signUpSubtitle => 'Несколько полей — и всё готово.';

  @override
  String get emailLabel => 'Эл. почта';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get passwordHint => 'Не менее 8 символов';

  @override
  String get fullNameLabel => 'Имя';

  @override
  String get fullNameHint => 'Алексей Морозов';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get resetSent => 'Ссылка для сброса отправлена на почту';

  @override
  String get noAccountYet => 'Впервые здесь?';

  @override
  String get haveAccount => 'Уже есть аккаунт?';

  @override
  String get emailInvalid => 'Введите корректный адрес эл. почты';

  @override
  String get passwordTooShort => 'Не менее 8 символов';

  @override
  String get signOutConfirm => 'Выйти?';

  @override
  String get signOutBody =>
      'Чтобы снова увидеть свои финансы, нужно будет войти заново.';

  @override
  String get dataSource => 'Источник данных';

  @override
  String get insightWeeklySummaryTitle => 'Итоги недели';

  @override
  String get insightWeeklySummaryBody =>
      'Посмотрите, куда ушли деньги за неделю и как держатся бюджеты.';

  @override
  String get notificationSettings => 'Уведомления';

  @override
  String get alertsSection => 'Оповещения';

  @override
  String get budgetAlerts => 'Оповещения о бюджете';

  @override
  String get budgetAlertsBody => 'Когда бюджет близок к лимиту или превышен';

  @override
  String get paymentReminders => 'Напоминания о платежах';

  @override
  String get paymentRemindersBody => 'За несколько дней до срока платежа';

  @override
  String get savingsUpdates => 'Новости накоплений';

  @override
  String get savingsUpdatesBody => 'Продвижение к вашим целям';

  @override
  String get weeklySummaryLabel => 'Итоги недели';

  @override
  String get weeklySummaryBody => 'Сводка за прошедшую неделю';

  @override
  String get scheduleSection => 'Время';

  @override
  String get reminderTime => 'Время напоминаний';

  @override
  String get quietHours => 'Тихие часы';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'День сводки';

  @override
  String get permissionRequired => 'Уведомления отключены';

  @override
  String get permissionRequiredBody =>
      'Разрешите уведомления, чтобы RainyPenny предупреждал вас до того, как бюджет или платёж выйдут из-под контроля.';

  @override
  String get allowNotifications => 'Разрешить уведомления';

  @override
  String get permissionDenied =>
      'Уведомления заблокированы. Их можно включить в настройках устройства.';

  @override
  String get upcomingAlerts => 'Запланировано';

  @override
  String get noScheduledAlerts => 'Сейчас ничего не запланировано';

  @override
  String get noScheduledAlertsBody =>
      'Оповещения появятся здесь, когда бюджеты и платежи подойдут к своим срокам.';

  @override
  String scheduledFor(String date) {
    return 'Запланировано на $date';
  }

  @override
  String get everyWeek => 'Каждую неделю';

  @override
  String get allNotificationsOff => 'Все уведомления отключены';

  @override
  String get needsAttention => 'Требует внимания';

  @override
  String get quickActionsTitle => 'Что хотите сделать?';

  @override
  String get createSection => 'Записать';

  @override
  String get jumpToSection => 'Перейти';

  @override
  String get addLoanAction => 'Добавить кредит';

  @override
  String get addBudgetAction => 'Добавить бюджет';

  @override
  String get addGoalAction => 'Добавить цель';

  @override
  String get longPressHint =>
      'Совет: удерживайте +, чтобы сразу записать расход';

  @override
  String get searchCurrencies => 'Поиск валют';

  @override
  String get noCurrenciesFound => 'Валюты не найдены';

  @override
  String get noCurrenciesFoundMessage =>
      'Попробуйте другой код, символ или название.';

  @override
  String get popularCurrencies => 'Популярные';

  @override
  String get allCurrencies => 'Все валюты';

  @override
  String get totalLoanAmount => 'Сумма кредита';

  @override
  String get installmentAmount => 'Размер платежа';

  @override
  String get numberOfInstallments => 'Количество платежей';

  @override
  String get paidInstallments => 'Оплачено платежей';

  @override
  String get remainingInstallments => 'Осталось платежей';

  @override
  String installmentsPaidOf(int paid, int total) {
    return 'Оплачено $paid из $total';
  }

  @override
  String get finalPayment => 'Последний платёж';

  @override
  String get paymentDueDate => 'Дата платежа';

  @override
  String dueOnDayOfMonth(int day) {
    return '$day-го числа каждого месяца';
  }

  @override
  String get loanStatus => 'Статус';

  @override
  String get statusActive => 'В графике';

  @override
  String get statusDueSoon => 'Скоро платёж';

  @override
  String get statusOverdue => 'Просрочено';

  @override
  String get statusCompleted => 'Погашено';

  @override
  String get repaymentProgress => 'Ход погашения';

  @override
  String get byAmount => 'По сумме';

  @override
  String get byInstallments => 'По платежам';

  @override
  String get startDate => 'Дата начала';

  @override
  String get openEnded => 'Без срока';

  @override
  String get loanDetails => 'О кредите';

  @override
  String get notSet => 'Не задано';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '«$subject» — платёж сегодня';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Платёж $amount нужно внести сегодня. Одно касание — и всё вовремя.';
  }

  @override
  String get remindMorningTitle => 'Доброе утро ☀️';

  @override
  String get remindMorningBody =>
      'Начните день, держа деньги под контролем. Есть что добавить со вчера?';

  @override
  String get remindNoonTitle => 'Полуденная сверка';

  @override
  String get remindNoonBody => 'Обед, кофе, проезд? Запишите за пару секунд.';

  @override
  String get remindAfternoonTitle => 'Быстрое дополнение';

  @override
  String get remindAfternoonBody =>
      'Запишите потраченное с утра, чтобы сегодняшние цифры были точными.';

  @override
  String get remindEveningTitle => 'Подводим итог дня';

  @override
  String get remindEveningBody =>
      'Две минуты сейчас — и сегодняшние записи полные.';

  @override
  String get happyWeekendTitle => 'Хороших выходных! 🎉';

  @override
  String get happyWeekendBody =>
      'Отдыхайте — и приглядывайте за тратами на выходных.';

  @override
  String get dailyReminders => 'Ежедневные напоминания';

  @override
  String get dailyRemindersBody =>
      'Мягкие подсказки, чтобы расходы были записаны вовремя';

  @override
  String get weekendGreeting => 'Привет на выходных';

  @override
  String get weekendGreetingBody => 'Дружеское приветствие в начале выходных';

  @override
  String get reminderTimesSection => 'Время напоминаний';

  @override
  String get slotMorning => 'Утро';

  @override
  String get slotNoon => 'Полдень';

  @override
  String get slotAfternoon => 'День';

  @override
  String get slotEvening => 'Вечер';

  @override
  String get everyDay => 'Каждый день';

  @override
  String get financialReport => 'Финансовый отчёт';

  @override
  String get preparedFor => 'Подготовлено для';

  @override
  String get generatedOn => 'Создано';

  @override
  String get reportDisclaimer =>
      'Создано RainyPenny на основе ваших собственных записей.';

  @override
  String pageOf(int page, int total) {
    return 'Страница $page из $total';
  }

  @override
  String get overview => 'Обзор';

  @override
  String get description => 'Описание';

  @override
  String get totalIncome => 'Всего доходов';

  @override
  String get totalExpenses => 'Всего расходов';

  @override
  String get totalSaved => 'Всего накоплено';

  @override
  String get shareOfTotal => 'Доля';

  @override
  String get used => 'Использовано';

  @override
  String get goal => 'Цель';

  @override
  String get targetDate => 'Целевая дата';

  @override
  String get progress => 'Прогресс';

  @override
  String get paidOffShort => 'Погашено';

  @override
  String get transactions => 'Операции';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'и ещё $count операции',
      many: 'и ещё $count операций',
      few: 'и ещё $count операции',
      one: 'и ещё $count операция',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get sharePdf => 'Поделиться отчётом';

  @override
  String get preparingReport => 'Готовим отчёт…';

  @override
  String get reportReady => 'Отчёт готов';

  @override
  String get reportFailed => 'Не удалось создать отчёт';

  @override
  String get categories => 'Категории';

  @override
  String get categoriesIntro =>
      'Добавьте свои категории, чтобы раскладывать доходы и расходы так, как вы о них думаете.';

  @override
  String get expenseCategories => 'Категории расходов';

  @override
  String get incomeCategories => 'Категории доходов';

  @override
  String get newCategory => 'Новая категория';

  @override
  String get editCategory => 'Изменить категорию';

  @override
  String get categoryName => 'Название';

  @override
  String get categoryNameHint => 'например, питомцы';

  @override
  String get icon => 'Значок';

  @override
  String get categorySaved => 'Категория сохранена';

  @override
  String get categoryDeleted => 'Категория удалена';

  @override
  String get deleteCategory => 'Удалить эту категорию?';

  @override
  String deleteCategoryBody(String name) {
    return '$name будет удалена из ваших категорий.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count записи всё ещё используют эту категорию',
      many: '$count записей всё ещё используют эту категорию',
      few: '$count записи всё ещё используют эту категорию',
      one: '$count запись всё ещё использует эту категорию',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Здесь пока пусто.';

  @override
  String get builtIn => 'Встроенная';

  @override
  String get manageCategories => 'Управление категориями';

  @override
  String get expense => 'Расход';

  @override
  String get languageNote =>
      'Арабский, урду, персидский и иврит разворачивают весь интерфейс справа налево, включая графики и PDF-отчёты.';

  @override
  String get next => 'Далее';

  @override
  String get back => 'Назад';

  @override
  String get skip => 'Пропустить';

  @override
  String get continueLabel => 'Продолжить';

  @override
  String get selected => 'Выбрано';

  @override
  String get passwordRequired => 'Введите пароль';

  @override
  String get newPasswordLabel => 'Новый пароль';

  @override
  String get confirmPasswordLabel => 'Подтвердите пароль';

  @override
  String get passwordsDoNotMatch => 'Пароли должны совпадать';

  @override
  String get showPassword => 'Показать пароль';

  @override
  String get hidePassword => 'Скрыть пароль';

  @override
  String get savePassword => 'Сохранить пароль';

  @override
  String get backToSignIn => 'Вернуться ко входу';

  @override
  String get alreadyHaveAccount => 'У меня уже есть аккаунт';

  @override
  String get getStarted => 'Начать';

  @override
  String get acceptTerms =>
      'Я принимаю Условия использования и Политику конфиденциальности';

  @override
  String get acceptTermsRequired => 'Примите условия, чтобы продолжить';

  @override
  String get passwordStrengthTooShort => 'Слишком короткий';

  @override
  String get passwordStrengthWeak => 'Слабый';

  @override
  String get passwordStrengthFair => 'Средний';

  @override
  String get passwordStrengthGood => 'Хороший';

  @override
  String get passwordStrengthStrong => 'Надёжный';

  @override
  String get passwordAdvice =>
      'Длинная фраза, которую вы запомните, надёжнее короткого пароля из символов. Не используйте то, что уже применяете где-то ещё.';

  @override
  String get authInvalidCredentials =>
      'Эта почта и пароль не подходят ни к одному аккаунту';

  @override
  String get authEmailNotConfirmed =>
      'Подтвердите адрес эл. почты перед входом';

  @override
  String get authEmailAlreadyRegistered =>
      'Аккаунт с этой почтой уже существует';

  @override
  String get authWeakPassword => 'Выберите пароль подлиннее';

  @override
  String get authRateLimited =>
      'Слишком много попыток. Повторите через несколько минут';

  @override
  String get authNetworkError => 'Нет связи. Проверьте сеть и попробуйте снова';

  @override
  String get authGenericError => 'Что-то пошло не так. Попробуйте ещё раз';

  @override
  String get confirmEmailTitle => 'Проверьте почту';

  @override
  String confirmEmailBody(String email) {
    return 'Мы отправили ссылку для подтверждения на $email. Откройте её, чтобы завершить создание аккаунта.';
  }

  @override
  String get resendConfirmation => 'Отправить письмо ещё раз';

  @override
  String get confirmationResent => 'Письмо с подтверждением отправлено';

  @override
  String get forgotPasswordTitle => 'Сброс пароля';

  @override
  String get forgotPasswordSubtitle =>
      'Укажите почту, с которой вы регистрировались, и мы пришлём ссылку для выбора нового пароля.';

  @override
  String get sendResetLink => 'Отправить ссылку';

  @override
  String get resetLinkSentTitle => 'Ссылка отправлена';

  @override
  String resetLinkSentBody(String email) {
    return 'Если у $email есть аккаунт, ссылка уже в пути.';
  }

  @override
  String get resetLinkSentHint =>
      'Ссылка действует один час. Если письма нет, загляните в папку «Спам», прежде чем запрашивать новое.';

  @override
  String get tryAnotherEmail => 'Другой адрес почты';

  @override
  String get resetPasswordTitle => 'Выберите новый пароль';

  @override
  String get resetPasswordSubtitle =>
      'Возьмите то, чего вы ещё не использовали в этом аккаунте.';

  @override
  String get passwordChangedTitle => 'Пароль обновлён';

  @override
  String get passwordChangedBody =>
      'Новый пароль сохранён. Вы вошли и можете продолжать.';

  @override
  String get demoModeHint => 'Демоверсия — аккаунт не нужен';

  @override
  String get demoModeFill => 'Заполнить';

  @override
  String get welcomeTrackTitle => 'Увидьте, куда уходят деньги';

  @override
  String get welcomeTrackBody =>
      'Записывайте, что приходит и что уходит. RainyPenny превращает это в картину, которую действительно можно прочитать.';

  @override
  String get welcomeBudgetTitle => 'Границы, которые держатся';

  @override
  String get welcomeBudgetBody =>
      'Задайте каждой части расходов месячный потолок и узнавайте о превышении до, а не после.';

  @override
  String get welcomeGoalsTitle => 'Копите на то, что важно';

  @override
  String get welcomeGoalsBody =>
      'Назовите цель, задайте сумму и смотрите, как она наполняется. Подушку безопасности проще собрать, когда её видно.';

  @override
  String get welcomePrivacyTitle => 'Ваши деньги остаются вашими';

  @override
  String get welcomePrivacyBody =>
      'Ваши цифры принадлежат только вам. Мы ничего не продаём и ни с кем не делимся.';

  @override
  String stepOf(int step, int total) {
    return 'Шаг $step из $total';
  }

  @override
  String get onboardingNameTitle => 'Как к вам обращаться?';

  @override
  String get onboardingNameBody => 'Только для приветствия и больше нигде.';

  @override
  String get onboardingNameHint =>
      'Достаточно имени. Позже его можно изменить.';

  @override
  String get onboardingCurrencyTitle => 'Какой валютой вы пользуетесь?';

  @override
  String get onboardingCurrencyBody =>
      'Все суммы в приложении показываются в этой валюте. Выбор ничего не конвертирует.';

  @override
  String get onboardingCurrencySearch => 'Искать среди всех валют';

  @override
  String get onboardingAppearanceTitle => 'Сделайте по-своему';

  @override
  String get onboardingAppearanceBody =>
      'Выберите оформление. Всё меняется прямо при касании, и вернуться можно в любой момент.';

  @override
  String get onboardingNotificationsTitle => 'Держите руку на пульсе';

  @override
  String get onboardingNotificationsBody =>
      'Тихая подсказка в нужный момент — именно то, что превращает это в привычку.';

  @override
  String get onboardingNotifyReminders =>
      'Мягкое напоминание записать потраченное';

  @override
  String get onboardingNotifyBudget =>
      'Предупреждение до того, как бюджет закончится';

  @override
  String get onboardingNotifySummary => 'Еженедельная сводка, куда ушли деньги';

  @override
  String get onboardingNotifyEnable => 'Включить уведомления';

  @override
  String get onboardingNotifyDone => 'Настройки уведомлений сохранены';

  @override
  String get onboardingNotifyLater =>
      'Всё это можно изменить в настройках в любой момент.';

  @override
  String get onboardingReadyTitle => 'Всё готово';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Всё готово, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Настройка завершена. Показать коротко, как всё устроено?';

  @override
  String get onboardingTakeTour => 'Покажите мне';

  @override
  String get onboardingGoToApp => 'Перейти в приложение';

  @override
  String get onboardingTourLater =>
      'Не сейчас? Руководство останется в настройках — на любой момент.';

  @override
  String get beginnersGuide => 'Руководство для начинающих';

  @override
  String get guideFinish => 'Завершить';

  @override
  String chapterOf(int number, int total) {
    return 'Глава $number из $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Открыть: $screen';
  }

  @override
  String get guideDashboardTitle => 'Ваша главная';

  @override
  String get guideDashboardBody =>
      'Всё начинается здесь. Карточка сверху — сколько у вас осталось; под ней доходы и расходы за период, затем траты, бюджеты и цели.';

  @override
  String get guideDashboardTip1 =>
      'Потяните экран вниз, чтобы обновить всё сразу.';

  @override
  String get guideDashboardTip2 =>
      'Нажмите карточку доходов или расходов, чтобы перейти к нужному списку.';

  @override
  String get guideDashboardTip3 =>
      'Кольца и наблюдения обновляются, как только вы что-то записали.';

  @override
  String get guideAddTitle => 'Как записывать деньги';

  @override
  String get guideAddBody =>
      'Кнопка в середине панели — начало всего. Она открывает короткое меню: расход, доход, долг, бюджет или цель накоплений.';

  @override
  String get guideAddTip1 =>
      'Нажмите центральную кнопку, чтобы записать приход или расход.';

  @override
  String get guideAddTip2 =>
      'Удержите её, чтобы сразу перейти к новому расходу, минуя меню.';

  @override
  String get guideAddTip3 =>
      'Всегда выбирайте категорию — именно на ней держатся графики и бюджеты.';

  @override
  String get guideCategoriesTitle => 'Категории';

  @override
  String get guideCategoriesBody =>
      'Категории группируют траты. Встроенных хватает большинству, но их можно переименовать или добавить свои.';

  @override
  String get guideCategoriesTip1 =>
      'Настройки, затем «Управление категориями» — изменить или добавить.';

  @override
  String get guideCategoriesTip2 =>
      'Всё без категории попадает в «Прочее», чтобы графики оставались честными.';

  @override
  String get guideBudgetTitle => 'Бюджеты';

  @override
  String get guideBudgetBody =>
      'Бюджет — это месячный потолок для одной категории. Полоса заполняется по мере трат и меняет цвет у предела, так что вы узнаёте заранее.';

  @override
  String get guideBudgetTip1 =>
      'Начните с двух-трёх категорий, а не со всех сразу.';

  @override
  String get guideBudgetTip2 =>
      'Поставьте лимит чуть выше обычных трат, а потом постепенно сужайте.';

  @override
  String get guideBudgetTip3 =>
      'Оставьте оповещения включёнными — приложение предупредит, когда бюджет подойдёт к концу.';

  @override
  String get guideSavingsTitle => 'Цели накоплений';

  @override
  String get guideSavingsBody =>
      'Назовите, на что копите, задайте сумму и дату — приложение посчитает, сколько откладывать каждый месяц.';

  @override
  String get guideSavingsTip1 =>
      'Названную цель держать проще, чем смутное намерение копить.';

  @override
  String get guideSavingsTip2 =>
      'Несколько небольших целей доводят до конца чаще, чем одну крупную.';

  @override
  String get guideLoansTitle => 'Долги и кредиты';

  @override
  String get guideLoansBody =>
      'Запишите, сколько должны, во что это обходится и когда следующий платёж. Всё, что вы гасите, собрано в одном списке с остатком.';

  @override
  String get guideLoansTip1 =>
      'Укажите дату платежа, и напоминания сами будут за ней следить.';

  @override
  String get guideLoansTip2 =>
      'Просроченный долг светится красным на главной, пока не будет оплачен.';

  @override
  String get guideReportsTitle => 'Отчёты';

  @override
  String get guideReportsBody =>
      'Взгляд поглубже: доходы против расходов, траты по категориям, как держались бюджеты и какая доля дохода осталась у вас.';

  @override
  String get guideReportsTip1 =>
      'Переключайте неделю, месяц и квартал наверху экрана.';

  @override
  String get guideReportsTip2 =>
      'Выгрузите или отправьте PDF — он выйдет на вашем языке и в его направлении письма.';

  @override
  String get guideSettingsTitle => 'Настройки';

  @override
  String get guideSettingsBody =>
      'Язык, валюта, цвета и оповещения — всё здесь, и первоначальная настройка ничего не закрепляет: меняйте что угодно и когда угодно.';

  @override
  String get guideSettingsTip1 =>
      'Сорок языков, и для тех, что читаются справа налево, весь интерфейс зеркалится.';

  @override
  String get guideSettingsTip2 =>
      'Выберите нужные оповещения и часы, в которые они могут приходить.';

  @override
  String get guideSettingsTip3 => 'Тихие часы придерживают всё до утра.';

  @override
  String get guideHabitTitle => 'Чтобы вошло в привычку';

  @override
  String get guideHabitBody =>
      'Приложение полезно ровно настолько, насколько вы его наполняете. Минута в день лучше часа раз в месяц, а через две недели цифры начнут говорить.';

  @override
  String get guideHabitTip1 => 'Записывайте траты сразу, а не в конце недели.';

  @override
  String get guideHabitTip2 =>
      'Загляните на главную раз в день. Десяти секунд достаточно.';

  @override
  String get guideHabitTip3 =>
      'Это руководство остаётся в настройках — возвращайтесь когда угодно.';

  @override
  String get appearance => 'Оформление';

  @override
  String get themeCaption => 'Светлое, тёмное или как в системе.';

  @override
  String get accentColor => 'Акцентный цвет';

  @override
  String get accentColorCaption => 'Красит кнопки, выделения и графики.';

  @override
  String get accentSemanticsNote =>
      'Приход и расход сохраняют свои цвета в любой теме, поэтому цифра не меняет смысл из-за смены акцента.';

  @override
  String get accentTeal => 'Бирюзовый';

  @override
  String get accentGreen => 'Зелёный';

  @override
  String get accentSky => 'Небесный';

  @override
  String get accentBlue => 'Синий';

  @override
  String get accentIndigo => 'Индиго';

  @override
  String get accentViolet => 'Фиолетовый';

  @override
  String get accentPink => 'Розовый';

  @override
  String get accentCrimson => 'Малиновый';

  @override
  String get accentOrange => 'Оранжевый';

  @override
  String get accentSlate => 'Графитовый';

  @override
  String get searchLanguages => 'Поиск языков';

  @override
  String get suggestedLanguages => 'Рекомендуемые';

  @override
  String get allLanguages => 'Все языки';

  @override
  String get noLanguagesFound => 'Языки не найдены';

  @override
  String get noLanguagesFoundMessage =>
      'Попробуйте название по-английски или двухбуквенный код.';

  @override
  String get rightToLeft => 'Справа налево';

  @override
  String get replayGuide => 'Пройти руководство заново';

  @override
  String get replaySetup => 'Пройти настройку заново';

  @override
  String get replaySetupBody =>
      'Ответьте на первые вопросы ещё раз. Ничто из записанного вами не удаляется.';

  @override
  String get rateTitle => 'Нравится RainyPenny?';

  @override
  String get rateBody =>
      'Вы пользуетесь приложением уже некоторое время. Оценка займёт мгновение и поможет другим найти его.';

  @override
  String get rateAction => 'Оценить приложение';

  @override
  String get rateLater => 'Может быть, позже';

  @override
  String get rateNever => 'Нет, спасибо';

  @override
  String get rateThanks => 'Спасибо';

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

  @override
  String get smartBudgetSplit => 'Smart Budget Split';

  @override
  String get smartBudgetSplitSubtitle =>
      'Enter your monthly salary to calculate recommended limits';

  @override
  String get monthlyNetSalary => 'Monthly Net Salary';

  @override
  String get categoryAllocations => 'Category Allocations';

  @override
  String totalBudgeted(String amount) {
    return 'Total: $amount';
  }

  @override
  String get applyAllBudgets => 'Apply All Budgets';

  @override
  String get applyingBudgets => 'Applying budgets...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count category budgets created.',
      one: '1 category budget created.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Failed to save budgets.';

  @override
  String get recommendedBudget => 'Recommended budget';
}
