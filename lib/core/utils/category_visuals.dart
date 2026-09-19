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
    CategoryIcon.groceries => Icons.local_grocery_store_rounded,
    CategoryIcon.dining => Icons.restaurant_menu_rounded,
    CategoryIcon.coffee => Icons.local_cafe_rounded,
    CategoryIcon.utilities => Icons.bolt_rounded,
    CategoryIcon.internet => Icons.wifi_rounded,
    CategoryIcon.phone => Icons.phone_rounded,
    CategoryIcon.insurance => Icons.shield_rounded,
    CategoryIcon.subscriptions => Icons.autorenew_rounded,
    CategoryIcon.personalCare => Icons.spa_rounded,
    CategoryIcon.clothing => Icons.checkroom_rounded,
    CategoryIcon.electronics => Icons.devices_rounded,
    CategoryIcon.homeSupplies => Icons.cleaning_services_rounded,
    CategoryIcon.pets => Icons.pets_rounded,
    CategoryIcon.childcare => Icons.child_care_rounded,
    CategoryIcon.family => Icons.family_restroom_rounded,
    CategoryIcon.fitness => Icons.fitness_center_rounded,
    CategoryIcon.sports => Icons.sports_soccer_rounded,
    CategoryIcon.medicine => Icons.medication_rounded,
    CategoryIcon.medical => Icons.local_hospital_rounded,
    CategoryIcon.charity => Icons.volunteer_activism_rounded,
    CategoryIcon.taxes => Icons.account_balance_rounded,
    CategoryIcon.fees => Icons.percent_rounded,
    CategoryIcon.debt => Icons.credit_card_rounded,
    CategoryIcon.savings => Icons.savings_rounded,
    CategoryIcon.repairs => Icons.build_rounded,
    CategoryIcon.carMaintenance => Icons.car_repair_rounded,
    CategoryIcon.fuel => Icons.local_gas_station_rounded,
    CategoryIcon.parking => Icons.local_parking_rounded,
    CategoryIcon.publicTransport => Icons.directions_bus_rounded,
    CategoryIcon.rent => Icons.house_rounded,
    CategoryIcon.mortgage => Icons.real_estate_agent_rounded,
    CategoryIcon.bonus => Icons.card_giftcard_rounded,
    CategoryIcon.commission => Icons.percent_rounded,
    CategoryIcon.pension => Icons.elderly_rounded,
    CategoryIcon.interest => Icons.savings_rounded,
    CategoryIcon.dividends => Icons.payments_rounded,
    CategoryIcon.cashback => Icons.currency_exchange_rounded,
    CategoryIcon.refund => Icons.undo_rounded,
    CategoryIcon.rentalIncome => Icons.home_work_rounded,
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
Color chartColorForCategory(BuildContext context, String categoryId, int index) {
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
