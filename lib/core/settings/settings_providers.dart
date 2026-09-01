import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings_store.dart';

/// App-level preferences.
///
/// Each notifier reads its starting value from [settingsStoreProvider] and
/// writes back on every change, so a choice survives a restart. Swapping that
/// store for a Supabase-backed one later changes nothing above this file.

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    final stored = ref.read(settingsStoreProvider).read(SettingsKeys.themeMode);
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == stored,
      orElse: () => ThemeMode.light,
    );
  }

  void select(ThemeMode mode) {
    state = mode;
    ref.read(settingsStoreProvider).write(SettingsKeys.themeMode, mode.name);
  }

  void toggle() =>
      select(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
}

final themeModeProvider =
    NotifierProvider<ThemeModeNotifier, ThemeMode>(ThemeModeNotifier.new);

class LocaleNotifier extends Notifier<Locale> {
  @override
  Locale build() {
    final stored = ref.read(settingsStoreProvider).read(SettingsKeys.locale);
    return Locale(stored ?? 'en');
  }

  void select(Locale locale) {
    state = locale;
    ref
        .read(settingsStoreProvider)
        .write(SettingsKeys.locale, locale.languageCode);
  }
}

final localeProvider = NotifierProvider<LocaleNotifier, Locale>(
  LocaleNotifier.new,
);

/// Supported display currencies. Changing this only re-formats the figures —
/// no FX conversion is applied.
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

  static CurrencyOption byCode(String? code) => values.firstWhere(
        (option) => option.code == code,
        orElse: () => values.first,
      );
}

class CurrencyNotifier extends Notifier<CurrencyOption> {
  @override
  CurrencyOption build() {
    return Currencies.byCode(
      ref.read(settingsStoreProvider).read(SettingsKeys.currency),
    );
  }

  void select(CurrencyOption currency) {
    state = currency;
    ref.read(settingsStoreProvider).write(SettingsKeys.currency, currency.code);
  }
}

final currencyProvider =
    NotifierProvider<CurrencyNotifier, CurrencyOption>(CurrencyNotifier.new);
