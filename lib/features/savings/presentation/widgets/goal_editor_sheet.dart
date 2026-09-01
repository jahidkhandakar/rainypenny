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
import '../../../../core/widgets/editor_sheet.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../controllers/savings_controller.dart';

/// Icons a goal can be given. A deliberately small set — enough to make goals
/// recognisable at a glance without turning into an icon browser.
const _goalIcons = <CategoryIcon>[
  CategoryIcon.housing,
  CategoryIcon.travel,
  CategoryIcon.shopping,
  CategoryIcon.transport,
  CategoryIcon.education,
  CategoryIcon.health,
  CategoryIcon.gift,
  CategoryIcon.other,
];

/// Opens the goal editor. Pass [goal] to edit an existing one.
Future<void> showGoalEditor(BuildContext context, {SavingsGoal? goal}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => _GoalEditorSheet(goal: goal),
  );
}

class _GoalEditorSheet extends ConsumerStatefulWidget {
  const _GoalEditorSheet({this.goal});

  final SavingsGoal? goal;

  @override
  ConsumerState<_GoalEditorSheet> createState() => _GoalEditorSheetState();
}

class _GoalEditorSheetState extends ConsumerState<_GoalEditorSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _targetController;
  late final TextEditingController _savedController;
  late final TextEditingController _monthlyController;

  late String _name;
  late double _target;
  late double _saved;
  late double _monthly;
  late CategoryIcon _icon;
  late DateTime _targetDate;
  bool _busy = false;

  bool get _isEditing => widget.goal != null;

  bool get _isValid => _name.trim().isNotEmpty && _target > 0;

  @override
  void initState() {
    super.initState();
    final goal = widget.goal;

    _name = goal?.name ?? '';
    _target = goal?.target ?? 0;
    _saved = goal?.saved ?? 0;
    _monthly = goal?.monthlyContribution ?? 0;
    _icon = goal?.icon ?? CategoryIcon.housing;
    _targetDate =
        goal?.targetDate ?? DateTime.now().add(const Duration(days: 365));

    _nameController = TextEditingController(text: _name);
    _targetController = TextEditingController(
      text: _target > 0 ? _target.toStringAsFixed(0) : '',
    );
    _savedController = TextEditingController(
      text: _saved > 0 ? _saved.toStringAsFixed(0) : '',
    );
    _monthlyController = TextEditingController(
      text: _monthly > 0 ? _monthly.toStringAsFixed(0) : '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _targetController.dispose();
    _savedController.dispose();
    _monthlyController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _targetDate,
      firstDate: now,
      lastDate: DateTime(now.year + 20),
    );
    if (picked != null) setState(() => _targetDate = picked);
  }

  Future<void> _save() async {
    setState(() => _busy = true);
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final goal = SavingsGoal(
      id: widget.goal?.id ?? 'goal-${DateTime.now().microsecondsSinceEpoch}',
      name: _name.trim(),
      saved: _saved,
      target: _target,
      icon: _icon,
      targetDate: _targetDate,
      monthlyContribution: _monthly,
    );

    await ref.read(savingsControllerProvider).save(goal);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.goalSaved)));
  }

  Future<void> _delete() async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteGoal),
        content: Text(l10n.deleteGoalBody(widget.goal!.name)),
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
    await ref.read(savingsControllerProvider).delete(widget.goal!.id);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.goalDeleted)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final symbol = ref.watch(currencyProvider).symbol;

    return EditorSheet(
      title: _isEditing ? l10n.editGoal : l10n.newGoal,
      submitLabel: l10n.save,
      accent: AppColors.accent,
      onSubmit: _isValid ? _save : null,
      onDelete: _isEditing ? _delete : null,
      deleteLabel: l10n.delete,
      isBusy: _busy,
      children: [
        SheetField(
          label: l10n.goalName,
          child: TextField(
            controller: _nameController,
            autofocus: !_isEditing,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(hintText: l10n.goalNameHint),
            onChanged: (value) => setState(() => _name = value),
          ),
        ),
        SheetField(
          label: l10n.targetAmount,
          child: AmountField(
            controller: _targetController,
            symbol: symbol,
            onChanged: (value) => setState(() => _target = value),
          ),
        ),
        SheetField(
          label: l10n.alreadySaved,
          child: AmountField(
            controller: _savedController,
            symbol: symbol,
            onChanged: (value) => setState(() => _saved = value),
          ),
        ),
        SheetField(
          label: l10n.monthlyContribution,
          child: AmountField(
            controller: _monthlyController,
            symbol: symbol,
            onChanged: (value) => setState(() => _monthly = value),
          ),
        ),
        SheetField(
          label: l10n.target,
          child: InkWell(
            onTap: _pickDate,
            borderRadius: BorderRadius.circular(AppRadius.md),
            child: InputDecorator(
              decoration: const InputDecoration(),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 18,
                    color: context.textSecondary,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Text(
                    dates.long(_targetDate),
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SheetField(
          label: l10n.category,
          child: Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              for (final icon in _goalIcons)
                InkWell(
                  onTap: () => setState(() => _icon = icon),
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: _icon == icon
                          ? AppColors.accent
                          : context.subtleFill,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      iconForCategory(icon),
                      size: 21,
                      color: _icon == icon
                          ? Colors.white
                          : context.textSecondary,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
