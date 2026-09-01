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
import '../../../financial/domain/services/debt_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Debt tracking. Serious in tone — deep blue and charcoal — but never
/// alarming: red appears only when a payment is actually overdue.
class LoansScreen extends ConsumerWidget {
  const LoansScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final loans = ref.watch(loansProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.loansAndDebts)),
      body: loans.when(
        data: (list) => ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.page,
            AppSpacing.sm,
            AppSpacing.page,
            AppSpacing.section,
          ),
          children: [
            FadeSlideIn(index: 0, child: _OutstandingCard(loans: list)),
            const SizedBox(height: AppSpacing.xl),
            if (DebtCalculator.upcomingPayments(list, DateTime.now())
                .isNotEmpty) ...[
              SectionHeader(title: l10n.upcomingPayments),
              FadeSlideIn(index: 1, child: _PaymentSchedule(loans: list)),
              const SizedBox(height: AppSpacing.xl),
            ],
            SectionHeader(title: l10n.loansAndDebts),
            for (var i = 0; i < list.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.md),
                child: FadeSlideIn(index: i + 2, child: _LoanCard(loan: list[i])),
              ),
            if (list.isEmpty)
              EmptyState(
                icon: Icons.account_balance_rounded,
                title: l10n.loansAndDebts,
                message: l10n.noNotificationsBody,
              ),
          ],
        ),
        loading: () => ListView(
          padding: const EdgeInsets.all(AppSpacing.page),
          children: const [
            SkeletonCard(height: 110),
            SizedBox(height: AppSpacing.lg),
            SkeletonCard(height: 150),
            SizedBox(height: AppSpacing.md),
            SkeletonCard(height: 150),
          ],
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

class _OutstandingCard extends ConsumerWidget {
  const _OutstandingCard({required this.loans});

  final List<Loan> loans;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);

    final outstanding = DebtCalculator.totalOutstanding(loans);
    final monthly = DebtCalculator.totalMonthlyPayments(loans);
    final progress = DebtCalculator.overallProgress(loans);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.totalOutstanding.toUpperCase(),
            style: AppTypography.overline.copyWith(
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              money.format(outstanding, decimals: false),
              style: AppTypography.display.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppProgressBar(
            value: progress,
            color: AppColors.accent,
            trackColor: Colors.white.withValues(alpha: 0.18),
            height: 7,
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Text(
                l10n.paidOff((progress * 100).round()),
                style: AppTypography.caption.copyWith(
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
              const Spacer(),
              Text(
                '${l10n.monthlyPayment} ${money.format(monthly, decimals: false)}',
                style: AppTypography.caption.copyWith(
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PaymentSchedule extends ConsumerWidget {
  const _PaymentSchedule({required this.loans});

  final List<Loan> loans;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final now = DateTime.now();
    final upcoming = DebtCalculator.paymentSchedule(loans);

    return AppCard(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      child: Column(
        children: [
          for (final loan in upcoming)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: Row(
                children: [
                  _DueBadge(days: loan.daysUntilPayment(now)),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loan.name,
                          style: AppTypography.title.copyWith(
                            color: context.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          dates.long(loan.nextPaymentDate),
                          style: AppTypography.caption.copyWith(
                            color: context.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    money.format(loan.monthlyPayment, decimals: false),
                    style: AppTypography.amountMedium.copyWith(
                      color: context.textPrimary,
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

class _DueBadge extends StatelessWidget {
  const _DueBadge({required this.days});

  final int days;

  @override
  Widget build(BuildContext context) {
    final color = DebtRules.isOverdue(days)
        ? AppColors.error
        : DebtRules.isUrgent(days)
            ? AppColors.warning
            : AppColors.primary;

    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DebtRules.isOverdue(days) ? '!' : '${days.abs()}',
            style: AppTypography.amountMedium.copyWith(color: color),
          ),
          Text(
            DebtRules.isOverdue(days) ? 'late' : 'days',
            style: AppTypography.caption.copyWith(fontSize: 9, color: color),
          ),
        ],
      ),
    );
  }
}

class _LoanCard extends ConsumerWidget {
  const _LoanCard({required this.loan});

  final Loan loan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final dates = ref.watch(dateFormatterProvider);
    final days = loan.daysUntilPayment(DateTime.now());

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconBadge(
                icon: loan.kind == LoanKind.creditCard
                    ? Icons.credit_card_rounded
                    : iconForCategory(loan.icon),
                background: AppColors.primaryDark.withValues(alpha: 0.10),
                foreground: AppColors.primaryDark,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loan.name,
                      style: AppTypography.title.copyWith(
                        color: context.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${loan.lender} · ${loan.interestRate}% ${l10n.interestRate.toLowerCase()}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.caption.copyWith(
                        color: context.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              if (DebtRules.isOverdue(days))
                StatusChip(
                  label: l10n.overdue,
                  color: AppColors.error,
                  icon: Icons.error_rounded,
                )
              else if (DebtRules.isDueSoon(days))
                StatusChip(
                  label: l10n.dueInDays(days),
                  color: DebtRules.isUrgent(days)
                      ? AppColors.warning
                      : AppColors.primary,
                  icon: Icons.schedule_rounded,
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              _LoanFigure(
                label: l10n.remaining,
                value: money.format(loan.remaining, decimals: false),
                emphasised: true,
              ),
              _LoanFigure(
                label: l10n.monthlyPayment,
                value: money.format(loan.monthlyPayment, decimals: false),
              ),
              _LoanFigure(
                label: l10n.nextPayment,
                value: dates.short(loan.nextPaymentDate),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AppProgressBar(
            value: loan.progress,
            color: AppColors.primaryLight,
            height: 7,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            l10n.paidOff(loan.percentPaid),
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _LoanFigure extends StatelessWidget {
  const _LoanFigure({
    required this.label,
    required this.value,
    this.emphasised = false,
  });

  final String label;
  final String value;
  final bool emphasised;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
          const SizedBox(height: 4),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              value,
              style: emphasised
                  ? AppTypography.amountLarge.copyWith(
                      fontSize: 19,
                      color: AppColors.primaryDark,
                    )
                  : AppTypography.amountMedium.copyWith(
                      color: context.textPrimary,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
