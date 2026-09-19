import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/states.dart';

/// All forty interface languages, searchable.
///
/// Forty rows is past the point where scrolling is a reasonable way in, so
/// this works the way the currency picker does: a search box that matches the
/// native name, the English name and the code at once, with a suggested
/// shortlist above the full list when nothing has been typed.
class LanguagePickerScreen extends ConsumerStatefulWidget {
  const LanguagePickerScreen({super.key});

  @override
  ConsumerState<LanguagePickerScreen> createState() => _LanguagePickerScreenState();
}

class _LanguagePickerScreenState extends ConsumerState<LanguagePickerScreen> {
  final _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final selected = AppLocales.byLocale(ref.watch(localeProvider));
    final searching = _query.trim().isNotEmpty;
    final results = AppLocales.search(_query);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.language)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.sm,
              AppSpacing.page,
              AppSpacing.md,
            ),
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.search,
              onChanged: (value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: l10n.searchLanguages,
                prefixIcon: const Icon(Icons.search_rounded, size: 20),
                suffixIcon: searching
                    ? IconButton(
                        icon: const Icon(Icons.close_rounded, size: 18),
                        onPressed: () {
                          _controller.clear();
                          setState(() => _query = '');
                        },
                      )
                    : null,
                filled: true,
                fillColor: context.subtleFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              ),
            ),
          ),
          Expanded(
            child: results.isEmpty
                ? EmptyState(
                    icon: Icons.search_off_rounded,
                    title: l10n.noLanguagesFound,
                    message: l10n.noLanguagesFoundMessage,
                  )
                : ListView(
                    padding: const EdgeInsets.only(bottom: AppSpacing.section),
                    children: [
                      if (!searching) ...[
                        _Heading(label: l10n.suggestedLanguages),
                        for (final option in AppLocales.suggested)
                          _LanguageRow(
                            option: option,
                            selected: option.code == selected.code,
                            onTap: () => _select(option),
                          ),
                        _Heading(label: l10n.allLanguages),
                      ],
                      for (final option in results)
                        _LanguageRow(
                          option: option,
                          selected: option.code == selected.code,
                          onTap: () => _select(option),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          AppSpacing.page,
                          AppSpacing.xl,
                          AppSpacing.page,
                          0,
                        ),
                        child: Text(
                          l10n.languageNote,
                          style: AppTypography.caption.copyWith(
                            color: context.textSecondary,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  void _select(AppLocale option) {
    ref.read(localeProvider.notifier).select(option.locale);
    Navigator.of(context).maybePop();
  }
}

class _Heading extends StatelessWidget {
  const _Heading({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.lg,
        AppSpacing.page,
        AppSpacing.sm,
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTypography.overline.copyWith(color: context.textSecondary),
      ),
    );
  }
}

class _LanguageRow extends StatelessWidget {
  const _LanguageRow({required this.option, required this.selected, required this.onTap});

  final AppLocale option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.page,
          vertical: AppSpacing.sm + 2,
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? context.accent : context.tintFill,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                option.locale.languageCode.toUpperCase(),
                style: AppTypography.caption.copyWith(
                  fontWeight: FontWeight.w800,
                  color: selected ? Colors.white : context.accentOnSurface,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // The native name is written in its own script, which may
                    // run the other way to the surrounding layout. The isolate
                    // keeps it from dragging the row's punctuation with it.
                    '\u2068${option.nativeName}\u2069',
                    style: AppTypography.title.copyWith(color: context.textPrimary),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    option.isRtl
                        ? '${option.englishName} · ${l10n.rightToLeft}'
                        : option.englishName,
                    style: AppTypography.caption.copyWith(color: context.textSecondary),
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: AppDuration.fast,
              opacity: selected ? 1 : 0,
              child: Icon(
                CupertinoIcons.checkmark_circle_fill,
                size: 21,
                color: context.accentOnSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
