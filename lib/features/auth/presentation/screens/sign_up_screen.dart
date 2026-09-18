import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/entities/password_strength.dart';
import '../../domain/repositories/auth_repository.dart';
import '../controllers/auth_controller.dart';
import '../widgets/auth_scaffold.dart';
import '../widgets/password_strength_meter.dart';

/// Creating an account.
///
/// Where the backend requires the emailed link to be clicked first, signing up
/// does not produce a session — so this screen has to be able to end on a
/// "check your inbox" panel rather than assuming it always hands over to the
/// router.
class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _showValidation = false;
  bool _acceptedTerms = false;
  bool _awaitingConfirmation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) ref.read(authControllerProvider.notifier).reset();
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool get _nameValid => _nameController.text.trim().isNotEmpty;
  bool get _emailValid => isValidEmail(_emailController.text);
  bool get _passwordValid =>
      scorePassword(_passwordController.text).isAcceptable;

  Future<void> _submit() async {
    // TEMPORARY: see AppConfig.skipAuthWithoutBackend.
    if (ref.read(skipAuthProvider)) {
      await ref
          .read(authControllerProvider.notifier)
          .enterWithoutCredentials(name: _nameController.text);
      return;
    }
    if (!_nameValid || !_emailValid || !_passwordValid || !_acceptedTerms) {
      setState(() => _showValidation = true);
      return;
    }

    final outcome = await ref
        .read(authControllerProvider.notifier)
        .signUp(
          _nameController.text,
          _emailController.text,
          _passwordController.text,
        );
    if (!mounted || outcome == null) return;

    // Held locally as well as on the account, so the first dashboard can greet
    // them by name before any profile record has come back.
    ref.read(displayNameProvider.notifier).set(_nameController.text);

    // A brand-new account always runs setup, even on a device where somebody
    // else has already been through it: the completion flag lives on the
    // device, and inheriting a stranger currency and name is worse than
    // asking four questions again.
    ref.read(onboardingCompleteProvider.notifier).reset();

    if (outcome == SignUpOutcome.confirmationRequired) {
      setState(() => _awaitingConfirmation = true);
    }
    // On SignUpOutcome.signedIn the router takes over: the new session has no
    // completed onboarding, so the redirect sends them into setup.
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    if (_awaitingConfirmation) {
      return _ConfirmEmailPanel(email: _emailController.text.trim());
    }

    return AuthScaffold(
      title: l10n.signUp,
      subtitle: l10n.signUpSubtitle,
      onBack: context.canPop() ? context.pop : null,
      children: [
        AutofillGroup(
          child: Column(
            children: [
              AuthField(
                label: l10n.fullNameLabel,
                hint: l10n.fullNameHint,
                controller: _nameController,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.name],
                errorText: _showValidation && !_nameValid
                    ? l10n.nameRequired
                    : null,
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: AppSpacing.lg),
              AuthField(
                label: l10n.emailLabel,
                hint: l10n.emailHint,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.newUsername],
                errorText: _showValidation && !_emailValid
                    ? l10n.emailInvalid
                    : null,
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: AppSpacing.lg),
              AuthField(
                label: l10n.passwordLabel,
                hint: l10n.passwordHint,
                controller: _passwordController,
                obscure: _obscurePassword,
                autofillHints: const [AutofillHints.newPassword],
                textInputAction: TextInputAction.done,
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
        if (_passwordController.text.isNotEmpty)
          PasswordStrengthMeter(password: _passwordController.text),
        const SizedBox(height: AppSpacing.lg),
        _TermsCheckbox(
          value: _acceptedTerms,
          showError: _showValidation && !_acceptedTerms,
          onChanged: (value) => setState(() => _acceptedTerms = value),
        ),
        if (form.failure != null) ...[
          const SizedBox(height: AppSpacing.lg),
          AuthErrorBanner(
            message: authFailureMessage(l10n, form.failure!),
            action: form.failure!.code == AuthFailureCode.emailAlreadyRegistered
                ? TextButton(
                    onPressed: () => context.pushReplacement(AppRoutes.signIn),
                    child: Text(l10n.signIn),
                  )
                : null,
          ),
        ],
        const SizedBox(height: AppSpacing.xl),
        AuthSubmitButton(
          label: l10n.signUp,
          isBusy: form.isSubmitting,
          onPressed: _submit,
        ),
        const SizedBox(height: AppSpacing.lg),
        AuthFooterPrompt(
          prompt: l10n.haveAccount,
          actionLabel: l10n.signIn,
          onAction: () =>
              context.canPop() ? context.pop() : context.go(AppRoutes.signIn),
        ),
      ],
    );
  }
}

/// The consent row.
///
/// A real checkbox rather than "by continuing you agree…" under the button:
/// several of the markets this ships to require consent to be an affirmative
/// act, and a sentence nobody taps is not one.
class _TermsCheckbox extends StatelessWidget {
  const _TermsCheckbox({
    required this.value,
    required this.showError,
    required this.onChanged,
  });

  final bool value;
  final bool showError;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => onChanged(!value),
          borderRadius: BorderRadius.circular(AppRadius.sm),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(
                    value: value,
                    onChanged: (next) => onChanged(next ?? false),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    l10n.acceptTerms,
                    style: AppTypography.body.copyWith(
                      fontSize: 13,
                      color: context.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showError)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 36, top: 2),
            child: Text(
              l10n.acceptTermsRequired,
              style: AppTypography.caption.copyWith(
                color: context.colors.error,
              ),
            ),
          ),
      ],
    );
  }
}

/// Shown when the backend wants the emailed link clicked before it hands over
/// a session.
class _ConfirmEmailPanel extends ConsumerWidget {
  const _ConfirmEmailPanel({required this.email});

  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    return AuthScaffold(
      icon: Icons.mark_email_unread_outlined,
      title: l10n.confirmEmailTitle,
      subtitle: l10n.confirmEmailBody(email),
      children: [
        AuthSubmitButton(
          label: l10n.backToSignIn,
          isBusy: false,
          onPressed: () => context.go(AppRoutes.signIn),
        ),
        const SizedBox(height: AppSpacing.md),
        Center(
          child: TextButton(
            onPressed: form.isSubmitting
                ? null
                : () async {
                    final messenger = ScaffoldMessenger.of(context);
                    final sent = await ref
                        .read(authControllerProvider.notifier)
                        .resendConfirmation(email);
                    if (!sent) return;
                    messenger.showSnackBar(
                      SnackBar(content: Text(l10n.confirmationResent)),
                    );
                  },
            child: Text(l10n.resendConfirmation),
          ),
        ),
      ],
    );
  }
}
