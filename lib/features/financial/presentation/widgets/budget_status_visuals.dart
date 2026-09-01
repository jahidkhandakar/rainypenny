import 'package:flutter/material.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/budget.dart';

/// Maps budget status onto the semantic palette: teal while comfortable,
/// amber approaching the limit, red once it is blown.
Color colorForBudgetStatus(BudgetStatus status) {
  return switch (status) {
    BudgetStatus.onTrack => AppColors.success,
    BudgetStatus.approaching => AppColors.warning,
    BudgetStatus.exceeded => AppColors.error,
  };
}

String labelForBudgetStatus(BudgetStatus status, AppL10n l10n) {
  return switch (status) {
    BudgetStatus.onTrack => l10n.onTrack,
    BudgetStatus.approaching => l10n.approachingLimit,
    BudgetStatus.exceeded => l10n.overBudget,
  };
}

IconData iconForBudgetStatus(BudgetStatus status) {
  return switch (status) {
    BudgetStatus.onTrack => Icons.check_circle_rounded,
    BudgetStatus.approaching => Icons.warning_amber_rounded,
    BudgetStatus.exceeded => Icons.error_rounded,
  };
}
