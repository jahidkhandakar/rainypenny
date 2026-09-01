import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/shell/app_shell.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/insight.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Menu, greeting and notification bell.
///
/// Kept on the neutral page background — the brand colour is saved for the
/// balance card immediately below it.
class DashboardHeader extends ConsumerWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final profile = ref.watch(profileProvider);
    final alerts = ref.watch(insightsProvider).maybeWhen(
          data: (insights) => insights
              .where((i) =>
                  i.level == InsightLevel.warning ||
                  i.level == InsightLevel.critical)
              .length,
          orElse: () => 0,
        );

    final firstName = profile.maybeWhen(
      data: (user) => user.name.split(' ').first,
      orElse: () => null,
    );

    final hour = DateTime.now().hour;
    final greeting = firstName == null
        ? null
        : hour < 12
            ? l10n.greetingMorning(firstName)
            : hour < 18
                ? l10n.greetingAfternoon(firstName)
                : l10n.greetingEvening(firstName);

    return Row(
      children: [
        _CircleButton(
          icon: Icons.menu_rounded,
          onTap: openAppDrawer,
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (greeting == null)
                const Skeleton(width: 168, height: 17)
              else
                Text(
                  greeting,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sectionTitle.copyWith(
                    color: context.textPrimary,
                  ),
                ),
              const SizedBox(height: 3),
              Text(
                l10n.greetingSubtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.caption.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        _CircleButton(
          icon: Icons.notifications_none_rounded,
          badgeCount: alerts,
          tooltip: l10n.notifications,
          onTap: () => context.push(AppRoutes.notifications),
        ),
      ],
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.onTap,
    this.badgeCount = 0,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback onTap;
  final int badgeCount;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final button = InkResponse(
      onTap: onTap,
      radius: 26,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: context.borderColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(icon, size: 21, color: context.textPrimary),
            if (badgeCount > 0)
              PositionedDirectional(
                top: 9,
                end: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  constraints: const BoxConstraints(minWidth: 15),
                  height: 15,
                  decoration: BoxDecoration(
                    color: AppColors.error,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: context.cardColor, width: 1.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$badgeCount',
                    style: const TextStyle(
                      fontSize: 9,
                      height: 1,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );

    return tooltip == null ? button : Tooltip(message: tooltip!, child: button);
  }
}
