import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../controllers/auth_controller.dart';

/// Sign in and sign up share one screen: the same three fields, with the name
/// row appearing only when creating an account.
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isRegistering = false;
  bool _obscurePassword = true;
  bool _showValidation = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool get _emailValid =>
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(_emailController.text.trim());

  bool get _passwordValid => _passwordController.text.length >= 8;

  bool get _nameValid =>
      !_isRegistering || _nameController.text.trim().isNotEmpty;

  Future<void> _submit() async {
    if (!_emailValid || !_passwordValid || !_nameValid) {
      setState(() => _showValidation = true);
      return;
    }

    final controller = ref.read(authControllerProvider.notifier);
    // The router redirects once the auth state changes, so there is nothing to
    // navigate to here.
    if (_isRegistering) {
      await controller.signUp(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
      );
    } else {
      await controller.signIn(
        _emailController.text,
        _passwordController.text,
      );
    }
  }

  Future<void> _resetPassword() async {
    final l10n = AppL10n.of(context);
    if (!_emailValid) {
      setState(() => _showValidation = true);
      return;
    }

    final sent =
        await ref.read(authControllerProvider.notifier).sendReset(
              _emailController.text,
            );
    if (!mounted || !sent) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.resetSent)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final form = ref.watch(authControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: ListView(
              padding: const EdgeInsets.all(AppSpacing.page),
              shrinkWrap: true,
              children: [
                const Center(child: BrandMark(size: 64)),
                const SizedBox(height: AppSpacing.xl),
                Text(
                  _isRegistering ? l10n.signUp : l10n.signIn,
                  textAlign: TextAlign.center,
                  style: AppTypography.heading.copyWith(
                    fontSize: 26,
                    color: context.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  _isRegistering ? l10n.signUpSubtitle : l10n.signInSubtitle,
                  textAlign: TextAlign.center,
                  style: AppTypography.body.copyWith(
                    color: context.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSpacing.section),

                if (_isRegistering) ...[
                  _Label(l10n.fullNameLabel),
                  TextField(
                    controller: _nameController,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: l10n.fullNameHint,
                      errorText: _showValidation && !_nameValid
                          ? l10n.nameRequired
                          : null,
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],

                _Label(l10n.emailLabel),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: l10n.emailHint,
                    errorText: _showValidation && !_emailValid
                        ? l10n.emailInvalid
                        : null,
                  ),
                  onChanged: (_) => setState(() {}),
                ),
                const SizedBox(height: AppSpacing.lg),

                _Label(l10n.passwordLabel),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (_) => _submit(),
                  decoration: InputDecoration(
                    hintText: l10n.passwordHint,
                    errorText: _showValidation && !_passwordValid
                        ? l10n.passwordTooShort
                        : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 20,
                      ),
                      onPressed: () =>
                          setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                  onChanged: (_) => setState(() {}),
                ),

                if (!_isRegistering)
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: _resetPassword,
                      child: Text(l10n.forgotPassword),
                    ),
                  ),

                if (form.error != null)
                  Padding(
                    padding: const EdgeInsets.only(top: AppSpacing.md),
                    child: Text(
                      form.error!,
                      textAlign: TextAlign.center,
                      style: AppTypography.body.copyWith(
                        fontSize: 13,
                        color: AppColors.error,
                      ),
                    ),
                  ),

                const SizedBox(height: AppSpacing.xl),
                ElevatedButton(
                  onPressed: form.isSubmitting ? null : _submit,
                  child: form.isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.2,
                            color: Colors.white,
                          ),
                        )
                      : Text(_isRegistering ? l10n.signUp : l10n.signIn),
                ),
                const SizedBox(height: AppSpacing.lg),
                // Wrap rather than Row: the prompt and the action can be long
                // once translated, and they must never overflow.
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      _isRegistering ? l10n.haveAccount : l10n.noAccountYet,
                      style: AppTypography.body.copyWith(
                        color: context.textSecondary,
                      ),
                    ),
                    TextButton(
                      onPressed: () => setState(() {
                        _isRegistering = !_isRegistering;
                        _showValidation = false;
                      }),
                      child: Text(_isRegistering ? l10n.signIn : l10n.signUp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  const _Label(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm, left: 2),
      child: Text(
        text,
        style: AppTypography.label.copyWith(color: context.textSecondary),
      ),
    );
  }
}
