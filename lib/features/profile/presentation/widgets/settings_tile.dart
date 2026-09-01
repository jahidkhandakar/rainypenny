import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';

/// A titled group of settings rows.
class SettingsGroup extends StatelessWidget {
  const SettingsGroup({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.xs,
            bottom: AppSpacing.sm,
          ),
          child: Text(
            title.toUpperCase(),
            style: AppTypography.overline.copyWith(color: context.textSecondary),
          ),
        ),
        AppCard(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              for (var i = 0; i < children.length; i++) ...[
                children[i],
                if (i != children.length - 1)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 60),
                    child: Divider(color: context.borderColor, height: 1),
                  ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

/// One settings row: icon, label, optional value, chevron.
class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.label,
    this.value,
    this.onTap,
    this.danger = false,
    this.trailing,
  });

  final IconData icon;
  final String label;
  final String? value;
  final VoidCallback? onTap;
  final bool danger;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final color = danger ? AppColors.error : context.textPrimary;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            IconBadge(
              icon: icon,
              size: 34,
              radius: 11,
              background: danger
                  ? AppColors.error.withValues(alpha: 0.10)
                  : context.tintFill,
              foreground: danger ? AppColors.error : AppColors.primary,
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                label,
                style: AppTypography.title.copyWith(color: color),
              ),
            ),
            if (value != null)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: AppSpacing.sm),
                child: Text(
                  value!,
                  style: AppTypography.body.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ),
            trailing ??
                (onTap == null
                    ? const SizedBox.shrink()
                    : Icon(
                        Icons.chevron_right_rounded,
                        size: 20,
                        color: context.textDisabled,
                      )),
          ],
        ),
      ),
    );
  }
}
