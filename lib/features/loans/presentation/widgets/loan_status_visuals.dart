import 'package:flutter/cupertino.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../financial/domain/entities/loan.dart';

/// How each [LoanStatus] is presented.
///
/// Kept in one place so the loans list, the detail screen and the reports PDF
/// can never label the same debt differently. Colour is deliberately restrained:
/// red appears only when a payment is genuinely late.
extension LoanStatusVisuals on LoanStatus {
  Color get color => switch (this) {
    LoanStatus.completed => AppColors.income,
    LoanStatus.overdue => AppColors.error,
    LoanStatus.dueSoon => AppColors.warning,
    LoanStatus.active => AppColors.primary,
  };

  IconData get icon => switch (this) {
    LoanStatus.completed => CupertinoIcons.checkmark_circle_fill,
    LoanStatus.overdue => CupertinoIcons.exclamationmark_circle_fill,
    LoanStatus.dueSoon => CupertinoIcons.clock_fill,
    LoanStatus.active => CupertinoIcons.graph_square_fill,
  };

  String label(AppL10n l10n) => switch (this) {
    LoanStatus.completed => l10n.statusCompleted,
    LoanStatus.overdue => l10n.statusOverdue,
    LoanStatus.dueSoon => l10n.statusDueSoon,
    LoanStatus.active => l10n.statusActive,
  };
}
