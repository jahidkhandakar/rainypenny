import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/settings_providers.dart';
import 'formatters.dart';

/// Formatters bound to the active locale and currency, so a change in Settings
/// reformats every figure in the app.
final moneyFormatterProvider = Provider<MoneyFormatter>((ref) {
  final currency = ref.watch(currencyProvider);
  final locale = ref.watch(localeProvider);
  return MoneyFormatter(
    symbol: currency.symbol,
    locale: locale.toLanguageTag(),
  );
});

final dateFormatterProvider = Provider<DateFormatter>((ref) {
  return DateFormatter(ref.watch(localeProvider).toLanguageTag());
});
