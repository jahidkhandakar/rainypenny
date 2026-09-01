// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppL10nPt extends AppL10n {
  AppL10nPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Poupe para os dias de chuva';

  @override
  String get navHome => 'Início';

  @override
  String get navTransactions => 'Transações';

  @override
  String get navAdd => 'Adicionar';

  @override
  String get navReports => 'Relatórios';

  @override
  String get navProfile => 'Perfil';

  @override
  String greetingMorning(String name) {
    return 'Bom dia, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Boa tarde, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Boa noite, $name';
  }

  @override
  String get greetingSubtitle => 'Aqui está o seu resumo financeiro';

  @override
  String get totalBalance => 'Saldo total';

  @override
  String get vsLastPeriod => 'vs. período anterior';

  @override
  String get income => 'Receitas';

  @override
  String get expenses => 'Despesas';

  @override
  String get netBalance => 'Saldo líquido';

  @override
  String get lastThirtyDays => 'Últimos 30 dias';

  @override
  String get quickActions => 'Ações rápidas';

  @override
  String get addIncome => 'Adicionar receita';

  @override
  String get addExpense => 'Adicionar despesa';

  @override
  String get spendingOverview => 'Visão dos gastos';

  @override
  String get recentTransactions => 'Transações recentes';

  @override
  String get seeAll => 'Ver tudo';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get budgetProgress => 'Progresso do orçamento';

  @override
  String get savingsGoals => 'Metas de poupança';

  @override
  String get financialInsight => 'Análise financeira';

  @override
  String get financialHealth => 'Saúde financeira';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'Procurar transações';

  @override
  String get filterAll => 'Todas';

  @override
  String get filterIncome => 'Receitas';

  @override
  String get filterExpenses => 'Despesas';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get noTransactionsTitle => 'Nenhuma transação';

  @override
  String get noTransactionsBody => 'Tente outra pesquisa ou filtro.';

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
  String get addTransaction => 'Adicionar transação';

  @override
  String get amount => 'Valor';

  @override
  String get category => 'Categoria';

  @override
  String get date => 'Data';

  @override
  String get note => 'Nota';

  @override
  String get noteHint => 'Nota opcional';

  @override
  String get saveIncome => 'Guardar receita';

  @override
  String get saveExpense => 'Guardar despesa';

  @override
  String get selectCategory => 'Escolher categoria';

  @override
  String get transactionSaved => 'Transação guardada';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'Descrição';

  @override
  String get descriptionHint => 'ex. Supermercado';

  @override
  String get budget => 'Orçamento';

  @override
  String get budgets => 'Orçamentos';

  @override
  String get totalBudget => 'Orçamento total';

  @override
  String get spent => 'Gasto';

  @override
  String get remaining => 'Restante';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'No caminho certo';

  @override
  String get approachingLimit => 'Perto do limite';

  @override
  String get overBudget => 'Orçamento excedido';

  @override
  String get savings => 'Poupança';

  @override
  String get yourGoals => 'As suas metas';

  @override
  String get saved => 'Poupado';

  @override
  String get target => 'Meta';

  @override
  String get monthlyContribution => 'Mensal';

  @override
  String get addFunds => 'Adicionar fundos';

  @override
  String get goalComplete => 'Meta alcançada';

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
  String get loansAndDebts => 'Empréstimos e dívidas';

  @override
  String get totalOutstanding => 'Total em dívida';

  @override
  String get monthlyPayment => 'Mensal';

  @override
  String get nextPayment => 'Próximo pagamento';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'Juros';

  @override
  String get upcomingPayments => 'Próximos pagamentos';

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
  String get overdue => 'Em atraso';

  @override
  String get reports => 'Relatórios';

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mês';

  @override
  String get quarter => 'Trimestre';

  @override
  String get incomeVsExpenses => 'Receitas vs. despesas';

  @override
  String get spendingByCategory => 'Gastos por categoria';

  @override
  String get budgetPerformance => 'Desempenho do orçamento';

  @override
  String get insights => 'Análises';

  @override
  String get savingsRate => 'Taxa de poupança';

  @override
  String get profile => 'Perfil';

  @override
  String get account => 'Conta';

  @override
  String get personalInformation => 'Informações pessoais';

  @override
  String get changePassword => 'Alterar palavra-passe';

  @override
  String get notifications => 'Notificações';

  @override
  String get preferences => 'Preferências';

  @override
  String get language => 'Idioma';

  @override
  String get currency => 'Moeda';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Segurança';

  @override
  String get privacyAndSecurity => 'Privacidade e segurança';

  @override
  String get help => 'Ajuda';

  @override
  String get helpAndSupport => 'Ajuda e suporte';

  @override
  String get termsAndConditions => 'Termos e condições';

  @override
  String get logOut => 'Terminar sessão';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get dashboard => 'Painel';

  @override
  String get settings => 'Definições';

  @override
  String get noNotificationsTitle => 'Está tudo em dia';

  @override
  String get noNotificationsBody =>
      'Novas análises e lembretes aparecerão aqui.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get done => 'Concluído';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get close => 'Fechar';

  @override
  String get somethingWentWrong => 'Algo correu mal';

  @override
  String get comingSoon => 'Em breve';
}
