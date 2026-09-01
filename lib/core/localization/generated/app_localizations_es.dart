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
    return 'of $total';
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
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
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
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

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
    return '$percent% used';
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
      other: '$count months to go',
      one: '1 month to go',
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
    return '$percent% paid off';
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
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
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
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get dashboard => 'Panel';

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
}
