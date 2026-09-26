// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppL10nEs extends AppL10n {
  AppL10nEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Ahorra para los días difíciles';

  @override
  String get navHome => 'Inicio';

  @override
  String get navTransactions => 'Transacciones';

  @override
  String get navAdd => 'Añadir';

  @override
  String get navReports => 'Informes';

  @override
  String get navProfile => 'Perfil';

  @override
  String greetingMorning(String name) {
    return 'Buenos días, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Buenas tardes, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Buenas noches, $name';
  }

  @override
  String get greetingSubtitle => 'Este es tu resumen financiero';

  @override
  String get totalBalance => 'Saldo total';

  @override
  String get vsLastPeriod => 'vs. período anterior';

  @override
  String get income => 'Ingresos';

  @override
  String get expenses => 'Gastos';

  @override
  String get netBalance => 'Saldo neto';

  @override
  String get lastThirtyDays => 'Últimos 30 días';

  @override
  String get quickActions => 'Acciones rápidas';

  @override
  String get addIncome => 'Añadir ingreso';

  @override
  String get addExpense => 'Añadir gasto';

  @override
  String get spendingOverview => 'Resumen de gastos';

  @override
  String get recentTransactions => 'Transacciones recientes';

  @override
  String get seeAll => 'Ver todo';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get budgetProgress => 'Progreso del presupuesto';

  @override
  String get savingsGoals => 'Metas de ahorro';

  @override
  String get financialInsight => 'Información financiera';

  @override
  String get financialHealth => 'Salud financiera';

  @override
  String ofTotal(String total) {
    return 'de $total';
  }

  @override
  String get searchTransactions => 'Buscar transacciones';

  @override
  String get filterAll => 'Todas';

  @override
  String get filterIncome => 'Ingresos';

  @override
  String get filterExpenses => 'Gastos';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get noTransactionsTitle => 'No se encontraron transacciones';

  @override
  String get noTransactionsBody =>
      'Prueba con otra búsqueda o filtro para ver más actividad.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transacciones',
      one: '1 transacción',
      zero: 'Sin transacciones',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Añadir transacción';

  @override
  String get amount => 'Importe';

  @override
  String get category => 'Categoría';

  @override
  String get date => 'Fecha';

  @override
  String get note => 'Nota';

  @override
  String get noteHint => 'Nota opcional';

  @override
  String get saveIncome => 'Guardar ingreso';

  @override
  String get saveExpense => 'Guardar gasto';

  @override
  String get selectCategory => 'Seleccionar categoría';

  @override
  String get transactionSaved => 'Transacción guardada';

  @override
  String get amountRequired => 'Introduce un importe mayor que cero';

  @override
  String get titleRequired => 'Ponle un nombre a esta transacción';

  @override
  String get descriptionLabel => 'Descripción';

  @override
  String get descriptionHint => 'p. ej., Supermercado';

  @override
  String get budget => 'Presupuesto';

  @override
  String get budgets => 'Presupuestos';

  @override
  String get totalBudget => 'Presupuesto total';

  @override
  String get spent => 'Gastado';

  @override
  String get remaining => 'Restante';

  @override
  String budgetUsed(int percent) {
    return '$percent% utilizado';
  }

  @override
  String get onTrack => 'En buen camino';

  @override
  String get approachingLimit => 'Cerca del límite';

  @override
  String get overBudget => 'Presupuesto excedido';

  @override
  String get savings => 'Ahorros';

  @override
  String get yourGoals => 'Tus metas';

  @override
  String get saved => 'Ahorrado';

  @override
  String get target => 'Objetivo';

  @override
  String get monthlyContribution => 'Mensual';

  @override
  String get addFunds => 'Añadir fondos';

  @override
  String get goalComplete => 'Meta alcanzada';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses restantes',
      one: '1 mes restante',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Préstamos y deudas';

  @override
  String get totalOutstanding => 'Total pendiente';

  @override
  String get monthlyPayment => 'Mensual';

  @override
  String get nextPayment => 'Próximo pago';

  @override
  String paidOff(int percent) {
    return '$percent% pagado';
  }

  @override
  String get interestRate => 'Interés';

  @override
  String get upcomingPayments => 'Próximos pagos';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vence en $count días',
      one: 'Vence mañana',
      zero: 'Vence hoy',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Vencido';

  @override
  String get reports => 'Informes';

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mes';

  @override
  String get quarter => 'Trimestre';

  @override
  String get incomeVsExpenses => 'Ingresos frente a gastos';

  @override
  String get spendingByCategory => 'Gastos por categoría';

  @override
  String get budgetPerformance => 'Rendimiento del presupuesto';

  @override
  String get insights => 'Información';

  @override
  String get savingsRate => 'Tasa de ahorro';

  @override
  String get profile => 'Perfil';

  @override
  String get account => 'Cuenta';

  @override
  String get personalInformation => 'Información personal';

  @override
  String get changePassword => 'Cambiar contraseña';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get preferences => 'Preferencias';

  @override
  String get language => 'Idioma';

  @override
  String get currency => 'Moneda';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Seguridad';

  @override
  String get privacyAndSecurity => 'Privacidad y seguridad';

  @override
  String get help => 'Ayuda';

  @override
  String get helpAndSupport => 'Ayuda y soporte';

  @override
  String get termsAndConditions => 'Términos y condiciones';

  @override
  String get logOut => 'Cerrar sesión';

  @override
  String memberSince(String date) {
    return 'Miembro desde $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get settings => 'Ajustes';

  @override
  String get noNotificationsTitle => 'Estás al día';

  @override
  String get noNotificationsBody =>
      'Aquí aparecerán nuevos avisos y recordatorios.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get done => 'Listo';

  @override
  String get retry => 'Reintentar';

  @override
  String get close => 'Cerrar';

  @override
  String get somethingWentWrong => 'Algo salió mal';

  @override
  String get comingSoon => 'Próximamente en la versión completa';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Eliminar';

  @override
  String get undo => 'Deshacer';

  @override
  String get add => 'Añadir';

  @override
  String get create => 'Crear';

  @override
  String get nameRequired => 'Introduce tu nombre';

  @override
  String get amountAboveZero => 'Introduce un importe mayor que cero';

  @override
  String get editTransaction => 'Editar transacción';

  @override
  String get deleteTransaction => '¿Eliminar transacción?';

  @override
  String deleteTransactionBody(String title) {
    return '$title se eliminará de tu registro.';
  }

  @override
  String get transactionDeleted => 'Transacción eliminada';

  @override
  String get transactionUpdated => 'Transacción actualizada';

  @override
  String get newBudget => 'Nuevo presupuesto';

  @override
  String get editBudget => 'Editar presupuesto';

  @override
  String get budgetLimit => 'Límite mensual';

  @override
  String get deleteBudget => '¿Eliminar presupuesto?';

  @override
  String deleteBudgetBody(String category) {
    return 'El presupuesto de $category se eliminará. Tus transacciones no se verán afectadas.';
  }

  @override
  String get budgetSaved => 'Presupuesto guardado';

  @override
  String get budgetDeleted => 'Presupuesto eliminado';

  @override
  String get allCategoriesBudgeted =>
      'Todas las categorías ya tienen presupuesto';

  @override
  String get noBudgetsTitle => 'Aún no hay presupuestos';

  @override
  String get noBudgetsBody =>
      'Establece un límite mensual para una categoría para empezar a controlarla.';

  @override
  String get newGoal => 'Nueva meta';

  @override
  String get editGoal => 'Editar meta';

  @override
  String get goalName => 'Nombre de la meta';

  @override
  String get goalNameHint => 'p. ej., Fondo de emergencia';

  @override
  String get targetAmount => 'Importe objetivo';

  @override
  String get alreadySaved => 'Ya ahorrado';

  @override
  String get deleteGoal => '¿Eliminar meta?';

  @override
  String deleteGoalBody(String name) {
    return '$name y su progreso se eliminarán.';
  }

  @override
  String get goalSaved => 'Meta guardada';

  @override
  String get goalDeleted => 'Meta eliminada';

  @override
  String get noGoalsTitle => 'Aún no hay metas de ahorro';

  @override
  String get noGoalsBody =>
      'Establece un objetivo y RainyPenny seguirá tu progreso.';

  @override
  String get fundsAdded => 'Fondos añadidos';

  @override
  String get newDebt => 'Nuevo préstamo o tarjeta';

  @override
  String get editDebt => 'Editar préstamo';

  @override
  String get debtName => 'Nombre';

  @override
  String get debtNameHint => 'p. ej., Préstamo del coche';

  @override
  String get lender => 'Prestamista';

  @override
  String get lenderHint => 'p. ej., Banco Meridian';

  @override
  String get originalAmount => 'Importe original';

  @override
  String get creditLimit => 'Límite de crédito';

  @override
  String get remainingBalance => 'Saldo pendiente';

  @override
  String get interestRatePercent => 'Tasa de interés (%)';

  @override
  String get kindLoan => 'Préstamo';

  @override
  String get kindCreditCard => 'Tarjeta de crédito';

  @override
  String get recordPayment => 'Registrar pago';

  @override
  String get paymentRecorded => 'Pago registrado';

  @override
  String get deleteDebt => '¿Eliminar esta deuda?';

  @override
  String deleteDebtBody(String name) {
    return '$name se eliminará de tus deudas.';
  }

  @override
  String get debtSaved => 'Guardado';

  @override
  String get debtDeleted => 'Eliminado';

  @override
  String get noDebtsTitle => 'No hay deudas registradas';

  @override
  String get noDebtsBody =>
      'Añade un préstamo o una tarjeta de crédito para controlar tus pagos.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Presupuesto de $subject excedido';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Has superado en $amount el presupuesto de $subject para este período.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject está cerca de su límite';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Tu presupuesto de $subject está utilizado al $percent%, con $amount restantes.';
  }

  @override
  String get insightOverIncomeTitle => 'Los gastos superan los ingresos';

  @override
  String get insightOverIncomeBody =>
      'Has gastado más de lo que has ganado en este período. Revisa tus categorías con mayores gastos para volver a equilibrar tus finanzas.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Los gastos de $subject han aumentado';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Tus gastos de $subject son un $percent% superiores a los del período anterior.';
  }

  @override
  String get insightTrendDownTitle => 'Los gastos están disminuyendo';

  @override
  String insightTrendDownBody(int percent) {
    return 'Los gastos generales son un $percent% inferiores a los del período anterior.';
  }

  @override
  String get insightTrendUpTitle => 'Los gastos están aumentando';

  @override
  String insightTrendUpBody(int percent) {
    return 'Los gastos generales son un $percent% superiores a los del período anterior.';
  }

  @override
  String get insightSavingsStrongTitle => 'Buen nivel de ahorro este período';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Has conservado el $percent% de tus ingresos, muy por encima del objetivo del $target%.';
  }

  @override
  String get insightSavingsLowTitle =>
      'La tasa de ahorro está por debajo del objetivo';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Has conservado el $percent% de tus ingresos este período. Intenta llegar al $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject está casi financiada';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Solo faltan $amount para alcanzar $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'En camino hacia $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months meses',
      one: '1 mes',
    );
    return 'Con $amount al mes alcanzarás esta meta en $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Pago de $subject vencido';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days días',
      one: '1 día',
    );
    return 'El pago de $amount de $subject lleva $_temp0 de retraso.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Próximo pago de $subject';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'en $days días',
      one: 'mañana',
      zero: 'hoy',
    );
    return 'Vencen $amount $_temp0.';
  }

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Crear cuenta';

  @override
  String get signInSubtitle => 'Te damos la bienvenida. Tu dinero te espera.';

  @override
  String get signUpSubtitle => 'Unos pocos datos y tendrás todo listo.';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get emailHint => '[tu@email.com](mailto:tu@email.com)';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get passwordHint => 'Al menos 8 caracteres';

  @override
  String get fullNameLabel => 'Nombre completo';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => '¿Has olvidado tu contraseña?';

  @override
  String get resetSent =>
      'Revisa tu bandeja de entrada para encontrar el enlace de restablecimiento';

  @override
  String get noAccountYet => '¿Eres nuevo aquí?';

  @override
  String get haveAccount => '¿Ya tienes una cuenta?';

  @override
  String get emailInvalid => 'Introduce una dirección de correo válida';

  @override
  String get passwordTooShort => 'Usa al menos 8 caracteres';

  @override
  String get signOutConfirm => '¿Cerrar sesión?';

  @override
  String get signOutBody =>
      'Tendrás que volver a iniciar sesión para ver tus finanzas.';

  @override
  String get dataSource => 'Fuente de datos';

  @override
  String get insightWeeklySummaryTitle => 'Resumen de tu semana';

  @override
  String get insightWeeklySummaryBody =>
      'Descubre en qué se fue tu dinero esta semana y cómo van tus presupuestos.';

  @override
  String get notificationSettings => 'Notificaciones';

  @override
  String get alertsSection => 'Alertas';

  @override
  String get budgetAlerts => 'Alertas de presupuesto';

  @override
  String get budgetAlertsBody =>
      'Cuando un presupuesto se acerque o supere su límite';

  @override
  String get paymentReminders => 'Recordatorios de pago';

  @override
  String get paymentRemindersBody => 'Unos días antes de que venza un pago';

  @override
  String get savingsUpdates => 'Actualizaciones de ahorro';

  @override
  String get savingsUpdatesBody => 'Progreso de tus metas';

  @override
  String get weeklySummaryLabel => 'Resumen semanal';

  @override
  String get weeklySummaryBody =>
      'Un resumen de la semana que acaba de terminar';

  @override
  String get scheduleSection => 'Horarios';

  @override
  String get reminderTime => 'Hora del recordatorio';

  @override
  String get quietHours => 'Horas de silencio';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Día del resumen';

  @override
  String get permissionRequired => 'Las notificaciones están desactivadas';

  @override
  String get permissionRequiredBody =>
      'Permite las notificaciones para que RainyPenny pueda avisarte antes de que un presupuesto o un pago se descontrole.';

  @override
  String get allowNotifications => 'Permitir notificaciones';

  @override
  String get permissionDenied =>
      'Las notificaciones están bloqueadas. Puedes activarlas en los ajustes de tu dispositivo.';

  @override
  String get upcomingAlerts => 'Programadas';

  @override
  String get noScheduledAlerts => 'No hay nada programado';

  @override
  String get noScheduledAlertsBody =>
      'Las alertas aparecerán aquí cuando tus presupuestos y pagos se acerquen a sus límites o fechas.';

  @override
  String scheduledFor(String date) {
    return 'Programada para $date';
  }

  @override
  String get everyWeek => 'Cada semana';

  @override
  String get allNotificationsOff =>
      'Todas las notificaciones están desactivadas';

  @override
  String get needsAttention => 'Requiere atención';

  @override
  String get quickActionsTitle => '¿Qué quieres hacer?';

  @override
  String get createSection => 'Registrar';

  @override
  String get jumpToSection => 'Ir a';

  @override
  String get addLoanAction => 'Añadir préstamo';

  @override
  String get addBudgetAction => 'Añadir presupuesto';

  @override
  String get addGoalAction => 'Añadir meta';

  @override
  String get longPressHint =>
      'Consejo: mantén pulsado + para registrar un gasto directamente';

  @override
  String get searchCurrencies => 'Buscar monedas';

  @override
  String get noCurrenciesFound => 'No se encontraron monedas';

  @override
  String get noCurrenciesFoundMessage =>
      'Prueba con otro código, símbolo o nombre.';

  @override
  String get popularCurrencies => 'Populares';

  @override
  String get allCurrencies => 'Todas las monedas';

  @override
  String get totalLoanAmount => 'Importe total del préstamo';

  @override
  String get installmentAmount => 'Importe de la cuota';

  @override
  String get numberOfInstallments => 'Número de cuotas';

  @override
  String get paidInstallments => 'Cuotas pagadas';

  @override
  String get remainingInstallments => 'Cuotas restantes';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid de $total pagadas';
  }

  @override
  String get finalPayment => 'Pago final';

  @override
  String get paymentDueDate => 'Fecha de vencimiento del pago';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Día $day de cada mes';
  }

  @override
  String get loanStatus => 'Estado';

  @override
  String get statusActive => 'En buen camino';

  @override
  String get statusDueSoon => 'Vence pronto';

  @override
  String get statusOverdue => 'Vencido';

  @override
  String get statusCompleted => 'Pagado';

  @override
  String get repaymentProgress => 'Progreso del pago';

  @override
  String get byAmount => 'Por importe';

  @override
  String get byInstallments => 'Por cuotas';

  @override
  String get startDate => 'Fecha de inicio';

  @override
  String get openEnded => 'Sin plazo fijo';

  @override
  String get loanDetails => 'Detalles del préstamo';

  @override
  String get notSet => 'No establecido';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject vence hoy';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Tu pago de $amount vence hoy. Un toque rápido lo mantiene al día.';
  }

  @override
  String get remindMorningTitle => 'Buenos días ☀️';

  @override
  String get remindMorningBody =>
      'Empieza el día con tus finanzas bajo control. ¿Hay algo que añadir de ayer?';

  @override
  String get remindNoonTitle => 'Control del mediodía';

  @override
  String get remindNoonBody =>
      '¿Almuerzo, café, transporte? Añádelo en unos segundos.';

  @override
  String get remindAfternoonTitle => 'Puesta al día rápida';

  @override
  String get remindAfternoonBody =>
      'Registra lo que has gastado hasta ahora y mantén el día actualizado.';

  @override
  String get remindEveningTitle => 'Cerrando el día';

  @override
  String get remindEveningBody =>
      'Dos minutos ahora y los números de hoy estarán completos.';

  @override
  String get happyWeekendTitle => '¡Feliz fin de semana! 🎉';

  @override
  String get happyWeekendBody =>
      'Disfrútalo y no pierdas de vista los gastos del fin de semana.';

  @override
  String get dailyReminders => 'Recordatorios diarios de gastos';

  @override
  String get dailyRemindersBody =>
      'Recordatorios amables para mantener tus gastos al día';

  @override
  String get weekendGreeting => 'Saludo de fin de semana';

  @override
  String get weekendGreetingBody =>
      'Un saludo amable al comenzar el fin de semana';

  @override
  String get reminderTimesSection => 'Horarios de los recordatorios';

  @override
  String get slotMorning => 'Mañana';

  @override
  String get slotNoon => 'Mediodía';

  @override
  String get slotAfternoon => 'Tarde';

  @override
  String get slotEvening => 'Noche';

  @override
  String get everyDay => 'Todos los días';

  @override
  String get financialReport => 'Informe financiero';

  @override
  String get preparedFor => 'Preparado para';

  @override
  String get generatedOn => 'Generado el';

  @override
  String get reportDisclaimer =>
      'Generado por RainyPenny a partir de tus propios registros.';

  @override
  String pageOf(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get overview => 'Resumen';

  @override
  String get description => 'Descripción';

  @override
  String get totalIncome => 'Ingresos totales';

  @override
  String get totalExpenses => 'Gastos totales';

  @override
  String get totalSaved => 'Total ahorrado';

  @override
  String get shareOfTotal => 'Proporción';

  @override
  String get used => 'Utilizado';

  @override
  String get goal => 'Meta';

  @override
  String get targetDate => 'Fecha objetivo';

  @override
  String get progress => 'Progreso';

  @override
  String get paidOffShort => 'Pagado';

  @override
  String get transactions => 'Transacciones';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'y $count transacciones más',
      one: 'y 1 transacción más',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportar PDF';

  @override
  String get sharePdf => 'Compartir informe';

  @override
  String get preparingReport => 'Preparando tu informe…';

  @override
  String get reportReady => 'Informe listo';

  @override
  String get reportFailed => 'No se pudo crear el informe';

  @override
  String get categories => 'Categorías';

  @override
  String get categoriesIntro =>
      'Añade tus propias categorías para clasificar ingresos y gastos exactamente como tú los entiendes.';

  @override
  String get expenseCategories => 'Categorías de gastos';

  @override
  String get incomeCategories => 'Categorías de ingresos';

  @override
  String get newCategory => 'Nueva categoría';

  @override
  String get editCategory => 'Editar categoría';

  @override
  String get categoryName => 'Nombre';

  @override
  String get categoryNameHint => 'p. ej., Cuidado de mascotas';

  @override
  String get icon => 'Icono';

  @override
  String get categorySaved => 'Categoría guardada';

  @override
  String get categoryDeleted => 'Categoría eliminada';

  @override
  String get deleteCategory => '¿Eliminar esta categoría?';

  @override
  String deleteCategoryBody(String name) {
    return '$name se eliminará de tus categorías.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registros todavía usan esta categoría',
      one: '1 registro todavía usa esta categoría',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Aún no hay nada aquí.';

  @override
  String get builtIn => 'Integrada';

  @override
  String get manageCategories => 'Gestionar categorías';

  @override
  String get expense => 'Gasto';

  @override
  String get languageNote =>
      'El árabe, urdu, persa y hebreo cambian toda la interfaz a derecha a izquierda, incluidos los gráficos y los informes PDF.';

  @override
  String get next => 'Siguiente';

  @override
  String get back => 'Atrás';

  @override
  String get skip => 'Omitir';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get selected => 'Seleccionado';

  @override
  String get passwordRequired => 'Introduce tu contraseña';

  @override
  String get newPasswordLabel => 'Nueva contraseña';

  @override
  String get confirmPasswordLabel => 'Confirmar contraseña';

  @override
  String get passwordsDoNotMatch => 'Ambas contraseñas deben coincidir';

  @override
  String get showPassword => 'Mostrar contraseña';

  @override
  String get hidePassword => 'Ocultar contraseña';

  @override
  String get savePassword => 'Guardar contraseña';

  @override
  String get backToSignIn => 'Volver a iniciar sesión';

  @override
  String get alreadyHaveAccount => 'Ya tengo una cuenta';

  @override
  String get getStarted => 'Empezar';

  @override
  String get acceptTerms =>
      'Acepto los Términos del servicio y la Política de privacidad';

  @override
  String get acceptTermsRequired => 'Acepta para continuar';

  @override
  String get passwordStrengthTooShort => 'Demasiado corta';

  @override
  String get passwordStrengthWeak => 'Débil';

  @override
  String get passwordStrengthFair => 'Regular';

  @override
  String get passwordStrengthGood => 'Buena';

  @override
  String get passwordStrengthStrong => 'Fuerte';

  @override
  String get passwordAdvice =>
      'Una frase larga que puedas recordar es mejor que una corta llena de símbolos. Evita cualquier contraseña que ya uses en otro lugar.';

  @override
  String get authInvalidCredentials =>
      'Ese correo y contraseña no coinciden con ninguna cuenta';

  @override
  String get authEmailNotConfirmed =>
      'Confirma tu dirección de correo antes de iniciar sesión';

  @override
  String get authEmailAlreadyRegistered =>
      'Ya existe una cuenta con este correo';

  @override
  String get authWeakPassword => 'Elige una contraseña más larga';

  @override
  String get authRateLimited =>
      'Demasiados intentos. Inténtalo de nuevo en unos minutos';

  @override
  String get authNetworkError =>
      'Sin conexión. Comprueba tu red e inténtalo de nuevo';

  @override
  String get authGenericError => 'Algo salió mal. Inténtalo de nuevo';

  @override
  String get confirmEmailTitle => 'Revisa tu correo';

  @override
  String confirmEmailBody(String email) {
    return 'Hemos enviado un enlace de confirmación a $email. Ábrelo para terminar de configurar tu cuenta.';
  }

  @override
  String get resendConfirmation => 'Volver a enviar el correo de confirmación';

  @override
  String get confirmationResent => 'Correo de confirmación enviado';

  @override
  String get forgotPasswordTitle => 'Restablece tu contraseña';

  @override
  String get forgotPasswordSubtitle =>
      'Introduce el correo con el que te registraste y te enviaremos un enlace para elegir una nueva contraseña.';

  @override
  String get sendResetLink => 'Enviar enlace de restablecimiento';

  @override
  String get resetLinkSentTitle => 'Enlace de restablecimiento enviado';

  @override
  String resetLinkSentBody(String email) {
    return 'Si $email tiene una cuenta, recibirá un enlace de restablecimiento.';
  }

  @override
  String get resetLinkSentHint =>
      'El enlace caduca en una hora. Si no llega, revisa la carpeta de spam antes de solicitar otro.';

  @override
  String get tryAnotherEmail => 'Usar otro correo';

  @override
  String get resetPasswordTitle => 'Elige una nueva contraseña';

  @override
  String get resetPasswordSubtitle =>
      'Elige una que no hayas usado antes en esta cuenta.';

  @override
  String get passwordChangedTitle => 'Contraseña actualizada';

  @override
  String get passwordChangedBody =>
      'Tu nueva contraseña se ha guardado. Has iniciado sesión y todo está listo.';

  @override
  String get demoModeHint =>
      'Versión de demostración — no necesitas una cuenta';

  @override
  String get demoModeFill => 'Rellenar';

  @override
  String get welcomeTrackTitle => 'Descubre adónde va tu dinero';

  @override
  String get welcomeTrackBody =>
      'Registra lo que entra y lo que sale. RainyPenny lo convierte en una imagen que realmente puedes entender.';

  @override
  String get welcomeBudgetTitle => 'Establece límites que funcionen';

  @override
  String get welcomeBudgetBody =>
      'Da a cada parte de tus gastos un límite mensual y recibe un aviso antes de superarlo, no después.';

  @override
  String get welcomeGoalsTitle => 'Ahorra para lo que importa';

  @override
  String get welcomeGoalsBody =>
      'Ponle nombre a una meta, establece un objetivo y observa cómo se completa. Un fondo para días difíciles es más fácil de construir cuando puedes verlo.';

  @override
  String get welcomePrivacyTitle => 'Tu dinero sigue siendo tuyo';

  @override
  String get welcomePrivacyBody =>
      'Tus datos financieros son solo tuyos. No vendemos nada ni compartimos nada con nadie.';

  @override
  String stepOf(int step, int total) {
    return 'Paso $step de $total';
  }

  @override
  String get onboardingNameTitle => '¿Cómo quieres que te llamemos?';

  @override
  String get onboardingNameBody =>
      'Lo usaremos para saludarte y para nada más.';

  @override
  String get onboardingNameHint =>
      'Con tu nombre de pila es suficiente. Puedes cambiarlo más adelante.';

  @override
  String get onboardingCurrencyTitle => '¿Qué moneda utilizas?';

  @override
  String get onboardingCurrencyBody =>
      'Todas las cantidades de la aplicación se mostrarán en esta moneda. Elegirla no convierte nada.';

  @override
  String get onboardingCurrencySearch => 'Buscar todas las monedas';

  @override
  String get onboardingAppearanceTitle => 'Hazlo tuyo';

  @override
  String get onboardingAppearanceBody =>
      'Elige un aspecto. Todo cambiará al tocarlo y podrás volver a cambiarlo cuando quieras.';

  @override
  String get onboardingNotificationsTitle => 'Mantente al día';

  @override
  String get onboardingNotificationsBody =>
      'Un pequeño recordatorio en el momento adecuado es lo que convierte esto en un hábito.';

  @override
  String get onboardingNotifyReminders =>
      'Un recordatorio amable para registrar lo que has gastado';

  @override
  String get onboardingNotifyBudget =>
      'Un aviso antes de que se agote un presupuesto';

  @override
  String get onboardingNotifySummary =>
      'Un resumen semanal de adónde fue tu dinero';

  @override
  String get onboardingNotifyEnable => 'Activar notificaciones';

  @override
  String get onboardingNotifyDone => 'Ajustes de notificaciones guardados';

  @override
  String get onboardingNotifyLater =>
      'Puedes cambiar todo esto en Ajustes cuando quieras.';

  @override
  String get onboardingReadyTitle => 'Todo listo';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Todo listo, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Ya has terminado la configuración. ¿Quieres hacer un recorrido rápido para ver cómo funciona todo?';

  @override
  String get onboardingTakeTour => 'Enséñame cómo funciona';

  @override
  String get onboardingGoToApp => 'Ir a la aplicación';

  @override
  String get onboardingTourLater =>
      '¿Ahora no? La guía seguirá en Ajustes cuando quieras verla.';

  @override
  String get beginnersGuide => 'Guía para principiantes';

  @override
  String get guideFinish => 'Terminar';

  @override
  String chapterOf(int number, int total) {
    return 'Capítulo $number de $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Abrir $screen';
  }

  @override
  String get guideDashboardTitle => 'Tu panel';

  @override
  String get guideDashboardBody =>
      'Todo comienza aquí. La tarjeta superior muestra lo que te queda; debajo aparecen lo que entró y salió durante este período, seguidos de tus gastos, presupuestos y metas.';

  @override
  String get guideDashboardTip1 =>
      'Desliza la pantalla hacia abajo para actualizarlo todo de una vez.';

  @override
  String get guideDashboardTip2 =>
      'Toca la tarjeta de ingresos o gastos para ir directamente a esa lista.';

  @override
  String get guideDashboardTip3 =>
      'Los anillos y la información se actualizan en cuanto registras algo.';

  @override
  String get guideAddTitle => 'Registrar dinero';

  @override
  String get guideAddBody =>
      'El botón del centro de la barra es donde empieza todo. Abre un menú breve: dinero que sale, dinero que entra, una deuda, un presupuesto o una meta de ahorro.';

  @override
  String get guideAddTip1 =>
      'Toca el botón central para registrar dinero que entra o sale.';

  @override
  String get guideAddTip2 =>
      'Manténlo pulsado para ir directamente a un nuevo gasto y saltarte el menú.';

  @override
  String get guideAddTip3 =>
      'Elige siempre una categoría: eso es lo que hace que funcionen los gráficos y presupuestos.';

  @override
  String get guideCategoriesTitle => 'Categorías';

  @override
  String get guideCategoriesBody =>
      'Las categorías sirven para agrupar los gastos. Las que vienen con la aplicación cubren a la mayoría de las personas, y puedes cambiarles el nombre o añadir las tuyas.';

  @override
  String get guideCategoriesTip1 =>
      'Ve a Ajustes y después a Gestionar categorías para cambiar o añadir una.';

  @override
  String get guideCategoriesTip2 =>
      'Todo lo que quede sin categorizar irá a Otros para que los gráficos sigan siendo fieles.';

  @override
  String get guideBudgetTitle => 'Presupuestos';

  @override
  String get guideBudgetBody =>
      'Un presupuesto es un límite mensual para una categoría. La barra se llena a medida que gastas y cambia cuando te acercas al límite, para que lo sepas antes de superarlo.';

  @override
  String get guideBudgetTip1 =>
      'Empieza con dos o tres categorías, no con todas a la vez.';

  @override
  String get guideBudgetTip2 =>
      'Establece el límite un poco por encima de lo que sueles gastar y después ajústalo.';

  @override
  String get guideBudgetTip3 =>
      'Deja activadas las alertas de presupuesto y la aplicación te avisará cuando uno esté cerca de agotarse.';

  @override
  String get guideSavingsTitle => 'Metas de ahorro';

  @override
  String get guideSavingsBody =>
      'Pon nombre a aquello para lo que ahorras, establece un objetivo y una fecha, y la aplicación calcula cuánto necesitas apartar cada mes para conseguirlo.';

  @override
  String get guideSavingsTip1 =>
      'Una meta con nombre es más fácil de mantener que una intención vaga de ahorrar.';

  @override
  String get guideSavingsTip2 =>
      'Varias metas pequeñas suelen completarse más que una grande.';

  @override
  String get guideLoansTitle => 'Deudas y préstamos';

  @override
  String get guideLoansBody =>
      'Registra lo que debes, cuánto cuesta y cuándo vence el próximo pago. Todo lo que estás pagando aparece en una sola lista con el total pendiente.';

  @override
  String get guideLoansTip1 =>
      'Añade la fecha de vencimiento y los recordatorios de pago se encargarán de avisarte.';

  @override
  String get guideLoansTip2 =>
      'Una deuda marcada como vencida aparece en rojo en el panel hasta que se paga.';

  @override
  String get guideReportsTitle => 'Informes';

  @override
  String get guideReportsBody =>
      'La vista detallada: ingresos frente a gastos, gastos por categoría, cómo se comportaron tus presupuestos y qué proporción de tus ingresos conservaste.';

  @override
  String get guideReportsTip1 =>
      'Cambia entre semana, mes y trimestre en la parte superior de la pantalla.';

  @override
  String get guideReportsTip2 =>
      'Exporta o comparte un PDF: se genera en tu propio idioma y dirección de escritura.';

  @override
  String get guideSettingsTitle => 'Ajustes';

  @override
  String get guideSettingsBody =>
      'El idioma, la moneda, los colores y las alertas están aquí, y ninguno queda bloqueado durante la configuración. Puedes cambiar cualquiera cuando quieras.';

  @override
  String get guideSettingsTip1 =>
      'Cuarenta idiomas y toda la interfaz se refleja para los que escriben de derecha a izquierda.';

  @override
  String get guideSettingsTip2 =>
      'Elige qué alertas quieres y durante qué horas pueden llegar.';

  @override
  String get guideSettingsTip3 =>
      'Las horas de silencio retienen todo hasta la mañana.';

  @override
  String get guideHabitTitle => 'Haz que se convierta en un hábito';

  @override
  String get guideHabitBody =>
      'La aplicación solo es tan buena como los datos que introduces. Un minuto al día vale más que una hora una vez al mes, y después de un par de semanas los números empiezan a decirte algo.';

  @override
  String get guideHabitTip1 =>
      'Registra lo que gastas cuando sucede, no al final de la semana.';

  @override
  String get guideHabitTip2 =>
      'Mira el panel una vez al día. Diez segundos son suficientes.';

  @override
  String get guideHabitTip3 =>
      'Esta guía permanece en Ajustes: vuelve a ella cuando quieras.';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeCaption =>
      'Claro, oscuro o como esté configurado tu teléfono.';

  @override
  String get accentColor => 'Color de acento';

  @override
  String get accentColorCaption =>
      'Colorea los botones, resaltados y gráficos.';

  @override
  String get accentSemanticsNote =>
      'Los ingresos y los gastos mantienen sus propios colores en todos los temas, para que una cifra nunca cambie de significado al cambiar el color de acento.';

  @override
  String get accentTeal => 'Verde azulado';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentSky => 'Celeste';

  @override
  String get accentBlue => 'Azul';

  @override
  String get accentIndigo => 'Índigo';

  @override
  String get accentViolet => 'Violeta';

  @override
  String get accentPink => 'Rosa';

  @override
  String get accentCrimson => 'Carmesí';

  @override
  String get accentOrange => 'Naranja';

  @override
  String get accentSlate => 'Pizarra';

  @override
  String get searchLanguages => 'Buscar idiomas';

  @override
  String get suggestedLanguages => 'Sugeridos';

  @override
  String get allLanguages => 'Todos los idiomas';

  @override
  String get noLanguagesFound => 'No se encontraron idiomas';

  @override
  String get noLanguagesFoundMessage =>
      'Prueba con el nombre en inglés o con el código de dos letras.';

  @override
  String get rightToLeft => 'De derecha a izquierda';

  @override
  String get replayGuide => 'Repetir la guía';

  @override
  String get replaySetup => 'Volver a configurar';

  @override
  String get replaySetupBody =>
      'Vuelve a responder las preguntas iniciales. No se eliminará nada de lo que hayas registrado.';

  @override
  String get rateTitle => '¿Te gusta RainyPenny?';

  @override
  String get rateBody =>
      'Llevas un tiempo manteniendo este hábito. Una valoración solo lleva un momento y ayuda a otras personas a encontrar la aplicación.';

  @override
  String get rateAction => 'Valorar la aplicación';

  @override
  String get rateLater => 'Quizás más tarde';

  @override
  String get rateNever => 'No, gracias';

  @override
  String get rateThanks => 'Gracias';

  @override
  String get monthlySalary => 'Salario mensual';

  @override
  String get remainingAmount => 'Restante';

  @override
  String get carriedForward => 'Arrastrado';

  @override
  String get carriedForwardHint => 'Lo que sobró del ciclo anterior';

  @override
  String get totalSpending => 'Gastos totales';

  @override
  String get salaryCycle => 'Ciclo salarial';

  @override
  String get payday => 'Día de cobro';

  @override
  String get paydayDescription =>
      'El día en que recibes tu salario. Tu mes financiero va desde este día hasta el día anterior al siguiente.';

  @override
  String get paydayUpdated => 'Día de cobro actualizado';

  @override
  String paydayDayOfMonth(int day) {
    return 'Día $day';
  }

  @override
  String get paydayShortMonthNote =>
      'En los meses más cortos, el ciclo comienza en el último día en su lugar.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días para cobrar',
      one: '1 día para cobrar',
      zero: 'Último día del ciclo',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Próximo día de cobro';

  @override
  String get spentSoFar => 'Gastado hasta ahora';

  @override
  String get dailyAllowance => 'Disponible para gastar al día';

  @override
  String get overspentNotice =>
      'Has gastado más de lo que ingresó en este ciclo.';

  @override
  String get backToThisMonth => 'Volver a este mes';

  @override
  String get cycleRangeLabel => 'Ciclo';

  @override
  String get noSalaryRecorded => 'Aún no se ha registrado ningún salario';

  @override
  String get addSalaryAction => 'Añadir tu salario';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excelente';

  @override
  String get healthGood => 'Buena';

  @override
  String get healthFair => 'Regular';

  @override
  String get healthNeedsWork => 'Necesita mejorar';

  @override
  String get healthExcellentBody =>
      'Estás ahorrando bien y manteniéndote dentro de tus presupuestos.';

  @override
  String get healthGoodBody =>
      'Tus gastos están dentro de lo previsto en este período.';

  @override
  String get healthFairBody =>
      'Algunos presupuestos están cerca del límite. Unos pequeños cambios ayudarán.';

  @override
  String get healthNeedsWorkBody =>
      'Los gastos están superando tu plan. Empieza por tu categoría con mayor gasto.';

  @override
  String get factorSavingsRate => 'Tasa de ahorro';

  @override
  String get factorBudgetControl => 'Control del presupuesto';

  @override
  String get factorDebtLoad => 'Carga de deuda';

  @override
  String get factorSpendingTrend => 'Tendencia de gastos';

  @override
  String factorKept(String percent) {
    return '$percent% conservado';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilizado';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% de los ingresos';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Sube un $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Baja un $percent%';
  }

  @override
  String get howScoreWorks => 'Cómo funciona esta puntuación';

  @override
  String get healthScoreExplainer =>
      'Tu puntuación combina cuatro factores: cuánto de tus ingresos conservas, qué tan bien te mantienes dentro de tus presupuestos, cuánto de tus ingresos se destina a deudas y si tus gastos están aumentando o disminuyendo.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% de la puntuación';
  }

  @override
  String get viewHealthDetails => 'Ver el desglose';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get profileUpdated => 'Perfil actualizado';

  @override
  String get changePhoto => 'Cambiar foto';

  @override
  String get removePhoto => 'Eliminar foto';

  @override
  String get personalInformationIntro =>
      'Tu nombre y foto aparecen en toda la aplicación. Tu correo electrónico es la dirección con la que inicias sesión.';

  @override
  String get emailNotEditable =>
      'Contacta con soporte para cambiar la dirección con la que inicias sesión.';

  @override
  String get pressBackAgainToExit => 'Pulsa atrás de nuevo para salir';

  @override
  String get categoryHousing => 'Vivienda';

  @override
  String get categoryFood => 'Comida y restaurantes';

  @override
  String get categoryTransport => 'Transporte';

  @override
  String get categoryShopping => 'Compras';

  @override
  String get categoryBills => 'Facturas y servicios';

  @override
  String get categoryEntertainment => 'Entretenimiento';

  @override
  String get categoryHealth => 'Salud y bienestar';

  @override
  String get categoryEducation => 'Educación';

  @override
  String get categoryTravel => 'Viajes';

  @override
  String get categorySalary => 'Salario';

  @override
  String get categoryFreelance => 'Trabajo freelance';

  @override
  String get categoryInvestments => 'Inversiones';

  @override
  String get categoryGift => 'Regalos';

  @override
  String get categoryOther => 'Otros';

  @override
  String get categoryGroceries => 'Supermercado';

  @override
  String get categoryDining => 'Restaurantes';

  @override
  String get categoryCoffee => 'Café';

  @override
  String get categoryUtilities => 'Servicios';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Teléfono';

  @override
  String get categoryInsurance => 'Seguros';

  @override
  String get categorySubscriptions => 'Suscripciones';

  @override
  String get categoryPersonalCare => 'Cuidado personal';

  @override
  String get categoryClothing => 'Ropa';

  @override
  String get categoryElectronics => 'Electrónica';

  @override
  String get categoryHomeSupplies => 'Artículos para el hogar';

  @override
  String get categoryPets => 'Mascotas';

  @override
  String get categoryChildcare => 'Cuidado infantil';

  @override
  String get categoryFamily => 'Familia';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Deportes';

  @override
  String get categoryMedicine => 'Medicamentos';

  @override
  String get categoryMedical => 'Atención médica';

  @override
  String get categoryCharity => 'Donaciones';

  @override
  String get categoryTaxes => 'Impuestos';

  @override
  String get categoryFees => 'Comisiones';

  @override
  String get categoryDebt => 'Deudas';

  @override
  String get categorySavings => 'Ahorros';

  @override
  String get categoryRepairs => 'Reparaciones';

  @override
  String get categoryCarMaintenance => 'Mantenimiento del coche';

  @override
  String get categoryFuel => 'Combustible';

  @override
  String get categoryParking => 'Aparcamiento';

  @override
  String get categoryPublicTransport => 'Transporte público';

  @override
  String get categoryRent => 'Alquiler';

  @override
  String get categoryMortgage => 'Hipoteca';

  @override
  String get categoryBonus => 'Bonificación';

  @override
  String get categoryCommission => 'Comisiones';

  @override
  String get categoryPension => 'Pensión';

  @override
  String get categoryInterest => 'Intereses';

  @override
  String get categoryDividends => 'Dividendos';

  @override
  String get categoryCashback => 'Devolución de dinero';

  @override
  String get categoryRefund => 'Reembolso';

  @override
  String get categoryRentalIncome => 'Ingresos por alquiler';

  @override
  String get addCategory => 'Nueva categoría';

  @override
  String get filterByCategory => 'Filtrar por categoría';

  @override
  String get allCategories => 'Todas las categorías';

  @override
  String get clearFilters => 'Borrar filtros';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Todo el tiempo';

  @override
  String get customRange => 'Personalizado';

  @override
  String get selectDateRange => 'Elegir período';

  @override
  String rangeApplied(String start, String end) {
    return 'Mostrando $start – $end';
  }

  @override
  String get loans => 'Préstamos';

  @override
  String get debts => 'Deudas';

  @override
  String get noLoansTitle => 'No hay préstamos';

  @override
  String get noLoansBody => 'No tienes préstamos activos.';

  @override
  String get emptyHealthTitle => 'Aún no hay puntuación financiera';

  @override
  String get emptyHealthDescription =>
      'Necesitamos un poco de actividad financiera antes de poder calcular una puntuación financiera precisa.';

  @override
  String get emptyHealthAddTransactions =>
      'Añade transacciones de ingresos o gastos';

  @override
  String get emptyHealthSetBudgets => 'Configura tus presupuestos mensuales';

  @override
  String get emptyHealthTrackLoans => 'Registra préstamos o deudas (opcional)';

  @override
  String get emptyHealthCardSubtitle =>
      'Añade transacciones para calcular tu puntuación y obtener información.';

  @override
  String get smartBudgetSplit => 'Distribución inteligente del presupuesto';

  @override
  String get smartBudgetSplitSubtitle =>
      'Introduce tu salario mensual para calcular límites recomendados';

  @override
  String get monthlyNetSalary => 'Salario neto mensual';

  @override
  String get categoryAllocations => 'Distribuciones por categoría';

  @override
  String totalBudgeted(String amount) {
    return 'Total: $amount';
  }

  @override
  String get applyAllBudgets => 'Aplicar todos los presupuestos';

  @override
  String get applyingBudgets => 'Aplicando presupuestos...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se crearon $count presupuestos de categoría.',
      one: 'Se creó 1 presupuesto de categoría.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'No se pudieron guardar los presupuestos.';

  @override
  String get recommendedBudget => 'Presupuesto recomendado';
}
