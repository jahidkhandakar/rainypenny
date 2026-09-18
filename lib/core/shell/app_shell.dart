import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../localization/generated/app_localizations.dart';
import '../routing/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_theme.dart';
import '../theme/app_typography.dart';
import '../widgets/brand_mark.dart';
import 'app_drawer.dart';
import 'quick_action_sheet.dart';

/// Key for the shell's Scaffold.
///
/// The branch screens each build their own Scaffold, so `Scaffold.of` from
/// inside one of them would not find the drawer. Opening it goes through
/// [openAppDrawer] instead.
final appShellScaffoldKey = GlobalKey<ScaffoldState>();

/// Opens the app drawer from anywhere inside the shell.
void openAppDrawer() => appShellScaffoldKey.currentState?.openDrawer();

/// The drawer handle used across the app: the brand mark standing in for the
/// usual hamburger, so the logo is the first thing on every screen.
class DrawerLogoButton extends StatelessWidget {
  const DrawerLogoButton({super.key, this.size = 26});

  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      icon: BrandMark(size: size),
      onPressed: openAppDrawer,
    );
  }
}

/// Scaffold shared by the four bottom-navigation destinations.
///
/// Owns the Android back behaviour for the whole shell. Back is a system
/// gesture people use constantly and reflexively, so it has to be predictable:
/// from a secondary tab it returns Home rather than leaving the app, and from
/// Home it takes two presses — one stray swipe at the edge of the screen should
/// never throw away what someone was in the middle of.
class AppShell extends ConsumerStatefulWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  /// How long the second press has to arrive within. Long enough not to feel
  /// like a race, short enough that a press minutes later is not treated as a
  /// confirmation of something the user has long forgotten.
  static const _exitWindow = Duration(seconds: 2);

  DateTime? _lastBackPress;

  void _goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  void _handleBack() {
    // An open drawer swallows the gesture: closing it is what the user meant.
    final scaffold = appShellScaffoldKey.currentState;
    if (scaffold != null && scaffold.isDrawerOpen) {
      Navigator.of(context).pop();
      return;
    }

    // Anywhere but Home, back means "up to Home" rather than "out of the app".
    if (widget.navigationShell.currentIndex != 0) {
      _goToBranch(0);
      return;
    }

    final now = DateTime.now();
    final last = _lastBackPress;
    if (last != null && now.difference(last) < _exitWindow) {
      // Confirmed. Popping the root route is what actually backgrounds the app
      // on Android; `SystemNavigator.pop` is the supported way to ask for it.
      SystemNavigator.pop();
      return;
    }

    setState(() => _lastBackPress = now);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(AppL10n.of(context).pressBackAgainToExit),
          duration: _exitWindow,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // Never let the framework pop on its own: every case is decided above,
      // and the only route out of the app is the confirmed second press.
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        _handleBack();
      },
      child: Scaffold(
        key: appShellScaffoldKey,
        drawer: const AppDrawer(),
        drawerEdgeDragWidth: 40,
        body: widget.navigationShell,
        bottomNavigationBar: _BottomNav(
          currentIndex: widget.navigationShell.currentIndex,
          onSelect: _goToBranch,
          onAdd: () => showQuickActionSheet(context, ref),
          // Logging an expense is the most frequent thing anyone does here, so
          // it keeps a one-gesture route even though the button now opens a
          // menu.
          onAddLongPress: () =>
              context.push('${AppRoutes.addTransaction}?type=expense'),
        ),
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    required this.currentIndex,
    required this.onSelect,
    required this.onAdd,
    required this.onAddLongPress,
  });

  final int currentIndex;
  final ValueChanged<int> onSelect;
  final VoidCallback onAdd;
  final VoidCallback onAddLongPress;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    final items = <_NavItem>[
      _NavItem(l10n.navHome, Icons.home_rounded, Icons.home_outlined),
      _NavItem(
        l10n.navTransactions,
        Icons.receipt_long_rounded,
        Icons.receipt_long_outlined,
      ),
      _NavItem(
        l10n.navReports,
        Icons.insert_chart_rounded,
        Icons.insert_chart_outlined_rounded,
      ),
      _NavItem(l10n.navProfile, Icons.person_rounded, Icons.person_outline),
    ];

    return Container(
      decoration: BoxDecoration(
        color: context.cardColor,
        border: Border(top: BorderSide(color: context.borderColor)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 64,
          child: Row(
            children: [
              _navButton(context, items[0], 0),
              _navButton(context, items[1], 1),
              _AddButton(
                onTap: onAdd,
                onLongPress: onAddLongPress,
                label: l10n.navAdd,
              ),
              _navButton(context, items[2], 2),
              _navButton(context, items[3], 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navButton(BuildContext context, _NavItem item, int index) {
    final selected = currentIndex == index;
    final color = selected ? context.accent : AppColors.navUnselected;

    return Expanded(
      child: InkResponse(
        onTap: () => onSelect(index),
        radius: 42,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: AppDuration.fast,
              child: Icon(
                selected ? item.activeIcon : item.icon,
                key: ValueKey(selected),
                size: 24,
                color: color,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              item.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.caption.copyWith(
                fontSize: 11,
                color: color,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The centre action — the strongest focal point in the bar.
class _AddButton extends StatelessWidget {
  const _AddButton({
    required this.onTap,
    required this.onLongPress,
    required this.label,
  });

  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Semantics(
          button: true,
          label: label,
          child: InkResponse(
            onTap: onTap,
            onLongPress: onLongPress,
            radius: 34,
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                gradient: context.brandGradient,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: context.accent.withValues(alpha: 0.28),
                    blurRadius: 14,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  const _NavItem(this.label, this.activeIcon, this.icon);

  final String label;
  final IconData activeIcon;
  final IconData icon;
}
