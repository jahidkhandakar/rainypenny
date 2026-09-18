import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/app/presentation/splash_screen.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/auth/presentation/screens/reset_password_screen.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/budget/presentation/screens/budget_screen.dart';
import '../../features/categories/presentation/screens/categories_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/dashboard/presentation/screens/financial_health_screen.dart';
import '../../features/loans/presentation/screens/loan_detail_screen.dart';
import '../../features/loans/presentation/screens/loans_screen.dart';
import '../../features/notifications/presentation/notifications_screen.dart';
import '../../features/notifications/presentation/screens/notification_settings_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/onboarding/presentation/screens/welcome_screen.dart';
import '../../features/profile/presentation/screens/appearance_screen.dart';
import '../../features/profile/presentation/screens/currency_picker_screen.dart';
import '../../features/profile/presentation/screens/language_picker_screen.dart';
import '../../features/profile/presentation/screens/payday_screen.dart';
import '../../features/profile/presentation/screens/personal_information_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/profile/presentation/screens/settings_screen.dart';
import '../../features/reports/presentation/screens/reports_screen.dart';
import '../../features/savings/presentation/screens/savings_screen.dart';
import '../../features/transactions/presentation/screens/add_transaction_screen.dart';
import '../../features/transactions/presentation/screens/transactions_screen.dart';
import '../../features/tutorial/presentation/screens/tutorial_screen.dart';
import '../di/providers.dart';
import '../settings/settings_providers.dart';
import '../shell/app_shell.dart';
import 'app_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

/// Re-runs the router's redirect whenever anything the redirect depends on
/// changes: the session, whether setup has been completed, and whether a
/// recovery link is waiting on a new password.
///
/// All three, not just auth. Completing onboarding has to move the user off
/// `/onboarding`, and only a notification can make that happen.
class _RouterRefresh extends ChangeNotifier {
  _RouterRefresh(Ref ref, Stream<Object?> authChanges) {
    _subscription = authChanges.asBroadcastStream().listen(
      (_) => notifyListeners(),
    );
    // These subscriptions are owned by the provider and closed with it.
    ref.listen(onboardingCompleteProvider, (_, _) => notifyListeners());
    ref.listen(passwordRecoveryProvider, (_, _) => notifyListeners());
  }

  late final StreamSubscription<Object?> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

/// The app's route table.
///
/// The four bottom-navigation destinations live in a [StatefulShellRoute] so
/// each keeps its own navigation stack and scroll position. Everything reached
/// from the drawer or the centre Add button is pushed above the shell.
///
/// Three gates run in front of all of it, in order: a pending password reset
/// beats everything, then having a session, then having finished setup. The
/// order matters — a recovery link produces a *valid session*, so checking
/// sign-in first would wave the user through to the dashboard and quietly drop
/// the reset they came to do.
final appRouterProvider = Provider<GoRouter>((ref) {
  final auth = ref.watch(authRepositoryProvider);
  final refresh = _RouterRefresh(ref, auth.authStateChanges);
  ref.onDispose(refresh.dispose);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoutes.splash,
    refreshListenable: refresh,
    redirect: (context, state) {
      // Read the repository directly rather than a provider: its currentUser
      // is updated synchronously before the auth stream emits, so the redirect
      // never races the notification that triggered it.
      final signedIn = auth.currentUser != null;
      final recovering = ref.read(passwordRecoveryProvider);
      final onboarded = ref.read(onboardingCompleteProvider);
      final location = state.matchedLocation;

      // The splash sends everyone to the dashboard when it finishes; the rules
      // below are what actually decide where they end up.
      if (location == AppRoutes.splash) return null;

      if (recovering) {
        return location == AppRoutes.resetPassword
            ? null
            : AppRoutes.resetPassword;
      }

      if (!signedIn) {
        if (AppRoutes.publicRoutes.contains(location)) return null;
        // Someone who has used the app before and signed out wants the sign-in
        // form, not the marketing carousel they have already read.
        return onboarded ? AppRoutes.signIn : AppRoutes.welcome;
      }

      if (!onboarded) {
        return location == AppRoutes.onboarding ? null : AppRoutes.onboarding;
      }

      // Signed in and set up: the front door and setup are behind them.
      // Checked against authRoutes rather than publicRoutes so the language
      // picker, which both sides need, is not bounced back to the dashboard.
      if (AppRoutes.authRoutes.contains(location) ||
          location == AppRoutes.onboarding) {
        return AppRoutes.home;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.signIn,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (context, state) => ForgotPasswordScreen(
          // Carried from the sign-in form so a mistyped password does not
          // cost the user their email address as well.
          initialEmail: state.extra is String ? state.extra as String : null,
        ),
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        builder: (context, state) => const ResetPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.tutorial,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const TutorialScreen(),
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
        path: AppRoutes.loanDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) =>
            LoanDetailScreen(loanId: state.pathParameters['id']!),
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
      GoRoute(
        path: AppRoutes.categories,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const CategoriesScreen(),
      ),
      GoRoute(
        path: AppRoutes.currency,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const CurrencyPickerScreen(),
      ),
      GoRoute(
        path: AppRoutes.language,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const LanguagePickerScreen(),
      ),
      GoRoute(
        path: AppRoutes.appearance,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const AppearanceScreen(),
      ),
      GoRoute(
        path: AppRoutes.notificationSettings,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const NotificationSettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.financialHealth,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const FinancialHealthScreen(),
      ),
      GoRoute(
        path: AppRoutes.personalInformation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const PersonalInformationScreen(),
      ),
      GoRoute(
        path: AppRoutes.payday,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const PaydayScreen(),
      ),
    ],
  );
});

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
