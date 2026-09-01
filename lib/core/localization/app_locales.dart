import 'package:flutter/widgets.dart';

/// A language the app ships with, together with how it is presented in the
/// language picker.
class AppLocale {
  const AppLocale({
    required this.locale,
    required this.englishName,
    required this.nativeName,
  });

  final Locale locale;
  final String englishName;
  final String nativeName;

  bool get isRtl => _rtlLanguages.contains(locale.languageCode);

  static const _rtlLanguages = {'ar', 'ur', 'fa', 'he'};
}

/// The ten launch languages. Arabic and Urdu drive the RTL layout, which the
/// app adapts to automatically rather than through separate screens.
abstract final class AppLocales {
  static const values = <AppLocale>[
    AppLocale(locale: Locale('en'), englishName: 'English', nativeName: 'English'),
    AppLocale(locale: Locale('ar'), englishName: 'Arabic', nativeName: 'العربية'),
    AppLocale(locale: Locale('fr'), englishName: 'French', nativeName: 'Français'),
    AppLocale(locale: Locale('es'), englishName: 'Spanish', nativeName: 'Español'),
    AppLocale(locale: Locale('de'), englishName: 'German', nativeName: 'Deutsch'),
    AppLocale(locale: Locale('tr'), englishName: 'Turkish', nativeName: 'Türkçe'),
    AppLocale(locale: Locale('pt'), englishName: 'Portuguese', nativeName: 'Português'),
    AppLocale(locale: Locale('it'), englishName: 'Italian', nativeName: 'Italiano'),
    AppLocale(locale: Locale('hi'), englishName: 'Hindi', nativeName: 'हिन्दी'),
    AppLocale(locale: Locale('ur'), englishName: 'Urdu', nativeName: 'اردو'),
  ];

  static AppLocale byCode(String code) => values.firstWhere(
        (l) => l.locale.languageCode == code,
        orElse: () => values.first,
      );
}
