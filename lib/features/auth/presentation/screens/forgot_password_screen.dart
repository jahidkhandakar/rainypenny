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

/// Asking for a reset link.
///
/// The screen deliberately reports the same success for a registered address
/// and an unknown one. Telling them apart would be friendlier by a hair and
/// would also turn this box into a way to find out who has an account here.
class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key, this.initialEmail});

  /// Carried over from the sign-in screen, so someone who mistyped a password
  /// does not have to type their address again.
  final String? initialEmail;

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  late final _emailController = TextEditingController(
    text: widget.initialEmail ?? '',
  );

  bool _showValidation = false;
  bool _sent = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) ref.read(authControllerProvider.notifier).reset();
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool get _emailValid => isValidEmail(_emailController.text);

  Future<void> _submit() async {
    if (!_emailValid) {
      setState(() => _showValidation = true);
      return;
    }
    final ok = await ref
        .read(authControllerProvider.notifier)
        .sendReset(_emailController.text);
    if (!mounted || !ok) return;
    setState(() => _sent = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    if (_sent) {
      return _ResetLinkSentPanel(
        email: _emailController.text.trim(),
        onResend: () => setState(() => _sent = false),
      );
    }

    return AuthScaffold(
      icon: Icons.lock_reset_rounded,
      title: l10n.forgotPasswordTitle,
      subtitle: l10n.forgotPasswordSubtitle,
      onBack: context.canPop() ? context.pop : null,
      children: [
        AuthField(
          label: l10n.emailLabel,
          hint: l10n.emailHint,
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.username],
          textInputAction: TextInputAction.done,
          autofocus: widget.initialEmail == null,
          errorText: _showValidation && !_emailValid ? l10n.emailInvalid : null,
          onSubmitted: (_) => _submit(),
          onChanged: (_) => setState(() {}),
        ),
        if (form.failure != null) ...[
          const SizedBox(height: AppSpacing.lg),
          AuthErrorBanner(message: authFailureMessage(l10n, form.failure!)),
        ],
        const SizedBox(height: AppSpacing.xl),
        AuthSubmitButton(
          label: l10n.sendResetLink,
          isBusy: form.isSubmitting,
          onPressed: _submit,
        ),
        const SizedBox(height: AppSpacing.lg),
        Center(
          child: TextButton(
            onPressed: () =>
                context.canPop() ? context.pop() : context.go(AppRoutes.signIn),
            child: Text(l10n.backToSignIn),
          ),
        ),
      ],
    );
  }
}

class _ResetLinkSentPanel extends StatelessWidget {
  const _ResetLinkSentPanel({required this.email, required this.onResend});

  final String email;
  final VoidCallback onResend;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return AuthScaffold(
      icon: Icons.mark_email_read_outlined,
      title: l10n.resetLinkSentTitle,
      subtitle: l10n.resetLinkSentBody(email),
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: context.tintFill,
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.info_outline_rounded,
                size: 18,
                color: context.accentOnSurface,
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  l10n.resetLinkSentHint,
                  style: AppTypography.caption.copyWith(
                    color: context.textSecondary,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        AuthSubmitButton(
          label: l10n.backToSignIn,
          isBusy: false,
          onPressed: () => context.go(AppRoutes.signIn),
        ),
        const SizedBox(height: AppSpacing.md),
        Center(
          child: TextButton(
            onPressed: onResend,
            child: Text(l10n.tryAnotherEmail),
          ),
        ),
      ],
    );
  }
}
