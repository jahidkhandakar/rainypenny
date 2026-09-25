import 'package:rainypenny/core/localization/generated/app_localizations.dart';

/// Semantic icon key for a category.
///
/// The domain layer stays free of Flutter types — the presentation layer maps
/// each key onto a concrete `IconData`.
enum CategoryIcon {
  housing,
  food,
  transport,
  shopping,
  bills,
  entertainment,
  health,
  education,
  travel,
  salary,
  freelance,
  investment,
  gift,
  groceries,
  dining,
  coffee,
  utilities,
  internet,
  phone,
  insurance,
  subscriptions,
  personalCare,
  clothing,
  electronics,
  homeSupplies,
  pets,
  childcare,
  family,
  fitness,
  sports,
  medicine,
  medical,
  charity,
  taxes,
  fees,
  debt,
  savings,
  repairs,
  carMaintenance,
  fuel,
  parking,
  publicTransport,
  rent,
  mortgage,
  bonus,
  commission,
  pension,
  interest,
  dividends,
  cashback,
  refund,
  rentalIncome,
  other,
}

/// A spending or income category.
class Category {
  const Category({
    required this.id,
    required this.name,
    required this.icon,
    this.isIncome = false,
    this.isCustom = false,
  });

  final String id;
  final String name;
  final CategoryIcon icon;
  final bool isIncome;

  /// True for a category the user created themselves.
  ///
  /// The seeded set is shared by every user and is referenced by the demo data,
  /// so only custom categories may be renamed or removed — the flag is what
  /// lets the manage screen say so rather than failing at the database.
  final bool isCustom;

  Category copyWith({
    String? id,
    String? name,
    CategoryIcon? icon,
    bool? isIncome,
    bool? isCustom,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      isIncome: isIncome ?? this.isIncome,
      isCustom: isCustom ?? this.isCustom,
    );
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is Category && other.id == id);

  @override
  int get hashCode => id.hashCode;
}

extension CategoryL10n on Category {
  String localizedName(AppL10n l10n) {
    if (isCustom) return name;

    return switch (id) {
      'groceries' => l10n.categoryGroceries,
      'food' => l10n.categoryFood,
      'transport' => l10n.categoryTransport,
      'housing' => l10n.categoryHousing,
      'utilities' => l10n.categoryUtilities,
      'entertainment' => l10n.categoryEntertainment,
      'health' => l10n.categoryHealth,
      'shopping' => l10n.categoryShopping,
      'personal_care' => l10n.categoryPersonalCare,
      'education' => l10n.categoryEducation,
      'salary' => l10n.categorySalary,
      'investments' => l10n.categoryInvestments,
      'bills' => l10n.categoryBills,
      'travel' => l10n.categoryTravel,
      'other' => l10n.categoryOther,
      'freelance' => l10n.categoryFreelance,
      'refunds' => l10n.categoryRefund,
      // Fallback to the default name if ID is not recognized
      _ => name,
    };
  }
}
