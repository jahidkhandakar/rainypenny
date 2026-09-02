import 'package:flutter/material.dart';
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
class AppShell extends ConsumerWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goToBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: appShellScaffoldKey,
      drawer: const AppDrawer(),
      drawerEdgeDragWidth: 40,
      body: navigationShell,
      bottomNavigationBar: _BottomNav(
        currentIndex: navigationShell.currentIndex,
        onSelect: _goToBranch,
        onAdd: () => showQuickActionSheet(context, ref),
        // Logging an expense is the most frequent thing anyone does here, so
        // it keeps a one-gesture route even though the button now opens a menu.
        onAddLongPress: () =>
            context.push('${AppRoutes.addTransaction}?type=expense'),
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
    final color = selected ? AppColors.primary : AppColors.navUnselected;

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
                gradient: AppColors.brandGradient,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.28),
                    blurRadius: 14,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const Icon(Icons.add_rounded, color: Colors.white, size: 28),
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
