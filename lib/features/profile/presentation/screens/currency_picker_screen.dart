import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/states.dart';

/// The full ISO 4217 currency list, searchable.
///
/// A shortlist of six was fine for a demo; a product launching worldwide has
/// to let someone in Nairobi or Almaty find their own money. The list is long
/// enough that search, not scrolling, is the primary way in — so the field is
/// focused on arrival and matches against code, symbol and name at once.
class CurrencyPickerScreen extends ConsumerStatefulWidget {
  const CurrencyPickerScreen({super.key});

  @override
  ConsumerState<CurrencyPickerScreen> createState() =>
      _CurrencyPickerScreenState();
}

class _CurrencyPickerScreenState extends ConsumerState<CurrencyPickerScreen> {
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
    final selected = ref.watch(currencyProvider);
    final searching = _query.trim().isNotEmpty;
    final results = Currencies.search(_query);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.currency)),
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
              autofocus: false,
              textInputAction: TextInputAction.search,
              onChanged: (value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: l10n.searchCurrencies,
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
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                ),
              ),
            ),
          ),
          Expanded(
            child: results.isEmpty
                ? EmptyState(
                    icon: Icons.search_off_rounded,
                    title: l10n.noCurrenciesFound,
                    message: l10n.noCurrenciesFoundMessage,
                  )
                : ListView(
                    padding: const EdgeInsets.only(bottom: AppSpacing.section),
                    children: [
                      // Without a search term the popular currencies come
                      // first, so the common case is one tap rather than a
                      // scroll through 160 rows.
                      if (!searching) ...[
                        _Heading(label: l10n.popularCurrencies),
                        for (final option in Currencies.popular)
                          _CurrencyRow(
                            option: option,
                            selected: option.code == selected.code,
                            onTap: () => _select(option),
                          ),
                        _Heading(label: l10n.allCurrencies),
                      ],
                      for (final option in results)
                        _CurrencyRow(
                          option: option,
                          selected: option.code == selected.code,
                          onTap: () => _select(option),
                        ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  void _select(CurrencyOption option) {
    ref.read(currencyProvider.notifier).select(option);
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

class _CurrencyRow extends StatelessWidget {
  const _CurrencyRow({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final CurrencyOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
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
              // The symbol is the fastest thing to recognise, so it carries
              // the badge; RTL symbols stay upright inside the isolate.
              child: Text(
                // Bidi isolate, so an Arabic symbol keeps its own direction
                // inside a left-to-right badge (and vice versa).
                '\u2066${option.symbol}\u2069',
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: AppTypography.label.copyWith(
                  fontWeight: FontWeight.w700,
                  color: selected ? Colors.white : context.accent,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    option.name,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    option.code,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: AppDuration.fast,
              opacity: selected ? 1 : 0,
              child: Icon(
                Icons.check_circle_rounded,
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
