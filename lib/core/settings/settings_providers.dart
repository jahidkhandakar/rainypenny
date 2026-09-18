import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/financial/domain/entities/salary_cycle.dart';
import '../localization/app_locales.dart';
import '../theme/app_accents.dart';
import 'settings_store.dart';
import 'world_currencies.dart';

export 'world_currencies.dart';

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

final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);

/// The accent colour the whole theme is built from.
///
/// Independent of [themeModeProvider] on purpose: light-or-dark and
/// which-colour are two separate decisions, and every accent is designed to
/// work in both.
class AccentNotifier extends Notifier<AccentPalette> {
  @override
  AccentPalette build() {
    return AppAccents.byId(
      ref.read(settingsStoreProvider).read(SettingsKeys.accent),
    );
  }

  void select(AccentPalette accent) {
    state = accent;
    ref.read(settingsStoreProvider).write(SettingsKeys.accent, accent.id);
  }
}

final accentProvider = NotifierProvider<AccentNotifier, AccentPalette>(
  AccentNotifier.new,
);

/// The chosen interface language.
///
/// Round-tripped through [AppLocales] rather than through [Locale] directly:
/// a bare language code loses the script, which is the only thing telling
/// Simplified and Traditional Chinese apart.
class LocaleNotifier extends Notifier<Locale> {
  @override
  Locale build() {
    final stored = ref.read(settingsStoreProvider).read(SettingsKeys.locale);
    return AppLocales.byCode(stored).locale;
  }

  void select(Locale locale) {
    state = locale;
    ref
        .read(settingsStoreProvider)
        .write(SettingsKeys.locale, AppLocales.byLocale(locale).code);
  }
}

final localeProvider = NotifierProvider<LocaleNotifier, Locale>(
  LocaleNotifier.new,
);

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

final currencyProvider = NotifierProvider<CurrencyNotifier, CurrencyOption>(
  CurrencyNotifier.new,
);

/// Whether the new-user setup flow has been completed.
///
/// The router reads this to decide whether a signed-in user lands on the
/// dashboard or on onboarding, so it has to be a listenable value rather than
/// a one-off read of the store.
class OnboardingNotifier extends Notifier<bool> {
  @override
  bool build() {
    return ref
        .read(settingsStoreProvider)
        .readFlag(SettingsKeys.onboardingComplete);
  }

  void complete() => _set(true);

  /// Sends the user back through setup from Settings.
  void reset() => _set(false);

  void _set(bool value) {
    state = value;
    ref
        .read(settingsStoreProvider)
        .writeFlag(SettingsKeys.onboardingComplete, value: value);
  }
}

final onboardingCompleteProvider = NotifierProvider<OnboardingNotifier, bool>(
  OnboardingNotifier.new,
);

/// Whether the beginner walkthrough has been seen.
///
/// Separate from onboarding: setup is a gate the user must pass through,
/// the walkthrough is an overlay they can dismiss at any point and replay
/// later from Settings.
class TutorialNotifier extends Notifier<bool> {
  @override
  bool build() {
    return ref
        .read(settingsStoreProvider)
        .readFlag(SettingsKeys.tutorialComplete);
  }

  void complete() => _set(true);

  void replay() => _set(false);

  void _set(bool value) {
    state = value;
    ref
        .read(settingsStoreProvider)
        .writeFlag(SettingsKeys.tutorialComplete, value: value);
  }
}

final tutorialCompleteProvider = NotifierProvider<TutorialNotifier, bool>(
  TutorialNotifier.new,
);

/// The name captured during onboarding.
///
/// Held here as well as on the profile record so the very first dashboard —
/// rendered before any network call returns — can greet the user by name.
class DisplayNameNotifier extends Notifier<String?> {
  @override
  String? build() {
    final stored = ref
        .read(settingsStoreProvider)
        .read(SettingsKeys.displayName);
    return (stored != null && stored.trim().isNotEmpty) ? stored : null;
  }

  void set(String name) {
    final trimmed = name.trim();
    state = trimmed.isEmpty ? null : trimmed;
    ref.read(settingsStoreProvider).write(SettingsKeys.displayName, trimmed);
  }
}

final displayNameProvider = NotifierProvider<DisplayNameNotifier, String?>(
  DisplayNameNotifier.new,
);

/// The day of the month the user's salary arrives.
///
/// This is the single most consequential setting in the app: it defines the
/// financial cycle, and therefore what "spent this month" and "remaining" mean
/// on every screen. Defaults to the 1st, which is what someone who has never
/// opened the setting would assume anyway.
class PaydayNotifier extends Notifier<int> {
  static const defaultPayday = 1;

  @override
  int build() {
    final stored = ref.read(settingsStoreProvider).read(SettingsKeys.payday);
    final parsed = int.tryParse(stored ?? '');
    return SalaryCycle.normalisePayday(parsed ?? defaultPayday);
  }

  void select(int day) {
    final normalised = SalaryCycle.normalisePayday(day);
    state = normalised;
    ref
        .read(settingsStoreProvider)
        .write(SettingsKeys.payday, '$normalised');
  }
}

final paydayProvider = NotifierProvider<PaydayNotifier, int>(
  PaydayNotifier.new,
);
