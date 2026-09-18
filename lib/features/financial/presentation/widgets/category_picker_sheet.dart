import 'package:flutter/material.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/widgets/app_card.dart';
import '../../domain/entities/category.dart';

/// Grid picker used by the Add Transaction form and the budget editor.
///
/// [onAddCategory] turns the last tile into a "new category" button. Creating
/// one from here rather than only from Settings is the difference between the
/// feature existing and the feature being usable: the moment someone discovers
/// a category is missing is the moment they are filing a transaction.
Future<Category?> showCategoryPicker(
  BuildContext context, {
  required List<Category> categories,
  required String title,
  Category? selected,
  Future<Category?> Function()? onAddCategory,
}) {
  return showModalBottomSheet<Category>(
    context: context,
    isScrollControlled: true,
    builder: (context) => CategoryPickerSheet(
      categories: categories,
      title: title,
      selected: selected,
      onAddCategory: onAddCategory,
    ),
  );
}

class CategoryPickerSheet extends StatelessWidget {
  const CategoryPickerSheet({
    super.key,
    required this.categories,
    required this.title,
    this.selected,
    this.onAddCategory,
  });

  final List<Category> categories;
  final String title;
  final Category? selected;
  final Future<Category?> Function()? onAddCategory;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final showAdd = onAddCategory != null;

    return SafeArea(
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
              title,
              style: AppTypography.sectionTitle.copyWith(
                color: context.textPrimary,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: categories.length + (showAdd ? 1 : 0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: AppSpacing.md,
                  crossAxisSpacing: AppSpacing.md,
                  childAspectRatio: 0.86,
                ),
                itemBuilder: (context, index) {
                  if (showAdd && index == categories.length) {
                    return _AddTile(
                      label: l10n.addCategory,
                      onTap: () async {
                        final created = await onAddCategory!();
                        if (created != null && context.mounted) {
                          Navigator.of(context).pop(created);
                        }
                      },
                    );
                  }

                  final category = categories[index];
                  final isSelected = category.id == selected?.id;
                  return _CategoryTile(
                    category: category,
                    isSelected: isSelected,
                    onTap: () => Navigator.of(context).pop(category),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    // Each category keeps its own colour, so the grid reads as a set of
    // distinct things rather than a wall of one accent.
    final tint = categoryColor(context, category);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconBadge(
            icon: iconForCategory(category.icon),
            size: 50,
            radius: 17,
            background: isSelected ? tint : tint.withValues(alpha: 0.13),
            foreground: isSelected ? Colors.white : tint,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            categoryDisplayName(category, l10n),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(
              fontSize: 11,
              color: isSelected ? tint : context.textSecondary,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _AddTile extends StatelessWidget {
  const _AddTile({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DottedOutlineBadge(
            size: 50,
            radius: 17,
            child: Icon(
              Icons.add_rounded,
              size: 24,
              color: context.accentOnSurface,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            label,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(
              fontSize: 11,
              color: context.accentOnSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// A dashed-looking placeholder badge, marking an empty slot to fill rather
/// than a thing that already exists.
class DottedOutlineBadge extends StatelessWidget {
  const DottedOutlineBadge({
    super.key,
    required this.child,
    this.size = 50,
    this.radius = 17,
  });

  final Widget child;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: context.accentOnSurface.withValues(alpha: 0.42),
          width: 1.4,
        ),
      ),
      child: Center(child: child),
    );
  }
}
