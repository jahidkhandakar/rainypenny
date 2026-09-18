import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

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
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('mr'),
    Locale('ms'),
    Locale('nb'),
    Locale('nl'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
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
  /// **'Enter your name'**
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

  /// No description provided for @quickActionsTitle.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do?'**
  String get quickActionsTitle;

  /// No description provided for @createSection.
  ///
  /// In en, this message translates to:
  /// **'Record'**
  String get createSection;

  /// No description provided for @jumpToSection.
  ///
  /// In en, this message translates to:
  /// **'Jump to'**
  String get jumpToSection;

  /// No description provided for @addLoanAction.
  ///
  /// In en, this message translates to:
  /// **'Add loan'**
  String get addLoanAction;

  /// No description provided for @addBudgetAction.
  ///
  /// In en, this message translates to:
  /// **'Add budget'**
  String get addBudgetAction;

  /// No description provided for @addGoalAction.
  ///
  /// In en, this message translates to:
  /// **'Add goal'**
  String get addGoalAction;

  /// No description provided for @longPressHint.
  ///
  /// In en, this message translates to:
  /// **'Tip: hold + to log an expense straight away'**
  String get longPressHint;

  /// Currency picker: searchCurrencies
  ///
  /// In en, this message translates to:
  /// **'Search currencies'**
  String get searchCurrencies;

  /// Currency picker: noCurrenciesFound
  ///
  /// In en, this message translates to:
  /// **'No currencies found'**
  String get noCurrenciesFound;

  /// Currency picker: noCurrenciesFoundMessage
  ///
  /// In en, this message translates to:
  /// **'Try a different code, symbol or name.'**
  String get noCurrenciesFoundMessage;

  /// Currency picker: popularCurrencies
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popularCurrencies;

  /// Currency picker: allCurrencies
  ///
  /// In en, this message translates to:
  /// **'All currencies'**
  String get allCurrencies;

  /// Loan detail: the original amount borrowed
  ///
  /// In en, this message translates to:
  /// **'Total loan amount'**
  String get totalLoanAmount;

  /// Loan detail: what falls due each cycle
  ///
  /// In en, this message translates to:
  /// **'Installment amount'**
  String get installmentAmount;

  /// Loan editor: length of the repayment plan
  ///
  /// In en, this message translates to:
  /// **'Number of installments'**
  String get numberOfInstallments;

  /// Loan detail: installments already settled
  ///
  /// In en, this message translates to:
  /// **'Paid installments'**
  String get paidInstallments;

  /// Loan detail: installments still to pay
  ///
  /// In en, this message translates to:
  /// **'Remaining installments'**
  String get remainingInstallments;

  /// Loan detail: installment counter
  ///
  /// In en, this message translates to:
  /// **'{paid} of {total} paid'**
  String installmentsPaidOf(int paid, int total);

  /// Loan detail: date of the last installment
  ///
  /// In en, this message translates to:
  /// **'Final payment'**
  String get finalPayment;

  /// Loan detail: the day of the month a payment falls due
  ///
  /// In en, this message translates to:
  /// **'Payment due date'**
  String get paymentDueDate;

  /// Loan detail: recurring due day
  ///
  /// In en, this message translates to:
  /// **'Day {day} of each month'**
  String dueOnDayOfMonth(int day);

  /// Loan detail: current standing of the debt
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get loanStatus;

  /// Loan status: being repaid normally
  ///
  /// In en, this message translates to:
  /// **'On track'**
  String get statusActive;

  /// Loan status: inside the reminder window
  ///
  /// In en, this message translates to:
  /// **'Due soon'**
  String get statusDueSoon;

  /// Loan status: the due date has passed
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get statusOverdue;

  /// Loan status: fully repaid
  ///
  /// In en, this message translates to:
  /// **'Paid off'**
  String get statusCompleted;

  /// Loan detail: section heading for the progress bars
  ///
  /// In en, this message translates to:
  /// **'Repayment progress'**
  String get repaymentProgress;

  /// Loan detail: progress measured in money
  ///
  /// In en, this message translates to:
  /// **'By amount'**
  String get byAmount;

  /// Loan detail: progress measured in payments
  ///
  /// In en, this message translates to:
  /// **'By installments'**
  String get byInstallments;

  /// Loan editor: when repayment began
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get startDate;

  /// Loan detail: a revolving balance with no fixed term
  ///
  /// In en, this message translates to:
  /// **'Open-ended'**
  String get openEnded;

  /// Title of the loan detail screen
  ///
  /// In en, this message translates to:
  /// **'Loan details'**
  String get loanDetails;

  /// Shown where an optional value has not been entered
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get notSet;

  /// Notification: an installment falls due today
  ///
  /// In en, this message translates to:
  /// **'{subject} is due today'**
  String insightDebtDueTodayTitle(String subject);

  /// Notification body: installment due today
  ///
  /// In en, this message translates to:
  /// **'Your {amount} payment is due today. A quick tap keeps it on time.'**
  String insightDebtDueTodayBody(String amount);

  /// Morning expense reminder title
  ///
  /// In en, this message translates to:
  /// **'Good morning ☀️'**
  String get remindMorningTitle;

  /// Morning expense reminder body
  ///
  /// In en, this message translates to:
  /// **'Start the day on top of your money. Anything to add from yesterday?'**
  String get remindMorningBody;

  /// Noon expense reminder title
  ///
  /// In en, this message translates to:
  /// **'Midday check-in'**
  String get remindNoonTitle;

  /// Noon expense reminder body
  ///
  /// In en, this message translates to:
  /// **'Lunch, coffee, a fare? Add it in a few seconds.'**
  String get remindNoonBody;

  /// Afternoon expense reminder title
  ///
  /// In en, this message translates to:
  /// **'Quick catch-up'**
  String get remindAfternoonTitle;

  /// Afternoon expense reminder body
  ///
  /// In en, this message translates to:
  /// **'Log what you have spent so far and keep today accurate.'**
  String get remindAfternoonBody;

  /// Evening expense reminder title
  ///
  /// In en, this message translates to:
  /// **'Wrapping up the day'**
  String get remindEveningTitle;

  /// Evening expense reminder body
  ///
  /// In en, this message translates to:
  /// **'Two minutes now and today\'s numbers are complete.'**
  String get remindEveningBody;

  /// Weekend greeting title
  ///
  /// In en, this message translates to:
  /// **'Happy weekend! 🎉'**
  String get happyWeekendTitle;

  /// Weekend greeting body
  ///
  /// In en, this message translates to:
  /// **'Enjoy it — and keep an eye on the weekend spending.'**
  String get happyWeekendBody;

  /// Notification setting: the daily nudges
  ///
  /// In en, this message translates to:
  /// **'Daily expense reminders'**
  String get dailyReminders;

  /// Notification setting description
  ///
  /// In en, this message translates to:
  /// **'Friendly nudges to keep your expenses up to date'**
  String get dailyRemindersBody;

  /// Notification setting: the weekend greeting
  ///
  /// In en, this message translates to:
  /// **'Happy Weekend'**
  String get weekendGreeting;

  /// Notification setting description
  ///
  /// In en, this message translates to:
  /// **'A friendly hello at the start of your weekend'**
  String get weekendGreetingBody;

  /// Section heading for the four daily slots
  ///
  /// In en, this message translates to:
  /// **'Reminder times'**
  String get reminderTimesSection;

  /// Daily reminder slot
  ///
  /// In en, this message translates to:
  /// **'Morning'**
  String get slotMorning;

  /// Daily reminder slot
  ///
  /// In en, this message translates to:
  /// **'Noon'**
  String get slotNoon;

  /// Daily reminder slot
  ///
  /// In en, this message translates to:
  /// **'Afternoon'**
  String get slotAfternoon;

  /// Daily reminder slot
  ///
  /// In en, this message translates to:
  /// **'Evening'**
  String get slotEvening;

  /// How often a repeating notification arrives
  ///
  /// In en, this message translates to:
  /// **'Every day'**
  String get everyDay;

  /// Title of the exported PDF
  ///
  /// In en, this message translates to:
  /// **'Financial Report'**
  String get financialReport;

  /// PDF cover: whose report this is
  ///
  /// In en, this message translates to:
  /// **'Prepared for'**
  String get preparedFor;

  /// PDF cover: the date the report was produced
  ///
  /// In en, this message translates to:
  /// **'Generated on'**
  String get generatedOn;

  /// PDF footer note
  ///
  /// In en, this message translates to:
  /// **'Generated by RainyPenny from your own records.'**
  String get reportDisclaimer;

  /// PDF footer page number
  ///
  /// In en, this message translates to:
  /// **'Page {page} of {total}'**
  String pageOf(int page, int total);

  /// PDF section: the headline totals
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// Table column heading
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Summary table row
  ///
  /// In en, this message translates to:
  /// **'Total income'**
  String get totalIncome;

  /// Summary table row
  ///
  /// In en, this message translates to:
  /// **'Total expenses'**
  String get totalExpenses;

  /// Summary table row
  ///
  /// In en, this message translates to:
  /// **'Total saved'**
  String get totalSaved;

  /// Table column: this category's share of all spending
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareOfTotal;

  /// Table column: percentage of a budget consumed
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get used;

  /// Table column heading for a savings goal
  ///
  /// In en, this message translates to:
  /// **'Goal'**
  String get goal;

  /// Table column heading
  ///
  /// In en, this message translates to:
  /// **'Target date'**
  String get targetDate;

  /// Table column heading
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// Table column: percentage of a debt repaid
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paidOffShort;

  /// PDF section listing individual entries
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// PDF note when the transaction table is truncated
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{and 1 more transaction} other{and {count} more transactions}}'**
  String andMoreTransactions(int count);

  /// Button that produces the report
  ///
  /// In en, this message translates to:
  /// **'Export PDF'**
  String get exportPdf;

  /// Button that opens the share sheet
  ///
  /// In en, this message translates to:
  /// **'Share report'**
  String get sharePdf;

  /// Progress message while the PDF builds
  ///
  /// In en, this message translates to:
  /// **'Preparing your report…'**
  String get preparingReport;

  /// Confirmation once the PDF is produced
  ///
  /// In en, this message translates to:
  /// **'Report ready'**
  String get reportReady;

  /// Error message when export fails
  ///
  /// In en, this message translates to:
  /// **'Could not create the report'**
  String get reportFailed;

  /// Title of the category management screen
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// Explains what the screen is for
  ///
  /// In en, this message translates to:
  /// **'Add your own categories to file income and expenses exactly the way you think about them.'**
  String get categoriesIntro;

  /// Section heading
  ///
  /// In en, this message translates to:
  /// **'Expense categories'**
  String get expenseCategories;

  /// Section heading
  ///
  /// In en, this message translates to:
  /// **'Income categories'**
  String get incomeCategories;

  /// Title of the create form
  ///
  /// In en, this message translates to:
  /// **'New category'**
  String get newCategory;

  /// Title of the edit form
  ///
  /// In en, this message translates to:
  /// **'Edit category'**
  String get editCategory;

  /// Category form field label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get categoryName;

  /// Category name placeholder
  ///
  /// In en, this message translates to:
  /// **'e.g. Pet care'**
  String get categoryNameHint;

  /// Category form field label
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get icon;

  /// Confirmation
  ///
  /// In en, this message translates to:
  /// **'Category saved'**
  String get categorySaved;

  /// Confirmation
  ///
  /// In en, this message translates to:
  /// **'Category deleted'**
  String get categoryDeleted;

  /// Delete confirmation title
  ///
  /// In en, this message translates to:
  /// **'Delete this category?'**
  String get deleteCategory;

  /// Delete confirmation body
  ///
  /// In en, this message translates to:
  /// **'{name} will be removed from your categories.'**
  String deleteCategoryBody(String name);

  /// Explains why a category cannot be deleted
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 record still uses this category} other{{count} records still use this category}}'**
  String categoryInUse(int count);

  /// Empty group in the category list
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet.'**
  String get noCategoriesYet;

  /// Marks a shared, read-only category
  ///
  /// In en, this message translates to:
  /// **'Built-in'**
  String get builtIn;

  /// Settings row that opens the category screen
  ///
  /// In en, this message translates to:
  /// **'Manage categories'**
  String get manageCategories;

  /// Singular label for an outgoing transaction
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// Note under the language picker explaining RTL support
  ///
  /// In en, this message translates to:
  /// **'Arabic, Urdu, Persian and Hebrew switch the whole interface to right-to-left, including charts and PDF reports.'**
  String get languageNote;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Primary action that advances a multi-step flow. Named with a suffix because "continue" is a Dart keyword.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get passwordRequired;

  /// No description provided for @newPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPasswordLabel;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPasswordLabel;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Both passwords must match'**
  String get passwordsDoNotMatch;

  /// No description provided for @showPassword.
  ///
  /// In en, this message translates to:
  /// **'Show password'**
  String get showPassword;

  /// No description provided for @hidePassword.
  ///
  /// In en, this message translates to:
  /// **'Hide password'**
  String get hidePassword;

  /// No description provided for @savePassword.
  ///
  /// In en, this message translates to:
  /// **'Save password'**
  String get savePassword;

  /// No description provided for @backToSignIn.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get backToSignIn;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'I already have an account'**
  String get alreadyHaveAccount;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @acceptTerms.
  ///
  /// In en, this message translates to:
  /// **'I agree to the Terms of Service and the Privacy Policy'**
  String get acceptTerms;

  /// No description provided for @acceptTermsRequired.
  ///
  /// In en, this message translates to:
  /// **'Please accept to continue'**
  String get acceptTermsRequired;

  /// No description provided for @passwordStrengthTooShort.
  ///
  /// In en, this message translates to:
  /// **'Too short'**
  String get passwordStrengthTooShort;

  /// No description provided for @passwordStrengthWeak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get passwordStrengthWeak;

  /// No description provided for @passwordStrengthFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get passwordStrengthFair;

  /// No description provided for @passwordStrengthGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get passwordStrengthGood;

  /// No description provided for @passwordStrengthStrong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get passwordStrengthStrong;

  /// No description provided for @passwordAdvice.
  ///
  /// In en, this message translates to:
  /// **'A long phrase you will remember beats a short one full of symbols. Avoid anything you already use somewhere else.'**
  String get passwordAdvice;

  /// No description provided for @authInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'That email and password do not match an account'**
  String get authInvalidCredentials;

  /// No description provided for @authEmailNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirm your email address before signing in'**
  String get authEmailNotConfirmed;

  /// No description provided for @authEmailAlreadyRegistered.
  ///
  /// In en, this message translates to:
  /// **'An account with this email already exists'**
  String get authEmailAlreadyRegistered;

  /// No description provided for @authWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'Choose a longer password'**
  String get authWeakPassword;

  /// No description provided for @authRateLimited.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Try again in a few minutes'**
  String get authRateLimited;

  /// No description provided for @authNetworkError.
  ///
  /// In en, this message translates to:
  /// **'No connection. Check your network and try again'**
  String get authNetworkError;

  /// No description provided for @authGenericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again'**
  String get authGenericError;

  /// No description provided for @confirmEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get confirmEmailTitle;

  /// No description provided for @confirmEmailBody.
  ///
  /// In en, this message translates to:
  /// **'We sent a confirmation link to {email}. Open it to finish setting up your account.'**
  String confirmEmailBody(String email);

  /// No description provided for @resendConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Resend confirmation email'**
  String get resendConfirmation;

  /// No description provided for @confirmationResent.
  ///
  /// In en, this message translates to:
  /// **'Confirmation email sent'**
  String get confirmationResent;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the email you signed up with and we will send you a link to choose a new password.'**
  String get forgotPasswordSubtitle;

  /// No description provided for @sendResetLink.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get sendResetLink;

  /// No description provided for @resetLinkSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset link sent'**
  String get resetLinkSentTitle;

  /// Deliberately conditional: confirming whether an address is registered would let anyone enumerate the app users.
  ///
  /// In en, this message translates to:
  /// **'If {email} has an account, a reset link is on its way.'**
  String resetLinkSentBody(String email);

  /// No description provided for @resetLinkSentHint.
  ///
  /// In en, this message translates to:
  /// **'The link expires in an hour. If it does not arrive, check your spam folder before asking for another.'**
  String get resetLinkSentHint;

  /// No description provided for @tryAnotherEmail.
  ///
  /// In en, this message translates to:
  /// **'Use a different email'**
  String get tryAnotherEmail;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a new password'**
  String get resetPasswordTitle;

  /// No description provided for @resetPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pick something you have not used on this account before.'**
  String get resetPasswordSubtitle;

  /// No description provided for @passwordChangedTitle.
  ///
  /// In en, this message translates to:
  /// **'Password updated'**
  String get passwordChangedTitle;

  /// No description provided for @passwordChangedBody.
  ///
  /// In en, this message translates to:
  /// **'Your new password is saved. You are signed in and ready to go.'**
  String get passwordChangedBody;

  /// No description provided for @demoModeHint.
  ///
  /// In en, this message translates to:
  /// **'Demo build — no account needed'**
  String get demoModeHint;

  /// No description provided for @demoModeFill.
  ///
  /// In en, this message translates to:
  /// **'Fill in'**
  String get demoModeFill;

  /// No description provided for @welcomeTrackTitle.
  ///
  /// In en, this message translates to:
  /// **'See where your money goes'**
  String get welcomeTrackTitle;

  /// No description provided for @welcomeTrackBody.
  ///
  /// In en, this message translates to:
  /// **'Record what comes in and what goes out. RainyPenny turns it into a picture you can actually read.'**
  String get welcomeTrackBody;

  /// No description provided for @welcomeBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Set limits that hold'**
  String get welcomeBudgetTitle;

  /// No description provided for @welcomeBudgetBody.
  ///
  /// In en, this message translates to:
  /// **'Give each part of your spending a monthly ceiling, and get told before you go through it rather than after.'**
  String get welcomeBudgetBody;

  /// No description provided for @welcomeGoalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Save for what matters'**
  String get welcomeGoalsTitle;

  /// No description provided for @welcomeGoalsBody.
  ///
  /// In en, this message translates to:
  /// **'Name a goal, set a target, and watch it fill up. A rainy day fund is easier to build when you can see it.'**
  String get welcomeGoalsBody;

  /// No description provided for @welcomePrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your money stays yours'**
  String get welcomePrivacyTitle;

  /// No description provided for @welcomePrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'Your figures are yours alone. Nothing is sold, and nothing is shared with anyone.'**
  String get welcomePrivacyBody;

  /// No description provided for @stepOf.
  ///
  /// In en, this message translates to:
  /// **'Step {step} of {total}'**
  String stepOf(int step, int total);

  /// No description provided for @onboardingNameTitle.
  ///
  /// In en, this message translates to:
  /// **'What should we call you?'**
  String get onboardingNameTitle;

  /// No description provided for @onboardingNameBody.
  ///
  /// In en, this message translates to:
  /// **'We will use it to greet you, and nowhere else.'**
  String get onboardingNameBody;

  /// No description provided for @onboardingNameHint.
  ///
  /// In en, this message translates to:
  /// **'A first name is plenty. You can change it later.'**
  String get onboardingNameHint;

  /// No description provided for @onboardingCurrencyTitle.
  ///
  /// In en, this message translates to:
  /// **'Which currency do you use?'**
  String get onboardingCurrencyTitle;

  /// No description provided for @onboardingCurrencyBody.
  ///
  /// In en, this message translates to:
  /// **'Every amount in the app is shown in this currency. Choosing it does not convert anything.'**
  String get onboardingCurrencyBody;

  /// No description provided for @onboardingCurrencySearch.
  ///
  /// In en, this message translates to:
  /// **'Search all currencies'**
  String get onboardingCurrencySearch;

  /// No description provided for @onboardingAppearanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Make it yours'**
  String get onboardingAppearanceTitle;

  /// No description provided for @onboardingAppearanceBody.
  ///
  /// In en, this message translates to:
  /// **'Pick a look. Everything changes as you tap, and you can come back to it any time.'**
  String get onboardingAppearanceBody;

  /// No description provided for @onboardingNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Stay on top of it'**
  String get onboardingNotificationsTitle;

  /// No description provided for @onboardingNotificationsBody.
  ///
  /// In en, this message translates to:
  /// **'A quiet nudge at the right moment is what turns this into a habit.'**
  String get onboardingNotificationsBody;

  /// No description provided for @onboardingNotifyReminders.
  ///
  /// In en, this message translates to:
  /// **'A gentle reminder to record what you spent'**
  String get onboardingNotifyReminders;

  /// No description provided for @onboardingNotifyBudget.
  ///
  /// In en, this message translates to:
  /// **'A heads-up before a budget runs out'**
  String get onboardingNotifyBudget;

  /// No description provided for @onboardingNotifySummary.
  ///
  /// In en, this message translates to:
  /// **'A weekly summary of where your money went'**
  String get onboardingNotifySummary;

  /// No description provided for @onboardingNotifyEnable.
  ///
  /// In en, this message translates to:
  /// **'Turn on notifications'**
  String get onboardingNotifyEnable;

  /// No description provided for @onboardingNotifyDone.
  ///
  /// In en, this message translates to:
  /// **'Notification settings saved'**
  String get onboardingNotifyDone;

  /// No description provided for @onboardingNotifyLater.
  ///
  /// In en, this message translates to:
  /// **'You can change all of this in Settings, whenever you like.'**
  String get onboardingNotifyLater;

  /// No description provided for @onboardingReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'You are all set'**
  String get onboardingReadyTitle;

  /// No description provided for @onboardingReadyTitleNamed.
  ///
  /// In en, this message translates to:
  /// **'You are all set, {name}'**
  String onboardingReadyTitleNamed(String name);

  /// No description provided for @onboardingReadyBody.
  ///
  /// In en, this message translates to:
  /// **'That is setup done. Would you like a quick tour of how everything works?'**
  String get onboardingReadyBody;

  /// No description provided for @onboardingTakeTour.
  ///
  /// In en, this message translates to:
  /// **'Show me around'**
  String get onboardingTakeTour;

  /// No description provided for @onboardingGoToApp.
  ///
  /// In en, this message translates to:
  /// **'Take me to the app'**
  String get onboardingGoToApp;

  /// No description provided for @onboardingTourLater.
  ///
  /// In en, this message translates to:
  /// **'Not now? The guide stays in Settings for whenever you want it.'**
  String get onboardingTourLater;

  /// No description provided for @beginnersGuide.
  ///
  /// In en, this message translates to:
  /// **'Beginner’s guide'**
  String get beginnersGuide;

  /// No description provided for @guideFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get guideFinish;

  /// No description provided for @chapterOf.
  ///
  /// In en, this message translates to:
  /// **'Chapter {number} of {total}'**
  String chapterOf(int number, int total);

  /// No description provided for @guideOpenScreen.
  ///
  /// In en, this message translates to:
  /// **'Open {screen}'**
  String guideOpenScreen(String screen);

  /// No description provided for @guideDashboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Your dashboard'**
  String get guideDashboardTitle;

  /// No description provided for @guideDashboardBody.
  ///
  /// In en, this message translates to:
  /// **'Everything opens here. The card at the top is what you have left; under it sits what came in and what went out this period, then your spending, budgets and goals.'**
  String get guideDashboardBody;

  /// No description provided for @guideDashboardTip1.
  ///
  /// In en, this message translates to:
  /// **'Pull the screen down to refresh everything at once.'**
  String get guideDashboardTip1;

  /// No description provided for @guideDashboardTip2.
  ///
  /// In en, this message translates to:
  /// **'Tap the income or expenses card to jump to that list.'**
  String get guideDashboardTip2;

  /// No description provided for @guideDashboardTip3.
  ///
  /// In en, this message translates to:
  /// **'The rings and insights update the moment you record something.'**
  String get guideDashboardTip3;

  /// No description provided for @guideAddTitle.
  ///
  /// In en, this message translates to:
  /// **'Recording money'**
  String get guideAddTitle;

  /// No description provided for @guideAddBody.
  ///
  /// In en, this message translates to:
  /// **'The button in the middle of the bar is where everything starts. It opens a short menu: money out, money in, a debt, a budget or a savings goal.'**
  String get guideAddBody;

  /// No description provided for @guideAddTip1.
  ///
  /// In en, this message translates to:
  /// **'Tap the centre button to record money in or out.'**
  String get guideAddTip1;

  /// No description provided for @guideAddTip2.
  ///
  /// In en, this message translates to:
  /// **'Hold it down to go straight to a new expense and skip the menu.'**
  String get guideAddTip2;

  /// No description provided for @guideAddTip3.
  ///
  /// In en, this message translates to:
  /// **'Always pick a category — that is what makes the charts and budgets work.'**
  String get guideAddTip3;

  /// No description provided for @guideCategoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get guideCategoriesTitle;

  /// No description provided for @guideCategoriesBody.
  ///
  /// In en, this message translates to:
  /// **'Categories are how spending gets grouped. The ones that ship with the app cover most people, and you can rename them or add your own.'**
  String get guideCategoriesBody;

  /// No description provided for @guideCategoriesTip1.
  ///
  /// In en, this message translates to:
  /// **'Settings, then Manage categories, to change or add one.'**
  String get guideCategoriesTip1;

  /// No description provided for @guideCategoriesTip2.
  ///
  /// In en, this message translates to:
  /// **'Anything left uncategorised lands in Other, so the charts stay honest.'**
  String get guideCategoriesTip2;

  /// No description provided for @guideBudgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Budgets'**
  String get guideBudgetTitle;

  /// No description provided for @guideBudgetBody.
  ///
  /// In en, this message translates to:
  /// **'A budget is a monthly ceiling for one category. The bar fills as you spend and turns as it gets close, so you find out before you have gone through it.'**
  String get guideBudgetBody;

  /// No description provided for @guideBudgetTip1.
  ///
  /// In en, this message translates to:
  /// **'Start with two or three categories, not all of them at once.'**
  String get guideBudgetTip1;

  /// No description provided for @guideBudgetTip2.
  ///
  /// In en, this message translates to:
  /// **'Set the limit slightly above what you usually spend, then tighten it.'**
  String get guideBudgetTip2;

  /// No description provided for @guideBudgetTip3.
  ///
  /// In en, this message translates to:
  /// **'Leave budget alerts on and the app warns you as one runs low.'**
  String get guideBudgetTip3;

  /// No description provided for @guideSavingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Savings goals'**
  String get guideSavingsTitle;

  /// No description provided for @guideSavingsBody.
  ///
  /// In en, this message translates to:
  /// **'Name what you are saving for, set a target and a date, and the app works out what you need to put aside each month to get there.'**
  String get guideSavingsBody;

  /// No description provided for @guideSavingsTip1.
  ///
  /// In en, this message translates to:
  /// **'A named goal is easier to keep than a vague intention to save.'**
  String get guideSavingsTip1;

  /// No description provided for @guideSavingsTip2.
  ///
  /// In en, this message translates to:
  /// **'Several small goals get finished more often than one large one.'**
  String get guideSavingsTip2;

  /// No description provided for @guideLoansTitle.
  ///
  /// In en, this message translates to:
  /// **'Debts and loans'**
  String get guideLoansTitle;

  /// No description provided for @guideLoansBody.
  ///
  /// In en, this message translates to:
  /// **'Record what you owe, what it costs and when the next payment falls due. Everything you are paying off sits in one list with the total left on it.'**
  String get guideLoansBody;

  /// No description provided for @guideLoansTip1.
  ///
  /// In en, this message translates to:
  /// **'Add the due date and payment reminders will chase it for you.'**
  String get guideLoansTip1;

  /// No description provided for @guideLoansTip2.
  ///
  /// In en, this message translates to:
  /// **'A debt marked overdue shows in red on the dashboard until it is paid.'**
  String get guideLoansTip2;

  /// No description provided for @guideReportsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get guideReportsTitle;

  /// No description provided for @guideReportsBody.
  ///
  /// In en, this message translates to:
  /// **'The deeper view: income against expenses, spending by category, how your budgets held up, and what share of your income you kept.'**
  String get guideReportsBody;

  /// No description provided for @guideReportsTip1.
  ///
  /// In en, this message translates to:
  /// **'Switch between week, month and quarter at the top of the screen.'**
  String get guideReportsTip1;

  /// No description provided for @guideReportsTip2.
  ///
  /// In en, this message translates to:
  /// **'Export or share a PDF — it comes out in your own language and direction.'**
  String get guideReportsTip2;

  /// No description provided for @guideSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get guideSettingsTitle;

  /// No description provided for @guideSettingsBody.
  ///
  /// In en, this message translates to:
  /// **'Language, currency, colours and alerts all live here, and none of them are locked in by setup — change any of them whenever you like.'**
  String get guideSettingsBody;

  /// No description provided for @guideSettingsTip1.
  ///
  /// In en, this message translates to:
  /// **'Forty languages, and the whole layout mirrors for right-to-left ones.'**
  String get guideSettingsTip1;

  /// No description provided for @guideSettingsTip2.
  ///
  /// In en, this message translates to:
  /// **'Pick which alerts you want and the hours they may arrive.'**
  String get guideSettingsTip2;

  /// No description provided for @guideSettingsTip3.
  ///
  /// In en, this message translates to:
  /// **'Quiet hours hold everything back until the morning.'**
  String get guideSettingsTip3;

  /// No description provided for @guideHabitTitle.
  ///
  /// In en, this message translates to:
  /// **'Make it stick'**
  String get guideHabitTitle;

  /// No description provided for @guideHabitBody.
  ///
  /// In en, this message translates to:
  /// **'The app is only as good as what you put into it. A minute a day beats an hour once a month, and after a fortnight the numbers start telling you something.'**
  String get guideHabitBody;

  /// No description provided for @guideHabitTip1.
  ///
  /// In en, this message translates to:
  /// **'Record what you spend as it happens, not at the end of the week.'**
  String get guideHabitTip1;

  /// No description provided for @guideHabitTip2.
  ///
  /// In en, this message translates to:
  /// **'Glance at the dashboard once a day. Ten seconds is enough.'**
  String get guideHabitTip2;

  /// No description provided for @guideHabitTip3.
  ///
  /// In en, this message translates to:
  /// **'This guide stays in Settings — come back to it whenever you like.'**
  String get guideHabitTip3;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @themeCaption.
  ///
  /// In en, this message translates to:
  /// **'Light, dark, or whatever your phone is doing.'**
  String get themeCaption;

  /// No description provided for @accentColor.
  ///
  /// In en, this message translates to:
  /// **'Accent colour'**
  String get accentColor;

  /// No description provided for @accentColorCaption.
  ///
  /// In en, this message translates to:
  /// **'Colours the buttons, highlights and charts.'**
  String get accentColorCaption;

  /// No description provided for @accentSemanticsNote.
  ///
  /// In en, this message translates to:
  /// **'Money in and money out keep their own colours in every theme, so a figure never changes meaning because you changed the accent.'**
  String get accentSemanticsNote;

  /// No description provided for @accentTeal.
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get accentTeal;

  /// No description provided for @accentGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get accentGreen;

  /// No description provided for @accentSky.
  ///
  /// In en, this message translates to:
  /// **'Sky'**
  String get accentSky;

  /// No description provided for @accentBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get accentBlue;

  /// No description provided for @accentIndigo.
  ///
  /// In en, this message translates to:
  /// **'Indigo'**
  String get accentIndigo;

  /// No description provided for @accentViolet.
  ///
  /// In en, this message translates to:
  /// **'Violet'**
  String get accentViolet;

  /// No description provided for @accentPink.
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get accentPink;

  /// No description provided for @accentCrimson.
  ///
  /// In en, this message translates to:
  /// **'Crimson'**
  String get accentCrimson;

  /// No description provided for @accentOrange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get accentOrange;

  /// No description provided for @accentSlate.
  ///
  /// In en, this message translates to:
  /// **'Slate'**
  String get accentSlate;

  /// No description provided for @searchLanguages.
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get searchLanguages;

  /// No description provided for @suggestedLanguages.
  ///
  /// In en, this message translates to:
  /// **'Suggested'**
  String get suggestedLanguages;

  /// No description provided for @allLanguages.
  ///
  /// In en, this message translates to:
  /// **'All languages'**
  String get allLanguages;

  /// No description provided for @noLanguagesFound.
  ///
  /// In en, this message translates to:
  /// **'No languages found'**
  String get noLanguagesFound;

  /// No description provided for @noLanguagesFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Try the name in English, or the two-letter code.'**
  String get noLanguagesFoundMessage;

  /// No description provided for @rightToLeft.
  ///
  /// In en, this message translates to:
  /// **'Right to left'**
  String get rightToLeft;

  /// No description provided for @replayGuide.
  ///
  /// In en, this message translates to:
  /// **'Replay the guide'**
  String get replayGuide;

  /// No description provided for @replaySetup.
  ///
  /// In en, this message translates to:
  /// **'Run setup again'**
  String get replaySetup;

  /// No description provided for @replaySetupBody.
  ///
  /// In en, this message translates to:
  /// **'Go through the first-run questions again. Nothing you have recorded is deleted.'**
  String get replaySetupBody;

  /// No description provided for @rateTitle.
  ///
  /// In en, this message translates to:
  /// **'Enjoying RainyPenny?'**
  String get rateTitle;

  /// No description provided for @rateBody.
  ///
  /// In en, this message translates to:
  /// **'You have been keeping at this for a while now. A rating takes a moment and helps other people find the app.'**
  String get rateBody;

  /// No description provided for @rateAction.
  ///
  /// In en, this message translates to:
  /// **'Rate the app'**
  String get rateAction;

  /// No description provided for @rateLater.
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get rateLater;

  /// No description provided for @rateNever.
  ///
  /// In en, this message translates to:
  /// **'No thanks'**
  String get rateNever;

  /// No description provided for @rateThanks.
  ///
  /// In en, this message translates to:
  /// **'Thank you'**
  String get rateThanks;

  /// No description provided for @monthlySalary.
  ///
  /// In en, this message translates to:
  /// **'Monthly salary'**
  String get monthlySalary;

  /// No description provided for @remainingAmount.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remainingAmount;

  /// No description provided for @carriedForward.
  ///
  /// In en, this message translates to:
  /// **'Carried forward'**
  String get carriedForward;

  /// No description provided for @carriedForwardHint.
  ///
  /// In en, this message translates to:
  /// **'Left over from last cycle'**
  String get carriedForwardHint;

  /// No description provided for @totalSpending.
  ///
  /// In en, this message translates to:
  /// **'Total spending'**
  String get totalSpending;

  /// No description provided for @salaryCycle.
  ///
  /// In en, this message translates to:
  /// **'Salary cycle'**
  String get salaryCycle;

  /// No description provided for @payday.
  ///
  /// In en, this message translates to:
  /// **'Salary day'**
  String get payday;

  /// No description provided for @paydayDescription.
  ///
  /// In en, this message translates to:
  /// **'The day your salary arrives. Your financial month runs from this day until the day before the next one.'**
  String get paydayDescription;

  /// No description provided for @paydayUpdated.
  ///
  /// In en, this message translates to:
  /// **'Salary day updated'**
  String get paydayUpdated;

  /// No description provided for @paydayDayOfMonth.
  ///
  /// In en, this message translates to:
  /// **'Day {day}'**
  String paydayDayOfMonth(int day);

  /// No description provided for @paydayShortMonthNote.
  ///
  /// In en, this message translates to:
  /// **'In shorter months the cycle starts on the last day instead.'**
  String get paydayShortMonthNote;

  /// No description provided for @daysLeftInCycle.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Last day of the cycle} =1{1 day to payday} other{{count} days to payday}}'**
  String daysLeftInCycle(int count);

  /// No description provided for @nextPayday.
  ///
  /// In en, this message translates to:
  /// **'Next payday'**
  String get nextPayday;

  /// No description provided for @spentSoFar.
  ///
  /// In en, this message translates to:
  /// **'Spent so far'**
  String get spentSoFar;

  /// No description provided for @dailyAllowance.
  ///
  /// In en, this message translates to:
  /// **'Safe to spend daily'**
  String get dailyAllowance;

  /// No description provided for @overspentNotice.
  ///
  /// In en, this message translates to:
  /// **'You have spent more than came in this cycle.'**
  String get overspentNotice;

  /// No description provided for @backToThisMonth.
  ///
  /// In en, this message translates to:
  /// **'Back to this month'**
  String get backToThisMonth;

  /// No description provided for @cycleRangeLabel.
  ///
  /// In en, this message translates to:
  /// **'Cycle'**
  String get cycleRangeLabel;

  /// No description provided for @noSalaryRecorded.
  ///
  /// In en, this message translates to:
  /// **'No salary recorded yet'**
  String get noSalaryRecorded;

  /// No description provided for @addSalaryAction.
  ///
  /// In en, this message translates to:
  /// **'Add your salary'**
  String get addSalaryAction;

  /// No description provided for @cycleOf.
  ///
  /// In en, this message translates to:
  /// **'{start} – {end}'**
  String cycleOf(String start, String end);

  /// No description provided for @healthExcellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get healthExcellent;

  /// No description provided for @healthGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get healthGood;

  /// No description provided for @healthFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get healthFair;

  /// No description provided for @healthNeedsWork.
  ///
  /// In en, this message translates to:
  /// **'Needs work'**
  String get healthNeedsWork;

  /// No description provided for @healthExcellentBody.
  ///
  /// In en, this message translates to:
  /// **'You are saving well and staying inside your budgets.'**
  String get healthExcellentBody;

  /// No description provided for @healthGoodBody.
  ///
  /// In en, this message translates to:
  /// **'You are on track with your spending this period.'**
  String get healthGoodBody;

  /// No description provided for @healthFairBody.
  ///
  /// In en, this message translates to:
  /// **'A few budgets are running hot. Small changes will help.'**
  String get healthFairBody;

  /// No description provided for @healthNeedsWorkBody.
  ///
  /// In en, this message translates to:
  /// **'Spending is outpacing your plan. Start with your largest category.'**
  String get healthNeedsWorkBody;

  /// No description provided for @factorSavingsRate.
  ///
  /// In en, this message translates to:
  /// **'Savings rate'**
  String get factorSavingsRate;

  /// No description provided for @factorBudgetControl.
  ///
  /// In en, this message translates to:
  /// **'Budget control'**
  String get factorBudgetControl;

  /// No description provided for @factorDebtLoad.
  ///
  /// In en, this message translates to:
  /// **'Debt load'**
  String get factorDebtLoad;

  /// No description provided for @factorSpendingTrend.
  ///
  /// In en, this message translates to:
  /// **'Spending trend'**
  String get factorSpendingTrend;

  /// No description provided for @factorKept.
  ///
  /// In en, this message translates to:
  /// **'{percent}% kept'**
  String factorKept(String percent);

  /// No description provided for @factorUsed.
  ///
  /// In en, this message translates to:
  /// **'{percent}% used'**
  String factorUsed(String percent);

  /// No description provided for @factorOfIncome.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of income'**
  String factorOfIncome(String percent);

  /// No description provided for @factorTrendUp.
  ///
  /// In en, this message translates to:
  /// **'Up {percent}%'**
  String factorTrendUp(String percent);

  /// No description provided for @factorTrendDown.
  ///
  /// In en, this message translates to:
  /// **'Down {percent}%'**
  String factorTrendDown(String percent);

  /// No description provided for @howScoreWorks.
  ///
  /// In en, this message translates to:
  /// **'How this score works'**
  String get howScoreWorks;

  /// No description provided for @healthScoreExplainer.
  ///
  /// In en, this message translates to:
  /// **'Your score blends four things: how much of your income you keep, how well you stay inside your budgets, how much of your income goes to debt, and whether your spending is rising or falling.'**
  String get healthScoreExplainer;

  /// No description provided for @scoreWeightLabel.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of the score'**
  String scoreWeightLabel(int percent);

  /// No description provided for @viewHealthDetails.
  ///
  /// In en, this message translates to:
  /// **'See the breakdown'**
  String get viewHealthDetails;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get profileUpdated;

  /// No description provided for @changePhoto.
  ///
  /// In en, this message translates to:
  /// **'Change photo'**
  String get changePhoto;

  /// No description provided for @removePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get removePhoto;

  /// No description provided for @personalInformationIntro.
  ///
  /// In en, this message translates to:
  /// **'Your name and photo appear across the app. Your email is the address you sign in with.'**
  String get personalInformationIntro;

  /// No description provided for @emailNotEditable.
  ///
  /// In en, this message translates to:
  /// **'Contact support to change the address you sign in with.'**
  String get emailNotEditable;

  /// No description provided for @pressBackAgainToExit.
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get pressBackAgainToExit;

  /// No description provided for @categoryHousing.
  ///
  /// In en, this message translates to:
  /// **'Housing'**
  String get categoryHousing;

  /// No description provided for @categoryFood.
  ///
  /// In en, this message translates to:
  /// **'Food & Dining'**
  String get categoryFood;

  /// No description provided for @categoryTransport.
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get categoryTransport;

  /// No description provided for @categoryShopping.
  ///
  /// In en, this message translates to:
  /// **'Shopping'**
  String get categoryShopping;

  /// No description provided for @categoryBills.
  ///
  /// In en, this message translates to:
  /// **'Bills & Utilities'**
  String get categoryBills;

  /// No description provided for @categoryEntertainment.
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get categoryEntertainment;

  /// No description provided for @categoryHealth.
  ///
  /// In en, this message translates to:
  /// **'Health & Fitness'**
  String get categoryHealth;

  /// No description provided for @categoryEducation.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get categoryEducation;

  /// No description provided for @categoryTravel.
  ///
  /// In en, this message translates to:
  /// **'Travel'**
  String get categoryTravel;

  /// No description provided for @categoryOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get categoryOther;

  /// No description provided for @categorySalary.
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get categorySalary;

  /// No description provided for @categoryFreelance.
  ///
  /// In en, this message translates to:
  /// **'Freelance'**
  String get categoryFreelance;

  /// No description provided for @categoryInvestments.
  ///
  /// In en, this message translates to:
  /// **'Investments'**
  String get categoryInvestments;

  /// No description provided for @categoryRefunds.
  ///
  /// In en, this message translates to:
  /// **'Refunds & Gifts'**
  String get categoryRefunds;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'New category'**
  String get addCategory;

  /// No description provided for @filterByCategory.
  ///
  /// In en, this message translates to:
  /// **'Filter by category'**
  String get filterByCategory;

  /// No description provided for @allCategories.
  ///
  /// In en, this message translates to:
  /// **'All categories'**
  String get allCategories;

  /// No description provided for @clearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get clearFilters;

  /// No description provided for @spentInCategory.
  ///
  /// In en, this message translates to:
  /// **'{category}  ·  {amount}'**
  String spentInCategory(String category, String amount);

  /// No description provided for @allTime.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get allTime;

  /// No description provided for @customRange.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get customRange;

  /// No description provided for @selectDateRange.
  ///
  /// In en, this message translates to:
  /// **'Choose a period'**
  String get selectDateRange;

  /// No description provided for @rangeApplied.
  ///
  /// In en, this message translates to:
  /// **'Showing {start} – {end}'**
  String rangeApplied(String start, String end);
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
    'bn',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fi',
    'fil',
    'fr',
    'he',
    'hi',
    'hu',
    'id',
    'it',
    'ja',
    'ko',
    'mr',
    'ms',
    'nb',
    'nl',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppL10nDelegate old) => false;
}

AppL10n lookupAppL10n(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppL10nZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppL10nAr();
    case 'bn':
      return AppL10nBn();
    case 'cs':
      return AppL10nCs();
    case 'da':
      return AppL10nDa();
    case 'de':
      return AppL10nDe();
    case 'el':
      return AppL10nEl();
    case 'en':
      return AppL10nEn();
    case 'es':
      return AppL10nEs();
    case 'fa':
      return AppL10nFa();
    case 'fi':
      return AppL10nFi();
    case 'fil':
      return AppL10nFil();
    case 'fr':
      return AppL10nFr();
    case 'he':
      return AppL10nHe();
    case 'hi':
      return AppL10nHi();
    case 'hu':
      return AppL10nHu();
    case 'id':
      return AppL10nId();
    case 'it':
      return AppL10nIt();
    case 'ja':
      return AppL10nJa();
    case 'ko':
      return AppL10nKo();
    case 'mr':
      return AppL10nMr();
    case 'ms':
      return AppL10nMs();
    case 'nb':
      return AppL10nNb();
    case 'nl':
      return AppL10nNl();
    case 'pa':
      return AppL10nPa();
    case 'pl':
      return AppL10nPl();
    case 'pt':
      return AppL10nPt();
    case 'ro':
      return AppL10nRo();
    case 'ru':
      return AppL10nRu();
    case 'sr':
      return AppL10nSr();
    case 'sv':
      return AppL10nSv();
    case 'sw':
      return AppL10nSw();
    case 'ta':
      return AppL10nTa();
    case 'te':
      return AppL10nTe();
    case 'th':
      return AppL10nTh();
    case 'tr':
      return AppL10nTr();
    case 'uk':
      return AppL10nUk();
    case 'ur':
      return AppL10nUr();
    case 'vi':
      return AppL10nVi();
    case 'zh':
      return AppL10nZh();
  }

  throw FlutterError(
    'AppL10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
