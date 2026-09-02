import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../financial/data/demo_dataset.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../../financial/presentation/widgets/category_picker_sheet.dart';
import '../controllers/add_transaction_controller.dart';

/// The core interaction: log money in or out in a handful of taps.
///
/// The amount is deliberately the largest thing on the screen — everything
/// else is secondary.
class AddTransactionScreen extends ConsumerStatefulWidget {
  const AddTransactionScreen({super.key, this.startAsIncome = false});

  final bool startAsIncome;

  @override
  ConsumerState<AddTransactionScreen> createState() =>
      _AddTransactionScreenState();
}

class _AddTransactionScreenState extends ConsumerState<AddTransactionScreen> {
  final _amountController = TextEditingController();
  final _titleController = TextEditingController();
  final _noteController = TextEditingController();
  bool _showValidation = false;

  @override
  void initState() {
    super.initState();
    final draft = ref.read(addTransactionControllerProvider);

    if (draft.isEditing) {
      // The controller was seeded by the detail sheet; mirror it into the
      // text fields so the form opens pre-filled.
      _amountController.text = draft.amount.toStringAsFixed(2);
      _titleController.text = draft.title;
      _noteController.text = draft.note;
      return;
    }

    if (widget.startAsIncome) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(addTransactionControllerProvider.notifier)
            .setType(TransactionType.income);
      });
    }
  }

  void _close() {
    // Drop any half-finished draft so the next Add opens clean.
    ref.read(addTransactionControllerProvider.notifier).reset();
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _pickCategory() async {
    final draft = ref.read(addTransactionControllerProvider);
    final categories = draft.isIncome
        ? DemoDataset.incomeCategories
        : DemoDataset.expenseCategories;

    final selected = await showCategoryPicker(
      context,
      categories: categories,
      title: AppL10n.of(context).selectCategory,
      selected: draft.category,
    );

    if (selected != null) {
      ref.read(addTransactionControllerProvider.notifier).setCategory(selected);
    }
  }

  Future<void> _pickDate() async {
    final draft = ref.read(addTransactionControllerProvider);
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: draft.date,
      firstDate: DateTime(now.year - 3),
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked != null) {
      ref.read(addTransactionControllerProvider.notifier).setDate(picked);
    }
  }

  Future<void> _save() async {
    final l10n = AppL10n.of(context);
    final controller = ref.read(addTransactionControllerProvider.notifier);
    final draft = ref.read(addTransactionControllerProvider);

    if (!draft.isValid) {
      setState(() => _showValidation = true);
      return;
    }

    final wasEditing = draft.isEditing;
    final saved = await controller.submit();
    if (!mounted || !saved) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          wasEditing ? l10n.transactionUpdated : l10n.transactionSaved,
        ),
      ),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final draft = ref.watch(addTransactionControllerProvider);
    final symbol = ref.watch(currencyProvider).symbol;
    final dates = ref.watch(dateFormatterProvider);
    final accent = draft.isIncome ? AppColors.income : context.expenseColor;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: _close,
        ),
        title: Text(
          draft.isEditing ? l10n.editTransaction : l10n.addTransaction,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.page,
                  AppSpacing.sm,
                  AppSpacing.page,
                  AppSpacing.xl,
                ),
                children: [
                  _TypeToggle(
                    type: draft.type,
                    onChanged: (type) {
                      ref
                          .read(addTransactionControllerProvider.notifier)
                          .setType(type);
                    },
                  ),
                  const SizedBox(height: AppSpacing.section),

                  // Amount — the dominant element on the screen.
                  Center(
                    child: Column(
                      children: [
                        Text(
                          l10n.amount.toUpperCase(),
                          style: AppTypography.overline.copyWith(
                            color: context.textSecondary,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              symbol,
                              style: AppTypography.display.copyWith(
                                fontSize: 30,
                                color: accent,
                              ),
                            ),
                            const SizedBox(width: 6),
                            IntrinsicWidth(
                              child: TextField(
                                controller: _amountController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*[.,]?\d{0,2}'),
                                  ),
                                ],
                                style: AppTypography.display.copyWith(
                                  fontSize: 46,
                                  color: context.textPrimary,
                                ),
                                decoration: InputDecoration(
                                  filled: false,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: '0.00',
                                  hintStyle: AppTypography.display.copyWith(
                                    fontSize: 46,
                                    color: context.textDisabled,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true,
                                ),
                                onChanged: (value) {
                                  final parsed = double.tryParse(
                                        value.replaceAll(',', '.'),
                                      ) ??
                                      0;
                                  ref
                                      .read(addTransactionControllerProvider
                                          .notifier)
                                      .setAmount(parsed);
                                },
                              ),
                            ),
                          ],
                        ),
                        if (_showValidation && draft.amount <= 0)
                          Padding(
                            padding: const EdgeInsets.only(top: AppSpacing.sm),
                            child: Text(
                              l10n.amountRequired,
                              style: AppTypography.caption.copyWith(
                                color: AppColors.error,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.section),

                  _FieldLabel(l10n.descriptionLabel),
                  TextField(
                    controller: _titleController,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      hintText: l10n.descriptionHint,
                      errorText: _showValidation && draft.title.trim().isEmpty
                          ? l10n.titleRequired
                          : null,
                    ),
                    onChanged: (value) => ref
                        .read(addTransactionControllerProvider.notifier)
                        .setTitle(value),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  _FieldLabel(l10n.category),
                  _SelectorTile(
                    icon: iconForCategory(draft.category.icon),
                    label: draft.category.name,
                    accent: accent,
                    onTap: _pickCategory,
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  _FieldLabel(l10n.date),
                  _SelectorTile(
                    icon: Icons.calendar_today_rounded,
                    label: dates.long(draft.date),
                    accent: accent,
                    onTap: _pickDate,
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  _FieldLabel(l10n.note),
                  TextField(
                    controller: _noteController,
                    maxLines: 3,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(hintText: l10n.noteHint),
                    onChanged: (value) => ref
                        .read(addTransactionControllerProvider.notifier)
                        .setNote(value),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.page,
                AppSpacing.md,
                AppSpacing.page,
                AppSpacing.lg,
              ),
              decoration: BoxDecoration(
                color: context.cardColor,
                border: Border(top: BorderSide(color: context.borderColor)),
              ),
              child: ElevatedButton(
                onPressed: draft.isSaving ? null : _save,
                style: ElevatedButton.styleFrom(backgroundColor: accent),
                child: draft.isSaving
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.2,
                          color: Colors.white,
                        ),
                      )
                    : Text(draft.isIncome ? l10n.saveIncome : l10n.saveExpense),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TypeToggle extends StatelessWidget {
  const _TypeToggle({required this.type, required this.onChanged});

  final TransactionType type;
  final ValueChanged<TransactionType> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    Widget option(TransactionType value, String label, Color color) {
      final selected = type == value;
      return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onChanged(value),
          child: AnimatedContainer(
            duration: AppDuration.fast,
            curve: Curves.easeOut,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: selected ? color : Colors.transparent,
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppTypography.title.copyWith(
                color: selected ? Colors.white : context.textSecondary,
              ),
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
          option(TransactionType.expense, l10n.expenses, AppColors.primary),
          option(TransactionType.income, l10n.income, AppColors.income),
        ],
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm, left: 2),
      child: Text(
        text,
        style: AppTypography.label.copyWith(color: context.textSecondary),
      ),
    );
  }
}

class _SelectorTile extends StatelessWidget {
  const _SelectorTile({
    required this.icon,
    required this.label,
    required this.accent,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color accent;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      radius: AppRadius.md,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.md,
      ),
      color: context.subtleFill,
      child: Row(
        children: [
          IconBadge(
            icon: icon,
            size: 38,
            background: accent.withValues(alpha: 0.12),
            foreground: accent,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Text(
              label,
              style: AppTypography.title.copyWith(color: context.textPrimary),
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: context.textDisabled,
            size: 20,
          ),
        ],
      ),
    );
  }
}
