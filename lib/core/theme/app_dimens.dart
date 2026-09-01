/// Spacing, radius and motion tokens.
///
/// A single 4pt scale keeps the layout rhythm predictable across every screen.
abstract final class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double section = 32;

  /// Horizontal page padding used by every scrollable screen.
  static const double page = 20;
}

abstract final class AppRadius {
  static const double sm = 10;
  static const double md = 14;
  static const double lg = 18;
  static const double xl = 24;
  static const double pill = 999;
}

abstract final class AppDuration {
  static const fast = Duration(milliseconds: 180);
  static const normal = Duration(milliseconds: 320);
  static const slow = Duration(milliseconds: 620);

  /// Delay between staggered entrance animations on a list of cards.
  static const stagger = Duration(milliseconds: 55);
}
