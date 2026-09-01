import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/widgets/app_card.dart';
import '../../domain/entities/category.dart';

/// Grid picker used by the Add Transaction form and the budget editor.
Future<Category?> showCategoryPicker(
  BuildContext context, {
  required List<Category> categories,
  required String title,
  Category? selected,
}) {
  return showModalBottomSheet<Category>(
    context: context,
    isScrollControlled: true,
    builder: (context) => CategoryPickerSheet(
      categories: categories,
      title: title,
      selected: selected,
    ),
  );
}

class CategoryPickerSheet extends StatelessWidget {
  const CategoryPickerSheet({
    super.key,
    required this.categories,
    required this.title,
    this.selected,
  });

  final List<Category> categories;
  final String title;
  final Category? selected;

  @override
  Widget build(BuildContext context) {
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
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: AppSpacing.md,
                  crossAxisSpacing: AppSpacing.md,
                  childAspectRatio: 0.86,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final isSelected = category.id == selected?.id;
                  return InkWell(
                    onTap: () => Navigator.of(context).pop(category),
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconBadge(
                          icon: iconForCategory(category.icon),
                          size: 50,
                          radius: 17,
                          background:
                              isSelected ? AppColors.primary : context.tintFill,
                          foreground:
                              isSelected ? Colors.white : AppColors.primary,
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          category.name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.caption.copyWith(
                            fontSize: 11,
                            color: isSelected
                                ? AppColors.primary
                                : context.textSecondary,
                            fontWeight: isSelected
                                ? FontWeight.w700
                                : FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
