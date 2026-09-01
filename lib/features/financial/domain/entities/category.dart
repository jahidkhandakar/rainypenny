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
  });

  final String id;
  final String name;
  final CategoryIcon icon;
  final bool isIncome;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Category && other.id == id);

  @override
  int get hashCode => id.hashCode;
}
