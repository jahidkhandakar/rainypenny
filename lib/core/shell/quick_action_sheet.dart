import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/budget/presentation/widgets/budget_editor_sheet.dart';
import '../../features/loans/presentation/widgets/loan_editor_sheet.dart';
import '../../features/savings/presentation/widgets/goal_editor_sheet.dart';
import '../localization/generated/app_localizations.dart';
import '../routing/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';
import '../theme/app_typography.dart';

/// What the user picked from the menu.
enum QuickAction {
  addExpense,
  addIncome,
  addLoan,
  addBudget,
  addGoal,
  viewReports,
  viewBudgets,
  viewSavings,
}

/// The menu behind the centre Add button.
///
/// Two tiers, and the split is deliberate. The top tier is what the button
/// actually means — recording something — with money out and money in as the
/// largest, closest targets because they are used many times a day. The bottom
/// tier is navigation, kept visually quiet so it never competes: those screens
/// are reachable from the drawer too, they are simply hard to discover there.
///
/// The sheet only reports a choice; acting on it happens here, *after* the
/// sheet has finished closing. Several destinations are themselves modal
/// sheets, and opening one before this has dismissed leaves the two stacked.
Future<void> showQuickActionSheet(BuildContext context, WidgetRef ref) async {
  final choice = await showModalBottomSheet<QuickAction>(
    context: context,
    isScrollControlled: true,
    builder: (context) => const _QuickActionSheet(),
  );

  if (choice == null || !context.mounted) return;
  final router = GoRouter.of(context);

  switch (choice) {
    case QuickAction.addExpense:
      router.push('${AppRoutes.addTransaction}?type=expense');
    case QuickAction.addIncome:
      router.push('${AppRoutes.addTransaction}?type=income');
    case QuickAction.addLoan:
      await showLoanEditor(context);
    case QuickAction.addBudget:
      await startAddBudget(context, ref);
    case QuickAction.addGoal:
      await showGoalEditor(context);
    case QuickAction.viewReports:
      router.go(AppRoutes.reports);
    case QuickAction.viewBudgets:
      router.push(AppRoutes.budget);
    case QuickAction.viewSavings:
      router.push(AppRoutes.savings);
  }
}

class _QuickActionSheet extends ConsumerWidget {
  const _QuickActionSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    void choose(QuickAction action) => Navigator.of(context).pop(action);

    return SafeArea(
      // Capped and scrollable: eight rows plus two headers is taller than a
      // small phone, and the last "Jump to" entry must stay reachable.
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.9,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.page,
            0,
            AppSpacing.page,
            AppSpacing.xl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.quickActionsTitle,
                style: AppTypography.sectionTitle.copyWith(
                  color: context.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              _SectionLabel(l10n.createSection),
              const SizedBox(height: AppSpacing.md),

              // The two hot actions: biggest targets, colour-coded the way the
              // rest of the app codes money out and money in.
              Row(
                children: [
                  Expanded(
                    child: _HeroAction(
                      label: l10n.addExpense,
                      icon: Icons.arrow_upward_rounded,
                      color: context.expenseColor,
                      onTap: () => choose(QuickAction.addExpense),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: _HeroAction(
                      label: l10n.addIncome,
                      icon: Icons.arrow_downward_rounded,
                      color: AppColors.primary,
                      onTap: () => choose(QuickAction.addIncome),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),

              Row(
                children: [
                  Expanded(
                    child: _SecondaryAction(
                      label: l10n.addLoanAction,
                      icon: Icons.account_balance_rounded,
                      onTap: () => choose(QuickAction.addLoan),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: _SecondaryAction(
                      label: l10n.addBudgetAction,
                      icon: Icons.donut_small_rounded,
                      onTap: () => choose(QuickAction.addBudget),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: _SecondaryAction(
                      label: l10n.addGoalAction,
                      icon: Icons.savings_rounded,
                      onTap: () => choose(QuickAction.addGoal),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.lg),
              Divider(color: context.borderColor, height: 1),
              const SizedBox(height: AppSpacing.lg),

              _SectionLabel(l10n.jumpToSection),
              const SizedBox(height: AppSpacing.xs),

              _JumpTo(
                label: l10n.reports,
                icon: Icons.insert_chart_outlined_rounded,
                onTap: () => choose(QuickAction.viewReports),
              ),
              _JumpTo(
                label: l10n.budgets,
                icon: Icons.pie_chart_outline_rounded,
                onTap: () => choose(QuickAction.viewBudgets),
              ),
              _JumpTo(
                label: l10n.savings,
                icon: Icons.savings_outlined,
                onTap: () => choose(QuickAction.viewSavings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppTypography.overline.copyWith(color: context.textSecondary),
    );
  }
}

/// A large, filled action. Reserved for the two most frequent things a person
/// does in a finance app.
class _HeroAction extends StatelessWidget {
  const _HeroAction({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(AppRadius.lg),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(icon, size: 20, color: Colors.white),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                label,
                maxLines: 2,
                style: AppTypography.title.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A create action that is real but occasional — a tinted glyph over a neutral
/// card, so it reads as available without competing with the two above.
class _SecondaryAction extends StatelessWidget {
  const _SecondaryAction({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.cardColor,
      borderRadius: BorderRadius.circular(AppRadius.lg),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.lg),
            border: Border.all(color: context.borderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: context.tintFill,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(icon, size: 20, color: AppColors.primary),
                ),
                const SizedBox(height: AppSpacing.sm),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xs,
                  ),
                  child: Text(
                    label,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.caption.copyWith(
                      fontSize: 11.5,
                      color: context.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Navigation, not creation — a quiet row, deliberately lighter than anything
/// above the divider.
class _JumpTo extends StatelessWidget {
  const _JumpTo({required this.label, required this.icon, required this.onTap});

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: 11,
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: context.textSecondary),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                label,
                style: AppTypography.title.copyWith(color: context.textPrimary),
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 20,
              color: context.textDisabled,
            ),
          ],
        ),
      ),
    );
  }
}
