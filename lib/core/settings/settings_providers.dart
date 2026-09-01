import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// App-level preferences.
///
/// Held in memory for the prototype; the same notifiers will later read and
/// write through a `SettingsRepository` backed by shared preferences and the
/// Supabase `profiles` row.

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.light;

  void select(ThemeMode mode) => state = mode;

  void toggle() => state =
      state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
}

final themeModeProvider =
    NotifierProvider<ThemeModeNotifier, ThemeMode>(ThemeModeNotifier.new);

class LocaleNotifier extends Notifier<Locale> {
  @override
  Locale build() => const Locale('en');

  void select(Locale locale) => state = locale;
}

final localeProvider = NotifierProvider<LocaleNotifier, Locale>(
  LocaleNotifier.new,
);

/// Supported display currencies. Changing this only re-formats the demo
/// figures — no FX conversion is applied.
class CurrencyOption {
  const CurrencyOption(this.code, this.symbol, this.name);

  final String code;
  final String symbol;
  final String name;
}

abstract final class Currencies {
  static const values = <CurrencyOption>[
    CurrencyOption('USD', '\$', 'US Dollar'),
    CurrencyOption('EUR', '€', 'Euro'),
    CurrencyOption('GBP', '£', 'British Pound'),
    CurrencyOption('AED', 'د.إ', 'UAE Dirham'),
    CurrencyOption('INR', '₹', 'Indian Rupee'),
    CurrencyOption('TRY', '₺', 'Turkish Lira'),
  ];
}

class CurrencyNotifier extends Notifier<CurrencyOption> {
  @override
  CurrencyOption build() => Currencies.values.first;

  void select(CurrencyOption currency) => state = currency;
}

final currencyProvider =
    NotifierProvider<CurrencyNotifier, CurrencyOption>(CurrencyNotifier.new);
