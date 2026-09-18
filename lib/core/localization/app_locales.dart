import 'package:flutter/widgets.dart';

/// A language the app ships with, together with how it is presented in the
/// language picker.
class AppLocale {
  const AppLocale({
    required this.locale,
    required this.englishName,
    required this.nativeName,
    this.regionHint,
  });

  final Locale locale;

  /// Name in English, so a picker can be searched by someone who does not
  /// read the script the language is written in.
  final String englishName;

  /// Name in the language itself. This is what the row leads with: a reader
  /// looking for their own language scans for `हिन्दी`, not for `Hindi`.
  final String nativeName;

  /// Disambiguates the two written forms of Chinese, which share a language
  /// code and would otherwise be two identical-looking rows.
  final String? regionHint;

  bool get isRtl => _rtlLanguages.contains(locale.languageCode);

  /// The key the picker stores and restores. Carries the script where there
  /// is one, so Traditional Chinese survives a restart as itself.
  String get code => locale.scriptCode == null
      ? locale.languageCode
      : '${locale.languageCode}_${locale.scriptCode}';

  /// Matched against the search box: native name, English name and code
  /// together, so `german`, `deutsch` and `de` all find the same row.
  String get searchIndex =>
      '$nativeName $englishName $code ${regionHint ?? ''}'.toLowerCase();

  /// Arabic, Urdu, Persian and Hebrew. The app mirrors its whole layout for
  /// these rather than shipping separate screens.
  static const _rtlLanguages = {'ar', 'ur', 'fa', 'he'};
}

/// Every language RainyPenny ships with.
///
/// Ordered by how many people can read it, not alphabetically: the picker is
/// long enough that the first screenful should cover most users, and search
/// handles the rest.
///
/// Every entry here must also be supported by `flutter_localizations` —
/// Material's own strings (date pickers, the text-selection menu, semantics
/// labels) come from there, and a locale it does not know throws on startup
/// rather than falling back.
abstract final class AppLocales {
  static const values = <AppLocale>[
    AppLocale(
      locale: Locale('en'),
      englishName: 'English',
      nativeName: 'English',
    ),
    // Simplified is the bare 'zh': Flutter's generator requires a base locale
    // as the fallback for any scripted one, and CLDR already treats plain
    // Chinese as Simplified. Writing it as zh_Hans as well would mean
    // maintaining the same 486 strings in two identical files.
    AppLocale(
      locale: Locale('zh'),
      englishName: 'Chinese (Simplified)',
      nativeName: '简体中文',
      regionHint: 'Simplified Hans',
    ),
    AppLocale(
      locale: Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
      englishName: 'Chinese (Traditional)',
      nativeName: '繁體中文',
      regionHint: 'Traditional',
    ),
    AppLocale(locale: Locale('hi'), englishName: 'Hindi', nativeName: 'हिन्दी'),
    AppLocale(
      locale: Locale('es'),
      englishName: 'Spanish',
      nativeName: 'Español',
    ),
    AppLocale(
      locale: Locale('ar'),
      englishName: 'Arabic',
      nativeName: 'العربية',
    ),
    AppLocale(
      locale: Locale('fr'),
      englishName: 'French',
      nativeName: 'Français',
    ),
    AppLocale(
      locale: Locale('bn'),
      englishName: 'Bengali',
      nativeName: 'বাংলা',
    ),
    AppLocale(
      locale: Locale('pt'),
      englishName: 'Portuguese',
      nativeName: 'Português',
    ),
    AppLocale(
      locale: Locale('ru'),
      englishName: 'Russian',
      nativeName: 'Русский',
    ),
    AppLocale(locale: Locale('ur'), englishName: 'Urdu', nativeName: 'اردو'),
    AppLocale(
      locale: Locale('id'),
      englishName: 'Indonesian',
      nativeName: 'Bahasa Indonesia',
    ),
    AppLocale(
      locale: Locale('de'),
      englishName: 'German',
      nativeName: 'Deutsch',
    ),
    AppLocale(locale: Locale('ja'), englishName: 'Japanese', nativeName: '日本語'),
    AppLocale(
      locale: Locale('sw'),
      englishName: 'Swahili',
      nativeName: 'Kiswahili',
    ),
    AppLocale(
      locale: Locale('mr'),
      englishName: 'Marathi',
      nativeName: 'मराठी',
    ),
    AppLocale(
      locale: Locale('te'),
      englishName: 'Telugu',
      nativeName: 'తెలుగు',
    ),
    AppLocale(
      locale: Locale('tr'),
      englishName: 'Turkish',
      nativeName: 'Türkçe',
    ),
    AppLocale(locale: Locale('ta'), englishName: 'Tamil', nativeName: 'தமிழ்'),
    AppLocale(
      locale: Locale('vi'),
      englishName: 'Vietnamese',
      nativeName: 'Tiếng Việt',
    ),
    AppLocale(locale: Locale('ko'), englishName: 'Korean', nativeName: '한국어'),
    AppLocale(
      locale: Locale('fa'),
      englishName: 'Persian',
      nativeName: 'فارسی',
    ),
    AppLocale(
      locale: Locale('it'),
      englishName: 'Italian',
      nativeName: 'Italiano',
    ),
    AppLocale(locale: Locale('th'), englishName: 'Thai', nativeName: 'ไทย'),
    AppLocale(
      locale: Locale('pa'),
      englishName: 'Punjabi',
      nativeName: 'ਪੰਜਾਬੀ',
    ),
    AppLocale(
      locale: Locale('pl'),
      englishName: 'Polish',
      nativeName: 'Polski',
    ),
    AppLocale(
      locale: Locale('uk'),
      englishName: 'Ukrainian',
      nativeName: 'Українська',
    ),
    AppLocale(
      locale: Locale('ms'),
      englishName: 'Malay',
      nativeName: 'Bahasa Melayu',
    ),
    AppLocale(
      locale: Locale('fil'),
      englishName: 'Filipino',
      nativeName: 'Filipino',
    ),
    AppLocale(
      locale: Locale('nl'),
      englishName: 'Dutch',
      nativeName: 'Nederlands',
    ),
    AppLocale(
      locale: Locale('ro'),
      englishName: 'Romanian',
      nativeName: 'Română',
    ),
    AppLocale(locale: Locale('he'), englishName: 'Hebrew', nativeName: 'עברית'),
    AppLocale(
      locale: Locale('el'),
      englishName: 'Greek',
      nativeName: 'Ελληνικά',
    ),
    AppLocale(
      locale: Locale('hu'),
      englishName: 'Hungarian',
      nativeName: 'Magyar',
    ),
    AppLocale(
      locale: Locale('cs'),
      englishName: 'Czech',
      nativeName: 'Čeština',
    ),
    AppLocale(
      locale: Locale('sv'),
      englishName: 'Swedish',
      nativeName: 'Svenska',
    ),
    AppLocale(
      locale: Locale('sr'),
      englishName: 'Serbian',
      nativeName: 'Српски',
    ),
    AppLocale(locale: Locale('da'), englishName: 'Danish', nativeName: 'Dansk'),
    AppLocale(
      locale: Locale('nb'),
      englishName: 'Norwegian',
      nativeName: 'Norsk bokmål',
    ),
    AppLocale(
      locale: Locale('fi'),
      englishName: 'Finnish',
      nativeName: 'Suomi',
    ),
  ];

  /// Languages the app knows about but does not yet have translations for.
  ///
  /// Deliberately kept out of [values]: gen_l10n silently falls back to the
  /// template, so listing one of these in the picker would offer a language
  /// and then hand the user English. Move an entry up into [values] in the
  /// same commit as its `app_<code>.arb`.
  static const pending = <AppLocale>[];

  /// Shown above the full list, so the common case is one tap rather than a
  /// scroll through forty rows.
  static const suggestedCodes = <String>[
    'en',
    'zh',
    'hi',
    'es',
    'ar',
    'fr',
    'pt',
    'ru',
    'bn',
    'id',
  ];

  static final _byCode = {for (final l in values) l.code: l};

  static AppLocale get fallback => values.first;

  /// Resolves a stored key back to a language.
  ///
  /// Lenient by design, because the string does not always come from us: a
  /// platform locale arrives BCP-47 style as `zh-Hant`, while [code] writes
  /// `zh_Hant`, and both have to land on Traditional Chinese. A bare language
  /// code resolves too, so a preference written before the script existed
  /// still works — `zh` lands on Simplified rather than on English.
  static AppLocale byCode(String? code) {
    if (code == null || code.isEmpty) return fallback;
    final exact = _byCode[code.replaceAll('-', '_')];
    if (exact != null) return exact;

    final language = code.split(RegExp('[_-]')).first;
    return values.firstWhere(
      (l) => l.locale.languageCode == language,
      orElse: () => fallback,
    );
  }

  static AppLocale byLocale(Locale locale) => byCode(
    locale.scriptCode == null
        ? locale.languageCode
        : '${locale.languageCode}_${locale.scriptCode}',
  );

  static List<AppLocale> get suggested => [
    for (final code in suggestedCodes) byCode(code),
  ];

  /// Case-insensitive search over native name, English name and code.
  static List<AppLocale> search(String query) {
    final term = query.trim().toLowerCase();
    if (term.isEmpty) return values;
    return values.where((l) => l.searchIndex.contains(term)).toList();
  }
}
