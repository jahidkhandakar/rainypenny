import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppL10n
/// returned by `AppL10n.of(context)`.
///
/// Applications need to include `AppL10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppL10n.localizationsDelegates,
///   supportedLocales: AppL10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppL10n.supportedLocales
/// property.
abstract class AppL10n {
  AppL10n(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppL10n of(BuildContext context) {
    return Localizations.of<AppL10n>(context, AppL10n)!;
  }

  static const LocalizationsDelegate<AppL10n> delegate = _AppL10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('pt'),
    Locale('tr'),
    Locale('ur'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RainyPenny'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'Save for a rainy day'**
  String get appTagline;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navTransactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get navTransactions;

  /// No description provided for @navAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get navAdd;

  /// No description provided for @navReports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get navReports;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @greetingMorning.
  ///
  /// In en, this message translates to:
  /// **'Good morning, {name}'**
  String greetingMorning(String name);

  /// No description provided for @greetingAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good afternoon, {name}'**
  String greetingAfternoon(String name);

  /// No description provided for @greetingEvening.
  ///
  /// In en, this message translates to:
  /// **'Good evening, {name}'**
  String greetingEvening(String name);

  /// No description provided for @greetingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Here is your financial overview'**
  String get greetingSubtitle;

  /// No description provided for @totalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total balance'**
  String get totalBalance;

  /// No description provided for @vsLastPeriod.
  ///
  /// In en, this message translates to:
  /// **'vs. last period'**
  String get vsLastPeriod;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @expenses.
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get expenses;

  /// No description provided for @netBalance.
  ///
  /// In en, this message translates to:
  /// **'Net balance'**
  String get netBalance;

  /// No description provided for @lastThirtyDays.
  ///
  /// In en, this message translates to:
  /// **'Last 30 days'**
  String get lastThirtyDays;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick actions'**
  String get quickActions;

  /// No description provided for @addIncome.
  ///
  /// In en, this message translates to:
  /// **'Add income'**
  String get addIncome;

  /// No description provided for @addExpense.
  ///
  /// In en, this message translates to:
  /// **'Add expense'**
  String get addExpense;

  /// No description provided for @spendingOverview.
  ///
  /// In en, this message translates to:
  /// **'Spending overview'**
  String get spendingOverview;

  /// No description provided for @recentTransactions.
  ///
  /// In en, this message translates to:
  /// **'Recent transactions'**
  String get recentTransactions;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @budgetProgress.
  ///
  /// In en, this message translates to:
  /// **'Budget progress'**
  String get budgetProgress;

  /// No description provided for @savingsGoals.
  ///
  /// In en, this message translates to:
  /// **'Savings goals'**
  String get savingsGoals;

  /// No description provided for @financialInsight.
  ///
  /// In en, this message translates to:
  /// **'Financial insight'**
  String get financialInsight;

  /// No description provided for @financialHealth.
  ///
  /// In en, this message translates to:
  /// **'Financial health'**
  String get financialHealth;

  /// No description provided for @ofTotal.
  ///
  /// In en, this message translates to:
  /// **'of {total}'**
  String ofTotal(String total);

  /// No description provided for @searchTransactions.
  ///
  /// In en, this message translates to:
  /// **'Search transactions'**
  String get searchTransactions;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterIncome.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get filterIncome;

  /// No description provided for @filterExpenses.
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get filterExpenses;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @noTransactionsTitle.
  ///
  /// In en, this message translates to:
  /// **'No transactions found'**
  String get noTransactionsTitle;

  /// No description provided for @noTransactionsBody.
  ///
  /// In en, this message translates to:
  /// **'Try a different search or filter to see more of your activity.'**
  String get noTransactionsBody;

  /// No description provided for @transactionCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No transactions} =1{1 transaction} other{{count} transactions}}'**
  String transactionCount(int count);

  /// No description provided for @addTransaction.
  ///
  /// In en, this message translates to:
  /// **'Add transaction'**
  String get addTransaction;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @noteHint.
  ///
  /// In en, this message translates to:
  /// **'Optional note'**
  String get noteHint;

  /// No description provided for @saveIncome.
  ///
  /// In en, this message translates to:
  /// **'Save income'**
  String get saveIncome;

  /// No description provided for @saveExpense.
  ///
  /// In en, this message translates to:
  /// **'Save expense'**
  String get saveExpense;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get selectCategory;

  /// No description provided for @transactionSaved.
  ///
  /// In en, this message translates to:
  /// **'Transaction saved'**
  String get transactionSaved;

  /// No description provided for @amountRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter an amount greater than zero'**
  String get amountRequired;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Give this transaction a name'**
  String get titleRequired;

  /// No description provided for @descriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get descriptionLabel;

  /// No description provided for @descriptionHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Groceries'**
  String get descriptionHint;

  /// No description provided for @budget.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// No description provided for @budgets.
  ///
  /// In en, this message translates to:
  /// **'Budgets'**
  String get budgets;

  /// No description provided for @totalBudget.
  ///
  /// In en, this message translates to:
  /// **'Total budget'**
  String get totalBudget;

  /// No description provided for @spent.
  ///
  /// In en, this message translates to:
  /// **'Spent'**
  String get spent;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @budgetUsed.
  ///
  /// In en, this message translates to:
  /// **'{percent}% used'**
  String budgetUsed(int percent);

  /// No description provided for @onTrack.
  ///
  /// In en, this message translates to:
  /// **'On track'**
  String get onTrack;

  /// No description provided for @approachingLimit.
  ///
  /// In en, this message translates to:
  /// **'Approaching limit'**
  String get approachingLimit;

  /// No description provided for @overBudget.
  ///
  /// In en, this message translates to:
  /// **'Over budget'**
  String get overBudget;

  /// No description provided for @savings.
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get savings;

  /// No description provided for @yourGoals.
  ///
  /// In en, this message translates to:
  /// **'Your goals'**
  String get yourGoals;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get target;

  /// No description provided for @monthlyContribution.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthlyContribution;

  /// No description provided for @addFunds.
  ///
  /// In en, this message translates to:
  /// **'Add funds'**
  String get addFunds;

  /// No description provided for @goalComplete.
  ///
  /// In en, this message translates to:
  /// **'Goal reached'**
  String get goalComplete;

  /// No description provided for @monthsToGo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 month to go} other{{count} months to go}}'**
  String monthsToGo(int count);

  /// No description provided for @loansAndDebts.
  ///
  /// In en, this message translates to:
  /// **'Loans & debts'**
  String get loansAndDebts;

  /// No description provided for @totalOutstanding.
  ///
  /// In en, this message translates to:
  /// **'Total outstanding'**
  String get totalOutstanding;

  /// No description provided for @monthlyPayment.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthlyPayment;

  /// No description provided for @nextPayment.
  ///
  /// In en, this message translates to:
  /// **'Next payment'**
  String get nextPayment;

  /// No description provided for @paidOff.
  ///
  /// In en, this message translates to:
  /// **'{percent}% paid off'**
  String paidOff(int percent);

  /// No description provided for @interestRate.
  ///
  /// In en, this message translates to:
  /// **'Interest'**
  String get interestRate;

  /// No description provided for @upcomingPayments.
  ///
  /// In en, this message translates to:
  /// **'Upcoming payments'**
  String get upcomingPayments;

  /// No description provided for @dueInDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Due today} =1{Due tomorrow} other{Due in {count} days}}'**
  String dueInDays(int count);

  /// No description provided for @overdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get overdue;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @quarter.
  ///
  /// In en, this message translates to:
  /// **'Quarter'**
  String get quarter;

  /// No description provided for @incomeVsExpenses.
  ///
  /// In en, this message translates to:
  /// **'Income vs. expenses'**
  String get incomeVsExpenses;

  /// No description provided for @spendingByCategory.
  ///
  /// In en, this message translates to:
  /// **'Spending by category'**
  String get spendingByCategory;

  /// No description provided for @budgetPerformance.
  ///
  /// In en, this message translates to:
  /// **'Budget performance'**
  String get budgetPerformance;

  /// No description provided for @insights.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insights;

  /// No description provided for @savingsRate.
  ///
  /// In en, this message translates to:
  /// **'Savings rate'**
  String get savingsRate;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get personalInformation;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get changePassword;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @privacyAndSecurity.
  ///
  /// In en, this message translates to:
  /// **'Privacy & security'**
  String get privacyAndSecurity;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @helpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & support'**
  String get helpAndSupport;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & conditions'**
  String get termsAndConditions;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @memberSince.
  ///
  /// In en, this message translates to:
  /// **'Member since {date}'**
  String memberSince(String date);

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @noNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'You are all caught up'**
  String get noNotificationsTitle;

  /// No description provided for @noNotificationsBody.
  ///
  /// In en, this message translates to:
  /// **'New insights and reminders will show up here.'**
  String get noNotificationsBody;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon in the full release'**
  String get comingSoon;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Give this a name'**
  String get nameRequired;

  /// No description provided for @amountAboveZero.
  ///
  /// In en, this message translates to:
  /// **'Enter an amount greater than zero'**
  String get amountAboveZero;

  /// No description provided for @editTransaction.
  ///
  /// In en, this message translates to:
  /// **'Edit transaction'**
  String get editTransaction;

  /// No description provided for @deleteTransaction.
  ///
  /// In en, this message translates to:
  /// **'Delete transaction?'**
  String get deleteTransaction;

  /// No description provided for @deleteTransactionBody.
  ///
  /// In en, this message translates to:
  /// **'{title} will be removed from your ledger.'**
  String deleteTransactionBody(String title);

  /// No description provided for @transactionDeleted.
  ///
  /// In en, this message translates to:
  /// **'Transaction deleted'**
  String get transactionDeleted;

  /// No description provided for @transactionUpdated.
  ///
  /// In en, this message translates to:
  /// **'Transaction updated'**
  String get transactionUpdated;

  /// No description provided for @newBudget.
  ///
  /// In en, this message translates to:
  /// **'New budget'**
  String get newBudget;

  /// No description provided for @editBudget.
  ///
  /// In en, this message translates to:
  /// **'Edit budget'**
  String get editBudget;

  /// No description provided for @budgetLimit.
  ///
  /// In en, this message translates to:
  /// **'Monthly limit'**
  String get budgetLimit;

  /// No description provided for @deleteBudget.
  ///
  /// In en, this message translates to:
  /// **'Delete budget?'**
  String get deleteBudget;

  /// No description provided for @deleteBudgetBody.
  ///
  /// In en, this message translates to:
  /// **'The {category} budget will be removed. Your transactions are not affected.'**
  String deleteBudgetBody(String category);

  /// No description provided for @budgetSaved.
  ///
  /// In en, this message translates to:
  /// **'Budget saved'**
  String get budgetSaved;

  /// No description provided for @budgetDeleted.
  ///
  /// In en, this message translates to:
  /// **'Budget deleted'**
  String get budgetDeleted;

  /// No description provided for @allCategoriesBudgeted.
  ///
  /// In en, this message translates to:
  /// **'Every category already has a budget'**
  String get allCategoriesBudgeted;

  /// No description provided for @noBudgetsTitle.
  ///
  /// In en, this message translates to:
  /// **'No budgets yet'**
  String get noBudgetsTitle;

  /// No description provided for @noBudgetsBody.
  ///
  /// In en, this message translates to:
  /// **'Set a monthly limit on a category to start tracking it.'**
  String get noBudgetsBody;

  /// No description provided for @newGoal.
  ///
  /// In en, this message translates to:
  /// **'New goal'**
  String get newGoal;

  /// No description provided for @editGoal.
  ///
  /// In en, this message translates to:
  /// **'Edit goal'**
  String get editGoal;

  /// No description provided for @goalName.
  ///
  /// In en, this message translates to:
  /// **'Goal name'**
  String get goalName;

  /// No description provided for @goalNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Emergency fund'**
  String get goalNameHint;

  /// No description provided for @targetAmount.
  ///
  /// In en, this message translates to:
  /// **'Target amount'**
  String get targetAmount;

  /// No description provided for @alreadySaved.
  ///
  /// In en, this message translates to:
  /// **'Already saved'**
  String get alreadySaved;

  /// No description provided for @deleteGoal.
  ///
  /// In en, this message translates to:
  /// **'Delete goal?'**
  String get deleteGoal;

  /// No description provided for @deleteGoalBody.
  ///
  /// In en, this message translates to:
  /// **'{name} and its progress will be removed.'**
  String deleteGoalBody(String name);

  /// No description provided for @goalSaved.
  ///
  /// In en, this message translates to:
  /// **'Goal saved'**
  String get goalSaved;

  /// No description provided for @goalDeleted.
  ///
  /// In en, this message translates to:
  /// **'Goal deleted'**
  String get goalDeleted;

  /// No description provided for @noGoalsTitle.
  ///
  /// In en, this message translates to:
  /// **'No savings goals yet'**
  String get noGoalsTitle;

  /// No description provided for @noGoalsBody.
  ///
  /// In en, this message translates to:
  /// **'Set a target and RainyPenny will track your progress.'**
  String get noGoalsBody;

  /// No description provided for @fundsAdded.
  ///
  /// In en, this message translates to:
  /// **'Funds added'**
  String get fundsAdded;

  /// No description provided for @newDebt.
  ///
  /// In en, this message translates to:
  /// **'New loan or card'**
  String get newDebt;

  /// No description provided for @editDebt.
  ///
  /// In en, this message translates to:
  /// **'Edit loan'**
  String get editDebt;

  /// No description provided for @debtName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get debtName;

  /// No description provided for @debtNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Car loan'**
  String get debtNameHint;

  /// No description provided for @lender.
  ///
  /// In en, this message translates to:
  /// **'Lender'**
  String get lender;

  /// No description provided for @lenderHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Meridian Bank'**
  String get lenderHint;

  /// No description provided for @originalAmount.
  ///
  /// In en, this message translates to:
  /// **'Original amount'**
  String get originalAmount;

  /// No description provided for @creditLimit.
  ///
  /// In en, this message translates to:
  /// **'Credit limit'**
  String get creditLimit;

  /// No description provided for @remainingBalance.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance'**
  String get remainingBalance;

  /// No description provided for @interestRatePercent.
  ///
  /// In en, this message translates to:
  /// **'Interest rate (%)'**
  String get interestRatePercent;

  /// No description provided for @kindLoan.
  ///
  /// In en, this message translates to:
  /// **'Loan'**
  String get kindLoan;

  /// No description provided for @kindCreditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit card'**
  String get kindCreditCard;

  /// No description provided for @recordPayment.
  ///
  /// In en, this message translates to:
  /// **'Record payment'**
  String get recordPayment;

  /// No description provided for @paymentRecorded.
  ///
  /// In en, this message translates to:
  /// **'Payment recorded'**
  String get paymentRecorded;

  /// No description provided for @deleteDebt.
  ///
  /// In en, this message translates to:
  /// **'Delete this debt?'**
  String get deleteDebt;

  /// No description provided for @deleteDebtBody.
  ///
  /// In en, this message translates to:
  /// **'{name} will be removed from your debts.'**
  String deleteDebtBody(String name);

  /// No description provided for @debtSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get debtSaved;

  /// No description provided for @debtDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get debtDeleted;

  /// No description provided for @noDebtsTitle.
  ///
  /// In en, this message translates to:
  /// **'No debts tracked'**
  String get noDebtsTitle;

  /// No description provided for @noDebtsBody.
  ///
  /// In en, this message translates to:
  /// **'Add a loan or credit card to keep an eye on repayments.'**
  String get noDebtsBody;

  /// No description provided for @insightBudgetExceededTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} budget exceeded'**
  String insightBudgetExceededTitle(String subject);

  /// No description provided for @insightBudgetExceededBody.
  ///
  /// In en, this message translates to:
  /// **'You are {amount} over your {subject} budget for this period.'**
  String insightBudgetExceededBody(String amount, String subject);

  /// No description provided for @insightBudgetApproachingTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} is close to its limit'**
  String insightBudgetApproachingTitle(String subject);

  /// No description provided for @insightBudgetApproachingBody.
  ///
  /// In en, this message translates to:
  /// **'Your {subject} budget is {percent}% used, with {amount} left.'**
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  );

  /// No description provided for @insightOverIncomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Spending is above income'**
  String get insightOverIncomeTitle;

  /// No description provided for @insightOverIncomeBody.
  ///
  /// In en, this message translates to:
  /// **'You spent more than you earned this period. Review your largest categories to bring things back in line.'**
  String get insightOverIncomeBody;

  /// No description provided for @insightCategoryUpTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} spending is up'**
  String insightCategoryUpTitle(String subject);

  /// No description provided for @insightCategoryUpBody.
  ///
  /// In en, this message translates to:
  /// **'Your {subject} spending is {percent}% higher than the previous period.'**
  String insightCategoryUpBody(String subject, int percent);

  /// No description provided for @insightTrendDownTitle.
  ///
  /// In en, this message translates to:
  /// **'Spending is trending down'**
  String get insightTrendDownTitle;

  /// No description provided for @insightTrendDownBody.
  ///
  /// In en, this message translates to:
  /// **'Overall spending is {percent}% lower than the previous period.'**
  String insightTrendDownBody(int percent);

  /// No description provided for @insightTrendUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Spending is trending up'**
  String get insightTrendUpTitle;

  /// No description provided for @insightTrendUpBody.
  ///
  /// In en, this message translates to:
  /// **'Overall spending is {percent}% higher than the previous period.'**
  String insightTrendUpBody(int percent);

  /// No description provided for @insightSavingsStrongTitle.
  ///
  /// In en, this message translates to:
  /// **'Strong savings this period'**
  String get insightSavingsStrongTitle;

  /// No description provided for @insightSavingsStrongBody.
  ///
  /// In en, this message translates to:
  /// **'You kept {percent}% of your income — well above the {target}% target.'**
  String insightSavingsStrongBody(int percent, int target);

  /// No description provided for @insightSavingsLowTitle.
  ///
  /// In en, this message translates to:
  /// **'Savings rate is below target'**
  String get insightSavingsLowTitle;

  /// No description provided for @insightSavingsLowBody.
  ///
  /// In en, this message translates to:
  /// **'You kept {percent}% of your income this period. Aim for {target}%.'**
  String insightSavingsLowBody(int percent, int target);

  /// No description provided for @insightGoalNearlyTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} is nearly funded'**
  String insightGoalNearlyTitle(String subject);

  /// No description provided for @insightGoalNearlyBody.
  ///
  /// In en, this message translates to:
  /// **'Only {amount} left to reach {subject}.'**
  String insightGoalNearlyBody(String amount, String subject);

  /// No description provided for @insightGoalOnTrackTitle.
  ///
  /// In en, this message translates to:
  /// **'On track for {subject}'**
  String insightGoalOnTrackTitle(String subject);

  /// No description provided for @insightGoalOnTrackBody.
  ///
  /// In en, this message translates to:
  /// **'At {amount} a month you will reach this goal in {months, plural, =1{1 month} other{{months} months}}.'**
  String insightGoalOnTrackBody(String amount, int months);

  /// No description provided for @insightDebtOverdueTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} payment overdue'**
  String insightDebtOverdueTitle(String subject);

  /// No description provided for @insightDebtOverdueBody.
  ///
  /// In en, this message translates to:
  /// **'The {subject} payment of {amount} is {days, plural, =1{1 day} other{{days} days}} overdue.'**
  String insightDebtOverdueBody(String subject, String amount, int days);

  /// No description provided for @insightDebtDueTitle.
  ///
  /// In en, this message translates to:
  /// **'{subject} payment coming up'**
  String insightDebtDueTitle(String subject);

  /// No description provided for @insightDebtDueBody.
  ///
  /// In en, this message translates to:
  /// **'{amount} is due {days, plural, =0{today} =1{tomorrow} other{in {days} days}}.'**
  String insightDebtDueBody(String amount, int days);

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get signUp;

  /// No description provided for @signInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back. Your money is waiting.'**
  String get signInSubtitle;

  /// No description provided for @signUpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A few details and you are set up.'**
  String get signUpSubtitle;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'you@email.com'**
  String get emailHint;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get passwordHint;

  /// No description provided for @fullNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullNameLabel;

  /// No description provided for @fullNameHint.
  ///
  /// In en, this message translates to:
  /// **'Alex Morgan'**
  String get fullNameHint;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @resetSent.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox for a reset link'**
  String get resetSent;

  /// No description provided for @noAccountYet.
  ///
  /// In en, this message translates to:
  /// **'New here?'**
  String get noAccountYet;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get haveAccount;

  /// No description provided for @emailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get emailInvalid;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Use at least 8 characters'**
  String get passwordTooShort;

  /// No description provided for @signOutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Sign out?'**
  String get signOutConfirm;

  /// No description provided for @signOutBody.
  ///
  /// In en, this message translates to:
  /// **'You will need to sign in again to see your finances.'**
  String get signOutBody;

  /// No description provided for @dataSource.
  ///
  /// In en, this message translates to:
  /// **'Data source'**
  String get dataSource;

  /// No description provided for @insightWeeklySummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Your week in review'**
  String get insightWeeklySummaryTitle;

  /// No description provided for @insightWeeklySummaryBody.
  ///
  /// In en, this message translates to:
  /// **'See where your money went this week and how your budgets are holding up.'**
  String get insightWeeklySummaryBody;

  /// No description provided for @notificationSettings.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationSettings;

  /// No description provided for @alertsSection.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get alertsSection;

  /// No description provided for @budgetAlerts.
  ///
  /// In en, this message translates to:
  /// **'Budget alerts'**
  String get budgetAlerts;

  /// No description provided for @budgetAlertsBody.
  ///
  /// In en, this message translates to:
  /// **'When a budget nears or passes its limit'**
  String get budgetAlertsBody;

  /// No description provided for @paymentReminders.
  ///
  /// In en, this message translates to:
  /// **'Payment reminders'**
  String get paymentReminders;

  /// No description provided for @paymentRemindersBody.
  ///
  /// In en, this message translates to:
  /// **'A few days before a payment falls due'**
  String get paymentRemindersBody;

  /// No description provided for @savingsUpdates.
  ///
  /// In en, this message translates to:
  /// **'Savings updates'**
  String get savingsUpdates;

  /// No description provided for @savingsUpdatesBody.
  ///
  /// In en, this message translates to:
  /// **'Progress towards your goals'**
  String get savingsUpdatesBody;

  /// No description provided for @weeklySummaryLabel.
  ///
  /// In en, this message translates to:
  /// **'Weekly summary'**
  String get weeklySummaryLabel;

  /// No description provided for @weeklySummaryBody.
  ///
  /// In en, this message translates to:
  /// **'A digest of the week just gone'**
  String get weeklySummaryBody;

  /// No description provided for @scheduleSection.
  ///
  /// In en, this message translates to:
  /// **'Timing'**
  String get scheduleSection;

  /// No description provided for @reminderTime.
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get reminderTime;

  /// No description provided for @quietHours.
  ///
  /// In en, this message translates to:
  /// **'Quiet hours'**
  String get quietHours;

  /// No description provided for @quietHoursValue.
  ///
  /// In en, this message translates to:
  /// **'{start} – {end}'**
  String quietHoursValue(String start, String end);

  /// No description provided for @summaryDay.
  ///
  /// In en, this message translates to:
  /// **'Summary day'**
  String get summaryDay;

  /// No description provided for @permissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Notifications are turned off'**
  String get permissionRequired;

  /// No description provided for @permissionRequiredBody.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications so RainyPenny can warn you before a budget or a payment gets away from you.'**
  String get permissionRequiredBody;

  /// No description provided for @allowNotifications.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications'**
  String get allowNotifications;

  /// No description provided for @permissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Notifications are blocked. You can turn them on in your device settings.'**
  String get permissionDenied;

  /// No description provided for @upcomingAlerts.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get upcomingAlerts;

  /// No description provided for @noScheduledAlerts.
  ///
  /// In en, this message translates to:
  /// **'Nothing scheduled right now'**
  String get noScheduledAlerts;

  /// No description provided for @noScheduledAlertsBody.
  ///
  /// In en, this message translates to:
  /// **'Alerts appear here as your budgets and payments approach their limits.'**
  String get noScheduledAlertsBody;

  /// No description provided for @scheduledFor.
  ///
  /// In en, this message translates to:
  /// **'Scheduled for {date}'**
  String scheduledFor(String date);

  /// No description provided for @everyWeek.
  ///
  /// In en, this message translates to:
  /// **'Every week'**
  String get everyWeek;

  /// No description provided for @allNotificationsOff.
  ///
  /// In en, this message translates to:
  /// **'All notifications are off'**
  String get allNotificationsOff;

  /// No description provided for @needsAttention.
  ///
  /// In en, this message translates to:
  /// **'Needs attention'**
  String get needsAttention;
}

class _AppL10nDelegate extends LocalizationsDelegate<AppL10n> {
  const _AppL10nDelegate();

  @override
  Future<AppL10n> load(Locale locale) {
    return SynchronousFuture<AppL10n>(lookupAppL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'it',
    'pt',
    'tr',
    'ur',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppL10nDelegate old) => false;
}

AppL10n lookupAppL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppL10nAr();
    case 'de':
      return AppL10nDe();
    case 'en':
      return AppL10nEn();
    case 'es':
      return AppL10nEs();
    case 'fr':
      return AppL10nFr();
    case 'hi':
      return AppL10nHi();
    case 'it':
      return AppL10nIt();
    case 'pt':
      return AppL10nPt();
    case 'tr':
      return AppL10nTr();
    case 'ur':
      return AppL10nUr();
  }

  throw FlutterError(
    'AppL10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
