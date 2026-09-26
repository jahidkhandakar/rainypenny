// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppL10nFr extends AppL10n {
  AppL10nFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Épargnez pour les jours difficiles';

  @override
  String get navHome => 'Accueil';

  @override
  String get navTransactions => 'Transactions';

  @override
  String get navAdd => 'Ajouter';

  @override
  String get navReports => 'Rapports';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Bonjour, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Bon après-midi, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Bonsoir, $name';
  }

  @override
  String get greetingSubtitle => 'Voici votre aperçu financier';

  @override
  String get totalBalance => 'Solde total';

  @override
  String get vsLastPeriod => 'par rapport à la période précédente';

  @override
  String get income => 'Revenus';

  @override
  String get expenses => 'Dépenses';

  @override
  String get netBalance => 'Solde net';

  @override
  String get lastThirtyDays => '30 derniers jours';

  @override
  String get quickActions => 'Actions rapides';

  @override
  String get addIncome => 'Ajouter un revenu';

  @override
  String get addExpense => 'Ajouter une dépense';

  @override
  String get spendingOverview => 'Aperçu des dépenses';

  @override
  String get recentTransactions => 'Transactions récentes';

  @override
  String get seeAll => 'Tout voir';

  @override
  String get viewAll => 'Voir tout';

  @override
  String get budgetProgress => 'Progression du budget';

  @override
  String get savingsGoals => 'Objectifs d\'épargne';

  @override
  String get financialInsight => 'Analyse financière';

  @override
  String get financialHealth => 'Santé financière';

  @override
  String ofTotal(String total) {
    return 'sur $total';
  }

  @override
  String get searchTransactions => 'Rechercher des transactions';

  @override
  String get filterAll => 'Toutes';

  @override
  String get filterIncome => 'Revenus';

  @override
  String get filterExpenses => 'Dépenses';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get noTransactionsTitle => 'Aucune transaction trouvée';

  @override
  String get noTransactionsBody =>
      'Essayez une autre recherche ou un autre filtre pour voir davantage de votre activité.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions',
      one: '1 transaction',
      zero: 'Aucune transaction',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Ajouter une transaction';

  @override
  String get amount => 'Montant';

  @override
  String get category => 'Catégorie';

  @override
  String get date => 'Date';

  @override
  String get note => 'Note';

  @override
  String get noteHint => 'Note facultative';

  @override
  String get saveIncome => 'Enregistrer le revenu';

  @override
  String get saveExpense => 'Enregistrer la dépense';

  @override
  String get selectCategory => 'Sélectionner une catégorie';

  @override
  String get transactionSaved => 'Transaction enregistrée';

  @override
  String get amountRequired => 'Saisissez un montant supérieur à zéro';

  @override
  String get titleRequired => 'Donnez un nom à cette transaction';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionHint => 'ex. Courses';

  @override
  String get budget => 'Budget';

  @override
  String get budgets => 'Budgets';

  @override
  String get totalBudget => 'Budget total';

  @override
  String get spent => 'Dépensé';

  @override
  String get remaining => 'Restant';

  @override
  String budgetUsed(int percent) {
    return '$percent% utilisé';
  }

  @override
  String get onTrack => 'Dans les temps';

  @override
  String get approachingLimit => 'Limite bientôt atteinte';

  @override
  String get overBudget => 'Budget dépassé';

  @override
  String get savings => 'Épargne';

  @override
  String get yourGoals => 'Vos objectifs';

  @override
  String get saved => 'Épargné';

  @override
  String get target => 'Objectif';

  @override
  String get monthlyContribution => 'Mensuel';

  @override
  String get addFunds => 'Ajouter des fonds';

  @override
  String get goalComplete => 'Objectif atteint';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mois restants',
      one: '1 mois restant',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Prêts et dettes';

  @override
  String get totalOutstanding => 'Total restant dû';

  @override
  String get monthlyPayment => 'Mensuel';

  @override
  String get nextPayment => 'Prochain paiement';

  @override
  String paidOff(int percent) {
    return '$percent% remboursé';
  }

  @override
  String get interestRate => 'Intérêts';

  @override
  String get upcomingPayments => 'Prochains paiements';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'À payer dans $count jours',
      one: 'À payer demain',
      zero: 'À payer aujourd\'hui',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'En retard';

  @override
  String get reports => 'Rapports';

  @override
  String get week => 'Semaine';

  @override
  String get month => 'Mois';

  @override
  String get quarter => 'Trimestre';

  @override
  String get incomeVsExpenses => 'Revenus vs dépenses';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get budgetPerformance => 'Performance des budgets';

  @override
  String get insights => 'Analyses';

  @override
  String get savingsRate => 'Taux d\'épargne';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Compte';

  @override
  String get personalInformation => 'Informations personnelles';

  @override
  String get changePassword => 'Modifier le mot de passe';

  @override
  String get notifications => 'Notifications';

  @override
  String get preferences => 'Préférences';

  @override
  String get language => 'Langue';

  @override
  String get currency => 'Devise';

  @override
  String get theme => 'Thème';

  @override
  String get security => 'Sécurité';

  @override
  String get privacyAndSecurity => 'Confidentialité et sécurité';

  @override
  String get help => 'Aide';

  @override
  String get helpAndSupport => 'Aide et assistance';

  @override
  String get termsAndConditions => 'Conditions générales';

  @override
  String get logOut => 'Se déconnecter';

  @override
  String memberSince(String date) {
    return 'Membre depuis le $date';
  }

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get settings => 'Paramètres';

  @override
  String get noNotificationsTitle => 'Vous êtes à jour';

  @override
  String get noNotificationsBody =>
      'Les nouvelles analyses et rappels apparaîtront ici.';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get done => 'Terminé';

  @override
  String get retry => 'Réessayer';

  @override
  String get close => 'Fermer';

  @override
  String get somethingWentWrong => 'Une erreur s\'est produite';

  @override
  String get comingSoon => 'Bientôt disponible dans la version complète';

  @override
  String get edit => 'Modifier';

  @override
  String get delete => 'Supprimer';

  @override
  String get undo => 'Annuler l\'action';

  @override
  String get add => 'Ajouter';

  @override
  String get create => 'Créer';

  @override
  String get nameRequired => 'Saisissez votre nom';

  @override
  String get amountAboveZero => 'Saisissez un montant supérieur à zéro';

  @override
  String get editTransaction => 'Modifier la transaction';

  @override
  String get deleteTransaction => 'Supprimer la transaction ?';

  @override
  String deleteTransactionBody(String title) {
    return '$title sera supprimée de votre registre.';
  }

  @override
  String get transactionDeleted => 'Transaction supprimée';

  @override
  String get transactionUpdated => 'Transaction mise à jour';

  @override
  String get newBudget => 'Nouveau budget';

  @override
  String get editBudget => 'Modifier le budget';

  @override
  String get budgetLimit => 'Limite mensuelle';

  @override
  String get deleteBudget => 'Supprimer le budget ?';

  @override
  String deleteBudgetBody(String category) {
    return 'Le budget $category sera supprimé. Vos transactions ne seront pas affectées.';
  }

  @override
  String get budgetSaved => 'Budget enregistré';

  @override
  String get budgetDeleted => 'Budget supprimé';

  @override
  String get allCategoriesBudgeted => 'Chaque catégorie a déjà un budget';

  @override
  String get noBudgetsTitle => 'Aucun budget pour le moment';

  @override
  String get noBudgetsBody =>
      'Définissez une limite mensuelle pour une catégorie afin de commencer à la suivre.';

  @override
  String get newGoal => 'Nouvel objectif';

  @override
  String get editGoal => 'Modifier l\'objectif';

  @override
  String get goalName => 'Nom de l\'objectif';

  @override
  String get goalNameHint => 'ex. Fonds d\'urgence';

  @override
  String get targetAmount => 'Montant cible';

  @override
  String get alreadySaved => 'Déjà épargné';

  @override
  String get deleteGoal => 'Supprimer l\'objectif ?';

  @override
  String deleteGoalBody(String name) {
    return '$name et sa progression seront supprimés.';
  }

  @override
  String get goalSaved => 'Objectif enregistré';

  @override
  String get goalDeleted => 'Objectif supprimé';

  @override
  String get noGoalsTitle => 'Aucun objectif d\'épargne pour le moment';

  @override
  String get noGoalsBody =>
      'Définissez un objectif et RainyPenny suivra votre progression.';

  @override
  String get fundsAdded => 'Fonds ajoutés';

  @override
  String get newDebt => 'Nouveau prêt ou crédit';

  @override
  String get editDebt => 'Modifier le prêt';

  @override
  String get debtName => 'Nom';

  @override
  String get debtNameHint => 'ex. Prêt automobile';

  @override
  String get lender => 'Prêteur';

  @override
  String get lenderHint => 'ex. Meridian Bank';

  @override
  String get originalAmount => 'Montant initial';

  @override
  String get creditLimit => 'Limite de crédit';

  @override
  String get remainingBalance => 'Solde restant';

  @override
  String get interestRatePercent => 'Taux d\'intérêt (%)';

  @override
  String get kindLoan => 'Prêt';

  @override
  String get kindCreditCard => 'Carte de crédit';

  @override
  String get recordPayment => 'Enregistrer un paiement';

  @override
  String get paymentRecorded => 'Paiement enregistré';

  @override
  String get deleteDebt => 'Supprimer cette dette ?';

  @override
  String deleteDebtBody(String name) {
    return '$name sera supprimé de vos dettes.';
  }

  @override
  String get debtSaved => 'Enregistré';

  @override
  String get debtDeleted => 'Supprimé';

  @override
  String get noDebtsTitle => 'Aucune dette suivie';

  @override
  String get noDebtsBody =>
      'Ajoutez un prêt ou une carte de crédit pour suivre vos remboursements.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget $subject dépassé';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Vous avez dépassé de $amount votre budget $subject pour cette période.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject approche de sa limite';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Votre budget $subject est utilisé à $percent%, il reste $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Les dépenses dépassent les revenus';

  @override
  String get insightOverIncomeBody =>
      'Vous avez dépensé plus que vous n\'avez gagné pendant cette période. Examinez vos principales catégories pour rétablir l\'équilibre.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Les dépenses de $subject augmentent';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Vos dépenses en $subject sont supérieures de $percent% à celles de la période précédente.';
  }

  @override
  String get insightTrendDownTitle => 'Les dépenses sont en baisse';

  @override
  String insightTrendDownBody(int percent) {
    return 'Les dépenses globales sont inférieures de $percent% à celles de la période précédente.';
  }

  @override
  String get insightTrendUpTitle => 'Les dépenses sont en hausse';

  @override
  String insightTrendUpBody(int percent) {
    return 'Les dépenses globales sont supérieures de $percent% à celles de la période précédente.';
  }

  @override
  String get insightSavingsStrongTitle => 'Épargne solide cette période';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Vous avez conservé $percent% de vos revenus — bien au-dessus de l\'objectif de $target%.';
  }

  @override
  String get insightSavingsLowTitle =>
      'Le taux d\'épargne est inférieur à l\'objectif';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Vous avez conservé $percent% de vos revenus pendant cette période. Visez $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject est presque financé';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Il ne reste que $amount pour atteindre $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Objectif $subject en bonne voie';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months mois',
      one: '1 mois',
    );
    return 'Avec $amount par mois, vous atteindrez cet objectif dans $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Paiement de $subject en retard';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours',
      one: '1 jour',
    );
    return 'Le paiement de $amount pour $subject est en retard de $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Paiement de $subject à venir';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dans $days jours',
      one: 'demain',
      zero: 'aujourd\'hui',
    );
    return '$amount est dû $_temp0.';
  }

  @override
  String get signIn => 'Se connecter';

  @override
  String get signUp => 'Créer un compte';

  @override
  String get signInSubtitle => 'Bon retour. Votre argent vous attend.';

  @override
  String get signUpSubtitle => 'Quelques informations et vous êtes prêt.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'vous@e-mail.com';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get passwordHint => 'Au moins 8 caractères';

  @override
  String get fullNameLabel => 'Nom complet';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get resetSent =>
      'Consultez votre boîte de réception pour le lien de réinitialisation';

  @override
  String get noAccountYet => 'Nouveau ici ?';

  @override
  String get haveAccount => 'Vous avez déjà un compte ?';

  @override
  String get emailInvalid => 'Saisissez une adresse e-mail valide';

  @override
  String get passwordTooShort => 'Utilisez au moins 8 caractères';

  @override
  String get signOutConfirm => 'Se déconnecter ?';

  @override
  String get signOutBody =>
      'Vous devrez vous reconnecter pour consulter vos finances.';

  @override
  String get dataSource => 'Source des données';

  @override
  String get insightWeeklySummaryTitle => 'Votre semaine en revue';

  @override
  String get insightWeeklySummaryBody =>
      'Voyez où votre argent est allé cette semaine et comment évoluent vos budgets.';

  @override
  String get notificationSettings => 'Notifications';

  @override
  String get alertsSection => 'Alertes';

  @override
  String get budgetAlerts => 'Alertes de budget';

  @override
  String get budgetAlertsBody =>
      'Lorsque le budget approche ou dépasse sa limite';

  @override
  String get paymentReminders => 'Rappels de paiement';

  @override
  String get paymentRemindersBody =>
      'Quelques jours avant l\'échéance d\'un paiement';

  @override
  String get savingsUpdates => 'Mises à jour de l\'épargne';

  @override
  String get savingsUpdatesBody => 'Progression vers vos objectifs';

  @override
  String get weeklySummaryLabel => 'Résumé hebdomadaire';

  @override
  String get weeklySummaryBody => 'Un récapitulatif de la semaine écoulée';

  @override
  String get scheduleSection => 'Horaires';

  @override
  String get reminderTime => 'Heure du rappel';

  @override
  String get quietHours => 'Heures silencieuses';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Jour du résumé';

  @override
  String get permissionRequired => 'Les notifications sont désactivées';

  @override
  String get permissionRequiredBody =>
      'Autorisez les notifications pour que RainyPenny puisse vous prévenir avant qu\'un budget ou un paiement ne vous échappe.';

  @override
  String get allowNotifications => 'Autoriser les notifications';

  @override
  String get permissionDenied =>
      'Les notifications sont bloquées. Vous pouvez les activer dans les paramètres de votre appareil.';

  @override
  String get upcomingAlerts => 'Planifiées';

  @override
  String get noScheduledAlerts => 'Rien de planifié pour le moment';

  @override
  String get noScheduledAlertsBody =>
      'Les alertes apparaîtront ici lorsque vos budgets et paiements approcheront de leurs limites.';

  @override
  String scheduledFor(String date) {
    return 'Planifiée pour le $date';
  }

  @override
  String get everyWeek => 'Chaque semaine';

  @override
  String get allNotificationsOff => 'Toutes les notifications sont désactivées';

  @override
  String get needsAttention => 'Nécessite votre attention';

  @override
  String get quickActionsTitle => 'Que souhaitez-vous faire ?';

  @override
  String get createSection => 'Enregistrer';

  @override
  String get jumpToSection => 'Accéder à';

  @override
  String get addLoanAction => 'Ajouter un prêt';

  @override
  String get addBudgetAction => 'Ajouter un budget';

  @override
  String get addGoalAction => 'Ajouter un objectif';

  @override
  String get longPressHint =>
      'Astuce : maintenez + enfoncé pour enregistrer directement une dépense';

  @override
  String get searchCurrencies => 'Rechercher des devises';

  @override
  String get noCurrenciesFound => 'Aucune devise trouvée';

  @override
  String get noCurrenciesFoundMessage =>
      'Essayez un autre code, symbole ou nom.';

  @override
  String get popularCurrencies => 'Populaires';

  @override
  String get allCurrencies => 'Toutes les devises';

  @override
  String get totalLoanAmount => 'Montant total du prêt';

  @override
  String get installmentAmount => 'Montant de l\'échéance';

  @override
  String get numberOfInstallments => 'Nombre d\'échéances';

  @override
  String get paidInstallments => 'Échéances payées';

  @override
  String get remainingInstallments => 'Échéances restantes';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid sur $total payées';
  }

  @override
  String get finalPayment => 'Dernier paiement';

  @override
  String get paymentDueDate => 'Date d\'échéance du paiement';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Le $day de chaque mois';
  }

  @override
  String get loanStatus => 'Statut';

  @override
  String get statusActive => 'Dans les temps';

  @override
  String get statusDueSoon => 'Échéance proche';

  @override
  String get statusOverdue => 'En retard';

  @override
  String get statusCompleted => 'Remboursé';

  @override
  String get repaymentProgress => 'Progression du remboursement';

  @override
  String get byAmount => 'Par montant';

  @override
  String get byInstallments => 'Par échéances';

  @override
  String get startDate => 'Date de début';

  @override
  String get openEnded => 'Sans durée fixe';

  @override
  String get loanDetails => 'Détails du prêt';

  @override
  String get notSet => 'Non défini';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject arrive à échéance aujourd\'hui';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Votre paiement de $amount est dû aujourd\'hui. Un simple appui permet de rester à jour.';
  }

  @override
  String get remindMorningTitle => 'Bonjour ☀️';

  @override
  String get remindMorningBody =>
      'Commencez la journée en gardant le contrôle de votre argent. Avez-vous quelque chose à ajouter d\'hier ?';

  @override
  String get remindNoonTitle => 'Point de contrôle de midi';

  @override
  String get remindNoonBody =>
      'Déjeuner, café, trajet ? Ajoutez-le en quelques secondes.';

  @override
  String get remindAfternoonTitle => 'Mise à jour rapide';

  @override
  String get remindAfternoonBody =>
      'Enregistrez ce que vous avez dépensé jusqu\'ici et gardez les chiffres d\'aujourd\'hui à jour.';

  @override
  String get remindEveningTitle => 'Fin de journée';

  @override
  String get remindEveningBody =>
      'Deux minutes maintenant et les chiffres d\'aujourd\'hui seront complets.';

  @override
  String get happyWeekendTitle => 'Bon week-end ! 🎉';

  @override
  String get happyWeekendBody =>
      'Profitez-en — et gardez un œil sur vos dépenses du week-end.';

  @override
  String get dailyReminders => 'Rappels quotidiens de dépenses';

  @override
  String get dailyRemindersBody =>
      'De petits rappels pour garder vos dépenses à jour';

  @override
  String get weekendGreeting => 'Bon week-end';

  @override
  String get weekendGreetingBody =>
      'Un petit bonjour au début de votre week-end';

  @override
  String get reminderTimesSection => 'Heures des rappels';

  @override
  String get slotMorning => 'Matin';

  @override
  String get slotNoon => 'Midi';

  @override
  String get slotAfternoon => 'Après-midi';

  @override
  String get slotEvening => 'Soir';

  @override
  String get everyDay => 'Tous les jours';

  @override
  String get financialReport => 'Rapport financier';

  @override
  String get preparedFor => 'Préparé pour';

  @override
  String get generatedOn => 'Généré le';

  @override
  String get reportDisclaimer =>
      'Généré par RainyPenny à partir de vos propres données.';

  @override
  String pageOf(int page, int total) {
    return 'Page $page sur $total';
  }

  @override
  String get overview => 'Vue d\'ensemble';

  @override
  String get description => 'Description';

  @override
  String get totalIncome => 'Revenus totaux';

  @override
  String get totalExpenses => 'Dépenses totales';

  @override
  String get totalSaved => 'Total épargné';

  @override
  String get shareOfTotal => 'Part';

  @override
  String get used => 'Utilisé';

  @override
  String get goal => 'Objectif';

  @override
  String get targetDate => 'Date cible';

  @override
  String get progress => 'Progression';

  @override
  String get paidOffShort => 'Payé';

  @override
  String get transactions => 'Transactions';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'et $count transactions supplémentaires',
      one: 'et 1 transaction supplémentaire',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exporter le PDF';

  @override
  String get sharePdf => 'Partager le rapport';

  @override
  String get preparingReport => 'Préparation de votre rapport…';

  @override
  String get reportReady => 'Rapport prêt';

  @override
  String get reportFailed => 'Impossible de créer le rapport';

  @override
  String get categories => 'Catégories';

  @override
  String get categoriesIntro =>
      'Ajoutez vos propres catégories pour classer vos revenus et vos dépenses exactement comme vous les concevez.';

  @override
  String get expenseCategories => 'Catégories de dépenses';

  @override
  String get incomeCategories => 'Catégories de revenus';

  @override
  String get newCategory => 'Nouvelle catégorie';

  @override
  String get editCategory => 'Modifier la catégorie';

  @override
  String get categoryName => 'Nom';

  @override
  String get categoryNameHint => 'ex. Soins des animaux';

  @override
  String get icon => 'Icône';

  @override
  String get categorySaved => 'Catégorie enregistrée';

  @override
  String get categoryDeleted => 'Catégorie supprimée';

  @override
  String get deleteCategory => 'Supprimer cette catégorie ?';

  @override
  String deleteCategoryBody(String name) {
    return '$name sera supprimée de vos catégories.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enregistrements utilisent encore cette catégorie',
      one: '1 enregistrement utilise encore cette catégorie',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Rien ici pour le moment.';

  @override
  String get builtIn => 'Intégrée';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get expense => 'Dépense';

  @override
  String get languageNote =>
      'L\'arabe, l\'ourdou, le persan et l\'hébreu font passer toute l\'interface de droite à gauche, y compris les graphiques et les rapports PDF.';

  @override
  String get next => 'Suivant';

  @override
  String get back => 'Retour';

  @override
  String get skip => 'Ignorer';

  @override
  String get continueLabel => 'Continuer';

  @override
  String get selected => 'Sélectionné';

  @override
  String get passwordRequired => 'Saisissez votre mot de passe';

  @override
  String get newPasswordLabel => 'Nouveau mot de passe';

  @override
  String get confirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get passwordsDoNotMatch =>
      'Les deux mots de passe doivent correspondre';

  @override
  String get showPassword => 'Afficher le mot de passe';

  @override
  String get hidePassword => 'Masquer le mot de passe';

  @override
  String get savePassword => 'Enregistrer le mot de passe';

  @override
  String get backToSignIn => 'Retour à la connexion';

  @override
  String get alreadyHaveAccount => 'J\'ai déjà un compte';

  @override
  String get getStarted => 'Commencer';

  @override
  String get acceptTerms =>
      'J\'accepte les conditions d\'utilisation et la politique de confidentialité';

  @override
  String get acceptTermsRequired => 'Veuillez accepter pour continuer';

  @override
  String get passwordStrengthTooShort => 'Trop court';

  @override
  String get passwordStrengthWeak => 'Faible';

  @override
  String get passwordStrengthFair => 'Moyen';

  @override
  String get passwordStrengthGood => 'Bon';

  @override
  String get passwordStrengthStrong => 'Fort';

  @override
  String get passwordAdvice =>
      'Une phrase longue dont vous vous souvenez est préférable à un court mot de passe rempli de symboles. Évitez tout mot de passe que vous utilisez déjà ailleurs.';

  @override
  String get authInvalidCredentials =>
      'Cet e-mail et ce mot de passe ne correspondent à aucun compte';

  @override
  String get authEmailNotConfirmed =>
      'Confirmez votre adresse e-mail avant de vous connecter';

  @override
  String get authEmailAlreadyRegistered =>
      'Un compte associé à cet e-mail existe déjà';

  @override
  String get authWeakPassword => 'Choisissez un mot de passe plus long';

  @override
  String get authRateLimited =>
      'Trop de tentatives. Réessayez dans quelques minutes';

  @override
  String get authNetworkError =>
      'Aucune connexion. Vérifiez votre réseau et réessayez';

  @override
  String get authGenericError =>
      'Une erreur s\'est produite. Veuillez réessayer';

  @override
  String get confirmEmailTitle => 'Vérifiez votre e-mail';

  @override
  String confirmEmailBody(String email) {
    return 'Nous avons envoyé un lien de confirmation à $email. Ouvrez-le pour terminer la configuration de votre compte.';
  }

  @override
  String get resendConfirmation => 'Renvoyer l\'e-mail de confirmation';

  @override
  String get confirmationResent => 'E-mail de confirmation envoyé';

  @override
  String get forgotPasswordTitle => 'Réinitialiser votre mot de passe';

  @override
  String get forgotPasswordSubtitle =>
      'Saisissez l\'adresse e-mail utilisée lors de votre inscription et nous vous enverrons un lien pour choisir un nouveau mot de passe.';

  @override
  String get sendResetLink => 'Envoyer le lien de réinitialisation';

  @override
  String get resetLinkSentTitle => 'Lien de réinitialisation envoyé';

  @override
  String resetLinkSentBody(String email) {
    return 'Si $email possède un compte, un lien de réinitialisation est en cours d\'envoi.';
  }

  @override
  String get resetLinkSentHint =>
      'Le lien expire dans une heure. S\'il n\'arrive pas, vérifiez votre dossier de spam avant d\'en demander un autre.';

  @override
  String get tryAnotherEmail => 'Utiliser une autre adresse e-mail';

  @override
  String get resetPasswordTitle => 'Choisissez un nouveau mot de passe';

  @override
  String get resetPasswordSubtitle =>
      'Choisissez un mot de passe que vous n\'avez encore jamais utilisé sur ce compte.';

  @override
  String get passwordChangedTitle => 'Mot de passe mis à jour';

  @override
  String get passwordChangedBody =>
      'Votre nouveau mot de passe est enregistré. Vous êtes connecté et prêt à commencer.';

  @override
  String get demoModeHint => 'Version de démonstration — aucun compte requis';

  @override
  String get demoModeFill => 'Remplir';

  @override
  String get welcomeTrackTitle => 'Voyez où va votre argent';

  @override
  String get welcomeTrackBody =>
      'Enregistrez ce qui entre et ce qui sort. RainyPenny transforme tout cela en une vue que vous pouvez réellement comprendre.';

  @override
  String get welcomeBudgetTitle => 'Fixez des limites qui tiennent';

  @override
  String get welcomeBudgetBody =>
      'Donnez un plafond mensuel à chaque partie de vos dépenses et soyez averti avant de le dépasser plutôt qu\'après.';

  @override
  String get welcomeGoalsTitle => 'Épargnez pour ce qui compte';

  @override
  String get welcomeGoalsBody =>
      'Nommez un objectif, fixez une cible et regardez-le progresser. Il est plus facile de constituer un fonds pour les jours difficiles quand vous pouvez le voir.';

  @override
  String get welcomePrivacyTitle => 'Votre argent reste le vôtre';

  @override
  String get welcomePrivacyBody =>
      'Vos chiffres vous appartiennent. Rien n\'est vendu et rien n\'est partagé avec qui que ce soit.';

  @override
  String stepOf(int step, int total) {
    return 'Étape $step sur $total';
  }

  @override
  String get onboardingNameTitle => 'Comment devons-nous vous appeler ?';

  @override
  String get onboardingNameBody =>
      'Nous l\'utiliserons pour vous accueillir, et nulle part ailleurs.';

  @override
  String get onboardingNameHint =>
      'Un prénom suffit. Vous pourrez le modifier plus tard.';

  @override
  String get onboardingCurrencyTitle => 'Quelle devise utilisez-vous ?';

  @override
  String get onboardingCurrencyBody =>
      'Tous les montants de l\'application sont affichés dans cette devise. La choisir ne convertit rien.';

  @override
  String get onboardingCurrencySearch => 'Rechercher parmi toutes les devises';

  @override
  String get onboardingAppearanceTitle => 'Personnalisez l\'application';

  @override
  String get onboardingAppearanceBody =>
      'Choisissez une apparence. Tout change au fur et à mesure de vos choix, et vous pourrez y revenir quand vous le souhaitez.';

  @override
  String get onboardingNotificationsTitle => 'Gardez le contrôle';

  @override
  String get onboardingNotificationsBody =>
      'Un petit rappel au bon moment suffit à transformer cela en habitude.';

  @override
  String get onboardingNotifyReminders =>
      'Un rappel discret pour enregistrer vos dépenses';

  @override
  String get onboardingNotifyBudget => 'Une alerte avant d\'épuiser un budget';

  @override
  String get onboardingNotifySummary =>
      'Un résumé hebdomadaire de l\'utilisation de votre argent';

  @override
  String get onboardingNotifyEnable => 'Activer les notifications';

  @override
  String get onboardingNotifyDone => 'Paramètres de notification enregistrés';

  @override
  String get onboardingNotifyLater =>
      'Vous pouvez modifier tout cela dans les Paramètres quand vous le souhaitez.';

  @override
  String get onboardingReadyTitle => 'Tout est prêt';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Tout est prêt, $name';
  }

  @override
  String get onboardingReadyBody =>
      'La configuration est terminée. Voulez-vous découvrir rapidement comment tout fonctionne ?';

  @override
  String get onboardingTakeTour => 'Faites-moi découvrir';

  @override
  String get onboardingGoToApp => 'Accéder à l\'application';

  @override
  String get onboardingTourLater =>
      'Pas maintenant ? Le guide reste dans les Paramètres pour quand vous le souhaitez.';

  @override
  String get beginnersGuide => 'Guide du débutant';

  @override
  String get guideFinish => 'Terminer';

  @override
  String chapterOf(int number, int total) {
    return 'Chapitre $number sur $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Ouvrir $screen';
  }

  @override
  String get guideDashboardTitle => 'Votre tableau de bord';

  @override
  String get guideDashboardBody =>
      'Tout commence ici. La carte en haut indique ce qu\'il vous reste ; dessous se trouvent les revenus et dépenses de la période, puis vos dépenses, budgets et objectifs.';

  @override
  String get guideDashboardTip1 =>
      'Tirez l\'écran vers le bas pour tout actualiser en une seule fois.';

  @override
  String get guideDashboardTip2 =>
      'Touchez la carte des revenus ou des dépenses pour accéder directement à la liste correspondante.';

  @override
  String get guideDashboardTip3 =>
      'Les anneaux et les analyses se mettent à jour dès que vous enregistrez quelque chose.';

  @override
  String get guideAddTitle => 'Enregistrer de l\'argent';

  @override
  String get guideAddBody =>
      'Le bouton au centre de la barre est le point de départ. Il ouvre un petit menu : argent sorti, argent entré, dette, budget ou objectif d\'épargne.';

  @override
  String get guideAddTip1 =>
      'Touchez le bouton central pour enregistrer une entrée ou une sortie d\'argent.';

  @override
  String get guideAddTip2 =>
      'Maintenez-le enfoncé pour accéder directement à une nouvelle dépense sans passer par le menu.';

  @override
  String get guideAddTip3 =>
      'Choisissez toujours une catégorie — c\'est ce qui permet aux graphiques et aux budgets de fonctionner.';

  @override
  String get guideCategoriesTitle => 'Catégories';

  @override
  String get guideCategoriesBody =>
      'Les catégories permettent de regrouper les dépenses. Celles fournies avec l\'application conviennent à la plupart des personnes, et vous pouvez les renommer ou en ajouter.';

  @override
  String get guideCategoriesTip1 =>
      'Allez dans Paramètres, puis Gérer les catégories, pour en modifier ou en ajouter une.';

  @override
  String get guideCategoriesTip2 =>
      'Tout ce qui reste sans catégorie va dans Autre, afin que les graphiques restent fidèles à la réalité.';

  @override
  String get guideBudgetTitle => 'Budgets';

  @override
  String get guideBudgetBody =>
      'Un budget est un plafond mensuel pour une catégorie. La barre se remplit au fil de vos dépenses et change lorsqu\'elle approche de la limite, afin que vous le sachiez avant de la dépasser.';

  @override
  String get guideBudgetTip1 =>
      'Commencez par deux ou trois catégories, plutôt que toutes à la fois.';

  @override
  String get guideBudgetTip2 =>
      'Fixez une limite légèrement supérieure à vos dépenses habituelles, puis resserrez-la.';

  @override
  String get guideBudgetTip3 =>
      'Laissez les alertes de budget activées et l\'application vous avertira lorsqu\'un budget s\'épuise.';

  @override
  String get guideSavingsTitle => 'Objectifs d\'épargne';

  @override
  String get guideSavingsBody =>
      'Indiquez ce pour quoi vous épargnez, fixez un objectif et une date, et l\'application calcule ce que vous devez mettre de côté chaque mois pour l\'atteindre.';

  @override
  String get guideSavingsTip1 =>
      'Un objectif nommé est plus facile à suivre qu\'une intention vague d\'épargner.';

  @override
  String get guideSavingsTip2 =>
      'Plusieurs petits objectifs sont plus souvent atteints qu\'un seul grand objectif.';

  @override
  String get guideLoansTitle => 'Dettes et prêts';

  @override
  String get guideLoansBody =>
      'Enregistrez ce que vous devez, ce que cela vous coûte et la date de la prochaine échéance. Tout ce que vous remboursez figure dans une seule liste avec le total restant.';

  @override
  String get guideLoansTip1 =>
      'Ajoutez la date d\'échéance et les rappels de paiement s\'en chargeront pour vous.';

  @override
  String get guideLoansTip2 =>
      'Une dette marquée comme en retard apparaît en rouge sur le tableau de bord jusqu\'à son paiement.';

  @override
  String get guideReportsTitle => 'Rapports';

  @override
  String get guideReportsBody =>
      'La vue détaillée : revenus comparés aux dépenses, dépenses par catégorie, évolution de vos budgets et part de vos revenus que vous avez conservée.';

  @override
  String get guideReportsTip1 =>
      'Passez de la semaine au mois ou au trimestre en haut de l\'écran.';

  @override
  String get guideReportsTip2 =>
      'Exportez ou partagez un PDF — il est généré dans votre langue et avec son orientation adaptée.';

  @override
  String get guideSettingsTitle => 'Paramètres';

  @override
  String get guideSettingsBody =>
      'La langue, la devise, les couleurs et les alertes se trouvent ici, et aucun de ces choix n\'est définitif — modifiez-les quand vous le souhaitez.';

  @override
  String get guideSettingsTip1 =>
      'Quarante langues sont disponibles, et toute la mise en page est inversée pour celles qui s\'écrivent de droite à gauche.';

  @override
  String get guideSettingsTip2 =>
      'Choisissez les alertes que vous souhaitez recevoir et les heures auxquelles elles peuvent arriver.';

  @override
  String get guideSettingsTip3 =>
      'Les heures silencieuses retiennent toutes les notifications jusqu\'au matin.';

  @override
  String get guideHabitTitle => 'Faites-en une habitude';

  @override
  String get guideHabitBody =>
      'L\'application n\'est aussi utile que les données que vous y ajoutez. Une minute par jour vaut mieux qu\'une heure une fois par mois, et après quinze jours les chiffres commencent à vous apprendre quelque chose.';

  @override
  String get guideHabitTip1 =>
      'Enregistrez vos dépenses au moment où elles se produisent, plutôt qu\'à la fin de la semaine.';

  @override
  String get guideHabitTip2 =>
      'Jetez un œil au tableau de bord une fois par jour. Dix secondes suffisent.';

  @override
  String get guideHabitTip3 =>
      'Ce guide reste dans les Paramètres — revenez-y quand vous le souhaitez.';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeCaption =>
      'Clair, sombre ou selon le réglage de votre téléphone.';

  @override
  String get accentColor => 'Couleur d\'accent';

  @override
  String get accentColorCaption =>
      'Colore les boutons, les éléments mis en évidence et les graphiques.';

  @override
  String get accentSemanticsNote =>
      'Les entrées et les sorties d\'argent conservent leurs propres couleurs dans chaque thème, afin qu\'un chiffre ne change jamais de signification lorsque vous modifiez l\'accent.';

  @override
  String get accentTeal => 'Sarcelle';

  @override
  String get accentGreen => 'Vert';

  @override
  String get accentSky => 'Ciel';

  @override
  String get accentBlue => 'Bleu';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Rose';

  @override
  String get accentCrimson => 'Cramoisi';

  @override
  String get accentOrange => 'Orange';

  @override
  String get accentSlate => 'Ardoise';

  @override
  String get searchLanguages => 'Rechercher des langues';

  @override
  String get suggestedLanguages => 'Suggérées';

  @override
  String get allLanguages => 'Toutes les langues';

  @override
  String get noLanguagesFound => 'Aucune langue trouvée';

  @override
  String get noLanguagesFoundMessage =>
      'Essayez le nom en anglais ou le code à deux lettres.';

  @override
  String get rightToLeft => 'De droite à gauche';

  @override
  String get replayGuide => 'Revoir le guide';

  @override
  String get replaySetup => 'Relancer la configuration';

  @override
  String get replaySetupBody =>
      'Répondez à nouveau aux questions de première configuration. Rien de ce que vous avez enregistré ne sera supprimé.';

  @override
  String get rateTitle => 'Vous aimez RainyPenny ?';

  @override
  String get rateBody =>
      'Vous utilisez l\'application depuis quelque temps maintenant. Donner une note ne prend qu\'un instant et aide d\'autres personnes à la découvrir.';

  @override
  String get rateAction => 'Noter l\'application';

  @override
  String get rateLater => 'Peut-être plus tard';

  @override
  String get rateNever => 'Non merci';

  @override
  String get rateThanks => 'Merci';

  @override
  String get monthlySalary => 'Salaire mensuel';

  @override
  String get remainingAmount => 'Restant';

  @override
  String get carriedForward => 'Reporté';

  @override
  String get carriedForwardHint => 'Reste de la période précédente';

  @override
  String get totalSpending => 'Dépenses totales';

  @override
  String get salaryCycle => 'Cycle de salaire';

  @override
  String get payday => 'Jour de paie';

  @override
  String get paydayDescription =>
      'Le jour où votre salaire arrive. Votre mois financier va de ce jour jusqu\'à la veille du suivant.';

  @override
  String get paydayUpdated => 'Jour de paie mis à jour';

  @override
  String paydayDayOfMonth(int day) {
    return 'Jour $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Lors des mois plus courts, le cycle commence à la place le dernier jour du mois.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours avant la paie',
      one: '1 jour avant la paie',
      zero: 'Dernier jour du cycle',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Prochain jour de paie';

  @override
  String get spentSoFar => 'Dépensé jusqu\'ici';

  @override
  String get dailyAllowance => 'Montant disponible à dépenser aujourd\'hui';

  @override
  String get overspentNotice =>
      'Vous avez dépensé plus que ce qui est entré pendant ce cycle.';

  @override
  String get backToThisMonth => 'Retour à ce mois-ci';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'Aucun salaire enregistré pour le moment';

  @override
  String get addSalaryAction => 'Ajouter votre salaire';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excellent';

  @override
  String get healthGood => 'Bon';

  @override
  String get healthFair => 'Moyen';

  @override
  String get healthNeedsWork => 'À améliorer';

  @override
  String get healthExcellentBody =>
      'Vous épargnez bien et respectez vos budgets.';

  @override
  String get healthGoodBody =>
      'Vos dépenses sont sur la bonne voie pour cette période.';

  @override
  String get healthFairBody =>
      'Quelques budgets sont presque à leur limite. De petits changements aideront.';

  @override
  String get healthNeedsWorkBody =>
      'Vos dépenses dépassent votre plan. Commencez par votre plus grande catégorie.';

  @override
  String get factorSavingsRate => 'Taux d\'épargne';

  @override
  String get factorBudgetControl => 'Maîtrise du budget';

  @override
  String get factorDebtLoad => 'Endettement';

  @override
  String get factorSpendingTrend => 'Tendance des dépenses';

  @override
  String factorKept(String percent) {
    return '$percent% conservé';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilisé';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% des revenus';
  }

  @override
  String factorTrendUp(String percent) {
    return 'En hausse de $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'En baisse de $percent%';
  }

  @override
  String get howScoreWorks => 'Comment ce score fonctionne';

  @override
  String get healthScoreExplainer =>
      'Votre score combine quatre éléments : la part de vos revenus que vous conservez, votre capacité à respecter vos budgets, la part de vos revenus consacrée aux dettes et l\'évolution de vos dépenses.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% du score';
  }

  @override
  String get viewHealthDetails => 'Voir le détail';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get profileUpdated => 'Profil mis à jour';

  @override
  String get changePhoto => 'Modifier la photo';

  @override
  String get removePhoto => 'Supprimer la photo';

  @override
  String get personalInformationIntro =>
      'Votre nom et votre photo apparaissent dans toute l\'application. Votre e-mail est l\'adresse utilisée pour vous connecter.';

  @override
  String get emailNotEditable =>
      'Contactez l\'assistance pour modifier l\'adresse utilisée pour vous connecter.';

  @override
  String get pressBackAgainToExit =>
      'Appuyez à nouveau sur Retour pour quitter';

  @override
  String get categoryHousing => 'Logement';

  @override
  String get categoryFood => 'Alimentation et restaurants';

  @override
  String get categoryTransport => 'Transports';

  @override
  String get categoryShopping => 'Achats';

  @override
  String get categoryBills => 'Factures et services';

  @override
  String get categoryEntertainment => 'Divertissement';

  @override
  String get categoryHealth => 'Santé et forme';

  @override
  String get categoryEducation => 'Éducation';

  @override
  String get categoryTravel => 'Voyages';

  @override
  String get categorySalary => 'Salaire';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investissements';

  @override
  String get categoryGift => 'Cadeau';

  @override
  String get categoryOther => 'Autre';

  @override
  String get categoryGroceries => 'Courses';

  @override
  String get categoryDining => 'Restaurants';

  @override
  String get categoryCoffee => 'Café';

  @override
  String get categoryUtilities => 'Services';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Téléphone';

  @override
  String get categoryInsurance => 'Assurance';

  @override
  String get categorySubscriptions => 'Abonnements';

  @override
  String get categoryPersonalCare => 'Soins personnels';

  @override
  String get categoryClothing => 'Vêtements';

  @override
  String get categoryElectronics => 'Électronique';

  @override
  String get categoryHomeSupplies => 'Articles ménagers';

  @override
  String get categoryPets => 'Animaux';

  @override
  String get categoryChildcare => 'Garde d\'enfants';

  @override
  String get categoryFamily => 'Famille';

  @override
  String get categoryFitness => 'Forme';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryMedicine => 'Médicaments';

  @override
  String get categoryMedical => 'Soins médicaux';

  @override
  String get categoryCharity => 'Dons';

  @override
  String get categoryTaxes => 'Impôts';

  @override
  String get categoryFees => 'Frais';

  @override
  String get categoryDebt => 'Dette';

  @override
  String get categorySavings => 'Épargne';

  @override
  String get categoryRepairs => 'Réparations';

  @override
  String get categoryCarMaintenance => 'Entretien automobile';

  @override
  String get categoryFuel => 'Carburant';

  @override
  String get categoryParking => 'Stationnement';

  @override
  String get categoryPublicTransport => 'Transports en commun';

  @override
  String get categoryRent => 'Loyer';

  @override
  String get categoryMortgage => 'Prêt immobilier';

  @override
  String get categoryBonus => 'Prime';

  @override
  String get categoryCommission => 'Commission';

  @override
  String get categoryPension => 'Retraite';

  @override
  String get categoryInterest => 'Intérêts';

  @override
  String get categoryDividends => 'Dividendes';

  @override
  String get categoryCashback => 'Remboursement en espèces';

  @override
  String get categoryRefund => 'Remboursement';

  @override
  String get categoryRentalIncome => 'Revenus locatifs';

  @override
  String get addCategory => 'Nouvelle catégorie';

  @override
  String get filterByCategory => 'Filtrer par catégorie';

  @override
  String get allCategories => 'Toutes les catégories';

  @override
  String get clearFilters => 'Effacer les filtres';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Depuis toujours';

  @override
  String get customRange => 'Personnalisée';

  @override
  String get selectDateRange => 'Choisir une période';

  @override
  String rangeApplied(String start, String end) {
    return 'Affichage du $start au $end';
  }

  @override
  String get loans => 'Prêts';

  @override
  String get debts => 'Dettes';

  @override
  String get noLoansTitle => 'Aucun prêt';

  @override
  String get noLoansBody => 'Vous n\'avez aucun prêt actif.';

  @override
  String get emptyHealthTitle => 'Aucun score financier pour le moment';

  @override
  String get emptyHealthDescription =>
      'Nous avons besoin d\'un peu d\'activité financière avant de pouvoir calculer un score de santé fiable.';

  @override
  String get emptyHealthAddTransactions =>
      'Ajouter des transactions de revenus ou de dépenses';

  @override
  String get emptyHealthSetBudgets => 'Configurer vos budgets mensuels';

  @override
  String get emptyHealthTrackLoans => 'Suivre les prêts ou dettes (facultatif)';

  @override
  String get emptyHealthCardSubtitle =>
      'Ajoutez des transactions pour calculer votre score et obtenir des analyses.';

  @override
  String get smartBudgetSplit => 'Répartition intelligente du budget';

  @override
  String get smartBudgetSplitSubtitle =>
      'Saisissez votre salaire mensuel pour calculer les limites recommandées';

  @override
  String get monthlyNetSalary => 'Salaire net mensuel';

  @override
  String get categoryAllocations => 'Répartition par catégorie';

  @override
  String totalBudgeted(String amount) {
    return 'Total : $amount';
  }

  @override
  String get applyAllBudgets => 'Appliquer tous les budgets';

  @override
  String get applyingBudgets => 'Application des budgets...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count budgets de catégorie créés.',
      one: '1 budget de catégorie créé.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Échec de l\'enregistrement des budgets.';

  @override
  String get recommendedBudget => 'Budget recommandé';
}
