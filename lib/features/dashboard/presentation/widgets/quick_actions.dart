import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';

/// Five entry points into the flows a user reaches for most.
///
/// All five share one icon treatment — a tinted circle with the primary blue
/// glyph — rather than five competing colours.
class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    final actions = <_QuickAction>[
      _QuickAction(
        label: l10n.income,
        icon: Icons.add_circle_outline_rounded,
        onTap: () => context.push('${AppRoutes.addTransaction}?type=income'),
      ),
      _QuickAction(
        label: l10n.expenses,
        icon: Icons.remove_circle_outline_rounded,
        onTap: () => context.push('${AppRoutes.addTransaction}?type=expense'),
      ),
      _QuickAction(
        label: l10n.budget,
        icon: Icons.donut_small_rounded,
        onTap: () => context.push(AppRoutes.budget),
      ),
      _QuickAction(
        label: l10n.savings,
        icon: Icons.savings_rounded,
        onTap: () => context.push(AppRoutes.savings),
      ),
      _QuickAction(
        label: l10n.loansAndDebts,
        icon: Icons.account_balance_rounded,
        onTap: () => context.push(AppRoutes.loans),
      ),
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final action in actions)
          Expanded(child: _QuickActionButton(action: action)),
      ],
    );
  }
}

class _QuickAction {
  const _QuickAction({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
}

class _QuickActionButton extends StatelessWidget {
  const _QuickActionButton({required this.action});

  final _QuickAction action;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: action.onTap,
      radius: 46,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: context.tintFill,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Icon(action.icon, size: 23, color: AppColors.primary),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              action.label,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.caption.copyWith(
                fontSize: 11.5,
                color: context.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
