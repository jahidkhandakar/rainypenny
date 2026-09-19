import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/entrance.dart';
import '../widgets/appearance_pickers.dart';
import '../widgets/settings_tile.dart';

/// Language, currency, appearance and the guide.
///
/// Every long list — forty languages, a hundred and fifty-seven currencies,
/// ten accents — now lives behind its own searchable screen. Inlining them
/// here made this page a five-screen scroll in which the one row someone
/// actually came for was impossible to find.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final locale = ref.watch(localeProvider);
    final currency = ref.watch(currencyProvider);
    final themeMode = ref.watch(themeModeProvider);
    final accent = ref.watch(accentProvider);

    final themeLabel = switch (themeMode) {
      ThemeMode.light => l10n.themeLight,
      ThemeMode.dark => l10n.themeDark,
      ThemeMode.system => l10n.themeSystem,
    };

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
              title: l10n.appearance,
              children: [
                SettingsTile(
                  icon: switch (themeMode) {
                    ThemeMode.system => Icons.brightness_auto_rounded,
                    ThemeMode.light => CupertinoIcons.sun_max,
                    ThemeMode.dark => CupertinoIcons.moon,
                  },
                  label: l10n.theme,
                  value: themeLabel,
                  onTap: () => context.push(AppRoutes.appearance),
                ),
                SettingsTile(
                  icon: CupertinoIcons.paintbrush,
                  label: l10n.accentColor,
                  value: accentName(l10n, accent),
                  onTap: () => context.push(AppRoutes.appearance),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          // The swatches are repeated here rather than only on the Appearance
          // screen: changing colour is the single most-used setting, and it is
          // not worth a second tap.
          const FadeSlideIn(index: 1, child: AccentPicker()),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 2,
            child: SettingsGroup(
              title: l10n.preferences,
              children: [
                SettingsTile(
                  icon: CupertinoIcons.globe,
                  label: l10n.language,
                  value: AppLocales.byLocale(locale).nativeName,
                  onTap: () => context.push(AppRoutes.language),
                ),
                SettingsTile(
                  icon: CupertinoIcons.money_dollar,
                  label: l10n.currency,
                  value: '${currency.symbol}  ${currency.code}',
                  onTap: () => context.push(AppRoutes.currency),
                ),
                SettingsTile(
                  icon: CupertinoIcons.repeat,
                  label: l10n.payday,
                  value: l10n.paydayDayOfMonth(ref.watch(paydayProvider)),
                  onTap: () => context.push(AppRoutes.payday),
                ),
                SettingsTile(
                  icon: CupertinoIcons.app,
                  label: l10n.manageCategories,
                  onTap: () => context.push(AppRoutes.categories),
                ),
                SettingsTile(
                  icon: CupertinoIcons.bell,
                  label: l10n.notifications,
                  onTap: () => context.push(AppRoutes.notificationSettings),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            l10n.languageNote,
            style: AppTypography.caption.copyWith(color: context.textSecondary, height: 1.5),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 3,
            child: SettingsGroup(
              title: l10n.help,
              children: [
                SettingsTile(
                  icon: CupertinoIcons.book,
                  label: l10n.beginnersGuide,
                  onTap: () => context.push(AppRoutes.tutorial),
                ),
                SettingsTile(
                  icon: CupertinoIcons.arrow_counterclockwise,
                  label: l10n.replaySetup,
                  onTap: () => _confirmReplaySetup(context, ref),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Makes it obvious at a glance whether this build is talking to a
          // real backend or the bundled demo data.
          FadeSlideIn(
            index: 4,
            child: SettingsGroup(
              title: l10n.dataSource,
              children: [
                SettingsTile(
                  icon: AppConfig.hasBackend ? CupertinoIcons.globe : CupertinoIcons.lab_flask,
                  label: AppConfig.backendLabel,
                  value: AppConfig.hasBackend ? 'Live' : 'Offline',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Setup writes real preferences, so re-running it is worth a confirmation —
  /// but it only re-asks the questions; nothing recorded is touched.
  Future<void> _confirmReplaySetup(BuildContext context, WidgetRef ref) async {
    final l10n = AppL10n.of(context);
    final router = GoRouter.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.replaySetup),
        content: Text(l10n.replaySetupBody),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.continueLabel),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    ref.read(onboardingCompleteProvider.notifier).reset();
    router.go(AppRoutes.onboarding);
  }
}
