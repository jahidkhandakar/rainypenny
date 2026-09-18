import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../financial/domain/entities/salary_cycle.dart';

/// Which day of the month the salary arrives.
///
/// The single most consequential setting in the app: it decides what "this
/// month" means everywhere else, so the screen shows the resulting cycle dates
/// as the user taps rather than making them work it out.
class PaydayScreen extends ConsumerWidget {
  const PaydayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final payday = ref.watch(paydayProvider);
    final preview = SalaryCycle.current(payday);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.payday)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.page,
          AppSpacing.lg,
          AppSpacing.page,
          AppSpacing.section,
        ),
        children: [
          FadeSlideIn(
            child: Text(
              l10n.paydayDescription,
              style: AppTypography.body.copyWith(
                color: context.textSecondary,
                height: 1.55,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // What the choice actually produces, in the user's own date format.
          FadeSlideIn(
            index: 1,
            child: AppCard(
              color: context.tintFill,
              borderColor: context.accent.withValues(alpha: 0.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.salaryCycle.toUpperCase(),
                    style: AppTypography.overline.copyWith(
                      color: context.accent,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    l10n.cycleOf(
                      dates.long(preview.start),
                      dates.long(preview.end),
                    ),
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.daysLeftInCycle(preview.daysRemainingAt(DateTime.now())),
                    style: AppTypography.caption.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          FadeSlideIn(
            index: 2,
            child: _DayGrid(
              selected: payday,
              onSelect: (day) {
                ref.read(paydayProvider.notifier).select(day);
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(l10n.paydayUpdated)),
                  );
              },
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            l10n.paydayShortMonthNote,
            style: AppTypography.caption.copyWith(
              color: context.textDisabled,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

/// A month-shaped grid of 31 days. Reads faster than a dropdown of 31 entries,
/// and makes the 29th–31st sit visually where they do in a real month.
class _DayGrid extends StatelessWidget {
  const _DayGrid({required this.selected, required this.onSelect});

  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 31,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: AppSpacing.sm,
        crossAxisSpacing: AppSpacing.sm,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final day = index + 1;
        final isSelected = day == selected;

        return Semantics(
          selected: isSelected,
          button: true,
          child: InkWell(
            onTap: () => onSelect(day),
            borderRadius: BorderRadius.circular(AppRadius.md),
            child: AnimatedContainer(
              duration: AppDuration.fast,
              curve: Curves.easeOut,
              decoration: BoxDecoration(
                color: isSelected ? context.accent : context.subtleFill,
                borderRadius: BorderRadius.circular(AppRadius.md),
                border: Border.all(
                  color: isSelected ? context.accent : context.borderColor,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                '$day',
                style: AppTypography.label.copyWith(
                  color: isSelected ? Colors.white : context.textPrimary,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
