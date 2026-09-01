import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/shell/app_shell.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/states.dart';
import '../controllers/transaction_list_controller.dart';
import '../widgets/transaction_detail_sheet.dart';
import '../widgets/transaction_tile.dart';

/// The full ledger: search, type filter and day grouping.
class TransactionsScreen extends ConsumerStatefulWidget {
  const TransactionsScreen({super.key});

  @override
  ConsumerState<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends ConsumerState<TransactionsScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final groups = ref.watch(groupedTransactionsProvider);
    final query = ref.watch(transactionQueryProvider);
    final count = ref.watch(filteredTransactionCountProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: openAppDrawer,
        ),
        title: Text(l10n.navTransactions),
        actions: [
          IconButton(
            tooltip: l10n.addTransaction,
            icon: const Icon(Icons.add_rounded),
            onPressed: () => context.push(AppRoutes.addTransaction),
          ),
          const SizedBox(width: AppSpacing.sm),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.page,
              AppSpacing.sm,
              AppSpacing.page,
              AppSpacing.md,
            ),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: (value) =>
                      ref.read(transactionQueryProvider.notifier).search(value),
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    hintText: l10n.searchTransactions,
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: context.textSecondary,
                      size: 21,
                    ),
                    suffixIcon: query.search.isEmpty
                        ? null
                        : IconButton(
                            icon: const Icon(Icons.close_rounded, size: 18),
                            onPressed: () {
                              _searchController.clear();
                              ref
                                  .read(transactionQueryProvider.notifier)
                                  .search('');
                            },
                          ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                _FilterBar(
                  selected: query.filter,
                  onSelect: (filter) =>
                      ref.read(transactionQueryProvider.notifier).filter(filter),
                ),
              ],
            ),
          ),
          Expanded(
            child: groups.when(
              data: (list) {
                if (list.isEmpty) {
                  return EmptyState(
                    icon: Icons.search_off_rounded,
                    title: l10n.noTransactionsTitle,
                    message: l10n.noTransactionsBody,
                    actionLabel: query.isActive ? l10n.filterAll : null,
                    onAction: query.isActive
                        ? () {
                            _searchController.clear();
                            ref.read(transactionQueryProvider.notifier).clear();
                          }
                        : null,
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.page,
                    0,
                    AppSpacing.page,
                    AppSpacing.section,
                  ),
                  itemCount: list.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.md),
                        child: Text(
                          l10n.transactionCount(count),
                          style: AppTypography.caption.copyWith(
                            color: context.textSecondary,
                          ),
                        ),
                      );
                    }
                    final group = list[index - 1];
                    return FadeSlideIn(
                      index: index.clamp(0, 6),
                      child: _DayGroup(group: group),
                    );
                  },
                );
              },
              loading: () => ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.page,
                ),
                children: const [
                  SkeletonRow(),
                  SkeletonRow(),
                  SkeletonRow(),
                  SkeletonRow(),
                  SkeletonRow(),
                ],
              ),
              error: (_, _) => ErrorState(
                message: l10n.somethingWentWrong,
                retryLabel: l10n.retry,
                onRetry: () => ref.invalidate(groupedTransactionsProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterBar extends StatelessWidget {
  const _FilterBar({required this.selected, required this.onSelect});

  final TransactionFilter selected;
  final ValueChanged<TransactionFilter> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final labels = {
      TransactionFilter.all: l10n.filterAll,
      TransactionFilter.income: l10n.filterIncome,
      TransactionFilter.expense: l10n.filterExpenses,
    };

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.subtleFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          for (final entry in labels.entries)
            Expanded(
              child: GestureDetector(
                onTap: () => onSelect(entry.key),
                behavior: HitTestBehavior.opaque,
                child: AnimatedContainer(
                  duration: AppDuration.fast,
                  curve: Curves.easeOut,
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  decoration: BoxDecoration(
                    color: selected == entry.key
                        ? context.cardColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    boxShadow: selected == entry.key
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
                    entry.value,
                    textAlign: TextAlign.center,
                    style: AppTypography.label.copyWith(
                      color: selected == entry.key
                          ? AppColors.primary
                          : context.textSecondary,
                      fontWeight: selected == entry.key
                          ? FontWeight.w700
                          : FontWeight.w500,
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

class _DayGroup extends ConsumerWidget {
  const _DayGroup({required this.group});

  final TransactionGroup group;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final money = ref.watch(moneyFormatterProvider);

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.xs,
              right: AppSpacing.xs,
              bottom: AppSpacing.sm,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    dates
                        .dayHeading(
                          group.date,
                          now: DateTime.now(),
                          todayLabel: l10n.today,
                          yesterdayLabel: l10n.yesterday,
                        )
                        .toUpperCase(),
                    style: AppTypography.overline.copyWith(
                      color: context.textSecondary,
                    ),
                  ),
                ),
                Text(
                  money.formatSigned(group.net, decimals: false),
                  style: AppTypography.caption.copyWith(
                    color: group.net >= 0
                        ? AppColors.income
                        : context.textSecondary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          AppCard(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.sm,
              vertical: AppSpacing.xs,
            ),
            child: Column(
              children: [
                for (final transaction in group.transactions)
                  TransactionTile(
                    transaction: transaction,
                    showDate: false,
                    onTap: () => showTransactionDetail(context, transaction),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
