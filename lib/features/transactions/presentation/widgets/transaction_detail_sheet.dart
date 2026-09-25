import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rainypenny/features/financial/domain/entities/category.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../controllers/add_transaction_controller.dart';

/// Tapping a ledger row opens this: the full record, plus edit and delete.
Future<void> showTransactionDetail(BuildContext context, Transaction transaction) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => _TransactionDetailSheet(transaction: transaction),
  );
}

class _TransactionDetailSheet extends ConsumerWidget {
  const _TransactionDetailSheet({required this.transaction});

  final Transaction transaction;

  Future<void> _delete(BuildContext context, WidgetRef ref) async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final undoColor = context.accentLight;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteTransaction),
        content: Text(l10n.deleteTransactionBody(transaction.title)),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    // 🎯 1. Capture the restore function BEFORE unmounting the sheet
    final restoreFn = ref.read(restoreTransactionProvider);
    final deleteFn = ref.read(deleteTransactionProvider);

    // 🎯 2. Pop the bottom sheet
    if (context.mounted) {
      Navigator.of(context).pop();
    }

    // 🎯 3. Perform delete using the captured function
    try {
      await deleteFn(transaction);
    } catch (e) {
      messenger.showSnackBar(SnackBar(content: Text(l10n.somethingWentWrong)));
      return;
    }

    messenger.clearSnackBars();

    late ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBarController;
    bool isActionPressed = false;

    snackBarController = messenger.showSnackBar(
      SnackBar(
        content: Text(l10n.transactionDeleted),
        duration: const Duration(milliseconds: 3500),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        action: SnackBarAction(
          label: l10n.undo,
          textColor: undoColor,
          onPressed: () async {
            isActionPressed = true;
            messenger.hideCurrentSnackBar();

            try {
              // 🎯 4. Invoke the captured restore function (NO `ref` call needed here!)
              await restoreFn(transaction);
            } catch (e, st) {
              debugPrint('UNDO ERROR: $e\n$st');
              messenger.showSnackBar(SnackBar(content: Text(l10n.somethingWentWrong)));
            }
          },
        ),
      ),
    );

    Future.delayed(const Duration(milliseconds: 3600), () {
      if (!isActionPressed) {
        snackBarController.close();
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final isIncome = transaction.isIncome;
    final accent = isIncome ? AppColors.income : context.expenseColor;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(AppSpacing.page, 0, AppSpacing.page, AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconBadge(
                  icon: iconForCategory(transaction.category.icon),
                  size: 48,
                  background: accent.withValues(alpha: 0.12),
                  foreground: accent,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.title,
                        style: AppTypography.sectionTitle.copyWith(color: context.textPrimary),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        transaction.category.localizedName(l10n),
                        style: AppTypography.caption.copyWith(color: context.textSecondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            Center(
              child: Text(
                money.formatSigned(transaction.signedAmount),
                style: AppTypography.display.copyWith(
                  fontSize: 36,
                  color: isIncome ? AppColors.income : context.textPrimary,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            AppCard(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              color: context.subtleFill,
              child: Column(
                children: [
                  _DetailRow(label: l10n.date, value: dates.long(transaction.date)),
                  _DetailRow(label: l10n.category, value: transaction.category.localizedName(l10n)),
                  _DetailRow(
                    label: isIncome ? l10n.income : l10n.expenses,
                    value: money.format(transaction.amount),
                  ),
                  if (transaction.note != null)
                    _DetailRow(label: l10n.note, value: transaction.note!),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _delete(context, ref),
                    icon: const Icon(Icons.delete_outline_rounded, size: 19),
                    label: Text(l10n.delete),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.error,
                      minimumSize: const Size.fromHeight(52),
                      side: BorderSide(color: AppColors.error.withValues(alpha: 0.4)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ref.read(addTransactionControllerProvider.notifier).startEdit(transaction);
                      Navigator.of(context).pop();
                      context.push('${AppRoutes.addTransaction}?mode=edit');
                    },
                    icon: const Icon(Icons.edit_rounded, size: 19),
                    label: Text(l10n.edit),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accent,
                      minimumSize: const Size.fromHeight(52),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTypography.body.copyWith(color: context.textSecondary)),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: AppTypography.title.copyWith(color: context.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
