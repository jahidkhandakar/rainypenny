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
    return 'de $total';
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
      other: '$count transações',
      one: '1 transação',
      zero: 'Sem transações',
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
  String get amountRequired => 'Insira um valor maior que zero';

  @override
  String get titleRequired => 'Dê um nome a esta transação';

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
    return '$percent% usado';
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
      other: 'faltam $count meses',
      one: 'falta 1 mês',
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
    return '$percent% pago';
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
      other: 'Vence em $count dias',
      one: 'Vence amanhã',
      zero: 'Vence hoje',
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
    return 'Membro desde $date';
  }

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

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

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Excluir';

  @override
  String get undo => 'Desfazer';

  @override
  String get add => 'Adicionar';

  @override
  String get create => 'Criar';

  @override
  String get nameRequired => 'Dê um nome a isto';

  @override
  String get amountAboveZero => 'Insira um valor maior que zero';

  @override
  String get editTransaction => 'Editar transação';

  @override
  String get deleteTransaction => 'Excluir transação?';

  @override
  String deleteTransactionBody(String title) {
    return '$title será removido do seu registo.';
  }

  @override
  String get transactionDeleted => 'Transação excluída';

  @override
  String get transactionUpdated => 'Transação atualizada';

  @override
  String get newBudget => 'Novo orçamento';

  @override
  String get editBudget => 'Editar orçamento';

  @override
  String get budgetLimit => 'Limite mensal';

  @override
  String get deleteBudget => 'Excluir orçamento?';

  @override
  String deleteBudgetBody(String category) {
    return 'O orçamento de $category será removido. As suas transações não são afetadas.';
  }

  @override
  String get budgetSaved => 'Orçamento guardado';

  @override
  String get budgetDeleted => 'Orçamento excluído';

  @override
  String get allCategoriesBudgeted => 'Todas as categorias já têm orçamento';

  @override
  String get noBudgetsTitle => 'Ainda sem orçamentos';

  @override
  String get noBudgetsBody =>
      'Defina um limite mensal numa categoria para começar a acompanhá-la.';

  @override
  String get newGoal => 'Nova meta';

  @override
  String get editGoal => 'Editar meta';

  @override
  String get goalName => 'Nome da meta';

  @override
  String get goalNameHint => 'ex. Fundo de emergência';

  @override
  String get targetAmount => 'Valor alvo';

  @override
  String get alreadySaved => 'Já poupado';

  @override
  String get deleteGoal => 'Excluir meta?';

  @override
  String deleteGoalBody(String name) {
    return '$name e o seu progresso serão removidos.';
  }

  @override
  String get goalSaved => 'Meta guardada';

  @override
  String get goalDeleted => 'Meta excluída';

  @override
  String get noGoalsTitle => 'Ainda sem metas de poupança';

  @override
  String get noGoalsBody =>
      'Defina um alvo e o RainyPenny acompanhará o seu progresso.';

  @override
  String get fundsAdded => 'Valor adicionado';

  @override
  String get newDebt => 'Novo empréstimo ou cartão';

  @override
  String get editDebt => 'Editar empréstimo';

  @override
  String get debtName => 'Nome';

  @override
  String get debtNameHint => 'ex. Crédito automóvel';

  @override
  String get lender => 'Credor';

  @override
  String get lenderHint => 'ex. Banco Meridian';

  @override
  String get originalAmount => 'Valor original';

  @override
  String get creditLimit => 'Limite de crédito';

  @override
  String get remainingBalance => 'Saldo em dívida';

  @override
  String get interestRatePercent => 'Taxa de juro (%)';

  @override
  String get kindLoan => 'Empréstimo';

  @override
  String get kindCreditCard => 'Cartão de crédito';

  @override
  String get recordPayment => 'Registar pagamento';

  @override
  String get paymentRecorded => 'Pagamento registado';

  @override
  String get deleteDebt => 'Excluir esta dívida?';

  @override
  String deleteDebtBody(String name) {
    return '$name será removido das suas dívidas.';
  }

  @override
  String get debtSaved => 'Guardado';

  @override
  String get debtDeleted => 'Excluído';

  @override
  String get noDebtsTitle => 'Sem dívidas acompanhadas';

  @override
  String get noDebtsBody =>
      'Adicione um empréstimo ou cartão de crédito para acompanhar os pagamentos.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Orçamento de $subject ultrapassado';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Está $amount acima do seu orçamento de $subject neste período.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject está perto do limite';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'O seu orçamento de $subject está $percent% usado, restam $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'As despesas superam os rendimentos';

  @override
  String get insightOverIncomeBody =>
      'Neste período gastou mais do que ganhou. Reveja as suas maiores categorias para reequilibrar.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Os gastos em $subject subiram';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Os seus gastos em $subject são $percent% mais altos que no período anterior.';
  }

  @override
  String get insightTrendDownTitle => 'Os gastos estão a descer';

  @override
  String insightTrendDownBody(int percent) {
    return 'Os gastos totais são $percent% mais baixos que no período anterior.';
  }

  @override
  String get insightTrendUpTitle => 'Os gastos estão a subir';

  @override
  String insightTrendUpBody(int percent) {
    return 'Os gastos totais são $percent% mais altos que no período anterior.';
  }

  @override
  String get insightSavingsStrongTitle => 'Boa poupança neste período';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Guardou $percent% dos seus rendimentos — bem acima da meta de $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Taxa de poupança abaixo da meta';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Neste período guardou $percent% dos seus rendimentos. Procure atingir $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject está quase concluída';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Faltam apenas $amount para alcançar $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'No bom caminho para $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months meses',
      one: '1 mês',
    );
    return 'Com $amount por mês alcançará esta meta em $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Pagamento de $subject em atraso';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dias',
      one: '1 dia',
    );
    return 'O pagamento de $subject de $amount está $_temp0 em atraso.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Pagamento de $subject a chegar';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'em $days dias',
      one: 'amanhã',
      zero: 'hoje',
    );
    return '$amount vence $_temp0.';
  }

  @override
  String get signIn => 'Entrar';

  @override
  String get signUp => 'Criar conta';

  @override
  String get signInSubtitle =>
      'Bem-vindo de volta. O seu dinheiro está à espera.';

  @override
  String get signUpSubtitle => 'Alguns dados e está pronto.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'voce@email.com';

  @override
  String get passwordLabel => 'Palavra-passe';

  @override
  String get passwordHint => 'Pelo menos 8 caracteres';

  @override
  String get fullNameLabel => 'Nome completo';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Esqueceu-se da palavra-passe?';

  @override
  String get resetSent => 'Verifique o seu e-mail para o link de redefinição';

  @override
  String get noAccountYet => 'É novo por aqui?';

  @override
  String get haveAccount => 'Já tem conta?';

  @override
  String get emailInvalid => 'Insira um e-mail válido';

  @override
  String get passwordTooShort => 'Use pelo menos 8 caracteres';

  @override
  String get signOutConfirm => 'Terminar sessão?';

  @override
  String get signOutBody =>
      'Terá de entrar novamente para ver as suas finanças.';

  @override
  String get dataSource => 'Origem dos dados';

  @override
  String get insightWeeklySummaryTitle => 'A sua semana em resumo';

  @override
  String get insightWeeklySummaryBody =>
      'Veja para onde foi o seu dinheiro esta semana e como estão os seus orçamentos.';

  @override
  String get notificationSettings => 'Notificações';

  @override
  String get alertsSection => 'Alertas';

  @override
  String get budgetAlerts => 'Alertas de orçamento';

  @override
  String get budgetAlertsBody =>
      'Quando um orçamento se aproxima do limite ou o ultrapassa';

  @override
  String get paymentReminders => 'Lembretes de pagamento';

  @override
  String get paymentRemindersBody => 'Alguns dias antes de um pagamento vencer';

  @override
  String get savingsUpdates => 'Novidades da poupança';

  @override
  String get savingsUpdatesBody => 'O seu progresso rumo às metas';

  @override
  String get weeklySummaryLabel => 'Resumo semanal';

  @override
  String get weeklySummaryBody => 'Um balanço da semana que passou';

  @override
  String get scheduleSection => 'Horário';

  @override
  String get reminderTime => 'Hora do lembrete';

  @override
  String get quietHours => 'Horas de silêncio';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Dia do resumo';

  @override
  String get permissionRequired => 'As notificações estão desativadas';

  @override
  String get permissionRequiredBody =>
      'Permita as notificações para que o RainyPenny o possa avisar antes que um orçamento ou pagamento lhe escape.';

  @override
  String get allowNotifications => 'Permitir notificações';

  @override
  String get permissionDenied =>
      'As notificações estão bloqueadas. Pode ativá-las nas definições do dispositivo.';

  @override
  String get upcomingAlerts => 'Agendados';

  @override
  String get noScheduledAlerts => 'Nada agendado de momento';

  @override
  String get noScheduledAlertsBody =>
      'Os alertas aparecem aqui à medida que os seus orçamentos e pagamentos se aproximam dos limites.';

  @override
  String scheduledFor(String date) {
    return 'Agendado para $date';
  }

  @override
  String get everyWeek => 'Todas as semanas';

  @override
  String get allNotificationsOff => 'Todas as notificações estão desativadas';

  @override
  String get needsAttention => 'Precisa de atenção';

  @override
  String get quickActionsTitle => 'O que deseja fazer?';

  @override
  String get createSection => 'Registar';

  @override
  String get jumpToSection => 'Ir para';

  @override
  String get addLoanAction => 'Adicionar empréstimo';

  @override
  String get addBudgetAction => 'Adicionar orçamento';

  @override
  String get addGoalAction => 'Adicionar meta';

  @override
  String get longPressHint =>
      'Dica: mantenha + premido para registar uma despesa de imediato';

  @override
  String get searchCurrencies => 'Pesquisar moedas';

  @override
  String get noCurrenciesFound => 'Nenhuma moeda encontrada';

  @override
  String get noCurrenciesFoundMessage =>
      'Experimente outro código, símbolo ou nome.';

  @override
  String get popularCurrencies => 'Populares';

  @override
  String get allCurrencies => 'Todas as moedas';

  @override
  String get totalLoanAmount => 'Valor total do empréstimo';

  @override
  String get installmentAmount => 'Valor da prestação';

  @override
  String get numberOfInstallments => 'Número de prestações';

  @override
  String get paidInstallments => 'Prestações pagas';

  @override
  String get remainingInstallments => 'Prestações em falta';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid de $total pagas';
  }

  @override
  String get finalPayment => 'Última prestação';

  @override
  String get paymentDueDate => 'Data de vencimento';

  @override
  String dueOnDayOfMonth(int day) {
    return 'No dia $day de cada mês';
  }

  @override
  String get loanStatus => 'Estado';

  @override
  String get statusActive => 'Em dia';

  @override
  String get statusDueSoon => 'Vence em breve';

  @override
  String get statusOverdue => 'Em atraso';

  @override
  String get statusCompleted => 'Liquidado';

  @override
  String get repaymentProgress => 'Progresso do reembolso';

  @override
  String get byAmount => 'Por valor';

  @override
  String get byInstallments => 'Por prestações';

  @override
  String get startDate => 'Data de início';

  @override
  String get openEnded => 'Sem prazo definido';

  @override
  String get loanDetails => 'Detalhes do empréstimo';

  @override
  String get notSet => 'Não definido';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject vence hoje';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'O seu pagamento de $amount vence hoje. Um toque e fica em dia.';
  }

  @override
  String get remindMorningTitle => 'Bom dia ☀️';

  @override
  String get remindMorningBody =>
      'Comece o dia com as contas em ordem. Há algo de ontem para acrescentar?';

  @override
  String get remindNoonTitle => 'Ponto de situação ao meio-dia';

  @override
  String get remindNoonBody => 'Almoço, café, um bilhete? Registe em segundos.';

  @override
  String get remindAfternoonTitle => 'Revisão rápida';

  @override
  String get remindAfternoonBody =>
      'Registe o que gastou até agora e mantenha o dia certo.';

  @override
  String get remindEveningTitle => 'A fechar o dia';

  @override
  String get remindEveningBody =>
      'Dois minutos agora e os números de hoje ficam completos.';

  @override
  String get happyWeekendTitle => 'Bom fim de semana! 🎉';

  @override
  String get happyWeekendBody =>
      'Aproveite — e fique atento aos gastos do fim de semana.';

  @override
  String get dailyReminders => 'Lembretes diários de despesas';

  @override
  String get dailyRemindersBody =>
      'Avisos simpáticos para manter as suas despesas atualizadas';

  @override
  String get weekendGreeting => 'Bom fim de semana';

  @override
  String get weekendGreetingBody =>
      'Uma saudação no início do seu fim de semana';

  @override
  String get reminderTimesSection => 'Horas dos lembretes';

  @override
  String get slotMorning => 'Manhã';

  @override
  String get slotNoon => 'Meio-dia';

  @override
  String get slotAfternoon => 'Tarde';

  @override
  String get slotEvening => 'Noite';

  @override
  String get everyDay => 'Todos os dias';

  @override
  String get financialReport => 'Relatório financeiro';

  @override
  String get preparedFor => 'Preparado para';

  @override
  String get generatedOn => 'Gerado em';

  @override
  String get reportDisclaimer =>
      'Gerado pelo RainyPenny a partir dos seus próprios registos.';

  @override
  String pageOf(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get overview => 'Visão geral';

  @override
  String get description => 'Descrição';

  @override
  String get totalIncome => 'Rendimentos totais';

  @override
  String get totalExpenses => 'Despesas totais';

  @override
  String get totalSaved => 'Total poupado';

  @override
  String get shareOfTotal => 'Quota';

  @override
  String get used => 'Usado';

  @override
  String get goal => 'Meta';

  @override
  String get targetDate => 'Data alvo';

  @override
  String get progress => 'Progresso';

  @override
  String get paidOffShort => 'Pago';

  @override
  String get transactions => 'Transações';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e mais $count transações',
      one: 'e mais 1 transação',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exportar PDF';

  @override
  String get sharePdf => 'Partilhar relatório';

  @override
  String get preparingReport => 'A preparar o seu relatório…';

  @override
  String get reportReady => 'Relatório pronto';

  @override
  String get reportFailed => 'Não foi possível criar o relatório';

  @override
  String get categories => 'Categorias';

  @override
  String get categoriesIntro =>
      'Crie as suas próprias categorias para arrumar rendimentos e despesas exatamente como pensa neles.';

  @override
  String get expenseCategories => 'Categorias de despesa';

  @override
  String get incomeCategories => 'Categorias de rendimento';

  @override
  String get newCategory => 'Nova categoria';

  @override
  String get editCategory => 'Editar categoria';

  @override
  String get categoryName => 'Nome';

  @override
  String get categoryNameHint => 'ex. Animais de estimação';

  @override
  String get icon => 'Ícone';

  @override
  String get categorySaved => 'Categoria guardada';

  @override
  String get categoryDeleted => 'Categoria excluída';

  @override
  String get deleteCategory => 'Excluir esta categoria?';

  @override
  String deleteCategoryBody(String name) {
    return '$name será removida das suas categorias.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registos ainda usam esta categoria',
      one: '1 registo ainda usa esta categoria',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Ainda não há nada aqui.';

  @override
  String get builtIn => 'Predefinida';

  @override
  String get manageCategories => 'Gerir categorias';

  @override
  String get expense => 'Despesa';

  @override
  String get languageNote =>
      'Árabe, urdu, persa e hebraico mudam toda a interface para a direção da direita para a esquerda, incluindo gráficos e relatórios em PDF.';

  @override
  String get next => 'Avançar';

  @override
  String get back => 'Voltar';

  @override
  String get skip => 'Ignorar';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get selected => 'Selecionado';

  @override
  String get passwordRequired => 'Digite a sua palavra-passe';

  @override
  String get newPasswordLabel => 'Nova palavra-passe';

  @override
  String get confirmPasswordLabel => 'Confirmar palavra-passe';

  @override
  String get passwordsDoNotMatch => 'As duas palavras-passe têm de ser iguais';

  @override
  String get showPassword => 'Mostrar palavra-passe';

  @override
  String get hidePassword => 'Ocultar palavra-passe';

  @override
  String get savePassword => 'Guardar palavra-passe';

  @override
  String get backToSignIn => 'Voltar a iniciar sessão';

  @override
  String get alreadyHaveAccount => 'Já tenho uma conta';

  @override
  String get getStarted => 'Começar';

  @override
  String get acceptTerms =>
      'Aceito os Termos de Serviço e a Política de Privacidade';

  @override
  String get acceptTermsRequired => 'Aceite para continuar';

  @override
  String get passwordStrengthTooShort => 'Demasiado curta';

  @override
  String get passwordStrengthWeak => 'Fraca';

  @override
  String get passwordStrengthFair => 'Razoável';

  @override
  String get passwordStrengthGood => 'Boa';

  @override
  String get passwordStrengthStrong => 'Forte';

  @override
  String get passwordAdvice =>
      'Uma frase longa de que se lembre vale mais do que uma palavra curta cheia de símbolos. Evite qualquer uma que já use noutro sítio.';

  @override
  String get authInvalidCredentials =>
      'Este e-mail e esta palavra-passe não correspondem a nenhuma conta';

  @override
  String get authEmailNotConfirmed =>
      'Confirme o seu endereço de e-mail antes de iniciar sessão';

  @override
  String get authEmailAlreadyRegistered =>
      'Já existe uma conta com este e-mail';

  @override
  String get authWeakPassword => 'Escolha uma palavra-passe mais longa';

  @override
  String get authRateLimited =>
      'Demasiadas tentativas. Tente novamente daqui a alguns minutos';

  @override
  String get authNetworkError =>
      'Sem ligação. Verifique a rede e tente novamente';

  @override
  String get authGenericError => 'Algo correu mal. Tente novamente';

  @override
  String get confirmEmailTitle => 'Verifique o seu e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Enviámos uma ligação de confirmação para $email. Abra-a para terminar a criação da conta.';
  }

  @override
  String get resendConfirmation => 'Reenviar e-mail de confirmação';

  @override
  String get confirmationResent => 'E-mail de confirmação enviado';

  @override
  String get forgotPasswordTitle => 'Repor a palavra-passe';

  @override
  String get forgotPasswordSubtitle =>
      'Indique o e-mail com que se registou e enviamos-lhe uma ligação para escolher uma nova palavra-passe.';

  @override
  String get sendResetLink => 'Enviar ligação';

  @override
  String get resetLinkSentTitle => 'Ligação enviada';

  @override
  String resetLinkSentBody(String email) {
    return 'Se $email tiver conta, a ligação já vai a caminho.';
  }

  @override
  String get resetLinkSentHint =>
      'A ligação expira dentro de uma hora. Se não chegar, veja a pasta de spam antes de pedir outra.';

  @override
  String get tryAnotherEmail => 'Usar outro e-mail';

  @override
  String get resetPasswordTitle => 'Escolha uma nova palavra-passe';

  @override
  String get resetPasswordSubtitle =>
      'Escolha algo que nunca tenha usado nesta conta.';

  @override
  String get passwordChangedTitle => 'Palavra-passe atualizada';

  @override
  String get passwordChangedBody =>
      'A nova palavra-passe está guardada. A sessão está iniciada e está tudo pronto.';

  @override
  String get demoModeHint => 'Versão de demonstração — não é preciso conta';

  @override
  String get demoModeFill => 'Preencher';

  @override
  String get welcomeTrackTitle => 'Veja para onde vai o seu dinheiro';

  @override
  String get welcomeTrackBody =>
      'Registe o que entra e o que sai. O RainyPenny transforma isso numa imagem que dá mesmo para ler.';

  @override
  String get welcomeBudgetTitle => 'Limites que se aguentam';

  @override
  String get welcomeBudgetBody =>
      'Dê a cada parte dos seus gastos um teto mensal e saiba antes de o ultrapassar, não depois.';

  @override
  String get welcomeGoalsTitle => 'Poupe para o que importa';

  @override
  String get welcomeGoalsBody =>
      'Dê um nome a um objetivo, defina um valor e veja-o encher. Um fundo para dias difíceis constrói-se melhor quando se vê.';

  @override
  String get welcomePrivacyTitle => 'O seu dinheiro continua seu';

  @override
  String get welcomePrivacyBody =>
      'Os seus números são só seus. Nada é vendido nem partilhado com ninguém.';

  @override
  String stepOf(int step, int total) {
    return 'Passo $step de $total';
  }

  @override
  String get onboardingNameTitle => 'Como o devemos tratar?';

  @override
  String get onboardingNameBody =>
      'Usamos apenas para o cumprimentar, e mais nada.';

  @override
  String get onboardingNameHint =>
      'O primeiro nome chega. Pode mudá-lo depois.';

  @override
  String get onboardingCurrencyTitle => 'Que moeda utiliza?';

  @override
  String get onboardingCurrencyBody =>
      'Todos os valores da aplicação são mostrados nesta moeda. Escolhê-la não converte nada.';

  @override
  String get onboardingCurrencySearch => 'Procurar em todas as moedas';

  @override
  String get onboardingAppearanceTitle => 'Deixe-a à sua maneira';

  @override
  String get onboardingAppearanceBody =>
      'Escolha um visual. Tudo muda enquanto toca, e pode voltar aqui quando quiser.';

  @override
  String get onboardingNotificationsTitle => 'Mantenha-se a par';

  @override
  String get onboardingNotificationsBody =>
      'Um aviso discreto na altura certa é o que transforma isto num hábito.';

  @override
  String get onboardingNotifyReminders =>
      'Um lembrete suave para registar o que gastou';

  @override
  String get onboardingNotifyBudget =>
      'Um aviso antes de um orçamento se esgotar';

  @override
  String get onboardingNotifySummary =>
      'Um resumo semanal do destino do seu dinheiro';

  @override
  String get onboardingNotifyEnable => 'Ativar notificações';

  @override
  String get onboardingNotifyDone => 'Definições de notificação guardadas';

  @override
  String get onboardingNotifyLater =>
      'Pode alterar tudo isto nas Definições, quando quiser.';

  @override
  String get onboardingReadyTitle => 'Está tudo pronto';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Está tudo pronto, $name';
  }

  @override
  String get onboardingReadyBody =>
      'A configuração está feita. Quer uma visita rápida ao funcionamento da aplicação?';

  @override
  String get onboardingTakeTour => 'Mostre-me';

  @override
  String get onboardingGoToApp => 'Ir para a aplicação';

  @override
  String get onboardingTourLater =>
      'Agora não? O guia fica nas Definições para quando quiser.';

  @override
  String get beginnersGuide => 'Guia para principiantes';

  @override
  String get guideFinish => 'Concluir';

  @override
  String chapterOf(int number, int total) {
    return 'Capítulo $number de $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Abrir $screen';
  }

  @override
  String get guideDashboardTitle => 'O seu painel';

  @override
  String get guideDashboardBody =>
      'Tudo começa aqui. O cartão de cima é o que lhe resta; por baixo, o que entrou e saiu neste período, e depois os gastos, orçamentos e objetivos.';

  @override
  String get guideDashboardTip1 =>
      'Puxe o ecrã para baixo para atualizar tudo de uma vez.';

  @override
  String get guideDashboardTip2 =>
      'Toque no cartão de receitas ou despesas para ir direto a essa lista.';

  @override
  String get guideDashboardTip3 =>
      'Os anéis e as análises atualizam-se assim que regista alguma coisa.';

  @override
  String get guideAddTitle => 'Registar dinheiro';

  @override
  String get guideAddBody =>
      'O botão no meio da barra é onde tudo começa. Abre um menu curto: despesa, receita, dívida, orçamento ou objetivo de poupança.';

  @override
  String get guideAddTip1 =>
      'Toque no botão central para registar uma entrada ou uma saída.';

  @override
  String get guideAddTip2 =>
      'Mantenha-o premido para ir direto a uma nova despesa e saltar o menu.';

  @override
  String get guideAddTip3 =>
      'Escolha sempre uma categoria — é isso que faz os gráficos e os orçamentos funcionarem.';

  @override
  String get guideCategoriesTitle => 'Categorias';

  @override
  String get guideCategoriesBody =>
      'As categorias agrupam os gastos. As que vêm com a aplicação servem à maioria das pessoas, e pode mudar-lhes o nome ou criar as suas.';

  @override
  String get guideCategoriesTip1 =>
      'Definições e depois Gerir categorias, para alterar ou acrescentar uma.';

  @override
  String get guideCategoriesTip2 =>
      'Tudo o que ficar sem categoria vai para «Outros», para que os gráficos continuem honestos.';

  @override
  String get guideBudgetTitle => 'Orçamentos';

  @override
  String get guideBudgetBody =>
      'Um orçamento é um teto mensal para uma categoria. A barra enche-se à medida que gasta e muda de cor ao aproximar-se, por isso fica a saber antes de o ultrapassar.';

  @override
  String get guideBudgetTip1 =>
      'Comece por duas ou três categorias, não por todas de uma vez.';

  @override
  String get guideBudgetTip2 =>
      'Ponha o limite um pouco acima do que costuma gastar e depois aperte-o.';

  @override
  String get guideBudgetTip3 =>
      'Deixe os alertas ligados e a aplicação avisa-o quando um orçamento estiver a acabar.';

  @override
  String get guideSavingsTitle => 'Objetivos de poupança';

  @override
  String get guideSavingsBody =>
      'Dê um nome àquilo para que está a poupar, defina um valor e uma data, e a aplicação calcula quanto precisa de pôr de lado por mês.';

  @override
  String get guideSavingsTip1 =>
      'Um objetivo com nome cumpre-se melhor do que a vaga intenção de poupar.';

  @override
  String get guideSavingsTip2 =>
      'Vários objetivos pequenos acabam-se mais vezes do que um grande.';

  @override
  String get guideLoansTitle => 'Dívidas e empréstimos';

  @override
  String get guideLoansBody =>
      'Registe o que deve, quanto lhe custa e quando vence a próxima prestação. Tudo o que está a pagar fica numa lista, com o valor em falta.';

  @override
  String get guideLoansTip1 =>
      'Acrescente a data de vencimento e os lembretes de pagamento tratam do resto.';

  @override
  String get guideLoansTip2 =>
      'Uma dívida em atraso aparece a vermelho no painel até estar paga.';

  @override
  String get guideReportsTitle => 'Relatórios';

  @override
  String get guideReportsBody =>
      'O olhar mais fundo: receitas contra despesas, gastos por categoria, como se aguentaram os orçamentos e que parte do rendimento ficou consigo.';

  @override
  String get guideReportsTip1 =>
      'Alterne entre semana, mês e trimestre no topo do ecrã.';

  @override
  String get guideReportsTip2 =>
      'Exporte ou partilhe um PDF — sai na sua língua e no seu sentido de leitura.';

  @override
  String get guideSettingsTitle => 'Definições';

  @override
  String get guideSettingsBody =>
      'Idioma, moeda, cores e alertas estão todos aqui, e nada fica fixado pela configuração inicial — mude o que quiser, quando quiser.';

  @override
  String get guideSettingsTip1 =>
      'Quarenta idiomas, e todo o layout se espelha nos que se leem da direita para a esquerda.';

  @override
  String get guideSettingsTip2 =>
      'Escolha que alertas quer e a que horas podem chegar.';

  @override
  String get guideSettingsTip3 =>
      'As horas de silêncio seguram tudo até de manhã.';

  @override
  String get guideHabitTitle => 'Criar o hábito';

  @override
  String get guideHabitBody =>
      'A aplicação vale o que lhe puser dentro. Um minuto por dia vale mais do que uma hora por mês, e ao fim de duas semanas os números começam a dizer alguma coisa.';

  @override
  String get guideHabitTip1 =>
      'Registe o que gasta na altura, não ao fim da semana.';

  @override
  String get guideHabitTip2 =>
      'Uma vista de olhos ao painel uma vez por dia. Dez segundos chegam.';

  @override
  String get guideHabitTip3 =>
      'Este guia fica nas Definições — volte quando quiser.';

  @override
  String get appearance => 'Aspeto';

  @override
  String get themeCaption =>
      'Claro, escuro, ou o que o telemóvel estiver a fazer.';

  @override
  String get accentColor => 'Cor de destaque';

  @override
  String get accentColorCaption =>
      'Dá cor aos botões, aos destaques e aos gráficos.';

  @override
  String get accentSemanticsNote =>
      'As entradas e as saídas mantêm as suas cores em todos os temas, por isso um valor nunca muda de significado só porque mudou a cor de destaque.';

  @override
  String get accentTeal => 'Turquesa';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentSky => 'Azul-céu';

  @override
  String get accentBlue => 'Azul';

  @override
  String get accentIndigo => 'Índigo';

  @override
  String get accentViolet => 'Violeta';

  @override
  String get accentPink => 'Rosa';

  @override
  String get accentCrimson => 'Carmesim';

  @override
  String get accentOrange => 'Laranja';

  @override
  String get accentSlate => 'Ardósia';

  @override
  String get searchLanguages => 'Procurar idiomas';

  @override
  String get suggestedLanguages => 'Sugeridos';

  @override
  String get allLanguages => 'Todos os idiomas';

  @override
  String get noLanguagesFound => 'Nenhum idioma encontrado';

  @override
  String get noLanguagesFoundMessage =>
      'Tente o nome em inglês ou o código de duas letras.';

  @override
  String get rightToLeft => 'Da direita para a esquerda';

  @override
  String get replayGuide => 'Rever o guia';

  @override
  String get replaySetup => 'Repetir a configuração';

  @override
  String get replaySetupBody =>
      'Volte a passar pelas perguntas iniciais. Nada do que registou é apagado.';

  @override
  String get rateTitle => 'Está a gostar do RainyPenny?';

  @override
  String get rateBody =>
      'Já anda nisto há algum tempo. Uma avaliação demora um instante e ajuda outras pessoas a encontrar a aplicação.';

  @override
  String get rateAction => 'Avaliar a aplicação';

  @override
  String get rateLater => 'Talvez mais tarde';

  @override
  String get rateNever => 'Não, obrigado';

  @override
  String get rateThanks => 'Obrigado';

  @override
  String get monthlySalary => 'Salário mensal';

  @override
  String get remainingAmount => 'Restante';

  @override
  String get carriedForward => 'Transportado';

  @override
  String get carriedForwardHint => 'Sobra do ciclo anterior';

  @override
  String get totalSpending => 'Gasto total';

  @override
  String get salaryCycle => 'Ciclo salarial';

  @override
  String get payday => 'Dia de pagamento';

  @override
  String get paydayDescription =>
      'O dia em que o seu salário entra. O seu mês financeiro vai desse dia até à véspera do seguinte.';

  @override
  String get paydayUpdated => 'Dia de pagamento atualizado';

  @override
  String paydayDayOfMonth(int day) {
    return 'Dia $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Nos meses mais curtos o ciclo começa no último dia do mês.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias até ao pagamento',
      one: '1 dia até ao pagamento',
      zero: 'Último dia do ciclo',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Próximo pagamento';

  @override
  String get spentSoFar => 'Gasto até agora';

  @override
  String get dailyAllowance => 'Gasto diário seguro';

  @override
  String get overspentNotice => 'Gastou mais do que entrou neste ciclo.';

  @override
  String get backToThisMonth => 'Voltar a este mês';

  @override
  String get cycleRangeLabel => 'Ciclo';

  @override
  String get noSalaryRecorded => 'Ainda sem salário registado';

  @override
  String get addSalaryAction => 'Adicione o seu salário';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excelente';

  @override
  String get healthGood => 'Bom';

  @override
  String get healthFair => 'Razoável';

  @override
  String get healthNeedsWork => 'A melhorar';

  @override
  String get healthExcellentBody =>
      'Está a poupar bem e a manter-se dentro dos orçamentos.';

  @override
  String get healthGoodBody =>
      'Os seus gastos estão no bom caminho neste período.';

  @override
  String get healthFairBody =>
      'Alguns orçamentos estão no limite. Pequenas mudanças ajudarão.';

  @override
  String get healthNeedsWorkBody =>
      'Os gastos ultrapassam o seu plano. Comece pela maior categoria.';

  @override
  String get factorSavingsRate => 'Taxa de poupança';

  @override
  String get factorBudgetControl => 'Controlo do orçamento';

  @override
  String get factorDebtLoad => 'Peso da dívida';

  @override
  String get factorSpendingTrend => 'Tendência de gastos';

  @override
  String factorKept(String percent) {
    return '$percent% guardado';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilizado';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% do rendimento';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Subiu $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Desceu $percent%';
  }

  @override
  String get howScoreWorks => 'Como esta pontuação é calculada';

  @override
  String get healthScoreExplainer =>
      'A sua pontuação combina quatro factores: quanto do rendimento guarda, quanto respeita os orçamentos, que parte do rendimento vai para dívidas, e se os gastos sobem ou descem.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% da pontuação';
  }

  @override
  String get viewHealthDetails => 'Ver o detalhe';

  @override
  String get saveChanges => 'Guardar alterações';

  @override
  String get profileUpdated => 'Perfil atualizado';

  @override
  String get changePhoto => 'Alterar foto';

  @override
  String get removePhoto => 'Remover foto';

  @override
  String get personalInformationIntro =>
      'O seu nome e a sua foto aparecem em toda a aplicação. O seu e-mail é o endereço com que inicia sessão.';

  @override
  String get emailNotEditable =>
      'Contacte o suporte para alterar o endereço de início de sessão.';

  @override
  String get pressBackAgainToExit => 'Prima novamente para sair';

  @override
  String get categoryHousing => 'Habitação';

  @override
  String get categoryFood => 'Alimentação';

  @override
  String get categoryTransport => 'Transportes';

  @override
  String get categoryShopping => 'Compras';

  @override
  String get categoryBills => 'Contas e serviços';

  @override
  String get categoryEntertainment => 'Entretenimento';

  @override
  String get categoryHealth => 'Saúde e bem-estar';

  @override
  String get categoryEducation => 'Educação';

  @override
  String get categoryTravel => 'Viagens';

  @override
  String get categorySalary => 'Salário';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investimentos';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Outros';

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
  String get addCategory => 'Nova categoria';

  @override
  String get filterByCategory => 'Filtrar por categoria';

  @override
  String get allCategories => 'Todas as categorias';

  @override
  String get clearFilters => 'Limpar filtros';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Todo o histórico';

  @override
  String get customRange => 'Personalizado';

  @override
  String get selectDateRange => 'Escolher um período';

  @override
  String rangeApplied(String start, String end) {
    return 'A mostrar $start – $end';
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
