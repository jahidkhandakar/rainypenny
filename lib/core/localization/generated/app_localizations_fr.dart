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
  String get appTagline => 'Épargner pour les jours de pluie';

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
  String get vsLastPeriod => 'vs période précédente';

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
  String get viewAll => 'Tout voir';

  @override
  String get budgetProgress => 'Suivi du budget';

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
  String get searchTransactions => 'Rechercher une transaction';

  @override
  String get filterAll => 'Tout';

  @override
  String get filterIncome => 'Revenus';

  @override
  String get filterExpenses => 'Dépenses';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get noTransactionsTitle => 'Aucune transaction';

  @override
  String get noTransactionsBody =>
      'Essayez une autre recherche ou un autre filtre.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opérations',
      one: '1 opération',
      zero: 'Aucune opération',
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
  String get selectCategory => 'Choisir une catégorie';

  @override
  String get transactionSaved => 'Transaction enregistrée';

  @override
  String get amountRequired => 'Saisissez un montant supérieur à zéro';

  @override
  String get titleRequired => 'Donnez un nom à cette opération';

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
  String get onTrack => 'Dans les clous';

  @override
  String get approachingLimit => 'Proche de la limite';

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
      other: 'encore $count mois',
      one: 'encore 1 mois',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Prêts & dettes';

  @override
  String get totalOutstanding => 'Encours total';

  @override
  String get monthlyPayment => 'Mensualité';

  @override
  String get nextPayment => 'Prochain paiement';

  @override
  String paidOff(int percent) {
    return '$percent% remboursé';
  }

  @override
  String get interestRate => 'Intérêt';

  @override
  String get upcomingPayments => 'Paiements à venir';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Échéance dans $count jours',
      one: 'Échéance demain',
      zero: 'Échéance aujourd\'hui',
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
  String get budgetPerformance => 'Performance du budget';

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
  String get changePassword => 'Changer le mot de passe';

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
  String get privacyAndSecurity => 'Confidentialité & sécurité';

  @override
  String get help => 'Aide';

  @override
  String get helpAndSupport => 'Aide & assistance';

  @override
  String get termsAndConditions => 'Conditions générales';

  @override
  String get logOut => 'Se déconnecter';

  @override
  String memberSince(String date) {
    return 'Membre depuis $date';
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
  String get noNotificationsTitle => 'Tout est à jour';

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
  String get somethingWentWrong => 'Une erreur est survenue';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get edit => 'Modifier';

  @override
  String get delete => 'Supprimer';

  @override
  String get undo => 'Annuler';

  @override
  String get add => 'Ajouter';

  @override
  String get create => 'Créer';

  @override
  String get nameRequired => 'Donnez-lui un nom';

  @override
  String get amountAboveZero => 'Saisissez un montant supérieur à zéro';

  @override
  String get editTransaction => 'Modifier l\'opération';

  @override
  String get deleteTransaction => 'Supprimer l\'opération ?';

  @override
  String deleteTransactionBody(String title) {
    return '$title sera retiré de votre registre.';
  }

  @override
  String get transactionDeleted => 'Opération supprimée';

  @override
  String get transactionUpdated => 'Opération mise à jour';

  @override
  String get newBudget => 'Nouveau budget';

  @override
  String get editBudget => 'Modifier le budget';

  @override
  String get budgetLimit => 'Plafond mensuel';

  @override
  String get deleteBudget => 'Supprimer le budget ?';

  @override
  String deleteBudgetBody(String category) {
    return 'Le budget $category sera supprimé. Vos opérations ne sont pas affectées.';
  }

  @override
  String get budgetSaved => 'Budget enregistré';

  @override
  String get budgetDeleted => 'Budget supprimé';

  @override
  String get allCategoriesBudgeted => 'Chaque catégorie a déjà un budget';

  @override
  String get noBudgetsTitle => 'Aucun budget pour l\'instant';

  @override
  String get noBudgetsBody =>
      'Fixez un plafond mensuel sur une catégorie pour commencer à la suivre.';

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
  String get noGoalsTitle => 'Aucun objectif d\'épargne';

  @override
  String get noGoalsBody =>
      'Fixez un objectif et RainyPenny suivra votre progression.';

  @override
  String get fundsAdded => 'Montant ajouté';

  @override
  String get newDebt => 'Nouveau prêt ou nouvelle carte';

  @override
  String get editDebt => 'Modifier le prêt';

  @override
  String get debtName => 'Nom';

  @override
  String get debtNameHint => 'ex. Prêt auto';

  @override
  String get lender => 'Prêteur';

  @override
  String get lenderHint => 'ex. Banque Meridian';

  @override
  String get originalAmount => 'Montant initial';

  @override
  String get creditLimit => 'Plafond de crédit';

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
    return '$name sera retiré de vos dettes.';
  }

  @override
  String get debtSaved => 'Enregistré';

  @override
  String get debtDeleted => 'Supprimé';

  @override
  String get noDebtsTitle => 'Aucune dette suivie';

  @override
  String get noDebtsBody =>
      'Ajoutez un prêt ou une carte de crédit pour garder un œil sur les remboursements.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Budget $subject dépassé';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Vous dépassez de $amount votre budget $subject sur cette période.';
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
      'Vous avez dépensé plus que vous n\'avez gagné sur cette période. Regardez vos plus grosses catégories pour rééquilibrer.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Les dépenses $subject augmentent';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Vos dépenses $subject sont $percent% plus élevées que la période précédente.';
  }

  @override
  String get insightTrendDownTitle => 'Les dépenses baissent';

  @override
  String insightTrendDownBody(int percent) {
    return 'Les dépenses totales sont $percent% plus basses que la période précédente.';
  }

  @override
  String get insightTrendUpTitle => 'Les dépenses augmentent';

  @override
  String insightTrendUpBody(int percent) {
    return 'Les dépenses totales sont $percent% plus élevées que la période précédente.';
  }

  @override
  String get insightSavingsStrongTitle => 'Belle épargne cette période';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Vous avez conservé $percent% de vos revenus — bien au-dessus de l\'objectif de $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Taux d\'épargne sous l\'objectif';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Vous avez conservé $percent% de vos revenus cette période. Visez $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject est presque atteint';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Il ne reste que $amount pour atteindre $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Sur la bonne voie pour $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months mois',
      one: '1 mois',
    );
    return 'À $amount par mois, vous atteindrez cet objectif dans $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Paiement $subject en retard';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours',
      one: '1 jour',
    );
    return 'Le paiement $subject de $amount a $_temp0 de retard.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Paiement $subject à venir';
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
    return '$amount à régler $_temp0.';
  }

  @override
  String get signIn => 'Se connecter';

  @override
  String get signUp => 'Créer un compte';

  @override
  String get signInSubtitle =>
      'Content de vous revoir. Votre argent vous attend.';

  @override
  String get signUpSubtitle => 'Quelques informations et c\'est parti.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get emailHint => 'vous@email.com';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get passwordHint => '8 caractères minimum';

  @override
  String get fullNameLabel => 'Nom complet';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get resetSent =>
      'Consultez votre boîte mail pour le lien de réinitialisation';

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
      'Vous devrez vous reconnecter pour revoir vos finances.';

  @override
  String get dataSource => 'Source des données';

  @override
  String get insightWeeklySummaryTitle => 'Votre semaine en résumé';

  @override
  String get insightWeeklySummaryBody =>
      'Voyez où est passé votre argent cette semaine et comment tiennent vos budgets.';

  @override
  String get notificationSettings => 'Notifications';

  @override
  String get alertsSection => 'Alertes';

  @override
  String get budgetAlerts => 'Alertes de budget';

  @override
  String get budgetAlertsBody =>
      'Quand un budget approche de sa limite ou la dépasse';

  @override
  String get paymentReminders => 'Rappels de paiement';

  @override
  String get paymentRemindersBody =>
      'Quelques jours avant l\'échéance d\'un paiement';

  @override
  String get savingsUpdates => 'Point épargne';

  @override
  String get savingsUpdatesBody => 'Votre progression vers vos objectifs';

  @override
  String get weeklySummaryLabel => 'Résumé hebdomadaire';

  @override
  String get weeklySummaryBody => 'Le bilan de la semaine écoulée';

  @override
  String get scheduleSection => 'Horaires';

  @override
  String get reminderTime => 'Heure du rappel';

  @override
  String get quietHours => 'Heures calmes';

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
      'Autorisez les notifications pour que RainyPenny puisse vous alerter avant qu\'un budget ou un paiement ne vous échappe.';

  @override
  String get allowNotifications => 'Autoriser les notifications';

  @override
  String get permissionDenied =>
      'Les notifications sont bloquées. Vous pouvez les activer dans les réglages de votre appareil.';

  @override
  String get upcomingAlerts => 'Programmées';

  @override
  String get noScheduledAlerts => 'Rien de programmé pour l\'instant';

  @override
  String get noScheduledAlertsBody =>
      'Les alertes apparaîtront ici à mesure que vos budgets et vos paiements approcheront de leurs limites.';

  @override
  String scheduledFor(String date) {
    return 'Programmé pour $date';
  }

  @override
  String get everyWeek => 'Chaque semaine';

  @override
  String get allNotificationsOff => 'Toutes les notifications sont désactivées';

  @override
  String get needsAttention => 'À surveiller';

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
      'Astuce : maintenez + pour enregistrer une dépense tout de suite';

  @override
  String get searchCurrencies => 'Rechercher une devise';

  @override
  String get noCurrenciesFound => 'Aucune devise trouvée';

  @override
  String get noCurrenciesFoundMessage =>
      'Essayez un autre code, symbole ou nom.';

  @override
  String get popularCurrencies => 'Courantes';

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
  String get finalPayment => 'Dernière échéance';

  @override
  String get paymentDueDate => 'Date d\'échéance';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Le $day de chaque mois';
  }

  @override
  String get loanStatus => 'Statut';

  @override
  String get statusActive => 'Dans les temps';

  @override
  String get statusDueSoon => 'Bientôt dû';

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
  String get openEnded => 'Sans terme';

  @override
  String get loanDetails => 'Détails du prêt';

  @override
  String get notSet => 'Non défini';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject est dû aujourd\'hui';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Votre paiement de $amount est dû aujourd\'hui. Un geste rapide et il reste à l\'heure.';
  }

  @override
  String get remindMorningTitle => 'Bonjour ☀️';

  @override
  String get remindMorningBody =>
      'Commencez la journée en maîtrisant votre argent. Quelque chose à ajouter depuis hier ?';

  @override
  String get remindNoonTitle => 'Point de midi';

  @override
  String get remindNoonBody =>
      'Déjeuner, café, un ticket ? Ajoutez-le en quelques secondes.';

  @override
  String get remindAfternoonTitle => 'Petit point';

  @override
  String get remindAfternoonBody =>
      'Notez ce que vous avez dépensé et gardez la journée exacte.';

  @override
  String get remindEveningTitle => 'On boucle la journée';

  @override
  String get remindEveningBody =>
      'Deux minutes maintenant et les chiffres du jour sont complets.';

  @override
  String get happyWeekendTitle => 'Bon week-end ! 🎉';

  @override
  String get happyWeekendBody =>
      'Profitez-en — et gardez un œil sur les dépenses du week-end.';

  @override
  String get dailyReminders => 'Rappels de dépenses quotidiens';

  @override
  String get dailyRemindersBody =>
      'De petits rappels pour garder vos dépenses à jour';

  @override
  String get weekendGreeting => 'Bon week-end';

  @override
  String get weekendGreetingBody =>
      'Un mot sympathique au début de votre week-end';

  @override
  String get reminderTimesSection => 'Heures de rappel';

  @override
  String get slotMorning => 'Matin';

  @override
  String get slotNoon => 'Midi';

  @override
  String get slotAfternoon => 'Après-midi';

  @override
  String get slotEvening => 'Soir';

  @override
  String get everyDay => 'Chaque jour';

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
  String get paidOffShort => 'Remboursé';

  @override
  String get transactions => 'Opérations';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'et $count opérations de plus',
      one: 'et 1 opération de plus',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Exporter en PDF';

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
      'Ajoutez vos propres catégories pour classer revenus et dépenses exactement comme vous les pensez.';

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
  String get categoryNameHint => 'ex. Animaux';

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
    return '$name sera retirée de vos catégories.';
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
  String get noCategoriesYet => 'Rien ici pour l\'instant.';

  @override
  String get builtIn => 'Prédéfinie';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get expense => 'Dépense';

  @override
  String get languageNote =>
      'L’arabe, l’ourdou, le persan et l’hébreu font basculer toute l’interface de droite à gauche, y compris les graphiques et les rapports PDF.';

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
      'Les deux mots de passe doivent être identiques';

  @override
  String get showPassword => 'Afficher le mot de passe';

  @override
  String get hidePassword => 'Masquer le mot de passe';

  @override
  String get savePassword => 'Enregistrer le mot de passe';

  @override
  String get backToSignIn => 'Retour à la connexion';

  @override
  String get alreadyHaveAccount => 'J’ai déjà un compte';

  @override
  String get getStarted => 'Commencer';

  @override
  String get acceptTerms =>
      'J’accepte les conditions d’utilisation et la politique de confidentialité';

  @override
  String get acceptTermsRequired => 'Veuillez accepter pour continuer';

  @override
  String get passwordStrengthTooShort => 'Trop court';

  @override
  String get passwordStrengthWeak => 'Faible';

  @override
  String get passwordStrengthFair => 'Correct';

  @override
  String get passwordStrengthGood => 'Bon';

  @override
  String get passwordStrengthStrong => 'Robuste';

  @override
  String get passwordAdvice =>
      'Une longue phrase dont vous vous souvenez vaut mieux qu’un mot court plein de symboles. Évitez tout ce que vous utilisez déjà ailleurs.';

  @override
  String get authInvalidCredentials =>
      'Cet e-mail et ce mot de passe ne correspondent à aucun compte';

  @override
  String get authEmailNotConfirmed =>
      'Confirmez votre adresse e-mail avant de vous connecter';

  @override
  String get authEmailAlreadyRegistered =>
      'Un compte existe déjà avec cette adresse';

  @override
  String get authWeakPassword => 'Choisissez un mot de passe plus long';

  @override
  String get authRateLimited =>
      'Trop de tentatives. Réessayez dans quelques minutes';

  @override
  String get authNetworkError =>
      'Pas de connexion. Vérifiez votre réseau et réessayez';

  @override
  String get authGenericError => 'Une erreur est survenue. Veuillez réessayer';

  @override
  String get confirmEmailTitle => 'Consultez votre boîte mail';

  @override
  String confirmEmailBody(String email) {
    return 'Nous avons envoyé un lien de confirmation à $email. Ouvrez-le pour finaliser votre compte.';
  }

  @override
  String get resendConfirmation => 'Renvoyer l’e-mail de confirmation';

  @override
  String get confirmationResent => 'E-mail de confirmation envoyé';

  @override
  String get forgotPasswordTitle => 'Réinitialiser le mot de passe';

  @override
  String get forgotPasswordSubtitle =>
      'Indiquez l’e-mail utilisé à l’inscription et nous vous enverrons un lien pour choisir un nouveau mot de passe.';

  @override
  String get sendResetLink => 'Envoyer le lien';

  @override
  String get resetLinkSentTitle => 'Lien envoyé';

  @override
  String resetLinkSentBody(String email) {
    return 'Si $email correspond à un compte, le lien est en route.';
  }

  @override
  String get resetLinkSentHint =>
      'Le lien expire dans une heure. S’il n’arrive pas, regardez dans les indésirables avant d’en demander un autre.';

  @override
  String get tryAnotherEmail => 'Utiliser une autre adresse';

  @override
  String get resetPasswordTitle => 'Choisir un nouveau mot de passe';

  @override
  String get resetPasswordSubtitle =>
      'Choisissez quelque chose que vous n’avez jamais utilisé sur ce compte.';

  @override
  String get passwordChangedTitle => 'Mot de passe mis à jour';

  @override
  String get passwordChangedBody =>
      'Votre nouveau mot de passe est enregistré. Vous êtes connecté, tout est prêt.';

  @override
  String get demoModeHint =>
      'Version de démonstration — aucun compte nécessaire';

  @override
  String get demoModeFill => 'Remplir';

  @override
  String get welcomeTrackTitle => 'Voyez où va votre argent';

  @override
  String get welcomeTrackBody =>
      'Notez ce qui rentre et ce qui sort. RainyPenny en fait une image que l’on peut vraiment lire.';

  @override
  String get welcomeBudgetTitle => 'Des limites qui tiennent';

  @override
  String get welcomeBudgetBody =>
      'Fixez un plafond mensuel à chaque poste de dépense, et soyez prévenu avant de le dépasser, pas après.';

  @override
  String get welcomeGoalsTitle => 'Épargnez pour ce qui compte';

  @override
  String get welcomeGoalsBody =>
      'Nommez un objectif, fixez un montant et regardez-le se remplir. Une épargne de précaution se construit mieux quand on la voit.';

  @override
  String get welcomePrivacyTitle => 'Votre argent reste le vôtre';

  @override
  String get welcomePrivacyBody =>
      'Vos chiffres n’appartiennent qu’à vous. Rien n’est vendu, rien n’est partagé.';

  @override
  String stepOf(int step, int total) {
    return 'Étape $step sur $total';
  }

  @override
  String get onboardingNameTitle => 'Comment vous appeler ?';

  @override
  String get onboardingNameBody =>
      'Uniquement pour vous saluer, nulle part ailleurs.';

  @override
  String get onboardingNameHint =>
      'Un prénom suffit. Vous pourrez le changer plus tard.';

  @override
  String get onboardingCurrencyTitle => 'Quelle devise utilisez-vous ?';

  @override
  String get onboardingCurrencyBody =>
      'Tous les montants sont affichés dans cette devise. La choisir ne convertit rien.';

  @override
  String get onboardingCurrencySearch => 'Rechercher dans toutes les devises';

  @override
  String get onboardingAppearanceTitle => 'À votre goût';

  @override
  String get onboardingAppearanceBody =>
      'Choisissez une allure. Tout change dès que vous touchez, et vous pourrez y revenir quand vous voulez.';

  @override
  String get onboardingNotificationsTitle => 'Gardez le contrôle';

  @override
  String get onboardingNotificationsBody =>
      'Un rappel discret au bon moment, c’est ce qui transforme cela en habitude.';

  @override
  String get onboardingNotifyReminders =>
      'Un rappel léger pour noter vos dépenses';

  @override
  String get onboardingNotifyBudget =>
      'Une alerte avant qu’un budget ne soit épuisé';

  @override
  String get onboardingNotifySummary =>
      'Un récapitulatif hebdomadaire de vos dépenses';

  @override
  String get onboardingNotifyEnable => 'Activer les notifications';

  @override
  String get onboardingNotifyDone => 'Réglages de notification enregistrés';

  @override
  String get onboardingNotifyLater =>
      'Vous pourrez tout modifier dans les réglages, quand vous voudrez.';

  @override
  String get onboardingReadyTitle => 'Tout est prêt';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Tout est prêt, $name';
  }

  @override
  String get onboardingReadyBody =>
      'La configuration est terminée. Voulez-vous une visite rapide de l’application ?';

  @override
  String get onboardingTakeTour => 'Faites-moi visiter';

  @override
  String get onboardingGoToApp => 'Aller à l’application';

  @override
  String get onboardingTourLater =>
      'Pas maintenant ? Le guide reste dans les réglages, à tout moment.';

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
      'Tout commence ici. La carte du haut indique ce qu’il vous reste ; en dessous, ce qui est entré et sorti sur la période, puis vos dépenses, budgets et objectifs.';

  @override
  String get guideDashboardTip1 =>
      'Tirez l’écran vers le bas pour tout actualiser d’un coup.';

  @override
  String get guideDashboardTip2 =>
      'Touchez la carte des revenus ou des dépenses pour aller droit à la liste.';

  @override
  String get guideDashboardTip3 =>
      'Les anneaux et les analyses se mettent à jour dès que vous saisissez quelque chose.';

  @override
  String get guideAddTitle => 'Saisir de l’argent';

  @override
  String get guideAddBody =>
      'Le bouton au centre de la barre est le point de départ. Il ouvre un court menu : dépense, revenu, dette, budget ou objectif d’épargne.';

  @override
  String get guideAddTip1 =>
      'Touchez le bouton central pour noter une entrée ou une sortie.';

  @override
  String get guideAddTip2 =>
      'Maintenez-le appuyé pour créer une dépense directement, sans passer par le menu.';

  @override
  String get guideAddTip3 =>
      'Choisissez toujours une catégorie — c’est ce qui fait fonctionner les graphiques et les budgets.';

  @override
  String get guideCategoriesTitle => 'Catégories';

  @override
  String get guideCategoriesBody =>
      'Les catégories regroupent vos dépenses. Celles fournies conviennent à la plupart, et vous pouvez les renommer ou créer les vôtres.';

  @override
  String get guideCategoriesTip1 =>
      'Réglages, puis Gérer les catégories, pour en modifier ou en ajouter une.';

  @override
  String get guideCategoriesTip2 =>
      'Ce qui reste sans catégorie va dans « Autre », pour que les graphiques restent honnêtes.';

  @override
  String get guideBudgetTitle => 'Budgets';

  @override
  String get guideBudgetBody =>
      'Un budget est un plafond mensuel pour une catégorie. La barre se remplit à mesure que vous dépensez et change de couleur en approchant, vous êtes donc prévenu avant.';

  @override
  String get guideBudgetTip1 =>
      'Commencez par deux ou trois catégories, pas toutes d’un coup.';

  @override
  String get guideBudgetTip2 =>
      'Fixez la limite un peu au-dessus de vos dépenses habituelles, puis resserrez-la.';

  @override
  String get guideBudgetTip3 =>
      'Laissez les alertes de budget actives et l’application vous préviendra à temps.';

  @override
  String get guideSavingsTitle => 'Objectifs d’épargne';

  @override
  String get guideSavingsBody =>
      'Nommez ce pour quoi vous épargnez, fixez un montant et une date, et l’application calcule ce qu’il faut mettre de côté chaque mois.';

  @override
  String get guideSavingsTip1 =>
      'Un objectif nommé se tient mieux qu’une vague intention d’épargner.';

  @override
  String get guideSavingsTip2 =>
      'Plusieurs petits objectifs aboutissent plus souvent qu’un seul grand.';

  @override
  String get guideLoansTitle => 'Dettes et crédits';

  @override
  String get guideLoansBody =>
      'Notez ce que vous devez, ce que cela coûte et quand tombe la prochaine échéance. Tout ce que vous remboursez tient dans une liste, avec le reste dû.';

  @override
  String get guideLoansTip1 =>
      'Ajoutez l’échéance et les rappels de paiement s’en chargeront pour vous.';

  @override
  String get guideLoansTip2 =>
      'Une dette en retard s’affiche en rouge sur le tableau de bord jusqu’à son règlement.';

  @override
  String get guideReportsTitle => 'Rapports';

  @override
  String get guideReportsBody =>
      'La vue de fond : revenus contre dépenses, dépenses par catégorie, tenue de vos budgets et part de vos revenus conservée.';

  @override
  String get guideReportsTip1 =>
      'Basculez entre semaine, mois et trimestre en haut de l’écran.';

  @override
  String get guideReportsTip2 =>
      'Exportez ou partagez un PDF — il sort dans votre langue et son sens de lecture.';

  @override
  String get guideSettingsTitle => 'Réglages';

  @override
  String get guideSettingsBody =>
      'Langue, devise, couleurs et alertes sont tous ici, et rien n’est figé par la configuration — changez ce que vous voulez, quand vous voulez.';

  @override
  String get guideSettingsTip1 =>
      'Quarante langues, et toute la mise en page se reflète pour celles qui se lisent de droite à gauche.';

  @override
  String get guideSettingsTip2 =>
      'Choisissez les alertes voulues et les heures auxquelles elles peuvent arriver.';

  @override
  String get guideSettingsTip3 =>
      'Les heures calmes retiennent tout jusqu’au matin.';

  @override
  String get guideHabitTitle => 'Tenir dans la durée';

  @override
  String get guideHabitBody =>
      'L’application ne vaut que ce que vous y mettez. Une minute par jour vaut mieux qu’une heure par mois, et au bout de quinze jours les chiffres commencent à parler.';

  @override
  String get guideHabitTip1 =>
      'Notez vos dépenses sur le moment, pas en fin de semaine.';

  @override
  String get guideHabitTip2 =>
      'Un coup d’œil au tableau de bord par jour. Dix secondes suffisent.';

  @override
  String get guideHabitTip3 =>
      'Ce guide reste dans les réglages — revenez-y quand vous voulez.';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeCaption => 'Clair, sombre, ou ce que fait votre téléphone.';

  @override
  String get accentColor => 'Couleur d’accent';

  @override
  String get accentColorCaption =>
      'Colore les boutons, les mises en avant et les graphiques.';

  @override
  String get accentSemanticsNote =>
      'Les entrées et les sorties gardent leurs propres couleurs dans tous les thèmes : un chiffre ne change donc jamais de sens parce que vous avez changé d’accent.';

  @override
  String get accentTeal => 'Turquoise';

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
  String get searchLanguages => 'Rechercher une langue';

  @override
  String get suggestedLanguages => 'Suggestions';

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
  String get replaySetup => 'Refaire la configuration';

  @override
  String get replaySetupBody =>
      'Repassez par les questions de départ. Rien de ce que vous avez enregistré n’est supprimé.';

  @override
  String get rateTitle => 'RainyPenny vous plaît ?';

  @override
  String get rateBody =>
      'Cela fait un moment que vous vous y tenez. Une note prend quelques secondes et aide les autres à découvrir l’application.';

  @override
  String get rateAction => 'Noter l’application';

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
  String get carriedForwardHint => 'Reste du cycle précédent';

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
      'Les mois plus courts, le cycle commence le dernier jour du mois.';

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
  String get nextPayday => 'Prochaine paie';

  @override
  String get spentSoFar => 'Dépensé à ce jour';

  @override
  String get dailyAllowance => 'Budget quotidien sûr';

  @override
  String get overspentNotice =>
      'Vous avez dépensé plus que vos entrées sur ce cycle.';

  @override
  String get backToThisMonth => 'Revenir à ce mois';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'Aucun salaire enregistré';

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
  String get healthFair => 'Correct';

  @override
  String get healthNeedsWork => 'À améliorer';

  @override
  String get healthExcellentBody =>
      'Vous épargnez bien et respectez vos budgets.';

  @override
  String get healthGoodBody =>
      'Vos dépenses sont sur la bonne voie cette période.';

  @override
  String get healthFairBody =>
      'Quelques budgets sont tendus. De petits ajustements suffiront.';

  @override
  String get healthNeedsWorkBody =>
      'Les dépenses dépassent votre plan. Commencez par votre plus grande catégorie.';

  @override
  String get factorSavingsRate => 'Taux d\'épargne';

  @override
  String get factorBudgetControl => 'Maîtrise du budget';

  @override
  String get factorDebtLoad => 'Poids de l\'endettement';

  @override
  String get factorSpendingTrend => 'Tendance des dépenses';

  @override
  String factorKept(String percent) {
    return '$percent% conservés';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% utilisés';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% des revenus';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Hausse de $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Baisse de $percent%';
  }

  @override
  String get howScoreWorks => 'Comment ce score est calculé';

  @override
  String get healthScoreExplainer =>
      'Votre score combine quatre éléments : la part de vos revenus que vous conservez, votre respect des budgets, la part de vos revenus consacrée aux dettes, et si vos dépenses augmentent ou diminuent.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% du score';
  }

  @override
  String get viewHealthDetails => 'Voir le détail';

  @override
  String get saveChanges => 'Enregistrer';

  @override
  String get profileUpdated => 'Profil mis à jour';

  @override
  String get changePhoto => 'Changer la photo';

  @override
  String get removePhoto => 'Supprimer la photo';

  @override
  String get personalInformationIntro =>
      'Votre nom et votre photo apparaissent dans toute l\'application. Votre e-mail est l\'adresse de connexion.';

  @override
  String get emailNotEditable =>
      'Contactez le support pour changer l\'adresse de connexion.';

  @override
  String get pressBackAgainToExit => 'Appuyez à nouveau pour quitter';

  @override
  String get categoryHousing => 'Logement';

  @override
  String get categoryFood => 'Alimentation';

  @override
  String get categoryTransport => 'Transports';

  @override
  String get categoryShopping => 'Achats';

  @override
  String get categoryBills => 'Factures et charges';

  @override
  String get categoryEntertainment => 'Loisirs';

  @override
  String get categoryHealth => 'Santé et forme';

  @override
  String get categoryEducation => 'Éducation';

  @override
  String get categoryTravel => 'Voyages';

  @override
  String get categoryOther => 'Autre';

  @override
  String get categorySalary => 'Salaire';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investissements';

  @override
  String get categoryRefunds => 'Remboursements et cadeaux';

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
  String get allTime => 'Tout';

  @override
  String get customRange => 'Personnalisé';

  @override
  String get selectDateRange => 'Choisir une période';

  @override
  String rangeApplied(String start, String end) {
    return 'Affichage $start – $end';
  }
}
