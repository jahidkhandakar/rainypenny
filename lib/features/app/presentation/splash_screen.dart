import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/localization/generated/app_localizations.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimens.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/brand_mark.dart';
import '../../auth/presentation/controllers/auth_controller.dart';
import '../../financial/presentation/providers/finance_providers.dart';

/// Brand moment while the first data load is kicked off.
///
/// The gradient here and on the balance card are the only two places the full
/// logo gradient is used at scale.
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..forward();

  @override
  void initState() {
    super.initState();
    // Warm the caches so the dashboard paints with data already in hand.
    ref.read(transactionsProvider.future).ignore();
    ref.read(profileProvider.future).ignore();

    Future<void>.delayed(const Duration(milliseconds: 1400), () {
      if (!mounted) return;
      final signedIn = ref.read(currentUserProvider) != null;
      context.go(signedIn ? AppRoutes.home : AppRoutes.signIn);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    return Scaffold(
      backgroundColor: AppColors.charcoal,
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.brandGradient),
        child: Center(
          child: FadeTransition(
            opacity: fade,
            child: ScaleTransition(
              scale: Tween(begin: 0.88, end: 1.0).animate(fade),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BrandMark(size: 88, monochrome: Colors.white24),
                  const SizedBox(height: AppSpacing.xl),
                  RichText(
                    text: TextSpan(
                      style: AppTypography.heading.copyWith(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                      children: const [
                        TextSpan(text: 'Rainy'),
                        TextSpan(
                          text: 'Penny',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    l10n.appTagline,
                    style: AppTypography.body.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
