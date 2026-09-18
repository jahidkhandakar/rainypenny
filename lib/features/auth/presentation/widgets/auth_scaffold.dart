import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/brand_mark.dart';

/// Shared chrome for every auth screen: the mark, a title and subtitle, and a
/// scrolling body that stays centred on a tablet and clear of the keyboard on
/// a phone.
///
/// The language button in the corner is not decoration. This is the first
/// screen a new user ever sees, and if it is in a language they cannot read
/// there is nowhere else for them to change it — Settings is behind the very
/// sign-in they cannot complete.
class AuthScaffold extends ConsumerWidget {
  const AuthScaffold({
    super.key,
    required this.title,
    required this.subtitle,
    required this.children,
    this.onBack,
    this.showLanguageButton = true,
    this.icon,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;

  /// Null hides the back button — the root auth screens have nowhere to go.
  final VoidCallback? onBack;
  final bool showLanguageButton;

  /// Shown instead of the brand mark on the screens that are a step in a
  /// flow rather than a front door.
  final IconData? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 48,
              child: Row(
                children: [
                  if (onBack != null)
                    IconButton(
                      onPressed: onBack,
                      tooltip: MaterialLocalizations.of(
                        context,
                      ).backButtonTooltip,
                      icon: const Icon(Icons.arrow_back_rounded, size: 22),
                    )
                  else
                    const SizedBox(width: AppSpacing.sm),
                  const Spacer(),
                  if (showLanguageButton)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: AppSpacing.sm,
                      ),
                      child: TextButton.icon(
                        onPressed: () => context.push(AppRoutes.language),
                        icon: const Icon(Icons.language_rounded, size: 18),
                        label: Text(
                          AppLocales.byCode(locale.languageCode).nativeName,
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: context.textSecondary,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 460),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.page,
                      AppSpacing.sm,
                      AppSpacing.page,
                      AppSpacing.section,
                    ),
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: icon == null
                            ? const BrandMark(size: 60)
                            : Container(
                                width: 68,
                                height: 68,
                                decoration: BoxDecoration(
                                  color: context.tintFill,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  icon,
                                  size: 30,
                                  color: context.accentOnSurface,
                                ),
                              ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: AppTypography.heading.copyWith(
                          fontSize: 25,
                          color: context.textPrimary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: AppTypography.body.copyWith(
                          color: context.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.section),
                      ...children,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A labelled text field, matching the spacing the auth screens use.
class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.label,
    required this.controller,
    this.hint,
    this.errorText,
    this.keyboardType,
    this.obscure = false,
    this.autofillHints,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.suffix,
    this.onChanged,
    this.onSubmitted,
    this.autofocus = false,
    this.enabled = true,
  });

  final String label;
  final TextEditingController controller;
  final String? hint;
  final String? errorText;
  final TextInputType? keyboardType;
  final bool obscure;
  final Iterable<String>? autofillHints;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final Widget? suffix;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool autofocus;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: AppSpacing.sm,
            start: 2,
          ),
          child: Text(
            label,
            style: AppTypography.label.copyWith(color: context.textSecondary),
          ),
        ),
        TextField(
          controller: controller,
          obscureText: obscure,
          enabled: enabled,
          autofocus: autofocus,
          keyboardType: keyboardType,
          autocorrect: !obscure && keyboardType != TextInputType.emailAddress,
          autofillHints: autofillHints,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            hintText: hint,
            errorText: errorText,
            suffixIcon: suffix,
          ),
        ),
      ],
    );
  }
}

/// Toggles a password field between hidden and visible.
class ObscureToggle extends StatelessWidget {
  const ObscureToggle({
    super.key,
    required this.obscured,
    required this.onChanged,
  });

  final bool obscured;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return IconButton(
      tooltip: obscured ? l10n.showPassword : l10n.hidePassword,
      icon: Icon(
        obscured ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        size: 20,
      ),
      onPressed: () => onChanged(!obscured),
    );
  }
}

/// The error strip shown above the primary action.
///
/// A tinted block rather than a line of red text: at 13pt on a busy form the
/// plain text version was routinely missed, and a failed sign-in that looks
/// like nothing happened is the fastest way to lose someone.
class AuthErrorBanner extends StatelessWidget {
  const AuthErrorBanner({super.key, required this.message, this.action});

  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.error_outline_rounded,
                size: 18,
                color: AppColors.error,
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  message,
                  style: AppTypography.body.copyWith(
                    fontSize: 13,
                    color: AppColors.error,
                  ),
                ),
              ),
            ],
          ),
          if (action != null)
            Align(alignment: AlignmentDirectional.centerStart, child: action),
        ],
      ),
    );
  }
}

/// The primary action on an auth screen, with its own busy state.
class AuthSubmitButton extends StatelessWidget {
  const AuthSubmitButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isBusy,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isBusy ? null : onPressed,
      child: isBusy
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.2,
                color: Colors.white,
              ),
            )
          : Text(label),
    );
  }
}

/// The "New here? Create account" line at the foot of the auth screens.
///
/// A [Wrap] rather than a [Row]: the prompt and the action can both be long
/// once translated, and together they overflow a narrow phone in several of
/// the shipped languages.
class AuthFooterPrompt extends StatelessWidget {
  const AuthFooterPrompt({
    super.key,
    required this.prompt,
    required this.actionLabel,
    required this.onAction,
  });

  final String prompt;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          prompt,
          style: AppTypography.body.copyWith(color: context.textSecondary),
        ),
        TextButton(onPressed: onAction, child: Text(actionLabel)),
      ],
    );
  }
}
