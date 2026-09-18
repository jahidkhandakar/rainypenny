import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/category_visuals.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../../core/widgets/trend_chip.dart';
import '../../../financial/domain/entities/loan.dart';
import '../../../financial/domain/rules/debt_rules.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../widgets/loan_editor_sheet.dart';
import '../widgets/loan_status_visuals.dart';

/// Everything known about a single debt.
///
/// The loans list answers "what do I owe?"; this screen answers "where am I in
/// paying it off?" — the term, the count of installments settled and still to
/// come, both dates that matter and two progress bars, because money repaid
/// and installments cleared move at different speeds on an interest-bearing
/// plan and showing only one of them would flatter the picture.
class LoanDetailScreen extends ConsumerWidget {
  const LoanDetailScreen({super.key, required this.loanId});

  final String loanId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final loans = ref.watch(loansProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.loanDetails)),
      body: loans.when(
        data: (list) {
          // Read through the list rather than holding the entity, so recording
          // a payment refreshes this screen instead of leaving it stale.
          final loan = list.where((l) => l.id == loanId).firstOrNull;
          if (loan == null) {
            return EmptyState(
              icon: Icons.account_balance_rounded,
              title: l10n.noDebtsTitle,
              message: l10n.noDebtsBody,
            );
          }
          return _Body(loan: loan);
        },
        loading: () => const Padding(
          padding: EdgeInsets.all(AppSpacing.page),
          child: Column(
            children: [
              SkeletonCard(height: 150),
              SizedBox(height: AppSpacing.lg),
              SkeletonCard(height: 200),
            ],
          ),
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(loansProvider),
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.loan});

  final Loan loan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final now = DateTime.now();
    final status = loan.statusAt(
      now,
      dueSoonWindowDays: DebtRules.reminderWindowDays,
    );

    return ListView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.sm,
        AppSpacing.page,
        AppSpacing.section,
      ),
      children: [
        FadeSlideIn(
          child: _HeaderCard(loan: loan, status: status),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(title: l10n.repaymentProgress),
              AppCard(
                child: Column(
                  children: [
                    _ProgressRow(
                      label: l10n.byAmount,
                      caption: money.formatRatio(loan.paidOff, loan.principal),
                      value: loan.progress,
                      color: context.accentLight,
                    ),
                    if (loan.hasSchedule) ...[
                      const SizedBox(height: AppSpacing.lg),
                      _ProgressRow(
                        label: l10n.byInstallments,
                        caption: l10n.installmentsPaidOf(
                          loan.paidInstallments,
                          loan.totalInstallments,
                        ),
                        value: loan.installmentProgress,
                        color: AppColors.secondary,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(title: l10n.loanDetails),
              AppCard(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                  vertical: AppSpacing.xs,
                ),
                child: Column(
                  children: [
                    _DetailRow(
                      label: l10n.totalLoanAmount,
                      value: money.format(loan.principal),
                    ),
                    _DetailRow(
                      label: l10n.remainingBalance,
                      value: money.format(loan.remaining),
                      emphasised: true,
                    ),
                    _DetailRow(
                      label: l10n.installmentAmount,
                      value: money.format(loan.installmentAmount),
                    ),
                    _DetailRow(
                      label: l10n.numberOfInstallments,
                      value: loan.hasSchedule
                          ? '${loan.totalInstallments}'
                          : l10n.openEnded,
                    ),
                    if (loan.hasSchedule) ...[
                      _DetailRow(
                        label: l10n.paidInstallments,
                        value: '${loan.paidInstallments}',
                      ),
                      _DetailRow(
                        label: l10n.remainingInstallments,
                        value: '${loan.remainingInstallments}',
                      ),
                    ],
                    _DetailRow(
                      label: l10n.paidOff(loan.percentPaid),
                      value: '${loan.percentPaid}%',
                    ),
                    _DetailRow(
                      label: l10n.interestRate,
                      value: '${loan.interestRate}%',
                    ),
                    _DetailRow(
                      label: l10n.nextPayment,
                      value: dates.long(loan.nextPaymentDate),
                    ),
                    _DetailRow(
                      label: l10n.paymentDueDate,
                      value: l10n.dueOnDayOfMonth(loan.dueDayOfMonth),
                    ),
                    _DetailRow(
                      label: l10n.finalPayment,
                      value: loan.finalPaymentDate == null
                          ? l10n.openEnded
                          : dates.long(loan.finalPaymentDate!),
                    ),
                    if (loan.startDate != null)
                      _DetailRow(
                        label: l10n.startDate,
                        value: dates.long(loan.startDate!),
                      ),
                    _DetailRow(
                      label: l10n.loanStatus,
                      value: status.label(l10n),
                      valueColor: status.color,
                      last: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xl),

        FadeSlideIn(
          index: 3,
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => showLoanEditor(context, loan: loan),
                  icon: const Icon(Icons.edit_outlined, size: 18),
                  label: Text(l10n.editDebt),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: FilledButton.icon(
                  onPressed: loan.isCompleted
                      ? null
                      : () => showPaymentSheet(context, loan),
                  icon: const Icon(Icons.payments_outlined, size: 18),
                  label: Text(l10n.recordPayment),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeaderCard extends ConsumerWidget {
  const _HeaderCard({required this.loan, required this.status});

  final Loan loan;
  final LoanStatus status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: BoxDecoration(
        color: context.accentDark,
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.14),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  loan.kind == LoanKind.creditCard
                      ? Icons.credit_card_rounded
                      : iconForCategory(loan.icon),
                  size: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loan.name,
                      style: AppTypography.title.copyWith(color: Colors.white),
                    ),
                    if (loan.lender.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        loan.lender,
                        style: AppTypography.caption.copyWith(
                          color: Colors.white.withValues(alpha: 0.75),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            l10n.remainingBalance.toUpperCase(),
            style: AppTypography.overline.copyWith(
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              money.format(loan.remaining),
              style: AppTypography.display.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          StatusChip(
            label: status.label(l10n),
            color: status.color,
            icon: status.icon,
          ),
        ],
      ),
    );
  }
}

class _ProgressRow extends StatelessWidget {
  const _ProgressRow({
    required this.label,
    required this.caption,
    required this.value,
    required this.color,
  });

  final String label;
  final String caption;
  final double value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: AppTypography.label.copyWith(
                  color: context.textSecondary,
                ),
              ),
            ),
            Text(
              '${(value * 100).round()}%',
              style: AppTypography.amountMedium.copyWith(color: color),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        AppProgressBar(value: value, color: color, height: 8),
        const SizedBox(height: 6),
        Text(
          caption,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
    this.emphasised = false,
    this.valueColor,
    this.last = false,
  });

  final String label;
  final String value;
  final bool emphasised;
  final Color? valueColor;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  label,
                  style: AppTypography.body.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Flexible(
                child: Text(
                  value,
                  textAlign: TextAlign.end,
                  style: emphasised
                      ? AppTypography.amountMedium.copyWith(
                          color: valueColor ?? context.accentDark,
                        )
                      : AppTypography.title.copyWith(
                          color: valueColor ?? context.textPrimary,
                        ),
                ),
              ),
            ],
          ),
        ),
        if (!last) Divider(color: context.borderColor, height: 1),
      ],
    );
  }
}
