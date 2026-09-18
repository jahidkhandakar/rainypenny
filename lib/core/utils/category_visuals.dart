import 'package:flutter/material.dart';

import '../../features/financial/domain/entities/category.dart';
import '../../features/financial/domain/entities/insight.dart';
import '../localization/generated/app_localizations.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';

/// The name to show for a category, in the active language.
///
/// The seeded categories are shared by every account and stored with an English
/// name, because a database row cannot be in forty languages at once. Their ids
/// are stable, so the id is what gets translated and the stored name is only a
/// fallback. A category the user created themselves is shown exactly as they
/// typed it — translating someone's own words would be wrong.
String categoryDisplayName(Category category, AppL10n l10n) {
  if (category.isCustom) return category.name;

  return switch (category.id) {
    'housing' => l10n.categoryHousing,
    'food' => l10n.categoryFood,
    'transport' => l10n.categoryTransport,
    'shopping' => l10n.categoryShopping,
    'bills' => l10n.categoryBills,
    'entertainment' => l10n.categoryEntertainment,
    'health' => l10n.categoryHealth,
    'education' => l10n.categoryEducation,
    'travel' => l10n.categoryTravel,
    'other' => l10n.categoryOther,
    'salary' => l10n.categorySalary,
    'freelance' => l10n.categoryFreelance,
    'investments' => l10n.categoryInvestments,
    'refunds' => l10n.categoryRefunds,
    // A seeded category this build does not know about: the stored name is
    // better than nothing, and better than an empty row.
    _ => category.name,
  };
}

/// Maps domain enums onto Material icons.
///
/// The domain layer stays Flutter-free; this is the single place where a
/// semantic key becomes a glyph.
IconData iconForCategory(CategoryIcon icon) {
  return switch (icon) {
    CategoryIcon.housing => Icons.home_rounded,
    CategoryIcon.food => Icons.restaurant_rounded,
    CategoryIcon.transport => Icons.directions_car_filled_rounded,
    CategoryIcon.shopping => Icons.shopping_bag_rounded,
    CategoryIcon.bills => Icons.receipt_long_rounded,
    CategoryIcon.entertainment => Icons.movie_rounded,
    CategoryIcon.health => Icons.favorite_rounded,
    CategoryIcon.education => Icons.school_rounded,
    CategoryIcon.travel => Icons.flight_takeoff_rounded,
    CategoryIcon.salary => Icons.work_rounded,
    CategoryIcon.freelance => Icons.laptop_mac_rounded,
    CategoryIcon.investment => Icons.trending_up_rounded,
    CategoryIcon.gift => Icons.card_giftcard_rounded,
    CategoryIcon.other => Icons.more_horiz_rounded,
  };
}

/// A stable colour per category.
///
/// Derived from the icon rather than the id, so a user-created "Pet care" filed
/// under the health icon picks up the same colour as health does — the grid
/// stays coherent however many custom categories are added, and nothing has to
/// be stored alongside the category to make it so.
///
/// These are fixed hues rather than theme tokens on purpose: a category's
/// colour is an identity, and it should not change when the accent does.
Color categoryColor(BuildContext context, Category category) {
  final base = switch (category.icon) {
    CategoryIcon.housing => const Color(0xFF5B6BC0),
    CategoryIcon.food => const Color(0xFFE07A3F),
    CategoryIcon.transport => const Color(0xFF3F8FD0),
    CategoryIcon.shopping => const Color(0xFFC2549D),
    CategoryIcon.bills => const Color(0xFF6E7B8B),
    CategoryIcon.entertainment => const Color(0xFF8B5FC9),
    CategoryIcon.health => const Color(0xFFD9534F),
    CategoryIcon.education => const Color(0xFF2FA3A0),
    CategoryIcon.travel => const Color(0xFF3FA796),
    CategoryIcon.salary => const Color(0xFF2E9E6B),
    CategoryIcon.freelance => const Color(0xFF4A9D5F),
    CategoryIcon.investment => const Color(0xFF7A9E3F),
    CategoryIcon.gift => const Color(0xFFD4874E),
    CategoryIcon.other => const Color(0xFF7C8794),
  };

  // The palette is tuned for light surfaces; on dark ones it needs lifting or
  // the deeper hues disappear into the card behind them.
  return Theme.of(context).brightness == Brightness.dark
      ? Color.lerp(base, Colors.white, 0.26)!
      : base;
}

IconData iconForInsight(InsightLevel level) {
  return switch (level) {
    InsightLevel.positive => Icons.check_circle_rounded,
    InsightLevel.informative => Icons.lightbulb_rounded,
    InsightLevel.warning => Icons.warning_amber_rounded,
    InsightLevel.critical => Icons.error_rounded,
  };
}

Color colorForInsight(InsightLevel level) {
  return switch (level) {
    InsightLevel.positive => AppColors.success,
    InsightLevel.informative => AppColors.primary,
    InsightLevel.warning => AppColors.warning,
    InsightLevel.critical => AppColors.error,
  };
}

/// Stable chart colour for a category, so the same category keeps the same
/// colour across the donut, the legend and the budget bars.
Color chartColorForCategory(
  BuildContext context,
  String categoryId,
  int index,
) {
  final byId = <String, Color>{
    'food': context.accentDark,
    'housing': context.accent,
    'transport': context.accentLight,
    'shopping': context.brandSecondary,
    'bills': context.chartSlateColor,
  };
  final series = context.chartSeries;
  return byId[categoryId] ?? series[index % series.length];
}
