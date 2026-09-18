import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_progress_bar.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../financial/domain/entities/cycle_summary.dart';

/// The signature card: the one place the full brand gradient runs at scale.
///
/// It leads with the two numbers the app is actually about — what came in this
/// cycle, and what is left of it. It used to show a single "total balance" read
/// from a constant, which never moved when a transaction was added.
class SalaryCard extends ConsumerWidget {
  const SalaryCard({
    super.key,
    required this.summary,
    required this.salary,
    this.onTap,
  });

  final CycleSummary summary;

  /// The largest credit in the cycle. Shown alongside total income when the two
  /// differ, because a month with freelance work on top of a salary is a
  /// different picture from one without.
  final double salary;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final now = DateTime.now();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        child: Ink(
          padding: const EdgeInsets.all(AppSpacing.xxl),
          decoration: BoxDecoration(
            gradient: context.brandGradient,
            borderRadius: BorderRadius.circular(AppRadius.xl),
            boxShadow: [
              BoxShadow(
                color: context.accentDark.withValues(alpha: 0.22),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Stack(
            children: [
              // A soft highlight so the flat gradient gains a little depth.
              PositionedDirectional(
                top: -70,
                end: -50,
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.06),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          l10n.remainingAmount.toUpperCase(),
                          style: AppTypography.overline.copyWith(
                            color: Colors.white.withValues(alpha: 0.72),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.account_balance_wallet_rounded,
                        size: 18,
                        color: Colors.white.withValues(alpha: 0.55),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AnimatedAmount(
                    value: summary.remaining,
                    builder: (context, value) => FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        money.format(value),
                        style: AppTypography.display.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // How much of the cycle's income is already gone, against how
                  // far through the cycle the user actually is — the comparison
                  // that tells them whether they are on pace.
                  AppProgressBar(
                    value: summary.spentProgress,
                    color: summary.isOverspent
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.9),
                    trackColor: Colors.white.withValues(alpha: 0.22),
                    height: 6,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    summary.isOverspent
                        ? l10n.overspentNotice
                        : l10n.daysLeftInCycle(
                            summary.cycle.daysRemainingAt(now),
                          ),
                    style: AppTypography.caption.copyWith(
                      color: Colors.white.withValues(alpha: 0.78),
                    ),
                  ),

                  const SizedBox(height: AppSpacing.lg),
                  Container(height: 1, color: Colors.white.withValues(alpha: 0.14)),
                  const SizedBox(height: AppSpacing.md),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _Figure(
                          label: l10n.monthlySalary,
                          value: money.format(
                            salary > 0 ? salary : summary.income,
                            decimals: false,
                          ),
                          icon: Icons.south_west_rounded,
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 34,
                        color: Colors.white.withValues(alpha: 0.14),
                      ),
                      Expanded(
                        child: _Figure(
                          label: l10n.spentSoFar,
                          value: money.format(
                            summary.expenses,
                            decimals: false,
                          ),
                          icon: Icons.north_east_rounded,
                          alignEnd: true,
                        ),
                      ),
                    ],
                  ),

                  // Only shown when there is something to carry: a zero here is
                  // noise on a card that has to stay readable at a glance.
                  if (summary.carriedForward.abs() >= 0.01) ...[
                    const SizedBox(height: AppSpacing.md),
                    Row(
                      children: [
                        Icon(
                          Icons.refresh_rounded,
                          size: 13,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            '${l10n.carriedForward}  '
                            '${money.formatSigned(summary.carriedForward, decimals: false)}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.caption.copyWith(
                              color: Colors.white.withValues(alpha: 0.7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Figure extends StatelessWidget {
  const _Figure({
    required this.label,
    required this.value,
    required this.icon,
    this.alignEnd = false,
  });

  final String label;
  final String value;
  final IconData icon;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignEnd
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: alignEnd
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Icon(icon, size: 12, color: Colors.white.withValues(alpha: 0.6)),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.caption.copyWith(
                  fontSize: 11,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: alignEnd
              ? AlignmentDirectional.centerEnd
              : AlignmentDirectional.centerStart,
          child: Text(
            value,
            style: AppTypography.amountLarge.copyWith(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
