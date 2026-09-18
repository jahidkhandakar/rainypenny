import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
// ignore: implementation_imports
import 'package:pdf/src/pdf/font/bidi_utils.dart' as bidi;

/// Guards the PDF export against a translation the bidi algorithm cannot lay
/// out.
///
/// This is not theoretical: the Arabic for "prepared for" began with an alef
/// hamza followed by a damma (U+0623 U+064F), and composing that pair overruns
/// a buffer inside the `bidi` package's normalisation pass — a `RangeError`
/// that took the whole Arabic export down with it. The failure surfaced only
/// when a real Arabic string reached the renderer, which is exactly the case a
/// user in Cairo hits and an English-speaking developer never does.
///
/// Every right-to-left string therefore goes through the same reordering the
/// PDF builder performs, so a bad sequence fails here rather than in someone's
/// share sheet.
void main() {
  const rtlLocales = ['ar', 'ur'];

  group('right-to-left strings survive PDF layout', () {
    for (final locale in rtlLocales) {
      test(locale, () {
        final file = File('lib/core/localization/l10n/app_$locale.arb');
        expect(file.existsSync(), isTrue, reason: '${file.path} is missing');

        final messages =
            json.decode(file.readAsStringSync()) as Map<String, dynamic>;
        final failures = <String, Object>{};

        for (final entry in messages.entries) {
          // `@key` entries are metadata, never rendered.
          if (entry.key.startsWith('@')) continue;
          final value = entry.value;
          if (value is! String) continue;

          try {
            bidi.logicalToVisual(value);
          } catch (error) {
            failures[entry.key] = error;
          }
        }

        expect(
          failures,
          isEmpty,
          reason:
              'these $locale strings crash the PDF text layout: '
              '${failures.keys.join(', ')}',
        );
      });
    }
  });
}
