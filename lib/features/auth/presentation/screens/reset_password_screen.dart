import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/entities/password_strength.dart';
import '../controllers/auth_controller.dart';
import '../widgets/auth_scaffold.dart';
import '../widgets/password_strength_meter.dart';

/// Choosing a new password.
///
/// Reached two ways: from the recovery link, which opens a session flagged for
/// password recovery, and from Profile → Change password for someone already
/// signed in. Both end in the same call, so both live here.
class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  bool _obscure = true;
  bool _showValidation = false;
  bool _done = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) ref.read(authControllerProvider.notifier).reset();
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  bool get _passwordValid =>
      scorePassword(_passwordController.text).isAcceptable;

  bool get _matches => _confirmController.text == _passwordController.text;

  Future<void> _submit() async {
    if (!_passwordValid || !_matches) {
      setState(() => _showValidation = true);
      return;
    }
    final ok = await ref
        .read(authControllerProvider.notifier)
        .updatePassword(_passwordController.text);
    if (!mounted || !ok) return;
    setState(() => _done = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    if (_done) return const _PasswordChangedPanel();

    return AuthScaffold(
      icon: Icons.password_rounded,
      title: l10n.resetPasswordTitle,
      subtitle: l10n.resetPasswordSubtitle,
      showLanguageButton: false,
      children: [
        AutofillGroup(
          child: Column(
            children: [
              AuthField(
                label: l10n.newPasswordLabel,
                hint: l10n.passwordHint,
                controller: _passwordController,
                obscure: _obscure,
                autofocus: true,
                autofillHints: const [AutofillHints.newPassword],
                onChanged: (_) => setState(() {}),
                suffix: ObscureToggle(
                  obscured: _obscure,
                  onChanged: (value) => setState(() => _obscure = value),
                ),
              ),
              if (_passwordController.text.isNotEmpty)
                PasswordStrengthMeter(password: _passwordController.text),
              const SizedBox(height: AppSpacing.lg),
              AuthField(
                label: l10n.confirmPasswordLabel,
                controller: _confirmController,
                obscure: _obscure,
                autofillHints: const [AutofillHints.newPassword],
                textInputAction: TextInputAction.done,
                errorText: _showValidation && !_matches
                    ? l10n.passwordsDoNotMatch
                    : null,
                onSubmitted: (_) => _submit(),
                onChanged: (_) => setState(() {}),
              ),
            ],
          ),
        ),
        if (form.failure != null) ...[
          const SizedBox(height: AppSpacing.lg),
          AuthErrorBanner(message: authFailureMessage(l10n, form.failure!)),
        ],
        const SizedBox(height: AppSpacing.xl),
        AuthSubmitButton(
          label: l10n.savePassword,
          isBusy: form.isSubmitting,
          onPressed: _submit,
        ),
        const SizedBox(height: AppSpacing.lg),
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.subtleFill,
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          child: Text(
            l10n.passwordAdvice,
            style: AppTypography.caption.copyWith(
              color: context.textSecondary,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _PasswordChangedPanel extends ConsumerWidget {
  const _PasswordChangedPanel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);

    return AuthScaffold(
      icon: Icons.check_circle_outline_rounded,
      title: l10n.passwordChangedTitle,
      subtitle: l10n.passwordChangedBody,
      showLanguageButton: false,
      children: [
        AuthSubmitButton(
          label: l10n.continueLabel,
          isBusy: false,
          // The recovery session is a valid one, so there is no need to make
          // them sign in again — resolving the recovery flag is enough for the
          // router to let them through.
          onPressed: () => context.go(AppRoutes.home),
        ),
      ],
    );
  }
}
