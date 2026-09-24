import 'package:intl/intl.dart';

/// Money and date formatting.
///
/// Everything takes an explicit [locale] so switching language in Settings
/// re-formats amounts and dates too, not just the labels.
class MoneyFormatter {
  const MoneyFormatter({required this.symbol, required this.locale, this.decimalDigits = 2});

  final String symbol;
  final String locale;
  final int decimalDigits;

  /// Uses FIRST-STRONG ISOLATE (\u2068...\u2069).
  ///
  /// Unlike \u2066 (which forces Left-to-Right), \u2068 inspects the string's
  /// first strong character to determine base directionality automatically,
  /// while keeping the entire amount visually glued together in surrounded text.
  static String _isolate(String value) => '\u2068$value\u2069';

  String _raw(double amount, bool decimals) {
    return NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimals ? decimalDigits : 0,
    ).format(amount);
  }

  /// `$12,480.50`
  String format(double amount, {bool decimals = true}) => _isolate(_raw(amount, decimals));

  /// `+$3,500.00` / `−$84.50`
  String formatSigned(double amount, {bool decimals = true}) {
    final sign = amount < 0 ? '−' : '+';
    // Wrapping sign and raw value inside LRM/RLM prevents bidi flip on sign
    return _isolate('$sign${_raw(amount.abs(), decimals)}');
  }

  /// `$12.5K` / `3.18K ر.س`
  String compact(double amount) {
    // 1. Format compact number without currency symbol first
    final compactNumber = NumberFormat.compact(locale: locale).format(amount);

    // 2. Format localized pattern using standard currency format layout logic
    final formatter = NumberFormat.currency(locale: locale, symbol: symbol, decimalDigits: 0);

    // Get a zero-value formatted string to inspect where the symbol goes in this locale
    // e.g., in 'ar': "0.00 ر.س", in 'en_US': "$0.00"
    final sample = formatter.format(0);
    final isSymbolAtEnd =
        sample.trim().endsWith(symbol) || sample.trim().endsWith(Bidi.stripHtmlIfNeeded(symbol));

    // Combine compact number and symbol honoring locale symbol position
    final formattedString = isSymbolAtEnd ? '$compactNumber$symbol' : '$symbol$compactNumber';

    return _isolate(formattedString);
  }

  /// `$420 / $600`
  String formatRatio(double value, double total) =>
      _isolate('${_raw(value, false)} /${_raw(total, false)}');
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
  String range(DateTime start, DateTime end) => '${short(start)} – ${short(end)}';

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
