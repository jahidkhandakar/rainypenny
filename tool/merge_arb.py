"""Merges translation JSON files into the locale ARB files.

Run as: python tool/merge_arb.py [locale ...]

Values come from tool/i18n/<locale>.json. Metadata (`@key`) is never written to
a non-template ARB: gen_l10n reads placeholder definitions only from the English
template, and duplicating them would let the two drift apart. Keys are emitted
in template order so the files stay diffable against one another.

Two classes of translation are rejected rather than written, because both fail
at runtime or silently drop copy rather than merely reading oddly:

  * a string that loses a placeholder the template declares, and
  * a plural that carries both `=1{}` and `one{}` (or =0/zero, =2/two), which
    gen_l10n folds onto the same generated argument, keeping only the later.

A rejected key keeps whatever the ARB already had and is reported by name.
"""
import collections
import io
import json
import os
import re
import sys

L10N = 'lib/core/localization/l10n'
SOURCE = 'tool/i18n'

_LITERAL_VS_NAMED = (('=0', 'zero'), ('=1', 'one'), ('=2', 'two'))


def _declared_placeholders(template, key):
    """Placeholder names the template declares for this key.

    Read from the metadata rather than scraped out of the English string: an
    ICU plural writes its categories as `other{...}`, which looks exactly like
    a placeholder to a regex and legitimately differs per language.
    """
    meta = template.get('@' + key)
    if not isinstance(meta, dict):
        return []
    return sorted((meta.get('placeholders') or {}).keys())


def _problems(value, needed):
    found = []
    for name in needed:
        if not re.search(r'\{\s*%s\s*[,}]' % re.escape(name), value):
            found.append('missing {%s}' % name)
    if value.count('{') != value.count('}'):
        found.append('unbalanced braces')
    for literal, named in _LITERAL_VS_NAMED:
        if literal + '{' in value and named + '{' in value:
            found.append('%s{} and %s{} collide' % (literal, named))
    return found


def merge(locale):
    arb_path = os.path.join(L10N, 'app_%s.arb' % locale)
    src_path = os.path.join(SOURCE, '%s.json' % locale)

    data = json.load(io.open(arb_path, encoding='utf-8'),
                     object_pairs_hook=collections.OrderedDict) \
        if os.path.exists(arb_path) else collections.OrderedDict()
    translations = json.load(io.open(src_path, encoding='utf-8'))
    template = json.load(io.open(os.path.join(L10N, 'app_en.arb'),
                                 encoding='utf-8'),
                         object_pairs_hook=collections.OrderedDict)
    keys = [k for k in template if not k.startswith('@')]

    rejected = []
    accepted = collections.OrderedDict()
    for key, value in translations.items():
        if key not in template:
            rejected.append('%s (not in the template)' % key)
            continue
        issues = _problems(value, _declared_placeholders(template, key))
        if issues:
            rejected.append('%s (%s)' % (key, '; '.join(issues)))
            continue
        accepted[key] = value

    added = sum(1 for k in accepted if k not in data)
    data.update(accepted)

    ordered = collections.OrderedDict()
    ordered['@@locale'] = data.get('@@locale', locale)
    for key in keys:
        if key in data:
            ordered[key] = data[key]
    for key, value in data.items():
        if key not in ordered and not key.startswith('@'):
            ordered[key] = value

    io.open(arb_path, 'w', encoding='utf-8', newline='\n').write(
        json.dumps(ordered, ensure_ascii=False, indent=2) + '\n')

    present = [k for k in ordered if not k.startswith('@')]
    missing = [k for k in keys if k not in ordered]
    print('%s: +%-4d %3d/%d keys%s'
          % (locale, added, len(present), len(keys),
             '' if not missing else '  MISSING: ' + ', '.join(missing[:8])))
    for line in rejected:
        print('    REJECTED %s' % line)
    return len(rejected)


if __name__ == '__main__':
    requested = sys.argv[1:] or sorted(
        name[:-5] for name in os.listdir(SOURCE) if name.endswith('.json'))
    failures = 0
    for locale in requested:
        if os.path.exists(os.path.join(SOURCE, '%s.json' % locale)):
            failures += merge(locale)
    sys.exit(1 if failures else 0)
