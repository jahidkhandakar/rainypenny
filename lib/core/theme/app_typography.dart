import 'package:flutter/material.dart';

/// Type scale for the app.
///
/// Financial figures use tabular (monospaced) digits so that columns of
/// numbers line up and don't jitter while animating.
abstract final class AppTypography {
  static const _tabular = <FontFeature>[FontFeature.tabularFigures()];

  /// Hero balance figure.
  static const display = TextStyle(
    fontSize: 34,
    height: 1.1,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.8,
    fontFeatures: _tabular,
  );

  /// Large in-card amounts (income/expense cards, totals).
  static const amountLarge = TextStyle(
    fontSize: 24,
    height: 1.15,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.4,
    fontFeatures: _tabular,
  );

  /// Row-level amounts.
  static const amountMedium = TextStyle(
    fontSize: 15,
    height: 1.2,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.1,
    fontFeatures: _tabular,
  );

  static const heading = TextStyle(
    fontSize: 22,
    height: 1.25,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.4,
  );

  static const sectionTitle = TextStyle(
    fontSize: 17,
    height: 1.3,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.2,
  );

  static const title = TextStyle(
    fontSize: 15.5,
    height: 1.3,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.1,
  );

  static const body = TextStyle(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const label = TextStyle(
    fontSize: 13,
    height: 1.3,
    fontWeight: FontWeight.w500,
  );

  static const caption = TextStyle(
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w500,
  );

  /// All-caps micro label used above hero figures and on section dividers.
  static const overline = TextStyle(
    fontSize: 11,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.1,
  );
}
