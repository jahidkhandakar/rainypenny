import 'package:flutter/material.dart';

import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';

/// The shared body of an onboarding step: illustration, heading, explanation,
/// then whatever the step actually asks for.
///
/// Scrollable in every case. A step that fits on a Pixel with the keyboard
/// down does not fit on a small phone in German with the keyboard up, and a
/// setup flow that overflows on step one is not one anybody finishes.
class OnboardingStep extends StatelessWidget {
  const OnboardingStep({
    super.key,
    required this.art,
    required this.title,
    required this.body,
    required this.children,
  });

  final Widget art;
  final String title;
  final String body;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.lg,
        AppSpacing.page,
        AppSpacing.xl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              art,
              const SizedBox(height: AppSpacing.xl),
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTypography.heading.copyWith(
                  fontSize: 23,
                  color: context.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                body,
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(
                  color: context.textSecondary,
                  height: 1.55,
                ),
              ),
              const SizedBox(height: AppSpacing.section),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
