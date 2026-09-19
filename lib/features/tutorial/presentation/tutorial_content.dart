import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/localization/generated/app_localizations.dart';
import '../../../core/routing/app_routes.dart';

/// One chapter of the beginner's guide.
class TutorialChapter {
  const TutorialChapter({
    required this.icon,
    required this.title,
    required this.body,
    required this.tips,
    this.destination,
    this.destinationLabel,
  });

  final IconData icon;
  final String title;
  final String body;

  /// Two or three concrete things the reader can do, phrased as actions.
  final List<String> tips;

  /// Where the chapter is about. Offering it as a link is the difference
  /// between a guide someone reads and one they use — but it is optional,
  /// because the last chapter is about the app as a whole.
  final String? destination;
  final String? destinationLabel;
}

/// The guide, in the order a new user meets the app.
///
/// Written as content rather than as a coach-mark tour over the live UI.
/// Spotlight overlays have to know where a widget physically is, which stops
/// being true the moment the layout reflows — and this app reflows for forty
/// languages, two text directions and every phone size there is. A chaptered
/// guide says the same things and cannot land its cutout on the wrong widget.
List<TutorialChapter> tutorialChapters(AppL10n l10n) => [
  TutorialChapter(
    icon: Icons.dashboard_rounded,
    title: l10n.guideDashboardTitle,
    body: l10n.guideDashboardBody,
    tips: [l10n.guideDashboardTip1, l10n.guideDashboardTip2, l10n.guideDashboardTip3],
    destination: AppRoutes.home,
    destinationLabel: l10n.navHome,
  ),
  TutorialChapter(
    icon: Icons.add_circle_rounded,
    title: l10n.guideAddTitle,
    body: l10n.guideAddBody,
    tips: [l10n.guideAddTip1, l10n.guideAddTip2, l10n.guideAddTip3],
    destination: AppRoutes.addTransaction,
    destinationLabel: l10n.addTransaction,
  ),
  TutorialChapter(
    icon: Icons.category_rounded,
    title: l10n.guideCategoriesTitle,
    body: l10n.guideCategoriesBody,
    tips: [l10n.guideCategoriesTip1, l10n.guideCategoriesTip2],
    destination: AppRoutes.categories,
    destinationLabel: l10n.manageCategories,
  ),
  TutorialChapter(
    icon: CupertinoIcons.chart_pie_fill,
    title: l10n.guideBudgetTitle,
    body: l10n.guideBudgetBody,
    tips: [l10n.guideBudgetTip1, l10n.guideBudgetTip2, l10n.guideBudgetTip3],
    destination: AppRoutes.budget,
    destinationLabel: l10n.budget,
  ),
  TutorialChapter(
    icon: Icons.savings_rounded,
    title: l10n.guideSavingsTitle,
    body: l10n.guideSavingsBody,
    tips: [l10n.guideSavingsTip1, l10n.guideSavingsTip2],
    destination: AppRoutes.savings,
    destinationLabel: l10n.savings,
  ),
  TutorialChapter(
    icon: Icons.account_balance_rounded,
    title: l10n.guideLoansTitle,
    body: l10n.guideLoansBody,
    tips: [l10n.guideLoansTip1, l10n.guideLoansTip2],
    destination: AppRoutes.loans,
    destinationLabel: l10n.loansAndDebts,
  ),
  TutorialChapter(
    icon: CupertinoIcons.chart_bar_fill,
    title: l10n.guideReportsTitle,
    body: l10n.guideReportsBody,
    tips: [l10n.guideReportsTip1, l10n.guideReportsTip2],
    destination: AppRoutes.reports,
    destinationLabel: l10n.navReports,
  ),
  TutorialChapter(
    icon: CupertinoIcons.slider_horizontal_3,
    title: l10n.guideSettingsTitle,
    body: l10n.guideSettingsBody,
    tips: [l10n.guideSettingsTip1, l10n.guideSettingsTip2, l10n.guideSettingsTip3],
    destination: AppRoutes.settings,
    destinationLabel: l10n.settings,
  ),
  TutorialChapter(
    icon: Icons.emoji_events_rounded,
    title: l10n.guideHabitTitle,
    body: l10n.guideHabitBody,
    tips: [l10n.guideHabitTip1, l10n.guideHabitTip2, l10n.guideHabitTip3],
  ),
];
