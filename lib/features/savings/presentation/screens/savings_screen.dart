import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../../financial/domain/services/savings_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../controllers/savings_controller.dart';
import '../widgets/goal_editor_sheet.dart';
import '../widgets/savings_goal_card.dart';

/// Goals the user is putting money aside for. Deliberately the most
/// encouraging screen in the app.
class SavingsScreen extends ConsumerWidget {
  const SavingsScreen({super.key});

  Future<void> _addFunds(
    BuildContext context,
    WidgetRef ref,
    SavingsGoal goal,
  ) async {
    final amount = await showModalBottomSheet<double>(
      context: context,
      isScrollControlled: true,
      builder: (context) => _ContributeSheet(goal: goal),
    );
    if (amount == null || amount <= 0) return;

    await ref.read(savingsControllerProvider).contribute(goal.id, amount);
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(AppL10n.of(context).fundsAdded)),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final goals = ref.watch(savingsGoalsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.savings),
        actions: [
          IconButton(
            tooltip: l10n.newGoal,
            icon: const Icon(Icons.add_rounded),
            onPressed: () => showGoalEditor(context),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: goals.when(
        data: (list) => ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.page,
            AppSpacing.sm,
            AppSpacing.page,
            AppSpacing.section,
          ),
          children: [
            FadeSlideIn(index: 0, child: _SavingsSummaryCard(goals: list)),
            const SizedBox(height: AppSpacing.xl),
            SectionHeader(title: l10n.yourGoals),
            for (var i = 0; i < list.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.md),
                child: FadeSlideIn(
                  index: i + 1,
                  child: SavingsGoalCard(
                    goal: list[i],
                    onAddFunds: () => _addFunds(context, ref, list[i]),
                    onTap: () => showGoalEditor(context, goal: list[i]),
                  ),
                ),
              ),
            if (list.isEmpty)
              EmptyState(
                icon: Icons.savings_rounded,
                title: l10n.noGoalsTitle,
                message: l10n.noGoalsBody,
                actionLabel: l10n.newGoal,
                onAction: () => showGoalEditor(context),
              ),
          ],
        ),
        loading: () => ListView(
          padding: const EdgeInsets.all(AppSpacing.page),
          children: const [
            SkeletonCard(height: 120),
            SizedBox(height: AppSpacing.lg),
            SkeletonCard(height: 140),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 140),
          ],
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(savingsGoalsProvider),
        ),
      ),
    );
  }
}

class _SavingsSummaryCard extends ConsumerWidget {
  const _SavingsSummaryCard({required this.goals});

  final List<SavingsGoal> goals;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);

    final saved = SavingsCalculator.totalSaved(goals);
    final target = SavingsCalculator.totalTarget(goals);
    final progress = SavingsCalculator.overallProgress(goals);
    final monthly = SavingsCalculator.monthlyCommitment(goals);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryLight, AppColors.secondary],
        ),
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.saved.toUpperCase(),
            style: AppTypography.overline.copyWith(
              color: Colors.white.withValues(alpha: 0.75),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    money.format(saved, decimals: false),
                    style: AppTypography.display.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '/ ${money.format(target, decimals: false)}',
                style: AppTypography.body.copyWith(
                  color: Colors.white.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AppProgressBar(
            value: progress,
            color: Colors.white,
            trackColor: Colors.white.withValues(alpha: 0.24),
            height: 8,
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Text(
                '${(progress * 100).round()}%',
                style: AppTypography.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Text(
                '${l10n.monthlyContribution} '
                '${money.format(monthly, decimals: false)}',
                style: AppTypography.caption.copyWith(
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Quick-add sheet with preset amounts, so the demo can move money into a goal
/// and watch every dependent figure update.
class _ContributeSheet extends ConsumerStatefulWidget {
  const _ContributeSheet({required this.goal});

  final SavingsGoal goal;

  @override
  ConsumerState<_ContributeSheet> createState() => _ContributeSheetState();
}

class _ContributeSheetState extends ConsumerState<_ContributeSheet> {
  double _amount = 0;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setAmount(double value) {
    setState(() => _amount = value);
    _controller.text = value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final presets = [50.0, 100.0, 250.0, widget.goal.monthlyContribution];

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.page,
            0,
            AppSpacing.page,
            AppSpacing.xl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${l10n.addFunds} · ${widget.goal.name}',
                style: AppTypography.sectionTitle.copyWith(
                  color: context.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                '${money.format(widget.goal.remaining, decimals: false)} '
                '${l10n.remaining.toLowerCase()}',
                style: AppTypography.caption.copyWith(
                  color: context.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              TextField(
                controller: _controller,
                autofocus: true,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: AppTypography.amountLarge.copyWith(
                  color: context.textPrimary,
                ),
                decoration: InputDecoration(hintText: '0'),
                onChanged: (value) => setState(
                  () => _amount = double.tryParse(value.replaceAll(',', '.')) ?? 0,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Wrap(
                spacing: AppSpacing.sm,
                children: [
                  for (final preset in presets)
                    ActionChip(
                      label: Text(money.format(preset, decimals: false)),
                      onPressed: () => _setAmount(preset),
                      backgroundColor: context.tintFill,
                      side: BorderSide(color: context.borderColor),
                      labelStyle: AppTypography.label.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
              ElevatedButton(
                onPressed: _amount > 0
                    ? () => Navigator.of(context).pop(_amount)
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondary,
                ),
                child: Text(l10n.addFunds),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
