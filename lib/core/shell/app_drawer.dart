import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/financial/presentation/providers/finance_providers.dart';
import '../localization/generated/app_localizations.dart';
import '../routing/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';
import '../theme/app_typography.dart';
import '../widgets/states.dart';

/// Secondary navigation: only what the bottom bar and the app bar do not
/// already reach. Home, Transactions and Reports live in the bottom bar and
/// Notifications behind the bell, so none of them appear here.
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final profile = ref.watch(profileProvider);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.lg,
                AppSpacing.lg,
                0,
              ),
              child: profile.when(
                data: (user) => _ProfileTile(
                  name: user.name,
                  email: user.email,
                  initials: user.initials,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.go(AppRoutes.profile);
                  },
                ),
                loading: () => const Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSpacing.sm),
                  child: SkeletonRow(),
                ),
                error: (_, _) => const SizedBox.shrink(),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Divider(color: context.borderColor, height: 1),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.md,
                ),
                children: [
                  _DrawerItem(
                    icon: Icons.savings_rounded,
                    label: l10n.savings,
                    route: AppRoutes.savings,
                  ),
                  _DrawerItem(
                    icon: Icons.donut_small_rounded,
                    label: l10n.budget,
                    route: AppRoutes.budget,
                  ),
                  _DrawerItem(
                    icon: Icons.account_balance_rounded,
                    label: l10n.loansAndDebts,
                    route: AppRoutes.loans,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Divider(color: context.borderColor, height: 1),
                  const SizedBox(height: AppSpacing.md),
                  _DrawerItem(
                    icon: Icons.settings_rounded,
                    label: l10n.settings,
                    route: AppRoutes.settings,
                  ),
                  _DrawerItem(
                    icon: Icons.help_outline_rounded,
                    label: l10n.helpAndSupport,
                    route: null,
                  ),
                ],
              ),
            ),
            Divider(color: context.borderColor, height: 1),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: _DrawerItem(
                icon: Icons.logout_rounded,
                label: l10n.logOut,
                route: null,
                danger: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({
    required this.name,
    required this.email,
    required this.initials,
    required this.onTap,
  });

  final String name;
  final String email;
  final String initials;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: const BoxDecoration(
                gradient: AppColors.brandGradient,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                initials,
                style: AppTypography.title.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: context.textDisabled,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.route,
    this.danger = false,
  });

  final IconData icon;
  final String label;
  final String? route;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final foreground = danger ? AppColors.error : context.textPrimary;
    final iconColor = danger ? AppColors.error : context.textSecondary;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppRadius.md),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppRadius.md),
          onTap: () {
            Navigator.of(context).pop();
            final target = route;
            if (target == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppL10n.of(context).comingSoon)),
              );
              return;
            }
            // Every drawer destination is pushed above the shell; the bottom
            // bar owns the four branch routes.
            context.push(target);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: 13,
            ),
            child: Row(
              children: [
                Icon(icon, size: 21, color: iconColor),
                const SizedBox(width: AppSpacing.md),
                Text(
                  label,
                  style: AppTypography.title.copyWith(
                    color: foreground,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
