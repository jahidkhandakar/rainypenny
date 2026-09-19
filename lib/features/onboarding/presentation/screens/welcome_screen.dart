import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/app_locales.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../widgets/onboarding_art.dart';

/// The first screen a brand-new install shows: what the app is for, in four
/// slides, before it asks anyone to type anything.
///
/// Deliberately ahead of sign-up rather than after it. A stranger being asked
/// for an email address on the first frame has no reason yet to give one.
class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  final _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _next(int slideCount) {
    if (_index >= slideCount - 1) {
      context.push(AppRoutes.signUp);
      return;
    }
    _controller.nextPage(duration: AppDuration.normal, curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final locale = ref.watch(localeProvider);
    final slides = _slides(l10n);
    final isLast = _index == slides.length - 1;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              child: Row(
                children: [
                  const BrandMark(size: 26),
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    l10n.appName,
                    style: AppTypography.title.copyWith(color: context.textPrimary),
                  ),
                  const Spacer(),
                  // Language first, and reachable from the very first frame:
                  // everything after this point assumes the user can read it.
                  TextButton.icon(
                    onPressed: () => context.push(AppRoutes.language),
                    icon: const Icon(Icons.language_rounded, size: 18),
                    label: Text(AppLocales.byCode(locale.languageCode).nativeName),
                    style: TextButton.styleFrom(foregroundColor: context.textSecondary),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: slides.length,
                onPageChanged: (value) => setState(() => _index = value),
                itemBuilder: (context, index) => _Slide(slide: slides[index]),
              ),
            ),
            PageDots(count: slides.length, index: _index),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.page,
                AppSpacing.xl,
                AppSpacing.page,
                AppSpacing.lg,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => _next(slides.length),
                    child: Text(isLast ? l10n.getStarted : l10n.next),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  SizedBox(
                    height: 44,
                    child: TextButton(
                      onPressed: () => context.push(AppRoutes.signIn),
                      child: Text(l10n.alreadyHaveAccount),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<_WelcomeSlide> _slides(AppL10n l10n) => [
    _WelcomeSlide(
      icon: CupertinoIcons.creditcard_fill,
      title: l10n.welcomeTrackTitle,
      body: l10n.welcomeTrackBody,
      chips: [
        OnboardingArtChip(label: l10n.income, icon: CupertinoIcons.arrow_down, x: -0.72, y: -0.55),
        OnboardingArtChip(label: l10n.expenses, icon: CupertinoIcons.arrow_up, x: 0.74, y: 0.5),
      ],
    ),
    _WelcomeSlide(
      icon: CupertinoIcons.chart_pie_fill,
      title: l10n.welcomeBudgetTitle,
      body: l10n.welcomeBudgetBody,
      chips: [
        OnboardingArtChip(
          label: l10n.budget,
          icon: CupertinoIcons.money_dollar_circle_fill,
          x: 0.7,
          y: -0.5,
        ),
      ],
    ),
    _WelcomeSlide(
      icon: CupertinoIcons.flag_fill,
      title: l10n.welcomeGoalsTitle,
      body: l10n.welcomeGoalsBody,
      chips: [
        OnboardingArtChip(
          label: l10n.savings,
          icon: CupertinoIcons.graph_square_fill,
          x: -0.7,
          y: 0.5,
        ),
      ],
    ),
    _WelcomeSlide(
      icon: CupertinoIcons.lock_fill,
      title: l10n.welcomePrivacyTitle,
      body: l10n.welcomePrivacyBody,
    ),
  ];
}

class _WelcomeSlide {
  const _WelcomeSlide({
    required this.icon,
    required this.title,
    required this.body,
    this.chips = const [],
  });

  final IconData icon;
  final String title;
  final String body;
  final List<OnboardingArtChip> chips;
}

class _Slide extends StatelessWidget {
  const _Slide({required this.slide});

  final _WelcomeSlide slide;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.page),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: AppSpacing.xl),
          OnboardingArt(icon: slide.icon, chips: slide.chips),
          const SizedBox(height: AppSpacing.section),
          Text(
            slide.title,
            textAlign: TextAlign.center,
            style: AppTypography.heading.copyWith(fontSize: 24, color: context.textPrimary),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            slide.body,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(color: context.textSecondary, height: 1.6),
          ),
        ],
      ),
    );
  }
}
