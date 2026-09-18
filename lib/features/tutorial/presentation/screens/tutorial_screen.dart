import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../onboarding/presentation/widgets/onboarding_art.dart';
import '../tutorial_content.dart';

/// The beginner's guide.
///
/// Offered at the end of setup and replayable for ever after from Settings, so
/// nobody is stuck having skipped it on day one. Marking it complete happens
/// on the way out by any route — finishing it, closing it, or the back
/// gesture — because a guide that reappears after being dismissed reads as a
/// bug, not as helpfulness.
class TutorialScreen extends ConsumerStatefulWidget {
  const TutorialScreen({super.key});

  @override
  ConsumerState<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends ConsumerState<TutorialScreen> {
  final _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _close() {
    ref.read(tutorialCompleteProvider.notifier).complete();
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(AppRoutes.home);
    }
  }

  /// Leaves the guide for the screen a chapter is about.
  ///
  /// A bottom-navigation destination replaces the location outright. Anything
  /// else is pushed on top of the dashboard instead: those routes sit above
  /// the shell, so going straight to one would leave it as the only entry in
  /// the stack — no back button, and the system gesture closing the app.
  ///
  /// Either way the guide itself is left behind rather than stacked
  /// underneath, so backing out of Budgets does not land in a tour the user
  /// thought they had finished.
  void _visit(String destination) {
    ref.read(tutorialCompleteProvider.notifier).complete();
    context.go(
      AppRoutes.branches.contains(destination) ? destination : AppRoutes.home,
    );
    if (!AppRoutes.branches.contains(destination)) {
      context.push(destination);
    }
  }

  void _next(int count) {
    if (_index >= count - 1) {
      _close();
      return;
    }
    _controller.nextPage(
      duration: AppDuration.normal,
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final chapters = tutorialChapters(l10n);
    final isLast = _index == chapters.length - 1;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _close();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.beginnersGuide),
          leading: IconButton(
            tooltip: l10n.close,
            icon: const Icon(Icons.close_rounded),
            onPressed: _close,
          ),
          actions: [
            if (!isLast) TextButton(onPressed: _close, child: Text(l10n.skip)),
            const SizedBox(width: AppSpacing.sm),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.page),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.pill),
                child: TweenAnimationBuilder<double>(
                  duration: AppDuration.normal,
                  curve: Curves.easeOut,
                  tween: Tween(begin: 0, end: (_index + 1) / chapters.length),
                  builder: (context, value, _) => LinearProgressIndicator(
                    value: value,
                    minHeight: 5,
                    backgroundColor: context.subtleFill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: chapters.length,
                onPageChanged: (value) => setState(() => _index = value),
                itemBuilder: (context, index) => _ChapterPage(
                  chapter: chapters[index],
                  number: index + 1,
                  total: chapters.length,
                  onVisit: _visit,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.page,
                AppSpacing.sm,
                AppSpacing.page,
                AppSpacing.lg,
              ),
              child: Column(
                children: [
                  PageDots(count: chapters.length, index: _index),
                  const SizedBox(height: AppSpacing.lg),
                  Row(
                    children: [
                      if (_index > 0) ...[
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => _controller.previousPage(
                              duration: AppDuration.normal,
                              curve: Curves.easeOutCubic,
                            ),
                            child: Text(l10n.back),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                      ],
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () => _next(chapters.length),
                          child: Text(isLast ? l10n.guideFinish : l10n.next),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChapterPage extends StatelessWidget {
  const _ChapterPage({
    required this.chapter,
    required this.number,
    required this.total,
    required this.onVisit,
  });

  final TutorialChapter chapter;
  final int number;
  final int total;
  final ValueChanged<String> onVisit;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.lg,
        AppSpacing.page,
        AppSpacing.xl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OnboardingArt(icon: chapter.icon, size: 132),
              const SizedBox(height: AppSpacing.lg),
              Text(
                l10n.chapterOf(number, total),
                textAlign: TextAlign.center,
                style: AppTypography.overline.copyWith(
                  color: context.accentOnSurface,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                chapter.title,
                textAlign: TextAlign.center,
                style: AppTypography.heading.copyWith(
                  fontSize: 23,
                  color: context.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                chapter.body,
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(
                  color: context.textSecondary,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              Container(
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: context.cardColor,
                  borderRadius: BorderRadius.circular(AppRadius.lg),
                  border: Border.all(color: context.borderColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < chapter.tips.length; i++) ...[
                      _Tip(text: chapter.tips[i]),
                      if (i != chapter.tips.length - 1)
                        const SizedBox(height: AppSpacing.md),
                    ],
                  ],
                ),
              ),
              if (chapter.destination != null) ...[
                const SizedBox(height: AppSpacing.lg),
                OutlinedButton.icon(
                  onPressed: () => onVisit(chapter.destination!),
                  icon: const Icon(Icons.arrow_forward_rounded, size: 18),
                  label: Text(
                    l10n.guideOpenScreen(chapter.destinationLabel ?? ''),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _Tip extends StatelessWidget {
  const _Tip({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            Icons.check_circle_outline_rounded,
            size: 17,
            color: context.accentOnSurface,
          ),
        ),
        const SizedBox(width: AppSpacing.sm + 2),
        Expanded(
          child: Text(
            text,
            style: AppTypography.body.copyWith(
              fontSize: 14,
              color: context.textPrimary,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
