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
    return 'of $total';
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
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
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
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

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
    return '$percent% used';
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
      other: '$count months to go',
      one: '1 month to go',
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
    return '$percent% paid off';
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
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
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
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get dashboard => 'Tableau de bord';

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
}
