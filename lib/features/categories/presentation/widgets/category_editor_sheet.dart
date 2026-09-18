import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/widgets/editor_sheet.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../controllers/category_controller.dart';

/// Opens the category editor. Pass [category] to edit an existing one.
///
/// Returns the category that was saved, so a caller that opened this to fill a
/// gap — the picker's "new category" tile — can select the result straight away
/// rather than making the user find it in the grid afterwards. Null when the
/// sheet was dismissed or the category was deleted.
Future<Category?> showCategoryEditor(
  BuildContext context, {
  Category? category,
  bool? isIncome,
}) {
  return showModalBottomSheet<Category>(
    context: context,
    isScrollControlled: true,
    builder: (context) =>
        _CategoryEditorSheet(category: category, isIncome: isIncome),
  );
}

class _CategoryEditorSheet extends ConsumerStatefulWidget {
  const _CategoryEditorSheet({this.category, this.isIncome});

  final Category? category;

  /// Preselects the direction when adding from a filtered list.
  final bool? isIncome;

  @override
  ConsumerState<_CategoryEditorSheet> createState() =>
      _CategoryEditorSheetState();
}

class _CategoryEditorSheetState extends ConsumerState<_CategoryEditorSheet> {
  late final TextEditingController _nameController;
  late String _name;
  late CategoryIcon _icon;
  late bool _isIncome;
  bool _busy = false;

  bool get _isEditing => widget.category != null;

  bool get _isValid => _name.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    final category = widget.category;
    _name = category?.name ?? '';
    _icon = category?.icon ?? CategoryIcon.other;
    _isIncome = category?.isIncome ?? widget.isIncome ?? false;
    _nameController = TextEditingController(text: _name);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _busy = true);
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final controller = ref.read(categoryControllerProvider);

    final existing = ref
        .read(categoriesProvider)
        .maybeWhen(data: (list) => list, orElse: () => const <Category>[]);

    final saved = _isEditing
        ? widget.category!.copyWith(
            name: _name.trim(),
            icon: _icon,
            isIncome: _isIncome,
          )
        : Category(
            id: CategoryController.idFor(_name.trim(), existing),
            name: _name.trim(),
            icon: _icon,
            isIncome: _isIncome,
            isCustom: true,
          );

    try {
      if (_isEditing) {
        await controller.update(saved);
      } else {
        await controller.add(saved);
      }
    } catch (_) {
      // A failed write must not close the sheet: dismissing it would look
      // exactly like success and lose what the user typed.
      if (!mounted) return;
      setState(() => _busy = false);
      messenger.showSnackBar(
        SnackBar(content: Text(l10n.somethingWentWrong)),
      );
      return;
    }

    navigator.pop(saved);
    messenger.showSnackBar(SnackBar(content: Text(l10n.categorySaved)));
  }

  Future<void> _delete() async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final controller = ref.read(categoryControllerProvider);

    // Checked before asking: telling someone a category cannot be removed is
    // better than asking them to confirm something that will then fail.
    final usage = await controller.usageCount(widget.category!.id);
    if (usage > 0) {
      if (!mounted) return;
      messenger.showSnackBar(
        SnackBar(content: Text(l10n.categoryInUse(usage))),
      );
      return;
    }

    if (!mounted) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteCategory),
        content: Text(l10n.deleteCategoryBody(widget.category!.name)),
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
    await controller.delete(widget.category!.id);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.categoryDeleted)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return EditorSheet(
      title: _isEditing ? l10n.editCategory : l10n.newCategory,
      submitLabel: l10n.save,
      onSubmit: _isValid ? _save : null,
      // Only a user's own category can be removed; the seeded set is shared.
      onDelete: _isEditing && widget.category!.isCustom ? _delete : null,
      deleteLabel: l10n.delete,
      isBusy: _busy,
      children: [
        SheetField(
          label: '',
          child: _DirectionToggle(
            isIncome: _isIncome,
            onChanged: (value) => setState(() => _isIncome = value),
          ),
        ),
        SheetField(
          label: l10n.categoryName,
          child: TextField(
            controller: _nameController,
            autofocus: !_isEditing,
            textCapitalization: TextCapitalization.sentences,
            inputFormatters: [LengthLimitingTextInputFormatter(30)],
            decoration: InputDecoration(hintText: l10n.categoryNameHint),
            onChanged: (value) => setState(() => _name = value),
          ),
        ),
        SheetField(
          label: l10n.icon,
          child: _IconGrid(
            selected: _icon,
            onSelect: (icon) => setState(() => _icon = icon),
          ),
        ),
      ],
    );
  }
}

class _DirectionToggle extends StatelessWidget {
  const _DirectionToggle({required this.isIncome, required this.onChanged});

  final bool isIncome;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    Widget option(bool value, String label, IconData icon, Color accent) {
      final selected = isIncome == value;
      return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onChanged(value),
          child: AnimatedContainer(
            duration: AppDuration.fast,
            curve: Curves.easeOut,
            padding: const EdgeInsets.symmetric(vertical: 11),
            decoration: BoxDecoration(
              color: selected ? accent : Colors.transparent,
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 17,
                  color: selected ? Colors.white : context.textSecondary,
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  label,
                  style: AppTypography.title.copyWith(
                    color: selected ? Colors.white : context.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.subtleFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          option(
            false,
            l10n.expense,
            Icons.arrow_downward_rounded,
            context.brandSecondary,
          ),
          option(true, l10n.income, Icons.arrow_upward_rounded, context.accent),
        ],
      ),
    );
  }
}

/// The fixed set of glyphs a category can wear.
///
/// A closed set rather than free choice: the icon is a domain enum, which is
/// what lets the same category render identically on a chart, a budget bar and
/// a PDF table without the presentation layer inventing anything.
class _IconGrid extends StatelessWidget {
  const _IconGrid({required this.selected, required this.onSelect});

  final CategoryIcon selected;
  final ValueChanged<CategoryIcon> onSelect;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: [
        for (final icon in CategoryIcon.values)
          GestureDetector(
            onTap: () => onSelect(icon),
            child: AnimatedContainer(
              duration: AppDuration.fast,
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: icon == selected ? context.accent : context.subtleFill,
                borderRadius: BorderRadius.circular(AppRadius.md),
                border: Border.all(
                  color: icon == selected
                      ? context.accent
                      : context.borderColor,
                ),
              ),
              child: Icon(
                iconForCategory(icon),
                size: 21,
                color: icon == selected ? Colors.white : context.textSecondary,
              ),
            ),
          ),
      ],
    );
  }
}
