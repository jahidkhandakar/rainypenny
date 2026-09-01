import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/app/presentation/splash_screen.dart';
import '../../features/budget/presentation/screens/budget_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/loans/presentation/screens/loans_screen.dart';
import '../../features/notifications/presentation/notifications_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/profile/presentation/screens/settings_screen.dart';
import '../../features/reports/presentation/screens/reports_screen.dart';
import '../../features/savings/presentation/screens/savings_screen.dart';
import '../../features/transactions/presentation/screens/add_transaction_screen.dart';
import '../../features/transactions/presentation/screens/transactions_screen.dart';
import '../shell/app_shell.dart';
import 'app_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

/// The app's route table.
///
/// The four bottom-navigation destinations live in a [StatefulShellRoute] so
/// each keeps its own navigation stack and scroll position. Everything reached
/// from the drawer or the centre Add button is pushed above the shell.
final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: DashboardScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.transactions,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: TransactionsScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.reports,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ReportsScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: ProfileScreen()),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.addTransaction,
      parentNavigatorKey: rootNavigatorKey,
      pageBuilder: (context, state) {
        final isIncome = state.uri.queryParameters['type'] == 'income';
        return _slideUpPage(AddTransactionScreen(startAsIncome: isIncome));
      },
    ),
    GoRoute(
      path: AppRoutes.budget,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const BudgetScreen(),
    ),
    GoRoute(
      path: AppRoutes.savings,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const SavingsScreen(),
    ),
    GoRoute(
      path: AppRoutes.loans,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const LoansScreen(),
    ),
    GoRoute(
      path: AppRoutes.notifications,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: AppRoutes.settings,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);

/// Sheet-style entrance for the Add flow.
CustomTransitionPage<void> _slideUpPage(Widget child) {
  return CustomTransitionPage<void>(
    child: child,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 240),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );
      return SlideTransition(
        position: Tween(
          begin: const Offset(0, 0.06),
          end: Offset.zero,
        ).animate(curved),
        child: FadeTransition(opacity: curved, child: child),
      );
    },
  );
}
