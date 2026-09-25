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
  String get appTagline => 'Ahorra para los días de lluvia';

  @override
  String get navHome => 'Inicio';

  @override
  String get navTransactions => 'Movimientos';

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
  String get vsLastPeriod => 'vs. periodo anterior';

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
  String get recentTransactions => 'Movimientos recientes';

  @override
  String get seeAll => 'Ver todo';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get budgetProgress => 'Progreso del presupuesto';

  @override
  String get savingsGoals => 'Metas de ahorro';

  @override
  String get financialInsight => 'Análisis financiero';

  @override
  String get financialHealth => 'Salud financiera';

  @override
  String ofTotal(String total) {
    return 'de $total';
  }

  @override
  String get searchTransactions => 'Buscar movimientos';

  @override
  String get filterAll => 'Todo';

  @override
  String get filterIncome => 'Ingresos';

  @override
  String get filterExpenses => 'Gastos';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get noTransactionsTitle => 'Sin movimientos';

  @override
  String get noTransactionsBody => 'Prueba con otra búsqueda o filtro.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count movimientos',
      one: '1 movimiento',
      zero: 'Sin movimientos',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Añadir movimiento';

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
  String get selectCategory => 'Elegir categoría';

  @override
  String get transactionSaved => 'Movimiento guardado';

  @override
  String get amountRequired => 'Introduce un importe mayor que cero';

  @override
  String get titleRequired => 'Ponle un nombre a este movimiento';

  @override
  String get descriptionLabel => 'Descripción';

  @override
  String get descriptionHint => 'p. ej. Supermercado';

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
    return '$percent% usado';
  }

  @override
  String get onTrack => 'En orden';

  @override
  String get approachingLimit => 'Cerca del límite';

  @override
  String get overBudget => 'Presupuesto superado';

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
      other: 'quedan $count meses',
      one: 'queda 1 mes',
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
  String get incomeVsExpenses => 'Ingresos vs. gastos';

  @override
  String get spendingByCategory => 'Gastos por categoría';

  @override
  String get budgetPerformance => 'Rendimiento del presupuesto';

  @override
  String get insights => 'Análisis';

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
  String get noNotificationsTitle => 'Todo al día';

  @override
  String get noNotificationsBody =>
      'Aquí aparecerán nuevos análisis y recordatorios.';

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
  String get comingSoon => 'Disponible próximamente';

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
  String get nameRequired => 'Ponle un nombre';

  @override
  String get amountAboveZero => 'Introduce un importe mayor que cero';

  @override
  String get editTransaction => 'Editar movimiento';

  @override
  String get deleteTransaction => '¿Eliminar movimiento?';

  @override
  String deleteTransactionBody(String title) {
    return '$title se eliminará de tu registro.';
  }

  @override
  String get transactionDeleted => 'Movimiento eliminado';

  @override
  String get transactionUpdated => 'Movimiento actualizado';

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
    return 'Se eliminará el presupuesto de $category. Tus movimientos no se verán afectados.';
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
      'Fija un límite mensual en una categoría para empezar a seguirla.';

  @override
  String get newGoal => 'Nueva meta';

  @override
  String get editGoal => 'Editar meta';

  @override
  String get goalName => 'Nombre de la meta';

  @override
  String get goalNameHint => 'p. ej. Fondo de emergencia';

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
      'Fija un objetivo y RainyPenny seguirá tu progreso.';

  @override
  String get fundsAdded => 'Fondos añadidos';

  @override
  String get newDebt => 'Nuevo préstamo o tarjeta';

  @override
  String get editDebt => 'Editar préstamo';

  @override
  String get debtName => 'Nombre';

  @override
  String get debtNameHint => 'p. ej. Préstamo del coche';

  @override
  String get lender => 'Prestamista';

  @override
  String get lenderHint => 'p. ej. Banco Meridian';

  @override
  String get originalAmount => 'Importe original';

  @override
  String get creditLimit => 'Límite de crédito';

  @override
  String get remainingBalance => 'Saldo pendiente';

  @override
  String get interestRatePercent => 'Tipo de interés (%)';

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
      'Añade un préstamo o una tarjeta para no perder de vista los pagos.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Presupuesto de $subject superado';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Has superado en $amount tu presupuesto de $subject en este periodo.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject se acerca a su límite';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Tu presupuesto de $subject está al $percent%, quedan $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Gastas más de lo que ingresas';

  @override
  String get insightOverIncomeBody =>
      'Este periodo has gastado más de lo que has ingresado. Revisa tus categorías más grandes para reequilibrar.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'El gasto en $subject ha subido';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Tu gasto en $subject es un $percent% mayor que el periodo anterior.';
  }

  @override
  String get insightTrendDownTitle => 'El gasto está bajando';

  @override
  String insightTrendDownBody(int percent) {
    return 'El gasto total es un $percent% menor que el periodo anterior.';
  }

  @override
  String get insightTrendUpTitle => 'El gasto está subiendo';

  @override
  String insightTrendUpBody(int percent) {
    return 'El gasto total es un $percent% mayor que el periodo anterior.';
  }

  @override
  String get insightSavingsStrongTitle => 'Buen ahorro este periodo';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Has conservado el $percent% de tus ingresos, muy por encima del objetivo del $target%.';
  }

  @override
  String get insightSavingsLowTitle =>
      'La tasa de ahorro está por debajo del objetivo';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Este periodo has conservado el $percent% de tus ingresos. Apunta al $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject está casi completa';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Solo faltan $amount para alcanzar $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Vas bien con $subject';
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
    return 'El pago de $subject de $amount lleva $_temp0 de retraso.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Se acerca el pago de $subject';
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
    return '$amount vence $_temp0.';
  }

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Crear cuenta';

  @override
  String get signInSubtitle => 'Bienvenido de nuevo. Tu dinero te espera.';

  @override
  String get signUpSubtitle => 'Unos datos y ya estás listo.';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get emailHint => 'tu@email.com';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get passwordHint => 'Al menos 8 caracteres';

  @override
  String get fullNameLabel => 'Nombre completo';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get resetSent => 'Revisa tu correo para el enlace de restablecimiento';

  @override
  String get noAccountYet => '¿Eres nuevo?';

  @override
  String get haveAccount => '¿Ya tienes cuenta?';

  @override
  String get emailInvalid => 'Introduce un correo válido';

  @override
  String get passwordTooShort => 'Usa al menos 8 caracteres';

  @override
  String get signOutConfirm => '¿Cerrar sesión?';

  @override
  String get signOutBody =>
      'Tendrás que iniciar sesión de nuevo para ver tus finanzas.';

  @override
  String get dataSource => 'Fuente de datos';

  @override
  String get insightWeeklySummaryTitle => 'Tu semana en resumen';

  @override
  String get insightWeeklySummaryBody =>
      'Mira a dónde ha ido tu dinero esta semana y cómo van tus presupuestos.';

  @override
  String get notificationSettings => 'Notificaciones';

  @override
  String get alertsSection => 'Avisos';

  @override
  String get budgetAlerts => 'Avisos de presupuesto';

  @override
  String get budgetAlertsBody =>
      'Cuando un presupuesto se acerca a su límite o lo supera';

  @override
  String get paymentReminders => 'Recordatorios de pago';

  @override
  String get paymentRemindersBody => 'Unos días antes de que venza un pago';

  @override
  String get savingsUpdates => 'Novedades de ahorro';

  @override
  String get savingsUpdatesBody => 'Tu progreso hacia las metas';

  @override
  String get weeklySummaryLabel => 'Resumen semanal';

  @override
  String get weeklySummaryBody => 'Un resumen de la semana que termina';

  @override
  String get scheduleSection => 'Horario';

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
      'Permite las notificaciones para que RainyPenny pueda avisarte antes de que se te escape un presupuesto o un pago.';

  @override
  String get allowNotifications => 'Permitir notificaciones';

  @override
  String get permissionDenied =>
      'Las notificaciones están bloqueadas. Puedes activarlas en los ajustes de tu dispositivo.';

  @override
  String get upcomingAlerts => 'Programados';

  @override
  String get noScheduledAlerts => 'Ahora mismo no hay nada programado';

  @override
  String get noScheduledAlertsBody =>
      'Los avisos aparecerán aquí a medida que tus presupuestos y pagos se acerquen a sus límites.';

  @override
  String scheduledFor(String date) {
    return 'Programado para $date';
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
      'Consejo: mantén pulsado + para registrar un gasto al instante';

  @override
  String get searchCurrencies => 'Buscar monedas';

  @override
  String get noCurrenciesFound => 'No se han encontrado monedas';

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
  String get remainingInstallments => 'Cuotas pendientes';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid de $total pagadas';
  }

  @override
  String get finalPayment => 'Último pago';

  @override
  String get paymentDueDate => 'Fecha de vencimiento';

  @override
  String dueOnDayOfMonth(int day) {
    return 'El día $day de cada mes';
  }

  @override
  String get loanStatus => 'Estado';

  @override
  String get statusActive => 'Al día';

  @override
  String get statusDueSoon => 'Vence pronto';

  @override
  String get statusOverdue => 'Vencido';

  @override
  String get statusCompleted => 'Pagado';

  @override
  String get repaymentProgress => 'Progreso de la amortización';

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
  String get notSet => 'Sin definir';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject vence hoy';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Tu pago de $amount vence hoy. Un toque y queda al día.';
  }

  @override
  String get remindMorningTitle => 'Buenos días ☀️';

  @override
  String get remindMorningBody =>
      'Empieza el día con tus cuentas al día. ¿Queda algo de ayer por anotar?';

  @override
  String get remindNoonTitle => 'Repaso de mediodía';

  @override
  String get remindNoonBody =>
      '¿Comida, café, un billete? Anótalo en segundos.';

  @override
  String get remindAfternoonTitle => 'Repaso rápido';

  @override
  String get remindAfternoonBody =>
      'Anota lo que llevas gastado y mantén el día al día.';

  @override
  String get remindEveningTitle => 'Cerrando el día';

  @override
  String get remindEveningBody =>
      'Dos minutos ahora y las cifras de hoy quedan completas.';

  @override
  String get happyWeekendTitle => '¡Feliz fin de semana! 🎉';

  @override
  String get happyWeekendBody =>
      'Disfrútalo y no pierdas de vista el gasto del fin de semana.';

  @override
  String get dailyReminders => 'Recordatorios diarios de gastos';

  @override
  String get dailyRemindersBody =>
      'Avisos amables para mantener tus gastos al día';

  @override
  String get weekendGreeting => 'Feliz fin de semana';

  @override
  String get weekendGreetingBody => 'Un saludo al empezar tu fin de semana';

  @override
  String get reminderTimesSection => 'Horas de recordatorio';

  @override
  String get slotMorning => 'Mañana';

  @override
  String get slotNoon => 'Mediodía';

  @override
  String get slotAfternoon => 'Tarde';

  @override
  String get slotEvening => 'Noche';

  @override
  String get everyDay => 'Cada día';

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
  String get shareOfTotal => 'Porcentaje';

  @override
  String get used => 'Usado';

  @override
  String get goal => 'Meta';

  @override
  String get targetDate => 'Fecha objetivo';

  @override
  String get progress => 'Progreso';

  @override
  String get paidOffShort => 'Pagado';

  @override
  String get transactions => 'Movimientos';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'y $count movimientos más',
      one: 'y 1 movimiento más',
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
  String get reportFailed => 'No se ha podido crear el informe';

  @override
  String get categories => 'Categorías';

  @override
  String get categoriesIntro =>
      'Crea tus propias categorías para clasificar ingresos y gastos tal y como tú los piensas.';

  @override
  String get expenseCategories => 'Categorías de gasto';

  @override
  String get incomeCategories => 'Categorías de ingreso';

  @override
  String get newCategory => 'Nueva categoría';

  @override
  String get editCategory => 'Editar categoría';

  @override
  String get categoryName => 'Nombre';

  @override
  String get categoryNameHint => 'p. ej. Mascotas';

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
      other: '$count registros siguen usando esta categoría',
      one: '1 registro sigue usando esta categoría',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Aquí todavía no hay nada.';

  @override
  String get builtIn => 'Predefinida';

  @override
  String get manageCategories => 'Gestionar categorías';

  @override
  String get expense => 'Gasto';

  @override
  String get languageNote =>
      'El árabe, el urdu, el persa y el hebreo cambian toda la interfaz a derecha-izquierda, incluidos los gráficos y los informes PDF.';

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
  String get passwordsDoNotMatch => 'Las dos contraseñas deben coincidir';

  @override
  String get showPassword => 'Mostrar contraseña';

  @override
  String get hidePassword => 'Ocultar contraseña';

  @override
  String get savePassword => 'Guardar contraseña';

  @override
  String get backToSignIn => 'Volver al inicio de sesión';

  @override
  String get alreadyHaveAccount => 'Ya tengo una cuenta';

  @override
  String get getStarted => 'Empezar';

  @override
  String get acceptTerms =>
      'Acepto las Condiciones del servicio y la Política de privacidad';

  @override
  String get acceptTermsRequired => 'Acepta para continuar';

  @override
  String get passwordStrengthTooShort => 'Demasiado corta';

  @override
  String get passwordStrengthWeak => 'Débil';

  @override
  String get passwordStrengthFair => 'Aceptable';

  @override
  String get passwordStrengthGood => 'Buena';

  @override
  String get passwordStrengthStrong => 'Fuerte';

  @override
  String get passwordAdvice =>
      'Una frase larga que recuerdes vale más que una corta llena de símbolos. Evita cualquiera que ya uses en otro sitio.';

  @override
  String get authInvalidCredentials =>
      'Ese correo y esa contraseña no coinciden con ninguna cuenta';

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
  String get authGenericError => 'Algo ha salido mal. Inténtalo de nuevo';

  @override
  String get confirmEmailTitle => 'Revisa tu correo';

  @override
  String confirmEmailBody(String email) {
    return 'Hemos enviado un enlace de confirmación a $email. Ábrelo para terminar de configurar tu cuenta.';
  }

  @override
  String get resendConfirmation => 'Reenviar correo de confirmación';

  @override
  String get confirmationResent => 'Correo de confirmación enviado';

  @override
  String get forgotPasswordTitle => 'Restablecer la contraseña';

  @override
  String get forgotPasswordSubtitle =>
      'Escribe el correo con el que te registraste y te enviaremos un enlace para elegir una nueva contraseña.';

  @override
  String get sendResetLink => 'Enviar enlace';

  @override
  String get resetLinkSentTitle => 'Enlace enviado';

  @override
  String resetLinkSentBody(String email) {
    return 'Si $email tiene una cuenta, el enlace ya va de camino.';
  }

  @override
  String get resetLinkSentHint =>
      'El enlace caduca en una hora. Si no llega, mira en la carpeta de spam antes de pedir otro.';

  @override
  String get tryAnotherEmail => 'Usar otro correo';

  @override
  String get resetPasswordTitle => 'Elige una nueva contraseña';

  @override
  String get resetPasswordSubtitle =>
      'Elige algo que no hayas usado antes en esta cuenta.';

  @override
  String get passwordChangedTitle => 'Contraseña actualizada';

  @override
  String get passwordChangedBody =>
      'Tu nueva contraseña está guardada. Has iniciado sesión y todo listo.';

  @override
  String get demoModeHint => 'Versión de demostración: no hace falta cuenta';

  @override
  String get demoModeFill => 'Rellenar';

  @override
  String get welcomeTrackTitle => 'Mira a dónde va tu dinero';

  @override
  String get welcomeTrackBody =>
      'Anota lo que entra y lo que sale. RainyPenny lo convierte en una imagen que de verdad se entiende.';

  @override
  String get welcomeBudgetTitle => 'Límites que se sostienen';

  @override
  String get welcomeBudgetBody =>
      'Pon un techo mensual a cada parte de tu gasto y entérate antes de superarlo, no después.';

  @override
  String get welcomeGoalsTitle => 'Ahorra para lo que importa';

  @override
  String get welcomeGoalsBody =>
      'Ponle nombre a una meta, fija una cantidad y mírala crecer. Un fondo para imprevistos se construye mejor cuando se ve.';

  @override
  String get welcomePrivacyTitle => 'Tu dinero sigue siendo tuyo';

  @override
  String get welcomePrivacyBody =>
      'Tus cifras son solo tuyas. No se vende nada ni se comparte con nadie.';

  @override
  String stepOf(int step, int total) {
    return 'Paso $step de $total';
  }

  @override
  String get onboardingNameTitle => '¿Cómo quieres que te llamemos?';

  @override
  String get onboardingNameBody =>
      'Lo usaremos para saludarte, y para nada más.';

  @override
  String get onboardingNameHint =>
      'Con el nombre de pila basta. Puedes cambiarlo luego.';

  @override
  String get onboardingCurrencyTitle => '¿Qué moneda usas?';

  @override
  String get onboardingCurrencyBody =>
      'Todos los importes se muestran en esta moneda. Elegirla no convierte nada.';

  @override
  String get onboardingCurrencySearch => 'Buscar en todas las monedas';

  @override
  String get onboardingAppearanceTitle => 'Dale tu estilo';

  @override
  String get onboardingAppearanceBody =>
      'Elige un aspecto. Todo cambia al tocarlo y puedes volver cuando quieras.';

  @override
  String get onboardingNotificationsTitle => 'No pierdas el hilo';

  @override
  String get onboardingNotificationsBody =>
      'Un aviso discreto en el momento justo es lo que convierte esto en un hábito.';

  @override
  String get onboardingNotifyReminders =>
      'Un recordatorio amable para anotar lo que has gastado';

  @override
  String get onboardingNotifyBudget =>
      'Un aviso antes de que se agote un presupuesto';

  @override
  String get onboardingNotifySummary =>
      'Un resumen semanal de a dónde fue tu dinero';

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
      'La configuración está hecha. ¿Quieres un recorrido rápido por la aplicación?';

  @override
  String get onboardingTakeTour => 'Enséñamela';

  @override
  String get onboardingGoToApp => 'Ir a la aplicación';

  @override
  String get onboardingTourLater =>
      '¿Ahora no? La guía se queda en Ajustes para cuando quieras.';

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
      'Todo empieza aquí. La tarjeta de arriba es lo que te queda; debajo, lo que entró y salió en este periodo, y luego tus gastos, presupuestos y metas.';

  @override
  String get guideDashboardTip1 =>
      'Desliza la pantalla hacia abajo para actualizarlo todo de una vez.';

  @override
  String get guideDashboardTip2 =>
      'Toca la tarjeta de ingresos o gastos para ir directo a esa lista.';

  @override
  String get guideDashboardTip3 =>
      'Los anillos y los análisis se actualizan en cuanto anotas algo.';

  @override
  String get guideAddTitle => 'Anotar dinero';

  @override
  String get guideAddBody =>
      'El botón del centro de la barra es donde empieza todo. Abre un menú corto: gasto, ingreso, deuda, presupuesto o meta de ahorro.';

  @override
  String get guideAddTip1 =>
      'Toca el botón central para anotar una entrada o una salida.';

  @override
  String get guideAddTip2 =>
      'Mantenlo pulsado para ir directo a un gasto nuevo y saltarte el menú.';

  @override
  String get guideAddTip3 =>
      'Elige siempre una categoría: es lo que hace funcionar los gráficos y los presupuestos.';

  @override
  String get guideCategoriesTitle => 'Categorías';

  @override
  String get guideCategoriesBody =>
      'Las categorías agrupan tus gastos. Las que trae la aplicación sirven a casi todo el mundo, y puedes renombrarlas o crear las tuyas.';

  @override
  String get guideCategoriesTip1 =>
      'Ajustes y luego Gestionar categorías para cambiar o añadir una.';

  @override
  String get guideCategoriesTip2 =>
      'Lo que quede sin categoría acaba en «Otros», para que los gráficos sigan siendo sinceros.';

  @override
  String get guideBudgetTitle => 'Presupuestos';

  @override
  String get guideBudgetBody =>
      'Un presupuesto es un techo mensual para una categoría. La barra se llena según gastas y cambia de color al acercarse, así te enteras antes de pasarte.';

  @override
  String get guideBudgetTip1 =>
      'Empieza con dos o tres categorías, no con todas a la vez.';

  @override
  String get guideBudgetTip2 =>
      'Pon el límite un poco por encima de lo que sueles gastar y luego ajústalo.';

  @override
  String get guideBudgetTip3 =>
      'Deja activados los avisos y la aplicación te advertirá cuando uno se agote.';

  @override
  String get guideSavingsTitle => 'Metas de ahorro';

  @override
  String get guideSavingsBody =>
      'Ponle nombre a lo que estás ahorrando, fija una cantidad y una fecha, y la aplicación calcula cuánto apartar cada mes para llegar.';

  @override
  String get guideSavingsTip1 =>
      'Una meta con nombre se mantiene mejor que la intención vaga de ahorrar.';

  @override
  String get guideSavingsTip2 =>
      'Varias metas pequeñas se terminan más a menudo que una grande.';

  @override
  String get guideLoansTitle => 'Deudas y préstamos';

  @override
  String get guideLoansBody =>
      'Anota lo que debes, lo que te cuesta y cuándo vence el próximo pago. Todo lo que estás pagando queda en una lista con el saldo pendiente.';

  @override
  String get guideLoansTip1 =>
      'Añade la fecha de vencimiento y los recordatorios se encargarán de perseguirla.';

  @override
  String get guideLoansTip2 =>
      'Una deuda vencida aparece en rojo en el panel hasta que se paga.';

  @override
  String get guideReportsTitle => 'Informes';

  @override
  String get guideReportsBody =>
      'La mirada de fondo: ingresos frente a gastos, gasto por categoría, cómo aguantaron tus presupuestos y qué parte de tus ingresos conservaste.';

  @override
  String get guideReportsTip1 =>
      'Cambia entre semana, mes y trimestre en la parte de arriba.';

  @override
  String get guideReportsTip2 =>
      'Exporta o comparte un PDF: sale en tu idioma y en su dirección de lectura.';

  @override
  String get guideSettingsTitle => 'Ajustes';

  @override
  String get guideSettingsBody =>
      'Idioma, moneda, colores y avisos están todos aquí, y la configuración inicial no fija ninguno: cámbialos cuando quieras.';

  @override
  String get guideSettingsTip1 =>
      'Cuarenta idiomas, y toda la interfaz se refleja en los que se leen de derecha a izquierda.';

  @override
  String get guideSettingsTip2 =>
      'Elige qué avisos quieres y a qué horas pueden llegar.';

  @override
  String get guideSettingsTip3 =>
      'Las horas de silencio retienen todo hasta la mañana.';

  @override
  String get guideHabitTitle => 'Que se te quede';

  @override
  String get guideHabitBody =>
      'La aplicación vale lo que le pongas dentro. Un minuto al día gana a una hora al mes, y a las dos semanas los números empiezan a decirte algo.';

  @override
  String get guideHabitTip1 =>
      'Anota lo que gastas en el momento, no al final de la semana.';

  @override
  String get guideHabitTip2 =>
      'Echa un vistazo al panel una vez al día. Diez segundos bastan.';

  @override
  String get guideHabitTip3 =>
      'Esta guía se queda en Ajustes: vuelve cuando quieras.';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeCaption =>
      'Claro, oscuro o lo que esté haciendo tu teléfono.';

  @override
  String get accentColor => 'Color de acento';

  @override
  String get accentColorCaption =>
      'Colorea los botones, los resaltes y los gráficos.';

  @override
  String get accentSemanticsNote =>
      'Las entradas y las salidas conservan sus colores en todos los temas, así que una cifra nunca cambia de significado porque hayas cambiado el acento.';

  @override
  String get accentTeal => 'Turquesa';

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
  String get noLanguagesFound => 'No se han encontrado idiomas';

  @override
  String get noLanguagesFoundMessage =>
      'Prueba con el nombre en inglés o con el código de dos letras.';

  @override
  String get rightToLeft => 'De derecha a izquierda';

  @override
  String get replayGuide => 'Volver a ver la guía';

  @override
  String get replaySetup => 'Repetir la configuración';

  @override
  String get replaySetupBody =>
      'Vuelve a pasar por las preguntas iniciales. No se borra nada de lo que hayas registrado.';

  @override
  String get rateTitle => '¿Te gusta RainyPenny?';

  @override
  String get rateBody =>
      'Llevas ya un tiempo con esto. Valorar la app lleva un momento y ayuda a que otras personas la encuentren.';

  @override
  String get rateAction => 'Valorar la app';

  @override
  String get rateLater => 'Quizá más tarde';

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
  String get carriedForwardHint => 'Sobrante del ciclo anterior';

  @override
  String get totalSpending => 'Gasto total';

  @override
  String get salaryCycle => 'Ciclo de salario';

  @override
  String get payday => 'Día de cobro';

  @override
  String get paydayDescription =>
      'El día en que llega tu salario. Tu mes financiero va desde ese día hasta el día antes del siguiente.';

  @override
  String get paydayUpdated => 'Día de cobro actualizado';

  @override
  String paydayDayOfMonth(int day) {
    return 'Día $day';
  }

  @override
  String get paydayShortMonthNote =>
      'En los meses más cortos el ciclo empieza el último día del mes.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días para el cobro',
      one: '1 día para el cobro',
      zero: 'Último día del ciclo',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Próximo cobro';

  @override
  String get spentSoFar => 'Gastado hasta ahora';

  @override
  String get dailyAllowance => 'Gasto diario seguro';

  @override
  String get overspentNotice =>
      'Has gastado más de lo que ingresaste en este ciclo.';

  @override
  String get backToThisMonth => 'Volver a este mes';

  @override
  String get cycleRangeLabel => 'Ciclo';

  @override
  String get noSalaryRecorded => 'Aún no hay salario registrado';

  @override
  String get addSalaryAction => 'Añade tu salario';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excelente';

  @override
  String get healthGood => 'Bien';

  @override
  String get healthFair => 'Aceptable';

  @override
  String get healthNeedsWork => 'Necesita mejorar';

  @override
  String get healthExcellentBody =>
      'Estás ahorrando bien y te mantienes dentro de tus presupuestos.';

  @override
  String get healthGoodBody => 'Tu gasto va por buen camino este periodo.';

  @override
  String get healthFairBody =>
      'Algunos presupuestos están al límite. Pequeños cambios ayudarán.';

  @override
  String get healthNeedsWorkBody =>
      'El gasto supera tu plan. Empieza por tu categoría más grande.';

  @override
  String get factorSavingsRate => 'Tasa de ahorro';

  @override
  String get factorBudgetControl => 'Control del presupuesto';

  @override
  String get factorDebtLoad => 'Carga de deuda';

  @override
  String get factorSpendingTrend => 'Tendencia del gasto';

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
    return 'Sube $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Baja $percent%';
  }

  @override
  String get howScoreWorks => 'Cómo se calcula esta puntuación';

  @override
  String get healthScoreExplainer =>
      'Tu puntuación combina cuatro factores: cuánto de tus ingresos conservas, cuánto respetas tus presupuestos, qué parte de tus ingresos va a deudas, y si tu gasto sube o baja.';

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
  String get removePhoto => 'Quitar foto';

  @override
  String get personalInformationIntro =>
      'Tu nombre y tu foto aparecen en toda la aplicación. Tu correo es la dirección con la que inicias sesión.';

  @override
  String get emailNotEditable =>
      'Contacta con soporte para cambiar la dirección de inicio de sesión.';

  @override
  String get pressBackAgainToExit => 'Pulsa atrás otra vez para salir';

  @override
  String get categoryHousing => 'Vivienda';

  @override
  String get categoryFood => 'Alimentación';

  @override
  String get categoryTransport => 'Transporte';

  @override
  String get categoryShopping => 'Compras';

  @override
  String get categoryBills => 'Facturas y servicios';

  @override
  String get categoryEntertainment => 'Ocio';

  @override
  String get categoryHealth => 'Salud y bienestar';

  @override
  String get categoryEducation => 'Educación';

  @override
  String get categoryTravel => 'Viajes';

  @override
  String get categorySalary => 'Salario';

  @override
  String get categoryFreelance => 'Autónomo';

  @override
  String get categoryInvestments => 'Inversiones';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Otros';

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
  String get allTime => 'Todo el historial';

  @override
  String get customRange => 'Personalizado';

  @override
  String get selectDateRange => 'Elegir un periodo';

  @override
  String rangeApplied(String start, String end) {
    return 'Mostrando $start – $end';
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
