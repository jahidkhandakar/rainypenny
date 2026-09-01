import 'package:flutter/material.dart';

import '../../features/financial/domain/entities/category.dart';
import '../../features/financial/domain/entities/insight.dart';
import '../theme/app_colors.dart';

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
Color chartColorForCategory(String categoryId, int index) {
  const byId = <String, Color>{
    'food': AppColors.primaryDark,
    'housing': AppColors.primary,
    'transport': AppColors.primaryLight,
    'shopping': AppColors.accent,
    'bills': AppColors.chartSlate,
  };
  return byId[categoryId] ??
      AppColors.chartSeries[index % AppColors.chartSeries.length];
}
