import 'package:flutter/material.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/entities/password_strength.dart';

/// A four-step meter under the password field.
///
/// It is colour *and* a word, never colour alone: a red-green bar tells a
/// user with deuteranopia nothing, and this is the one control on the screen
/// they cannot afford to misread.
class PasswordStrengthMeter extends StatelessWidget {
  const PasswordStrengthMeter({super.key, required this.password});

  final String password;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final strength = scorePassword(password);
    final color = _colorFor(context, strength);

    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: TweenAnimationBuilder<double>(
              duration: AppDuration.normal,
              curve: Curves.easeOut,
              tween: Tween(begin: 0, end: strength.fraction),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                minHeight: 5,
                backgroundColor: context.subtleFill,
                valueColor: AlwaysStoppedAnimation(color),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xs + 2),
          Row(
            children: [
              Text(
                _labelFor(l10n, strength),
                style: AppTypography.caption.copyWith(
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              // Only worth saying while it still applies; repeating the rule
              // after it is met just adds noise to the form.
              if (!strength.isAcceptable)
                Flexible(
                  child: Text(
                    l10n.passwordTooShort,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  String _labelFor(AppL10n l10n, PasswordStrength strength) =>
      switch (strength) {
        PasswordStrength.tooShort => l10n.passwordStrengthTooShort,
        PasswordStrength.weak => l10n.passwordStrengthWeak,
        PasswordStrength.fair => l10n.passwordStrengthFair,
        PasswordStrength.good => l10n.passwordStrengthGood,
        PasswordStrength.strong => l10n.passwordStrengthStrong,
      };

  /// The top of the scale uses the accent rather than a fixed green: it is a
  /// success state in the app's own colour, and it keeps the meter from
  /// clashing with whichever theme the user has chosen.
  Color _colorFor(BuildContext context, PasswordStrength strength) =>
      switch (strength) {
        PasswordStrength.tooShort => context.textDisabled,
        PasswordStrength.weak => AppColors.error,
        PasswordStrength.fair => AppColors.warning,
        PasswordStrength.good => context.accentOnSurface,
        PasswordStrength.strong => context.accentOnSurface,
      };
}
