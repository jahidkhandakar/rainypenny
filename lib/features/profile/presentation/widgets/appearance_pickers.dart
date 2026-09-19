import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_accents.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';

/// Light / dark / follow-the-system, as three preview cards.
///
/// Cards rather than a list of radio rows because the choice is about how the
/// app will *look*, and a swatch answers that in a way the word "Dark" does
/// not — particularly for the system option, which otherwise reads as a
/// third colour scheme rather than "whichever the phone is using".
class ThemeModePicker extends ConsumerWidget {
  const ThemeModePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final selected = ref.watch(themeModeProvider);

    String label(ThemeMode mode) => switch (mode) {
      ThemeMode.system => l10n.themeSystem,
      ThemeMode.light => l10n.themeLight,
      ThemeMode.dark => l10n.themeDark,
    };

    return Row(
      children: [
        for (final mode in ThemeMode.values) ...[
          Expanded(
            child: _ThemeModeCard(
              mode: mode,
              label: label(mode),
              selected: selected == mode,
              onTap: () => ref.read(themeModeProvider.notifier).select(mode),
            ),
          ),
          if (mode != ThemeMode.values.last) const SizedBox(width: AppSpacing.md),
        ],
      ],
    );
  }
}

class _ThemeModeCard extends StatelessWidget {
  const _ThemeModeCard({
    required this.mode,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final ThemeMode mode;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // The system card is split down the middle so it reads as "both".
    final preview = switch (mode) {
      ThemeMode.light => const [Color(0xFFF5F7FA), Color(0xFFF5F7FA)],
      ThemeMode.dark => const [Color(0xFF141824), Color(0xFF141824)],
      ThemeMode.system => const [Color(0xFFF5F7FA), Color(0xFF141824)],
    };

    return Semantics(
      button: true,
      selected: selected,
      label: label,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.md),
        child: AnimatedContainer(
          duration: AppDuration.fast,
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(
            color: selected ? context.tintFill : Colors.transparent,
            borderRadius: BorderRadius.circular(AppRadius.md),
            border: Border.all(
              color: selected ? context.accent : context.borderColor,
              width: selected ? 1.6 : 1,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                  border: Border.all(color: context.borderColor),
                  gradient: LinearGradient(colors: preview, stops: const [0.5, 0.5]),
                ),
                alignment: Alignment.center,
                child: Icon(
                  switch (mode) {
                    ThemeMode.system => Icons.brightness_auto_rounded,
                    ThemeMode.light => CupertinoIcons.sun_max,
                    ThemeMode.dark => CupertinoIcons.moon,
                  },
                  size: 19,
                  // Sits over the seam on the system card, so it needs a
                  // colour that works on both halves.
                  color: mode == ThemeMode.light ? const Color(0xFF6B7488) : Colors.white70,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.caption.copyWith(
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                  color: selected ? context.accentOnSurface : context.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The accent swatches.
///
/// Every swatch paints its own gradient rather than a flat circle, so what is
/// on offer is the actual signature gradient the balance card will use — not
/// a dot that turns out to be only half the story.
class AccentPicker extends ConsumerWidget {
  const AccentPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(accentProvider);

    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        for (final accent in AppAccents.values)
          _AccentSwatch(
            accent: accent,
            selected: accent == selected,
            onTap: () => ref.read(accentProvider.notifier).select(accent),
          ),
      ],
    );
  }
}

class _AccentSwatch extends StatelessWidget {
  const _AccentSwatch({required this.accent, required this.selected, required this.onTap});

  final AccentPalette accent;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      label: accentName(AppL10n.of(context), accent),
      child: Tooltip(
        message: accentName(AppL10n.of(context), accent),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: AnimatedContainer(
            duration: AppDuration.fast,
            width: 46,
            height: 46,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: selected ? accent.base : Colors.transparent, width: 2),
            ),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, gradient: accent.gradient),
              child: selected
                  ? const Icon(Icons.check_rounded, size: 19, color: Colors.white)
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}

/// The accent's name in the user's language.
///
/// Falls back to the English name in [AccentPalette.name] rather than failing:
/// adding an accent should not be blocked on forty translations landing first.
String accentName(AppL10n l10n, AccentPalette accent) => switch (accent.id) {
  'teal' => l10n.accentTeal,
  'green' => l10n.accentGreen,
  'sky' => l10n.accentSky,
  'blue' => l10n.accentBlue,
  'indigo' => l10n.accentIndigo,
  'violet' => l10n.accentViolet,
  'pink' => l10n.accentPink,
  'crimson' => l10n.accentCrimson,
  'orange' => l10n.accentOrange,
  'slate' => l10n.accentSlate,
  _ => accent.name,
};
