import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/editor_sheet.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/widgets/category_picker_sheet.dart';
import '../controllers/budget_controller.dart';

/// Opens the budget editor. Pass [budget] to edit, or [category] to create a
/// new limit for a category that does not have one yet.
Future<void> showBudgetEditor(
  BuildContext context, {
  Budget? budget,
  Category? category,
}) {
  assert(
    budget != null || category != null,
    'Editing needs a budget; creating needs a category.',
  );
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => _BudgetEditorSheet(
      budget: budget,
      category: category ?? budget!.category,
    ),
  );
}

/// The full "add a budget" flow: choose a category that does not have a limit
/// yet, then set one.
///
/// Lives here rather than on the Budget screen because the quick-action sheet
/// starts the same flow, and the two must not drift apart.
Future<void> startAddBudget(BuildContext context, WidgetRef ref) async {
  final l10n = AppL10n.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final available = await ref.read(unbudgetedCategoriesProvider.future);

  if (!context.mounted) return;
  if (available.isEmpty) {
    messenger.showSnackBar(
      SnackBar(content: Text(l10n.allCategoriesBudgeted)),
    );
    return;
  }

  final category = await showCategoryPicker(
    context,
    categories: available,
    title: l10n.selectCategory,
  );
  if (category == null || !context.mounted) return;

  await showBudgetEditor(context, category: category);
}

class _BudgetEditorSheet extends ConsumerStatefulWidget {
  const _BudgetEditorSheet({required this.budget, required this.category});

  final Budget? budget;
  final Category category;

  @override
  ConsumerState<_BudgetEditorSheet> createState() => _BudgetEditorSheetState();
}

class _BudgetEditorSheetState extends ConsumerState<_BudgetEditorSheet> {
  late final TextEditingController _controller;
  late double _limit;
  bool _busy = false;

  bool get _isEditing => widget.budget != null;

  @override
  void initState() {
    super.initState();
    _limit = widget.budget?.limit ?? 0;
    _controller = TextEditingController(
      text: _limit > 0 ? _limit.toStringAsFixed(0) : '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _busy = true);
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    await ref
        .read(budgetControllerProvider)
        .setLimit(widget.category.id, _limit);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.budgetSaved)));
  }

  Future<void> _delete() async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteBudget),
        content: Text(l10n.deleteBudgetBody(widget.category.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() => _busy = true);
    await ref.read(budgetControllerProvider).delete(widget.category.id);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.budgetDeleted)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final symbol = ref.watch(currencyProvider).symbol;
    final spent = widget.budget?.spent ?? 0;

    return EditorSheet(
      title: _isEditing ? l10n.editBudget : l10n.newBudget,
      subtitle: widget.category.name,
      submitLabel: l10n.save,
      onSubmit: _limit > 0 ? _save : null,
      onDelete: _isEditing ? _delete : null,
      deleteLabel: l10n.delete,
      isBusy: _busy,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.lg),
          child: AppCard(
            color: context.subtleFill,
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              children: [
                IconBadge(
                  icon: iconForCategory(widget.category.icon),
                  size: 40,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.category.name,
                        style: AppTypography.title.copyWith(
                          color: context.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${l10n.spent} ${money.format(spent, decimals: false)}',
                        style: AppTypography.caption.copyWith(
                          color: context.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SheetField(
          label: l10n.budgetLimit,
          child: AmountField(
            controller: _controller,
            symbol: symbol,
            autofocus: true,
            onChanged: (value) => setState(() => _limit = value),
          ),
        ),
        // Quick presets anchored on what is already spent, so a sensible limit
        // is one tap away.
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final preset in _presets(spent))
              ActionChip(
                label: Text(money.format(preset, decimals: false)),
                onPressed: () {
                  _controller.text = preset.toStringAsFixed(0);
                  setState(() => _limit = preset);
                },
                backgroundColor: context.tintFill,
                side: BorderSide(color: context.borderColor),
                labelStyle:
                    AppTypography.label.copyWith(color: AppColors.primary),
              ),
          ],
        ),
        if (_isEditing && _limit > 0 && spent > _limit)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.lg),
            child: Text(
              l10n.overBudget,
              style: AppTypography.caption.copyWith(color: AppColors.error),
            ),
          ),
      ],
    );
  }

  /// Round numbers around the current spend, plus a couple of common limits.
  List<double> _presets(double spent) {
    final base = spent <= 0 ? 200.0 : (spent / 50).ceil() * 50.0;
    return <double>{base, base * 1.25, base * 1.5, 500.0}
        .map((value) => value.roundToDouble())
        .where((value) => value > 0)
        .toList()
      ..sort();
  }
}
