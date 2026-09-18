// Merges translation JSON files into the locale ARB files.
//
// Run as: dart run tool/merge_arb.dart [locale ...]
//
// A Dart port of `merge_arb.py`, kept alongside it so the translation workflow
// runs on a machine that has the Flutter toolchain but no Python — which is
// every machine that can build this app, and not every machine that can run the
// original script.
//
// Values come from tool/i18n/<locale>.json. Metadata (`@key`) is never written
// to a non-template ARB: gen_l10n reads placeholder definitions only from the
// English template, and duplicating them would let the two drift apart. Keys
// are emitted in template order so the files stay diffable against one another.
//
// Two classes of translation are rejected rather than written, because both
// fail at runtime or silently drop copy rather than merely reading oddly:
//
//   * a string that loses a placeholder the template declares, and
//   * a plural carrying both `=1{}` and `one{}` (or =0/zero, =2/two), which
//     gen_l10n folds onto the same generated argument, keeping only the later.
//
// A rejected key keeps whatever the ARB already had and is reported by name.

import 'dart:convert';
import 'dart:io';

const _l10nDir = 'lib/core/localization/l10n';
const _sourceDir = 'tool/i18n';

const _literalVsNamed = [
  ('=0', 'zero'),
  ('=1', 'one'),
  ('=2', 'two'),
];

/// Placeholder names the template declares for this key.
///
/// Read from the metadata rather than scraped out of the English string: an
/// ICU plural writes its categories as `other{...}`, which looks exactly like a
/// placeholder to a regex and legitimately differs per language.
List<String> _declaredPlaceholders(Map<String, dynamic> template, String key) {
  final meta = template['@$key'];
  if (meta is! Map) return const [];
  final placeholders = meta['placeholders'];
  if (placeholders is! Map) return const [];
  return placeholders.keys.map((k) => '$k').toList()..sort();
}

List<String> _problems(String value, List<String> needed) {
  final found = <String>[];
  for (final name in needed) {
    if (!RegExp('\\{\\s*${RegExp.escape(name)}\\s*[,}]').hasMatch(value)) {
      found.add('missing {$name}');
    }
  }
  if ('{'.allMatches(value).length != '}'.allMatches(value).length) {
    found.add('unbalanced braces');
  }
  for (final (literal, named) in _literalVsNamed) {
    if (value.contains('$literal{') && value.contains('$named{')) {
      found.add('$literal{} and $named{} collide');
    }
  }
  return found;
}

int merge(String locale) {
  final arbFile = File('$_l10nDir/app_$locale.arb');
  final sourceFile = File('$_sourceDir/$locale.json');

  final data = <String, dynamic>{
    if (arbFile.existsSync())
      ...jsonDecode(arbFile.readAsStringSync()) as Map<String, dynamic>,
  };
  final translations =
      jsonDecode(sourceFile.readAsStringSync()) as Map<String, dynamic>;
  final template =
      jsonDecode(File('$_l10nDir/app_en.arb').readAsStringSync())
          as Map<String, dynamic>;
  final keys = template.keys.where((k) => !k.startsWith('@')).toList();

  final rejected = <String>[];
  final accepted = <String, dynamic>{};

  translations.forEach((key, value) {
    if (!template.containsKey(key)) {
      rejected.add('$key (not in the template)');
      return;
    }
    final issues = _problems('$value', _declaredPlaceholders(template, key));
    if (issues.isNotEmpty) {
      rejected.add('$key (${issues.join('; ')})');
      return;
    }
    accepted[key] = value;
  });

  final added = accepted.keys.where((k) => !data.containsKey(k)).length;
  data.addAll(accepted);

  final ordered = <String, dynamic>{'@@locale': data['@@locale'] ?? locale};
  for (final key in keys) {
    if (data.containsKey(key)) ordered[key] = data[key];
  }
  data.forEach((key, value) {
    if (!ordered.containsKey(key) && !key.startsWith('@')) {
      ordered[key] = value;
    }
  });

  arbFile.writeAsStringSync(
    '${const JsonEncoder.withIndent('  ').convert(ordered)}\n',
  );

  final present = ordered.keys.where((k) => !k.startsWith('@')).length;
  final missing = keys.where((k) => !ordered.containsKey(k)).toList();
  final tail = missing.isEmpty
      ? ''
      : '  MISSING: ${missing.take(8).join(', ')}'
            '${missing.length > 8 ? ' (+${missing.length - 8})' : ''}';
  stdout.writeln(
    '${locale.padRight(8)} +${'$added'.padRight(4)} '
    '$present/${keys.length} keys$tail',
  );
  for (final line in rejected) {
    stdout.writeln('    REJECTED $line');
  }
  return rejected.length;
}

void main(List<String> args) {
  final requested = args.isNotEmpty
      ? args
      : (Directory(_sourceDir)
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.json'))
              .map((f) => f.uri.pathSegments.last.replaceAll('.json', ''))
              .toList()
          ..sort());

  var failures = 0;
  for (final locale in requested) {
    if (File('$_sourceDir/$locale.json').existsSync()) {
      failures += merge(locale);
    }
  }
  exit(failures > 0 ? 1 : 0);
}
