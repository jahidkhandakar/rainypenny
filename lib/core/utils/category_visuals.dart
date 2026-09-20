import 'package:flutter/cupertino.dart';
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
    'salary' => l10n.categorySalary,
    'freelance' => l10n.categoryFreelance,
    'investments' => l10n.categoryInvestments,
    'gift' => l10n.categoryGift,
    'other' => l10n.categoryOther,
    'groceries' => l10n.categoryGroceries,
    'dining' => l10n.categoryDining,
    'coffee' => l10n.categoryCoffee,
    'utilities' => l10n.categoryUtilities,
    'internet' => l10n.categoryInternet,
    'phone' => l10n.categoryPhone,
    'insurance' => l10n.categoryInsurance,
    'subscriptions' => l10n.categorySubscriptions,
    'personal_care' => l10n.categoryPersonalCare,
    'clothing' => l10n.categoryClothing,
    'electronics' => l10n.categoryElectronics,
    'home_supplies' => l10n.categoryHomeSupplies,
    'pets' => l10n.categoryPets,
    'childcare' => l10n.categoryChildcare,
    'family' => l10n.categoryFamily,
    'fitness' => l10n.categoryFitness,
    'sports' => l10n.categorySports,
    'medicine' => l10n.categoryMedicine,
    'medical' => l10n.categoryMedical,
    'charity' => l10n.categoryCharity,
    'taxes' => l10n.categoryTaxes,
    'fees' => l10n.categoryFees,
    'debt' => l10n.categoryDebt,
    'savings' => l10n.categorySavings,
    'repairs' => l10n.categoryRepairs,
    'car_maintenance' => l10n.categoryCarMaintenance,
    'fuel' => l10n.categoryFuel,
    'parking' => l10n.categoryParking,
    'public_transport' => l10n.categoryPublicTransport,
    'rent' => l10n.categoryRent,
    'mortgage' => l10n.categoryMortgage,
    'bonus' => l10n.categoryBonus,
    'commission' => l10n.categoryCommission,
    'pension' => l10n.categoryPension,
    'interest' => l10n.categoryInterest,
    'dividends' => l10n.categoryDividends,
    'cashback' => l10n.categoryCashback,
    'refunds' => l10n.categoryRefund,
    'rental_income' => l10n.categoryRentalIncome,
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
    CategoryIcon.housing => CupertinoIcons.house_fill,
    CategoryIcon.food => Icons.restaurant_rounded,
    CategoryIcon.transport => CupertinoIcons.car_fill,
    CategoryIcon.shopping => CupertinoIcons.bag_fill,
    CategoryIcon.bills => CupertinoIcons.doc_text_fill,
    CategoryIcon.entertainment => CupertinoIcons.film_fill,
    CategoryIcon.health => CupertinoIcons.heart_fill,
    CategoryIcon.education => CupertinoIcons.book_fill,
    CategoryIcon.travel => CupertinoIcons.airplane,
    CategoryIcon.salary => CupertinoIcons.briefcase_fill,
    CategoryIcon.freelance => CupertinoIcons.desktopcomputer,
    CategoryIcon.investment => CupertinoIcons.graph_square_fill,
    CategoryIcon.gift => CupertinoIcons.gift_fill,
    CategoryIcon.groceries => CupertinoIcons.cart_fill,
    CategoryIcon.dining => CupertinoIcons.alt,
    CategoryIcon.coffee => CupertinoIcons.double_music_note,
    CategoryIcon.utilities => CupertinoIcons.bolt_fill,
    CategoryIcon.internet => CupertinoIcons.wifi,
    CategoryIcon.phone => CupertinoIcons.phone_fill,
    CategoryIcon.insurance => CupertinoIcons.shield_fill,
    CategoryIcon.subscriptions => CupertinoIcons.repeat,
    CategoryIcon.personalCare => CupertinoIcons.sparkles,
    CategoryIcon.clothing => CupertinoIcons.tag_fill,
    CategoryIcon.electronics => CupertinoIcons.device_desktop,
    CategoryIcon.homeSupplies => CupertinoIcons.wrench_fill,
    CategoryIcon.pets => CupertinoIcons.paw_solid,
    CategoryIcon.childcare => CupertinoIcons.person_2_fill,
    CategoryIcon.family => CupertinoIcons.group_solid,
    CategoryIcon.fitness => CupertinoIcons.flame_fill,
    CategoryIcon.sports => CupertinoIcons.sportscourt_fill,
    CategoryIcon.medicine => CupertinoIcons.bandage_fill,
    CategoryIcon.medical => CupertinoIcons.plus_app,
    CategoryIcon.charity => CupertinoIcons.heart_circle_fill,
    CategoryIcon.taxes => CupertinoIcons.money_dollar_circle_fill,
    CategoryIcon.fees => CupertinoIcons.percent,
    CategoryIcon.debt => CupertinoIcons.creditcard_fill,
    CategoryIcon.savings => CupertinoIcons.money_dollar_circle_fill,
    CategoryIcon.repairs => CupertinoIcons.hammer_fill,
    CategoryIcon.carMaintenance => CupertinoIcons.wrench_fill,
    CategoryIcon.fuel => CupertinoIcons.drop_fill,
    CategoryIcon.parking => CupertinoIcons.square_fill_on_square_fill,
    CategoryIcon.publicTransport => CupertinoIcons.bus,
    CategoryIcon.rent => CupertinoIcons.house_fill,
    CategoryIcon.mortgage => CupertinoIcons.building_2_fill,
    CategoryIcon.bonus => CupertinoIcons.gift_fill,
    CategoryIcon.commission => CupertinoIcons.percent,
    CategoryIcon.pension => CupertinoIcons.person_crop_circle_fill,
    CategoryIcon.interest => CupertinoIcons.money_dollar_circle_fill,
    CategoryIcon.dividends => CupertinoIcons.money_dollar_circle,
    CategoryIcon.cashback => CupertinoIcons.arrow_counterclockwise_circle_fill,
    CategoryIcon.refund => CupertinoIcons.arrow_uturn_left,
    CategoryIcon.rentalIncome => CupertinoIcons.house_alt_fill,
    CategoryIcon.other => CupertinoIcons.ellipsis,
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
    CategoryIcon.groceries => const Color(0xFF7FAF45),
    CategoryIcon.dining => const Color(0xFFE07A3F),
    CategoryIcon.coffee => const Color(0xFF9A6A4A),
    CategoryIcon.transport => const Color(0xFF3F8FD0),
    CategoryIcon.publicTransport => const Color(0xFF3F8FD0),
    CategoryIcon.fuel => const Color(0xFFD28A3E),
    CategoryIcon.parking => const Color(0xFF607D9B),
    CategoryIcon.carMaintenance => const Color(0xFF65758B),
    CategoryIcon.shopping => const Color(0xFFC2549D),
    CategoryIcon.clothing => const Color(0xFFB65A9A),
    CategoryIcon.electronics => const Color(0xFF6A70C7),
    CategoryIcon.homeSupplies => const Color(0xFF8A6FB5),
    CategoryIcon.bills => const Color(0xFF6E7B8B),
    CategoryIcon.utilities => const Color(0xFFE0A33A),
    CategoryIcon.internet => const Color(0xFF4B86C5),
    CategoryIcon.phone => const Color(0xFF4C9AA0),
    CategoryIcon.insurance => const Color(0xFF6575A8),
    CategoryIcon.subscriptions => const Color(0xFF8667B7),
    CategoryIcon.taxes => const Color(0xFF6F7882),
    CategoryIcon.fees => const Color(0xFF7C8794),
    CategoryIcon.debt => const Color(0xFFC45B5B),
    CategoryIcon.entertainment => const Color(0xFF8B5FC9),
    CategoryIcon.health => const Color(0xFFD9534F),
    CategoryIcon.medicine => const Color(0xFFD9534F),
    CategoryIcon.medical => const Color(0xFFC94F68),
    CategoryIcon.fitness => const Color(0xFF3D9B76),
    CategoryIcon.sports => const Color(0xFF4A8F5C),
    CategoryIcon.education => const Color(0xFF2FA3A0),
    CategoryIcon.travel => const Color(0xFF3FA796),
    CategoryIcon.personalCare => const Color(0xFFC47791),
    CategoryIcon.pets => const Color(0xFFB27A4B),
    CategoryIcon.childcare => const Color(0xFFCF7E9D),
    CategoryIcon.family => const Color(0xFF8A73B5),
    CategoryIcon.charity => const Color(0xFF4C9B7A),
    CategoryIcon.repairs => const Color(0xFF777F87),
    CategoryIcon.rent => const Color(0xFF5B6BC0),
    CategoryIcon.mortgage => const Color(0xFF53679A),
    CategoryIcon.savings => const Color(0xFF3C9B70),
    CategoryIcon.salary => const Color(0xFF2E9E6B),
    CategoryIcon.freelance => const Color(0xFF4A9D5F),
    CategoryIcon.bonus => const Color(0xFF4EAA72),
    CategoryIcon.commission => const Color(0xFF5A9E68),
    CategoryIcon.investment => const Color(0xFF7A9E3F),
    CategoryIcon.interest => const Color(0xFF6F9D4A),
    CategoryIcon.dividends => const Color(0xFF558F55),
    CategoryIcon.cashback => const Color(0xFF3D9E88),
    CategoryIcon.rentalIncome => const Color(0xFF6678B5),
    CategoryIcon.pension => const Color(0xFF4A9D5F),
    CategoryIcon.refund => const Color(0xFF777F87),
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
    InsightLevel.positive => CupertinoIcons.checkmark_circle_fill,
    InsightLevel.informative => CupertinoIcons.lightbulb,
    InsightLevel.warning => CupertinoIcons.exclamationmark_triangle_fill,
    InsightLevel.critical => CupertinoIcons.exclamationmark_circle_fill,
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
Color chartColorForCategory(BuildContext context, String categoryId, int index) {
  // Map category IDs to their corresponding domain enum
  final icon = switch (categoryId) {
    'housing' || 'rent' => CategoryIcon.housing,
    'mortgage' => CategoryIcon.mortgage,
    'food' || 'dining' => CategoryIcon.food,
    'groceries' => CategoryIcon.groceries,
    'coffee' => CategoryIcon.coffee,
    'transport' || 'public_transport' => CategoryIcon.transport,
    'fuel' => CategoryIcon.fuel,
    'parking' => CategoryIcon.parking,
    'car_maintenance' => CategoryIcon.carMaintenance,
    'shopping' => CategoryIcon.shopping,
    'clothing' => CategoryIcon.clothing,
    'electronics' => CategoryIcon.electronics,
    'home_supplies' => CategoryIcon.homeSupplies,
    'bills' => CategoryIcon.bills,
    'utilities' => CategoryIcon.utilities,
    'internet' => CategoryIcon.internet,
    'phone' => CategoryIcon.phone,
    'insurance' => CategoryIcon.insurance,
    'subscriptions' => CategoryIcon.subscriptions,
    'taxes' => CategoryIcon.taxes,
    'fees' => CategoryIcon.fees,
    'debt' => CategoryIcon.debt,
    'entertainment' => CategoryIcon.entertainment,
    'health' || 'medicine' => CategoryIcon.health,
    'medical' => CategoryIcon.medical,
    'fitness' => CategoryIcon.fitness,
    'sports' => CategoryIcon.sports,
    'education' => CategoryIcon.education,
    'travel' => CategoryIcon.travel,
    'personal_care' => CategoryIcon.personalCare,
    'pets' => CategoryIcon.pets,
    'childcare' => CategoryIcon.childcare,
    'family' => CategoryIcon.family,
    'charity' => CategoryIcon.charity,
    'repairs' => CategoryIcon.repairs,
    'savings' => CategoryIcon.savings,
    'salary' => CategoryIcon.salary,
    'freelance' => CategoryIcon.freelance,
    'bonus' => CategoryIcon.bonus,
    'commission' => CategoryIcon.commission,
    'investments' => CategoryIcon.investment,
    'interest' => CategoryIcon.interest,
    'dividends' => CategoryIcon.dividends,
    'cashback' => CategoryIcon.cashback,
    'rental_income' => CategoryIcon.rentalIncome,
    'pension' => CategoryIcon.pension,
    'refunds' => CategoryIcon.refund,
    'gift' => CategoryIcon.gift,
    _ => null,
  };

  // If matched to a seeded category, delegate directly to categoryColor
  if (icon != null) {
    return categoryColor(
      context,
      Category(
        id: categoryId,
        name: '', // Name is not used by categoryColor
        icon: icon,
      ),
    );
  }

  // Fallback for custom or unknown categories: use chart series theme
  final series = context.chartSeries;
  if (series.isNotEmpty) {
    return series[index % series.length];
  }

  return AppColors.chartNeutral;
}
