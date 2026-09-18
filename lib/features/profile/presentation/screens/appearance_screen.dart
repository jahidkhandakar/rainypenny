import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../widgets/appearance_pickers.dart';

/// Light or dark, and which colour.
///
/// The preview at the top is the point of the screen. Ten accents times three
/// theme modes is thirty combinations, and nobody is going to find the one
/// they want by tapping a swatch and navigating back to the dashboard to see
/// what it did.
class AppearanceScreen extends ConsumerWidget {
  const AppearanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final accent = ref.watch(accentProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.appearance)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.sm,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          const FadeSlideIn(child: _AppearancePreview()),
          const SizedBox(height: AppSpacing.section),
          FadeSlideIn(
            index: 1,
            child: _Section(
              title: l10n.theme,
              caption: l10n.themeCaption,
              child: const ThemeModePicker(),
            ),
          ),
          const SizedBox(height: AppSpacing.section),
          FadeSlideIn(
            index: 2,
            child: _Section(
              title: l10n.accentColor,
              caption: l10n.accentColorCaption,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AccentPicker(),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    accentName(l10n, accent),
                    style: AppTypography.title.copyWith(
                      color: context.accentOnSurface,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            l10n.accentSemanticsNote,
            style: AppTypography.caption.copyWith(
              color: context.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

/// A miniature of the surfaces the accent actually changes: the gradient hero,
/// a filled button, a selected chip and the chart ramp.
class _AppearancePreview extends StatelessWidget {
  const _AppearancePreview();

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              gradient: context.brandGradient,
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.totalBalance.toUpperCase(),
                  style: AppTypography.overline.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  '••••••',
                  style: AppTypography.display.copyWith(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                decoration: BoxDecoration(
                  color: context.accent,
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Text(
                  l10n.save,
                  style: AppTypography.label.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                decoration: BoxDecoration(
                  color: context.tintFill,
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Text(
                  l10n.selected,
                  style: AppTypography.label.copyWith(
                    color: context.accentOnSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          // The chart ramp follows the accent too, so it belongs in the
          // preview — it is the largest area of colour in the app.
          Row(
            children: [
              for (final color in context.chartSeries)
                Expanded(
                  child: Container(
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(AppRadius.pill),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.caption,
    required this.child,
  });

  final String title;
  final String caption;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: AppTypography.overline.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          caption,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: AppSpacing.md),
        child,
      ],
    );
  }
}
