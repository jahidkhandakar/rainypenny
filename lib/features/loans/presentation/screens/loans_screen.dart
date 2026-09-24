import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
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
import '../widgets/loan_editor_sheet.dart';
import '../widgets/loan_status_visuals.dart';

/// Debt tracking screen: overall outstanding balance and payment schedule stay at the top,
/// with Loans and Debts separated into tabs below.
class LoansScreen extends ConsumerStatefulWidget {
  const LoansScreen({super.key});

  @override
  ConsumerState<LoansScreen> createState() => _LoansScreenState();
}

class _LoansScreenState extends ConsumerState<LoansScreen> {
  int _selectedTab = 0; // 0 = Loans, 1 = Debts

  bool _isDebt(Loan loan) {
    final kindName = loan.kind.name.toLowerCase();
    if (kindName.contains('debt') ||
        kindName.contains('credit') ||
        loan.kind == LoanKind.creditCard) {
      return true;
    }
    return !loan.hasSchedule;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final loans = ref.watch(loansProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.loansAndDebts),
        actions: [
          IconButton(
            tooltip: l10n.newDebt,
            icon: const Icon(Icons.add_rounded),
            onPressed: () => showLoanEditor(context),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: loans.when(
        data: (list) {
          final loansOnly = list.where((item) => !_isDebt(item)).toList();
          final debtsOnly = list.where((item) => _isDebt(item)).toList();
          final currentList = _selectedTab == 0 ? loansOnly : debtsOnly;

          return ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.sm,
              AppSpacing.page,
              AppSpacing.section,
            ),
            children: [
              // Overall summary remains untouched
              FadeSlideIn(index: 0, child: _OutstandingCard(loans: list)),
              const SizedBox(height: AppSpacing.xl),

              // Upcoming payments for all accounts remain untouched
              if (DebtCalculator.upcomingPayments(list, DateTime.now()).isNotEmpty) ...[
                SectionHeader(title: l10n.upcomingPayments),
                FadeSlideIn(index: 1, child: _PaymentSchedule(loans: list)),
                const SizedBox(height: AppSpacing.xl),
              ],

              // Section header with segmented tabs
              SectionHeader(title: l10n.loansAndDebts),
              const SizedBox(height: AppSpacing.xs),
              _TabSelector(
                selected: _selectedTab,
                onSelect: (index) => setState(() => _selectedTab = index),
              ),
              const SizedBox(height: AppSpacing.md),

              // Filtered list based on selected tab
              for (var i = 0; i < currentList.length; i++)
                Padding(
                  key: ValueKey(currentList[i].id),
                  padding: const EdgeInsets.only(bottom: AppSpacing.md),
                  child: FadeSlideIn(
                    index: i + 2,
                    child: _LoanCard(loan: currentList[i]),
                  ),
                ),

              if (currentList.isEmpty)
                EmptyState(
                  icon: Icons.account_balance_rounded,
                  title: _selectedTab == 0 ? l10n.noLoansTitle : l10n.noDebtsTitle,
                  message: _selectedTab == 0 ? l10n.noLoansBody : l10n.noDebtsBody,
                  actionLabel: l10n.newDebt,
                  onAction: () => showLoanEditor(context),
                  compact: true,
                ),
            ],
          );
        },
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

class _TabSelector extends StatelessWidget {
  const _TabSelector({required this.selected, required this.onSelect});

  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final tabs = ['Loans', 'Debts'];

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.subtleFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          for (var i = 0; i < tabs.length; i++)
            Expanded(
              child: GestureDetector(
                onTap: () => onSelect(i),
                behavior: HitTestBehavior.opaque,
                child: AnimatedContainer(
                  duration: AppDuration.fast,
                  curve: Curves.easeOut,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: selected == i ? context.cardColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    boxShadow: selected == i
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Text(
                    tabs[i],
                    textAlign: TextAlign.center,
                    style: AppTypography.label.copyWith(
                      color: selected == i ? context.accentDark : context.textSecondary,
                      fontWeight: selected == i ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
        ],
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
        color: context.accentDark,
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.totalOutstanding.toUpperCase(),
            style: AppTypography.overline.copyWith(color: Colors.white.withValues(alpha: 0.7)),
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
            color: AppColors.secondary,
            trackColor: Colors.white.withValues(alpha: 0.18),
            height: 7,
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Text(
                l10n.paidOff((progress * 100).round()),
                style: AppTypography.caption.copyWith(color: Colors.white.withValues(alpha: 0.85)),
              ),
              const Spacer(),
              Text(
                '${l10n.monthlyPayment} ${money.format(monthly, decimals: false)}',
                style: AppTypography.caption.copyWith(color: Colors.white.withValues(alpha: 0.85)),
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
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
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
                          style: AppTypography.title.copyWith(color: context.textPrimary),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          dates.long(loan.nextPaymentDate),
                          style: AppTypography.caption.copyWith(color: context.textSecondary),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    money.format(loan.installmentAmount, decimals: false),
                    style: AppTypography.amountMedium.copyWith(color: context.textPrimary),
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
        : context.accent;

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
    final now = DateTime.now();
    final days = loan.daysUntilPayment(now);
    final status = loan.statusAt(now, dueSoonWindowDays: DebtRules.reminderWindowDays);

    return AppCard(
      onTap: () => context.push(AppRoutes.loanDetailPath(loan.id)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconBadge(
                icon: loan.kind == LoanKind.creditCard
                    ? CupertinoIcons.creditcard
                    : iconForCategory(loan.icon),
                background: context.accentDark.withValues(alpha: 0.10),
                foreground: context.accentDark,
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loan.name,
                      style: AppTypography.title.copyWith(color: context.textPrimary),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${loan.lender} · ${loan.interestRate}% ${l10n.interestRate.toLowerCase()}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.caption.copyWith(color: context.textSecondary),
                    ),
                  ],
                ),
              ),
              if (status == LoanStatus.dueSoon)
                StatusChip(
                  label: l10n.dueInDays(days),
                  color: DebtRules.isUrgent(days) ? AppColors.warning : context.accent,
                  icon: CupertinoIcons.alarm,
                )
              else
                StatusChip(label: status.label(l10n), color: status.color, icon: status.icon),
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
                label: l10n.installmentAmount,
                value: money.format(loan.installmentAmount, decimals: false),
              ),
              if (loan.hasSchedule)
                _LoanFigure(
                  label: l10n.remainingInstallments,
                  value: '${loan.remainingInstallments}',
                )
              else
                _LoanFigure(label: l10n.nextPayment, value: dates.short(loan.nextPaymentDate)),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AppProgressBar(value: loan.progress, color: context.accentLight, height: 7),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Expanded(
                child: Text(
                  loan.hasSchedule
                      ? '${l10n.paidOff(loan.percentPaid)} · '
                            '${l10n.installmentsPaidOf(loan.paidInstallments, loan.totalInstallments)}'
                      : l10n.paidOff(loan.percentPaid),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.caption.copyWith(color: context.textSecondary),
                ),
              ),
              TextButton.icon(
                onPressed: () => showPaymentSheet(context, loan),
                icon: const Icon(Icons.payments_outlined, size: 16),
                label: Text(l10n.recordPayment),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LoanFigure extends StatelessWidget {
  const _LoanFigure({required this.label, required this.value, this.emphasised = false});

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
                  ? AppTypography.amountLarge.copyWith(fontSize: 19, color: context.accentDark)
                  : AppTypography.amountMedium.copyWith(color: context.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
