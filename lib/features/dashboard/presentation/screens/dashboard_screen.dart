import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/states.dart';
import '../../../budget/presentation/widgets/budget_row.dart';
import '../../../financial/domain/entities/budget.dart';
import '../../../financial/domain/entities/insight.dart';
import '../../../financial/domain/entities/period_summary.dart';
import '../../../financial/domain/entities/savings_goal.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../../financial/domain/services/budget_calculator.dart';
import '../../../financial/domain/services/savings_calculator.dart';
import '../../../financial/presentation/providers/finance_providers.dart';
import '../../../financial/presentation/widgets/insight_card.dart';
import '../../../savings/presentation/widgets/savings_goal_card.dart';
import '../../../transactions/presentation/widgets/transaction_detail_sheet.dart';
import '../../../transactions/presentation/widgets/transaction_tile.dart';
import '../widgets/balance_card.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/health_card.dart';
import '../widgets/income_expense_cards.dart';
import '../widgets/quick_actions.dart';
import '../widgets/spending_donut.dart';

/// The home screen: the whole financial picture, ordered by what matters most.
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final summary = ref.watch(dashboardSummaryProvider);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(transactionsProvider);
            await ref.read(dashboardSummaryProvider.future);
          },
          child: ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.lg,
              AppSpacing.page,
              AppSpacing.section,
            ),
            children: [
              const DashboardHeader(),
              const SizedBox(height: AppSpacing.xl),
              summary.when(
                data: (data) => _DashboardBody(summary: data),
                loading: () => const _DashboardSkeleton(),
                error: (_, _) => ErrorState(
                  message: l10n.somethingWentWrong,
                  retryLabel: l10n.retry,
                  onRetry: () => ref.invalidate(transactionsProvider),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardBody extends ConsumerWidget {
  const _DashboardBody({required this.summary});

  final PeriodSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeSlideIn(index: 0, child: BalanceCard(summary: summary)),
        const SizedBox(height: AppSpacing.lg),
        FadeSlideIn(
          index: 1,
          child: IncomeExpenseCards(
            summary: summary,
            onIncomeTap: () => context.go(AppRoutes.transactions),
            onExpenseTap: () => context.go(AppRoutes.transactions),
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(title: l10n.quickActions),
              const QuickActions(),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(index: 3, child: _SpendingSection(summary: summary)),
        const SizedBox(height: AppSpacing.section),

        const FadeSlideIn(index: 4, child: _InsightSection()),

        FadeSlideIn(index: 5, child: const _RecentTransactionsSection()),
        const SizedBox(height: AppSpacing.section),

        const FadeSlideIn(index: 6, child: _BudgetSection()),
        const SizedBox(height: AppSpacing.section),

        const FadeSlideIn(index: 7, child: _SavingsSection()),
        const SizedBox(height: AppSpacing.section),

        const FadeSlideIn(index: 8, child: _HealthSection()),
      ],
    );
  }
}

class _SpendingSection extends ConsumerWidget {
  const _SpendingSection({required this.summary});

  final PeriodSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final slices = buildSpendingSlices(summary.spendingByCategory);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.spendingOverview,
          subtitle: dates.range(summary.start, summary.end),
          actionLabel: l10n.seeAll,
          onAction: () => context.go(AppRoutes.reports),
        ),
        AppCard(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: slices.isEmpty
              ? EmptyState(
                  icon: Icons.donut_large_rounded,
                  title: l10n.spendingOverview,
                  message: l10n.noTransactionsBody,
                  compact: true,
                )
              : SpendingDonut(
                  slices: slices,
                  centerLabel: l10n.expenses,
                ),
        ),
      ],
    );
  }
}

class _InsightSection extends ConsumerWidget {
  const _InsightSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final insights = ref.watch(insightsProvider);

    return insights.maybeWhen(
      data: (list) {
        final Insight? headline = list.isEmpty ? null : list.first;
        if (headline == null) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionHeader(
              title: l10n.financialInsight,
              actionLabel: l10n.viewAll,
              onAction: () => context.push(AppRoutes.notifications),
            ),
            InsightCard(
              insight: headline,
              onTap: () => context.push(AppRoutes.notifications),
            ),
            const SizedBox(height: AppSpacing.section),
          ],
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}

class _RecentTransactionsSection extends ConsumerWidget {
  const _RecentTransactionsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final transactions = ref.watch(transactionsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.recentTransactions,
          actionLabel: l10n.seeAll,
          onAction: () => context.go(AppRoutes.transactions),
        ),
        AppCard(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs,
          ),
          child: transactions.when(
            data: (list) {
              final recent = list.take(5).toList();
              if (recent.isEmpty) {
                return EmptyState(
                  icon: Icons.receipt_long_rounded,
                  title: l10n.noTransactionsTitle,
                  message: l10n.noTransactionsBody,
                  compact: true,
                );
              }
              return Column(
                children: [
                  for (final Transaction transaction in recent)
                    TransactionTile(
                      transaction: transaction,
                      onTap: () => showTransactionDetail(context, transaction),
                    ),
                ],
              );
            },
            loading: () => const Column(
              children: [SkeletonRow(), SkeletonRow(), SkeletonRow()],
            ),
            error: (_, _) => ErrorState(
              message: l10n.somethingWentWrong,
              retryLabel: l10n.retry,
              onRetry: () => ref.invalidate(transactionsProvider),
            ),
          ),
        ),
      ],
    );
  }
}

class _BudgetSection extends ConsumerWidget {
  const _BudgetSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final budgets = ref.watch(budgetsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.budgetProgress,
          actionLabel: l10n.viewAll,
          onAction: () => context.push(AppRoutes.budget),
        ),
        budgets.when(
          data: (list) {
            final preview = BudgetCalculator.preview(list);
            if (preview.isEmpty) {
              return AppCard(
                child: EmptyState(
                  icon: Icons.donut_small_rounded,
                  title: l10n.budget,
                  message: l10n.noTransactionsBody,
                  compact: true,
                ),
              );
            }
            return AppCard(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              child: Column(
                children: [
                  for (final Budget budget in preview)
                    BudgetRow(
                      budget: budget,
                      dense: true,
                      onTap: () => context.push(AppRoutes.budget),
                    ),
                ],
              ),
            );
          },
          loading: () => const SkeletonCard(height: 130),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _SavingsSection extends ConsumerWidget {
  const _SavingsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final goals = ref.watch(savingsGoalsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.savingsGoals,
          actionLabel: l10n.viewAll,
          onAction: () => context.push(AppRoutes.savings),
        ),
        goals.when(
          data: (list) {
            final SavingsGoal? featured = SavingsCalculator.featured(list);
            if (featured == null) {
              return AppCard(
                child: EmptyState(
                  icon: Icons.savings_rounded,
                  title: l10n.savingsGoals,
                  message: l10n.noTransactionsBody,
                  compact: true,
                ),
              );
            }
            return SavingsGoalCard(goal: featured, highlighted: true);
          },
          loading: () => const SkeletonCard(height: 120),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _HealthSection extends ConsumerWidget {
  const _HealthSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final health = ref.watch(financialHealthProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: l10n.financialHealth),
        health.when(
          data: (value) => HealthCard(health: value),
          loading: () => const SkeletonCard(height: 150, lines: 4),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SkeletonCard(height: 116, lines: 2),
        SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Expanded(child: SkeletonCard(height: 84, lines: 2)),
            SizedBox(width: AppSpacing.md),
            Expanded(child: SkeletonCard(height: 84, lines: 2)),
          ],
        ),
        SizedBox(height: AppSpacing.section),
        SkeletonCard(height: 130),
        SizedBox(height: AppSpacing.lg),
        SkeletonCard(height: 130),
      ],
    );
  }
}
