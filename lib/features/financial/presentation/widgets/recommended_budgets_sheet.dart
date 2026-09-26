import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rainypenny/features/budget/presentation/controllers/budget_controller.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../domain/services/budget_recommendations.dart';

Future<void> showSalaryBudgetRecommenderSheet(BuildContext context, WidgetRef ref) async {
  final categories = await ref.read(categoriesProvider.future);
  if (!context.mounted) return;

  await showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    builder: (ctx) => _SalaryBudgetRecommenderSheet(categories: categories),
  );
}

class _SalaryBudgetRecommenderSheet extends ConsumerStatefulWidget {
  const _SalaryBudgetRecommenderSheet({required this.categories});

  final List<Category> categories;

  @override
  ConsumerState<_SalaryBudgetRecommenderSheet> createState() =>
      _SalaryBudgetRecommenderSheetState();
}

class _SalaryBudgetRecommenderSheetState extends ConsumerState<_SalaryBudgetRecommenderSheet> {
  late final TextEditingController _salaryController;
  double _salary = 3000.0;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _salaryController = TextEditingController(text: '3000');
  }

  @override
  void dispose() {
    _salaryController.dispose();
    super.dispose();
  }

  void _onSalaryChanged(String text) {
    final parsed = double.tryParse(text.replaceAll(RegExp(r'[^0-9.]'), ''));
    if (parsed != null && parsed != _salary) {
      setState(() => _salary = parsed);
    }
  }

  void _setPresetSalary(double amount) {
    _salaryController.text = amount.toStringAsFixed(0);
    setState(() => _salary = amount);
  }

  Future<void> _applyAll(AppL10n l10n, List<CategoryBudgetRecommendation> items) async {
    setState(() => _isSaving = true);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final controller = ref.read(budgetControllerProvider);

    try {
      for (final item in items) {
        await controller.setLimit(item.category.id, item.recommendedLimit);
      }
      navigator.pop();
      messenger.showSnackBar(SnackBar(content: Text(l10n.budgetsCreatedSuccess(items.length))));
    } catch (_) {
      setState(() => _isSaving = false);
      messenger.showSnackBar(SnackBar(content: Text(l10n.failedToSaveBudgets)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final currency = ref.watch(currencyProvider);

    final recommendations = BudgetRecommender.calculateFromSalary(
      monthlySalary: _salary,
      allCategories: widget.categories,
    );

    final totalBudgeted = recommendations.fold(0.0, (sum, item) => sum + item.recommendedLimit);
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return GestureDetector(
      // Tapping the blank area outside/above the sheet dismisses it
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.45,
        maxChildSize: 0.92,
        expand: false,
        builder: (context, scrollController) {
          return GestureDetector(
            // Prevent taps inside the sheet from bubbling up to dismiss
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.md)),
              ),
              padding: EdgeInsets.only(bottom: bottomInset),
              child: SafeArea(
                top: false,
                child: Column(
                  children: [
                    // Header
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.page,
                        vertical: AppSpacing.page,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.smartBudgetSplit,
                                  style: AppTypography.sectionTitle.copyWith(
                                    color: context.textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  l10n.smartBudgetSplitSubtitle,
                                  style: AppTypography.caption.copyWith(
                                    color: context.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close_rounded),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),

                    // Content
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        padding: const EdgeInsets.fromLTRB(
                          AppSpacing.page,
                          AppSpacing.lg,
                          AppSpacing.page,
                          AppSpacing.page,
                        ),
                        children: [
                          // Salary Input Card
                          AppCard(
                            padding: const EdgeInsets.all(AppSpacing.lg),
                            color: context.tintFill,
                            borderColor: context.borderColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.monthlyNetSalary,
                                  style: AppTypography.caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: context.textSecondary,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.md),

                                // Padded inner input container
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppSpacing.lg,
                                    vertical: AppSpacing.sm,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        currency.symbol,
                                        style: AppTypography.amountLarge.copyWith(
                                          fontSize: 26,
                                          color: context.accent,
                                        ),
                                      ),
                                      const SizedBox(width: AppSpacing.md),
                                      Expanded(
                                        child: TextField(
                                          controller: _salaryController,
                                          keyboardType: const TextInputType.numberWithOptions(
                                            decimal: true,
                                          ),
                                          style: AppTypography.amountLarge.copyWith(
                                            fontSize: AppTypography.amountLarge.fontSize,
                                            color: context.textPrimary,
                                          ),
                                          decoration: InputDecoration(
                                            fillColor: context.colors.surface,
                                          ),
                                          onChanged: _onSalaryChanged,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.md),

                                // Quick preset chips
                                Wrap(
                                  spacing: AppSpacing.sm,
                                  runSpacing: AppSpacing.xs,
                                  children: [2000.0, 3000.0, 4500.0, 6000.0].map((val) {
                                    final isSelected = (_salary == val);
                                    return ActionChip(
                                      label: Text(money.format(val, decimals: false)),
                                      onPressed: () => _setPresetSalary(val),
                                      backgroundColor: isSelected
                                          ? context.accent
                                          : context.colors.surface,
                                      side: BorderSide(
                                        color: isSelected ? context.accent : context.borderColor,
                                      ),
                                      labelStyle: AppTypography.caption.copyWith(
                                        color: isSelected ? Colors.white : context.textPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: AppSpacing.xl),

                          // Section Title & Total
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.categoryAllocations,
                                style: AppTypography.title.copyWith(color: context.textPrimary),
                              ),
                              Text(
                                l10n.totalBudgeted(money.format(totalBudgeted, decimals: false)),
                                style: AppTypography.caption.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.brandSecondary,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: AppSpacing.sm),

                          // Category List
                          ...recommendations.map((item) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                              child: AppCard(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppSpacing.md,
                                  vertical: AppSpacing.sm,
                                ),
                                child: Row(
                                  children: [
                                    IconBadge(icon: iconForCategory(item.category.icon), size: 36),
                                    const SizedBox(width: AppSpacing.md),
                                    Expanded(
                                      child: Text(
                                        item.category.localizedName(l10n),
                                        style: AppTypography.body.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: context.textPrimary,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: context.subtleFill,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        NumberFormat.decimalPercentPattern(
                                          locale: Localizations.localeOf(context).toString(),
                                          decimalDigits: 0,
                                        ).format(item.percentage),
                                        style: AppTypography.caption.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: context.textSecondary,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: AppSpacing.md),
                                    Text(
                                      money.format(item.recommendedLimit, decimals: false),
                                      style: AppTypography.body.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: context.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),

                    // Sticky Apply Button
                    Padding(
                      padding: const EdgeInsets.all(AppSpacing.page),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: FilledButton.icon(
                          onPressed: _isSaving || _salary <= 0
                              ? null
                              : () => _applyAll(l10n, recommendations),
                          icon: _isSaving
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : const Icon(Icons.bolt_rounded),
                          label: Text(
                            _isSaving ? l10n.applyingBudgets : l10n.applyAllBudgets,
                            style: AppTypography.label.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
