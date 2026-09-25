import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../widgets/category_editor_sheet.dart';

/// Manage the categories money is filed under.
///
/// The seeded set is shown alongside the user's own but marked as shared and
/// left read-only — those rows belong to every account, so letting one user
/// rename "Groceries" would rename it for everyone.
class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.categories),
        actions: [
          IconButton(
            tooltip: l10n.newCategory,
            icon: const Icon(Icons.add_rounded),
            onPressed: () => showCategoryEditor(context),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: categories.when(
        data: (list) {
          final expense = list.where((c) => !c.isIncome).toList();
          final income = list.where((c) => c.isIncome).toList();

          return ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.sm,
              AppSpacing.page,
              AppSpacing.section,
            ),
            children: [
              FadeSlideIn(
                child: Text(
                  l10n.categoriesIntro,
                  style: AppTypography.body.copyWith(color: context.textSecondary),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              _Group(
                title: l10n.expenseCategories,
                categories: expense,
                onAdd: () => showCategoryEditor(context, isIncome: false),
                index: 1,
              ),
              const SizedBox(height: AppSpacing.section),
              _Group(
                title: l10n.incomeCategories,
                categories: income,
                onAdd: () => showCategoryEditor(context, isIncome: true),
                index: 2,
              ),
            ],
          );
        },
        loading: () => const Padding(
          padding: EdgeInsets.all(AppSpacing.page),
          child: Column(
            children: [
              SkeletonCard(height: 200),
              SizedBox(height: AppSpacing.lg),
              SkeletonCard(height: 160),
            ],
          ),
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(categoriesProvider),
        ),
      ),
    );
  }
}

class _Group extends StatelessWidget {
  const _Group({
    required this.title,
    required this.categories,
    required this.onAdd,
    required this.index,
  });

  final String title;
  final List<Category> categories;
  final VoidCallback onAdd;
  final int index;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return FadeSlideIn(
      index: index,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHeader(title: title, actionLabel: l10n.add, onAction: onAdd),
          AppCard(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                for (var i = 0; i < categories.length; i++) ...[
                  _CategoryRow(category: categories[i]),
                  if (i != categories.length - 1)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 60),
                      child: Divider(color: context.borderColor, height: 1),
                    ),
                ],
                if (categories.isEmpty)
                  Padding(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    child: Text(
                      l10n.noCategoriesYet,
                      style: AppTypography.body.copyWith(color: context.textSecondary),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  const _CategoryRow({required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return InkWell(
      onTap: () => category.isCustom ? showCategoryEditor(context, category: category) : () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.md),
        child: Row(
          children: [
            IconBadge(
              icon: iconForCategory(category.icon),
              size: 34,
              radius: 11,
              background: category.isIncome
                  ? context.accent.withValues(alpha: 0.10)
                  : context.tintFill,
              foreground: category.isIncome ? context.accent : context.brandSecondary,
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                category.localizedName(l10n),
                style: AppTypography.title.copyWith(color: context.textPrimary),
              ),
            ),
            if (!category.isCustom)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: AppSpacing.sm),
                child: Text(
                  l10n.builtIn,
                  style: AppTypography.caption.copyWith(color: context.textDisabled),
                ),
              ),
            Icon(CupertinoIcons.chevron_right, size: 20, color: context.textDisabled),
          ],
        ),
      ),
    );
  }
}
