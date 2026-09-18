import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/shell/app_shell.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/states.dart';
import '../../../auth/presentation/controllers/auth_controller.dart';
import '../../../financial/domain/entities/user_profile.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../../review/data/services/review_service.dart';
import '../../../review/presentation/controllers/review_prompt_controller.dart';
import '../widgets/settings_tile.dart';

/// Account, preferences and support — the screen that makes the product feel
/// complete, and where the ten-language switcher lives.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final profile = ref.watch(profileProvider);
    final locale = ref.watch(localeProvider);
    final currency = ref.watch(currencyProvider);
    final themeMode = ref.watch(themeModeProvider);

    String themeLabel() => switch (themeMode) {
      ThemeMode.light => l10n.themeLight,
      ThemeMode.dark => l10n.themeDark,
      ThemeMode.system => l10n.themeSystem,
    };

    return Scaffold(
      appBar: AppBar(
        leading: const DrawerLogoButton(),
        title: Text(l10n.profile),
        actions: [
          IconButton(
            tooltip: l10n.settings,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push(AppRoutes.settings),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.sm,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          profile.when(
            data: (user) => FadeSlideIn(child: _ProfileHeader(user: user)),
            loading: () => const SkeletonCard(height: 120, lines: 2),
            error: (_, _) => const SizedBox.shrink(),
          ),
          const SizedBox(height: AppSpacing.section),

          FadeSlideIn(
            index: 1,
            child: SettingsGroup(
              title: l10n.account,
              children: [
                SettingsTile(
                  icon: Icons.person_outline_rounded,
                  label: l10n.personalInformation,
                  onTap: () => context.push(AppRoutes.personalInformation),
                ),
                SettingsTile(
                  icon: Icons.event_repeat_rounded,
                  label: l10n.payday,
                  value: l10n.paydayDayOfMonth(ref.watch(paydayProvider)),
                  onTap: () => context.push(AppRoutes.payday),
                ),
                SettingsTile(
                  icon: Icons.lock_outline_rounded,
                  label: l10n.changePassword,
                  onTap: () => context.push(AppRoutes.resetPassword),
                ),
                SettingsTile(
                  icon: Icons.notifications_none_rounded,
                  label: l10n.notifications,
                  onTap: () => context.push(AppRoutes.notificationSettings),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 2,
            child: SettingsGroup(
              title: l10n.preferences,
              children: [
                // Settings is reachable from the icon in the corner too, but an
                // icon is not a signpost: a named row is what someone looking
                // for settings actually scans for.
                SettingsTile(
                  icon: Icons.settings_outlined,
                  label: l10n.settings,
                  onTap: () => context.push(AppRoutes.settings),
                ),
                SettingsTile(
                  icon: Icons.language_rounded,
                  label: l10n.language,
                  value: AppLocales.byLocale(locale).nativeName,
                  onTap: () => context.push(AppRoutes.language),
                ),
                SettingsTile(
                  icon: Icons.payments_outlined,
                  label: l10n.currency,
                  value: currency.code,
                  onTap: () => context.push(AppRoutes.currency),
                ),
                SettingsTile(
                  icon: Icons.category_outlined,
                  label: l10n.manageCategories,
                  onTap: () => context.push(AppRoutes.categories),
                ),
                SettingsTile(
                  icon: Icons.palette_outlined,
                  label: l10n.appearance,
                  value: themeLabel(),
                  onTap: () => context.push(AppRoutes.appearance),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 3,
            child: SettingsGroup(
              title: l10n.security,
              children: [
                SettingsTile(
                  icon: Icons.shield_outlined,
                  label: l10n.privacyAndSecurity,
                  onTap: () => _comingSoon(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 4,
            child: SettingsGroup(
              title: l10n.help,
              children: [
                SettingsTile(
                  icon: Icons.school_outlined,
                  label: l10n.beginnersGuide,
                  onTap: () => context.push(AppRoutes.tutorial),
                ),
                SettingsTile(
                  icon: Icons.star_outline_rounded,
                  label: l10n.rateAction,
                  onTap: () => _rate(context, ref),
                ),
                SettingsTile(
                  icon: Icons.help_outline_rounded,
                  label: l10n.helpAndSupport,
                  onTap: () => _comingSoon(context),
                ),
                SettingsTile(
                  icon: Icons.description_outlined,
                  label: l10n.termsAndConditions,
                  onTap: () => _comingSoon(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 5,
            child: AppCard(
              padding: EdgeInsets.zero,
              child: SettingsTile(
                icon: Icons.logout_rounded,
                label: l10n.logOut,
                danger: true,
                onTap: () => _signOut(context, ref),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Center(
            child: Text(
              'RainyPenny · 1.0.0',
              style: AppTypography.caption.copyWith(
                color: context.textDisabled,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Rating on purpose, rather than because the app asked.
  ///
  /// Marks the prompt settled either way, so someone who came here of their
  /// own accord is never interrupted by the automatic ask afterwards.
  Future<void> _rate(BuildContext context, WidgetRef ref) async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final service = ref.read(reviewServiceProvider);

    ref.read(reviewPromptProvider.notifier).markRated();
    if (await service.isAvailable()) {
      await service.requestReview();
    } else {
      await service.openStoreListing();
    }
    messenger.showSnackBar(SnackBar(content: Text(l10n.rateThanks)));
  }

  Future<void> _signOut(BuildContext context, WidgetRef ref) async {
    final l10n = AppL10n.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.signOutConfirm),
        content: Text(l10n.signOutBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(l10n.logOut),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    // The router redirect takes it from here.
    await ref.read(authControllerProvider.notifier).signOut();
  }

  void _comingSoon(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(AppL10n.of(context).comingSoon)));
  }
}

class _ProfileHeader extends ConsumerWidget {
  const _ProfileHeader({required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);

    return Column(
      children: [
        Container(
          width: 88,
          height: 88,
          decoration: BoxDecoration(
            gradient: context.brandGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: context.accent.withValues(alpha: 0.24),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            user.initials,
            style: AppTypography.heading.copyWith(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          user.name,
          style: AppTypography.heading.copyWith(color: context.textPrimary),
        ),
        const SizedBox(height: 4),
        Text(
          user.email,
          style: AppTypography.body.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: context.tintFill,
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
          child: Text(
            l10n.memberSince(dates.monthYear(user.memberSince)),
            style: AppTypography.caption.copyWith(color: context.accent),
          ),
        ),
      ],
    );
  }
}
