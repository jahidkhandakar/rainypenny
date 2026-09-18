import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/core/localization/app_locales.dart';
import 'package:rainypenny/core/localization/generated/app_localizations.dart';

/// Guards the language list against the three ways it can quietly break:
/// a locale with no translations, a locale Flutter itself cannot localise,
/// and a stored preference that no longer resolves.
void main() {
  group('every shipped language', () {
    test('has an ARB file of its own', () {
      final missing = [
        for (final locale in AppLocales.values)
          if (!File(
            'lib/core/localization/l10n/app_${locale.code}.arb',
          ).existsSync())
            locale.code,
      ];
      expect(
        missing,
        isEmpty,
        reason:
            'listed in the picker but with no translations, so the app '
            'would show English after promising otherwise: $missing',
      );
    });

    test('is one the generator produced a delegate for', () {
      final supported = AppL10n.supportedLocales.map(_key).toSet();
      final missing = [
        for (final locale in AppLocales.values)
          if (!supported.contains(_key(locale.locale))) locale.code,
      ];
      expect(missing, isEmpty, reason: 'not in AppL10n.supportedLocales');
    });

    test('is one flutter_localizations can also localise', () {
      // Material and Cupertino strings — date pickers, the selection menu,
      // semantics labels — come from these delegates. A locale they do not
      // know throws at startup rather than falling back.
      final missing = [
        for (final locale in AppLocales.values)
          if (!GlobalMaterialLocalizations.delegate.isSupported(locale.locale))
            locale.code,
      ];
      expect(
        missing,
        isEmpty,
        reason: 'unsupported by GlobalMaterialLocalizations',
      );
    });
  });

  group('languages waiting on translations', () {
    test('are kept out of the picker', () {
      final leaked = [
        for (final locale in AppLocales.pending)
          if (AppLocales.values.any((v) => v.code == locale.code)) locale.code,
      ];
      expect(leaked, isEmpty, reason: 'listed as both shipped and pending');
    });

    test('have no ARB file yet — promote them when they do', () {
      // Fails the day someone writes the translations without moving the
      // entry up into `values`, which would leave it hidden from the picker.
      final translated = [
        for (final locale in AppLocales.pending)
          if (File(
            'lib/core/localization/l10n/app_${locale.code}.arb',
          ).existsSync())
            locale.code,
      ];
      expect(
        translated,
        isEmpty,
        reason:
            'translated but still pending; move to AppLocales.values: '
            '$translated',
      );
    });
  });

  group('resolving a stored preference', () {
    test('round-trips every shipped code', () {
      for (final locale in AppLocales.values) {
        expect(AppLocales.byCode(locale.code).code, locale.code);
        expect(AppLocales.byLocale(locale.locale).code, locale.code);
      }
    });

    test('keeps the two written forms of Chinese apart', () {
      expect(AppLocales.byCode('zh_Hant').englishName, 'Chinese (Traditional)');
      expect(AppLocales.byCode('zh').englishName, 'Chinese (Simplified)');
      // A preference written before the script existed still resolves.
      expect(AppLocales.byCode('zh-Hant').code, 'zh_Hant');
    });

    test('falls back rather than throwing on junk', () {
      for (final code in [null, '', 'xx', 'klingon', 'zz_ZZ']) {
        expect(AppLocales.byCode(code).code, 'en', reason: '$code');
      }
    });
  });

  test('the right-to-left languages are flagged as such', () {
    final rtl = AppLocales.values.where((l) => l.isRtl).map((l) => l.code);
    expect(rtl, containsAll(['ar', 'ur', 'fa', 'he']));
    expect(AppLocales.byCode('en').isRtl, isFalse);
  });

  test('search finds a language by native name, English name and code', () {
    for (final query in ['deutsch', 'german', 'de']) {
      expect(
        AppLocales.search(query).map((l) => l.code),
        contains('de'),
        reason: query,
      );
    }
    expect(AppLocales.search('klingon'), isEmpty);
  });
}

/// Locales compare by identity, not value, once a script code is involved.
String _key(Locale locale) => locale.scriptCode == null
    ? locale.languageCode
    : '${locale.languageCode}_${locale.scriptCode}';
