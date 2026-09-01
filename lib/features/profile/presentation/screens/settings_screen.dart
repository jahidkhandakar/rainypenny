import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../widgets/settings_tile.dart';

/// Language, currency and theme.
///
/// Switching language re-renders the whole app, flips to RTL for Arabic and
/// Urdu, and re-formats every amount and date — no separate screens involved.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final locale = ref.watch(localeProvider);
    final currency = ref.watch(currencyProvider);
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.sm,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          FadeSlideIn(
            child: SettingsGroup(
              title: l10n.theme,
              children: [
                for (final mode in ThemeMode.values)
                  SettingsTile(
                    icon: switch (mode) {
                      ThemeMode.system => Icons.brightness_auto_rounded,
                      ThemeMode.light => Icons.light_mode_rounded,
                      ThemeMode.dark => Icons.dark_mode_rounded,
                    },
                    label: switch (mode) {
                      ThemeMode.system => l10n.themeSystem,
                      ThemeMode.light => l10n.themeLight,
                      ThemeMode.dark => l10n.themeDark,
                    },
                    onTap: () =>
                        ref.read(themeModeProvider.notifier).select(mode),
                    trailing: _Check(selected: themeMode == mode),
                  ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 1,
            child: SettingsGroup(
              title: l10n.currency,
              children: [
                for (final option in Currencies.values)
                  SettingsTile(
                    icon: Icons.payments_outlined,
                    label: '${option.name} (${option.symbol})',
                    value: option.code,
                    onTap: () =>
                        ref.read(currencyProvider.notifier).select(option),
                    trailing: _Check(selected: currency.code == option.code),
                  ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSpacing.xs,
                    bottom: AppSpacing.sm,
                  ),
                  child: Text(
                    l10n.language.toUpperCase(),
                    style: AppTypography.overline.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ),
                AppCard(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      for (var i = 0; i < AppLocales.values.length; i++) ...[
                        _LanguageTile(
                          option: AppLocales.values[i],
                          selected: locale.languageCode ==
                              AppLocales.values[i].locale.languageCode,
                          onTap: () => ref
                              .read(localeProvider.notifier)
                              .select(AppLocales.values[i].locale),
                        ),
                        if (i != AppLocales.values.length - 1)
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 60),
                            child: Divider(
                              color: context.borderColor,
                              height: 1,
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            'Arabic and Urdu switch the whole interface to right-to-left. '
            'Strings that are not translated yet fall back to English.',
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final AppLocale option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : context.tintFill,
                borderRadius: BorderRadius.circular(11),
              ),
              alignment: Alignment.center,
              child: Text(
                option.locale.languageCode.toUpperCase(),
                style: AppTypography.caption.copyWith(
                  fontWeight: FontWeight.w800,
                  color: selected ? Colors.white : AppColors.primary,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    option.nativeName,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    option.isRtl
                        ? '${option.englishName} · RTL'
                        : option.englishName,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            _Check(selected: selected),
          ],
        ),
      ),
    );
  }
}

class _Check extends StatelessWidget {
  const _Check({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: AppDuration.fast,
      opacity: selected ? 1 : 0,
      child: const Icon(
        Icons.check_circle_rounded,
        size: 21,
        color: AppColors.primary,
      ),
    );
  }
}
