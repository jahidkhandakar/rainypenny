import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../data/repositories/mock_auth_repository.dart';
import '../../domain/entities/password_strength.dart';
import '../controllers/auth_controller.dart';
import '../widgets/auth_scaffold.dart';

/// Signing in to an existing account.
///
/// Creating one, recovering a password and choosing a new one each have their
/// own screen now. Folding them into this one kept the file small but made
/// every state ambiguous — the same button said "Sign in" or "Create account"
/// depending on a flag, and the browser's password manager had no stable form
/// to attach to.
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _showValidation = false;

  @override
  void initState() {
    super.initState();
    // Drop any error left over from the screen the user came from.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) ref.read(authControllerProvider.notifier).reset();
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool get _emailValid => isValidEmail(_emailController.text);

  bool get _passwordValid => _passwordController.text.isNotEmpty;

  Future<void> _submit() async {
    // TEMPORARY: see AppConfig.skipAuthWithoutBackend.
    if (ref.read(skipAuthProvider)) {
      await ref.read(authControllerProvider.notifier).enterWithoutCredentials();
      return;
    }
    if (!_emailValid || !_passwordValid) {
      setState(() => _showValidation = true);
      return;
    }
    // The router redirects once the auth state changes, so there is nothing
    // to navigate to from here.
    await ref
        .read(authControllerProvider.notifier)
        .signIn(_emailController.text, _passwordController.text);
  }

  Future<void> _resend() async {
    final l10n = AppL10n.of(context);
    final sent = await ref
        .read(authControllerProvider.notifier)
        .resendConfirmation(_emailController.text);
    if (!mounted || !sent) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l10n.confirmationResent)));
  }

  void _fillDemoCredentials() {
    setState(() {
      _emailController.text = MockAuthRepository.demoEmail;
      _passwordController.text = MockAuthRepository.demoPassword;
      _showValidation = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    return AuthScaffold(
      title: l10n.signIn,
      subtitle: l10n.signInSubtitle,
      onBack: context.canPop() ? context.pop : null,
      children: [
        AutofillGroup(
          child: Column(
            children: [
              AuthField(
                label: l10n.emailLabel,
                hint: l10n.emailHint,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.username],
                errorText: _showValidation && !_emailValid
                    ? l10n.emailInvalid
                    : null,
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: AppSpacing.lg),
              AuthField(
                label: l10n.passwordLabel,
                controller: _passwordController,
                obscure: _obscurePassword,
                autofillHints: const [AutofillHints.password],
                textInputAction: TextInputAction.done,
                errorText: _showValidation && !_passwordValid
                    ? l10n.passwordRequired
                    : null,
                onSubmitted: (_) => _submit(),
                onChanged: (_) => setState(() {}),
                suffix: ObscureToggle(
                  obscured: _obscurePassword,
                  onChanged: (value) =>
                      setState(() => _obscurePassword = value),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            onPressed: () => context.push(
              AppRoutes.forgotPassword,
              extra: _emailController.text.trim(),
            ),
            child: Text(l10n.forgotPassword),
          ),
        ),
        if (form.failure != null) ...[
          const SizedBox(height: AppSpacing.sm),
          AuthErrorBanner(
            message: authFailureMessage(l10n, form.failure!),
            action: form.canResendConfirmation
                ? TextButton(
                    onPressed: form.isSubmitting ? null : _resend,
                    child: Text(l10n.resendConfirmation),
                  )
                : null,
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
        AuthSubmitButton(
          label: l10n.signIn,
          isBusy: form.isSubmitting,
          onPressed: _submit,
        ),
        const SizedBox(height: AppSpacing.lg),
        AuthFooterPrompt(
          prompt: l10n.noAccountYet,
          actionLabel: l10n.signUp,
          onAction: () => context.push(AppRoutes.signUp),
        ),
        // Without a backend the app runs on an in-memory account list that
        // starts with one seeded user. Saying so is the difference between a
        // demo build someone can open and one that just rejects them.
        if (!AppConfig.hasBackend) ...[
          const SizedBox(height: AppSpacing.lg),
          _DemoCredentialsHint(onFill: _fillDemoCredentials),
        ],
      ],
    );
  }
}

class _DemoCredentialsHint extends StatelessWidget {
  const _DemoCredentialsHint({required this.onFill});

  final VoidCallback onFill;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.tintFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          Icon(
            Icons.science_outlined,
            size: 18,
            color: context.accentOnSurface,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              l10n.demoModeHint,
              style: AppTypography.caption.copyWith(
                color: context.textSecondary,
              ),
            ),
          ),
          TextButton(onPressed: onFill, child: Text(l10n.demoModeFill)),
        ],
      ),
    );
  }
}
