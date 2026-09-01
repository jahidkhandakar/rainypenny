import 'package:intl/intl.dart';

/// Money and date formatting.
///
/// Everything takes an explicit [locale] so switching language in Settings
/// re-formats amounts and dates too, not just the labels.
class MoneyFormatter {
  const MoneyFormatter({required this.symbol, required this.locale});

  final String symbol;
  final String locale;

  /// Wraps a monetary string in a bidirectional isolate.
  ///
  /// Without this, a figure like `−$84.50` dropped into an Arabic or Urdu
  /// layout has its sign re-ordered to the far side by the bidi algorithm.
  /// The isolate pins the whole amount as one left-to-right run wherever it
  /// appears, and is invisible in left-to-right locales.
  static String _isolate(String value) => '\u2066$value\u2069';

  String _raw(double amount, bool decimals) {
    return NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimals ? 2 : 0,
    ).format(amount);
  }

  /// `$12,480.50`
  String format(double amount, {bool decimals = true}) =>
      _isolate(_raw(amount, decimals));

  /// `+$3,500.00` / `−$84.50` — the sign carries the direction.
  String formatSigned(double amount, {bool decimals = true}) {
    final sign = amount < 0 ? '−' : '+';
    return _isolate('$sign${_raw(amount.abs(), decimals)}');
  }

  /// `$12.5K` — for chart axes and tight spaces.
  String compact(double amount) {
    return _isolate(
      NumberFormat.compactCurrency(
        locale: locale,
        symbol: symbol,
        decimalDigits: amount.abs() >= 10000 ? 1 : 0,
      ).format(amount),
    );
  }

  /// `$420 / $600`
  String formatRatio(double value, double total) => _isolate(
        '${_raw(value, false)} / ${_raw(total, false)}',
      );
}

/// `+8.4%` / `-4.2%`
String formatPercentChange(double fraction) {
  final percent = fraction * 100;
  final sign = percent < 0 ? '' : '+';
  return '$sign${percent.toStringAsFixed(1)}%';
}

String formatPercent(double fraction) => '${(fraction * 100).round()}%';

class DateFormatter {
  const DateFormatter(this.locale);

  final String locale;

  /// `Sep 1`
  String short(DateTime date) => DateFormat.MMMd(locale).format(date);

  /// `September 1, 2026`
  String long(DateTime date) => DateFormat.yMMMMd(locale).format(date);

  /// `Sep 2026`
  String monthYear(DateTime date) => DateFormat.yMMM(locale).format(date);

  /// `Monday`
  String weekday(DateTime date) => DateFormat.EEEE(locale).format(date);

  /// `Mon`
  String weekdayShort(DateTime date) => DateFormat.E(locale).format(date);

  /// `Aug 3 – Sep 1`
  String range(DateTime start, DateTime end) =>
      '${short(start)} – ${short(end)}';

  /// A day heading for grouped lists: Today / Yesterday / weekday / date.
  String dayHeading(
    DateTime date, {
    required DateTime now,
    required String todayLabel,
    required String yesterdayLabel,
  }) {
    final day = DateTime(date.year, date.month, date.day);
    final today = DateTime(now.year, now.month, now.day);
    final difference = today.difference(day).inDays;

    if (difference == 0) return todayLabel;
    if (difference == 1) return yesterdayLabel;
    if (difference < 7) return weekday(date);
    if (date.year == today.year) return DateFormat.MMMEd(locale).format(date);
    return DateFormat.yMMMd(locale).format(date);
  }
}
