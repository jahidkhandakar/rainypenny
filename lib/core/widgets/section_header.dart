import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';
import '../theme/app_typography.dart';

/// Title + optional trailing action above a block of content.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.actionLabel,
    this.onAction,
    this.padding = const EdgeInsets.only(bottom: AppSpacing.md),
  });

  final String title;
  final String? subtitle;
  final String? actionLabel;
  final VoidCallback? onAction;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // The action is a non-flexible child, so the row hands it unbounded
          // width and it sizes to whatever its label needs. "See all" is short
          // enough for that to go unnoticed; the Greek for "See the breakdown"
          // is not, and it left the title's Expanded with negative space —
          // 26 px of overflow on the dashboard. Half the header is plenty for
          // an action and leaves the title the space it is entitled to.
          final actionCap = constraints.hasBoundedWidth
              ? constraints.maxWidth / 2
              : double.infinity;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTypography.sectionTitle.copyWith(
                        color: context.textPrimary,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle!,
                        style: AppTypography.caption.copyWith(
                          color: context.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (actionLabel != null && onAction != null)
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: actionCap),
                  child: TextButton(
                    onPressed: onAction,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Truncates rather than pushing the arrow off the edge,
                        // so the control still reads as a link to somewhere.
                        Flexible(
                          child: Text(
                            actionLabel!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Icon(
                          CupertinoIcons.arrow_right,
                          size: 14,
                          color: context.accentOnSurface,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// Small uppercase label used above hero figures.
class OverlineLabel extends StatelessWidget {
  const OverlineLabel(this.text, {super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppTypography.overline.copyWith(color: color ?? context.textSecondary),
    );
  }
}
