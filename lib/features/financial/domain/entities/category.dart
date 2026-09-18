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
  bool operator ==(Object other) =>
      identical(this, other) || (other is Category && other.id == id);

  @override
  int get hashCode => id.hashCode;
}
