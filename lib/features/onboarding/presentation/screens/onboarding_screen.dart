import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../auth/presentation/controllers/auth_controller.dart';
import '../../../notifications/domain/entities/notification_preferences.dart';
import '../../../notifications/presentation/controllers/notification_controller.dart';
import '../../../profile/presentation/widgets/appearance_pickers.dart';
import '../widgets/onboarding_art.dart';
import '../widgets/onboarding_steps.dart';

/// Setup for a brand-new account: name, money, appearance, alerts.
///
/// Every choice here is applied the moment it is made rather than batched
/// behind a Finish button. Tapping a colour and watching the whole screen
/// change is the point — it shows the setting is real, and it means someone
/// who quits halfway keeps what they already chose.
///
/// Only the name is deferred, because a half-typed name is not a choice yet.
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  late final TextEditingController _nameController;

  int _index = 0;

  static const _stepCount = 5;

  @override
  void initState() {
    super.initState();
    // Prefer whatever the account already knows over an empty field.
    final existing =
        ref.read(displayNameProvider) ??
        ref.read(currentUserProvider)?.name ??
        '';
    _nameController = TextEditingController(text: existing);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _goTo(int index) {
    if (index < 0 || index >= _stepCount) return;
    _pageController.animateToPage(
      index,
      duration: AppDuration.normal,
      curve: Curves.easeOutCubic,
    );
  }

  void _saveName() {
    final name = _nameController.text.trim();
    if (name.isNotEmpty) ref.read(displayNameProvider.notifier).set(name);
  }

  /// Ends setup and hands over to the router, which sends them on to the
  /// dashboard — or to the guide, if that is what they asked for.
  void _finish({required bool withTutorial}) {
    _saveName();
    ref.read(onboardingCompleteProvider.notifier).complete();
    if (withTutorial) {
      context.go(AppRoutes.tutorial);
    } else {
      ref.read(tutorialCompleteProvider.notifier).complete();
      context.go(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final isLast = _index == _stepCount - 1;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _OnboardingHeader(
              index: _index,
              stepCount: _stepCount,
              onSkip: () => _finish(withTutorial: false),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  // Committed on the way out of the name step so it survives
                  // a swipe back and forth.
                  if (_index == 0) _saveName();
                  setState(() => _index = value);
                },
                children: [
                  _NameStep(controller: _nameController),
                  const _CurrencyStep(),
                  const _AppearanceStep(),
                  const _NotificationsStep(),
                  _ReadyStep(
                    onTakeTour: () => _finish(withTutorial: true),
                    onSkipTour: () => _finish(withTutorial: false),
                  ),
                ],
              ),
            ),
            // The last step carries its own two actions, so the shared footer
            // would only repeat them.
            if (!isLast)
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.page,
                  AppSpacing.md,
                  AppSpacing.page,
                  AppSpacing.lg,
                ),
                child: Row(
                  children: [
                    if (_index > 0) ...[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => _goTo(_index - 1),
                          child: Text(l10n.back),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                    ],
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () => _goTo(_index + 1),
                        child: Text(l10n.continueLabel),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingHeader extends StatelessWidget {
  const _OnboardingHeader({
    required this.index,
    required this.stepCount,
    required this.onSkip,
  });

  final int index;
  final int stepCount;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.sm,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                l10n.stepOf(index + 1, stepCount),
                style: AppTypography.caption.copyWith(
                  color: context.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(onPressed: onSkip, child: Text(l10n.skip)),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: TweenAnimationBuilder<double>(
              duration: AppDuration.normal,
              curve: Curves.easeOut,
              tween: Tween(begin: 0, end: (index + 1) / stepCount),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                minHeight: 5,
                backgroundColor: context.subtleFill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Steps
// -----------------------------------------------------------------------------

class _NameStep extends StatelessWidget {
  const _NameStep({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return OnboardingStep(
      art: const OnboardingArt(icon: Icons.waving_hand_rounded, size: 140),
      title: l10n.onboardingNameTitle,
      body: l10n.onboardingNameBody,
      children: [
        TextField(
          controller: controller,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(hintText: l10n.fullNameHint),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          l10n.onboardingNameHint,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
      ],
    );
  }
}

class _CurrencyStep extends ConsumerWidget {
  const _CurrencyStep();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final selected = ref.watch(currencyProvider);

    return OnboardingStep(
      art: const OnboardingArt(icon: Icons.payments_rounded, size: 140),
      title: l10n.onboardingCurrencyTitle,
      body: l10n.onboardingCurrencyBody,
      children: [
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final option in Currencies.popular.take(12))
              _CurrencyChip(
                option: option,
                selected: option.code == selected.code,
                onTap: () => ref.read(currencyProvider.notifier).select(option),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        // 157 currencies will not fit on a step, so the long tail lives
        // behind the same searchable picker Settings uses.
        OutlinedButton.icon(
          onPressed: () => context.push(AppRoutes.currency),
          icon: const Icon(Icons.search_rounded, size: 18),
          label: Text(l10n.onboardingCurrencySearch),
        ),
        const SizedBox(height: AppSpacing.md),
        Center(
          child: Text(
            '${selected.symbol}  ${selected.code} · ${selected.name}',
            textAlign: TextAlign.center,
            style: AppTypography.caption.copyWith(color: context.textSecondary),
          ),
        ),
      ],
    );
  }
}

class _CurrencyChip extends StatelessWidget {
  const _CurrencyChip({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final CurrencyOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.pill),
      child: AnimatedContainer(
        duration: AppDuration.fast,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: selected ? context.accent : context.subtleFill,
          borderRadius: BorderRadius.circular(AppRadius.pill),
        ),
        child: Text(
          // Bidi isolate, so an Arabic symbol keeps its own direction inside
          // a left-to-right chip and vice versa.
          '\u2066${option.symbol}\u2069 ${option.code}',
          style: AppTypography.label.copyWith(
            color: selected ? Colors.white : context.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _AppearanceStep extends StatelessWidget {
  const _AppearanceStep();

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    return OnboardingStep(
      art: const OnboardingArt(icon: Icons.palette_rounded, size: 130),
      title: l10n.onboardingAppearanceTitle,
      body: l10n.onboardingAppearanceBody,
      children: [
        Text(
          l10n.theme.toUpperCase(),
          style: AppTypography.overline.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: AppSpacing.sm),
        const ThemeModePicker(),
        const SizedBox(height: AppSpacing.xl),
        Text(
          l10n.accentColor.toUpperCase(),
          style: AppTypography.overline.copyWith(color: context.textSecondary),
        ),
        const SizedBox(height: AppSpacing.md),
        const AccentPicker(),
      ],
    );
  }
}

class _NotificationsStep extends ConsumerStatefulWidget {
  const _NotificationsStep();

  @override
  ConsumerState<_NotificationsStep> createState() => _NotificationsStepState();
}

class _NotificationsStepState extends ConsumerState<_NotificationsStep> {
  bool _asked = false;

  Future<void> _enable() async {
    final granted = await ref
        .read(notificationServiceProvider)
        .requestPermission();
    if (!mounted) return;
    setState(() => _asked = true);
    if (!granted) return;
    // Only the two habit-forming channels are switched on here. Everything
    // else stays at its default and is a tap away in Settings.
    final notifier = ref.read(notificationPreferencesProvider.notifier);
    await notifier.setChannel(NotificationChannel.dailyReminders, true);
    await notifier.setChannel(NotificationChannel.budgetAlerts, true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    return OnboardingStep(
      art: const OnboardingArt(
        icon: Icons.notifications_active_rounded,
        size: 130,
      ),
      title: l10n.onboardingNotificationsTitle,
      body: l10n.onboardingNotificationsBody,
      children: [
        _Bullet(
          icon: Icons.alarm_rounded,
          text: l10n.onboardingNotifyReminders,
        ),
        _Bullet(
          icon: Icons.pie_chart_outline_rounded,
          text: l10n.onboardingNotifyBudget,
        ),
        _Bullet(
          icon: Icons.event_available_rounded,
          text: l10n.onboardingNotifySummary,
        ),
        const SizedBox(height: AppSpacing.xl),
        if (_asked)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_rounded,
                size: 18,
                color: context.accentOnSurface,
              ),
              const SizedBox(width: AppSpacing.sm),
              Flexible(
                child: Text(
                  l10n.onboardingNotifyDone,
                  style: AppTypography.caption.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ),
            ],
          )
        else
          OutlinedButton.icon(
            onPressed: _enable,
            icon: const Icon(Icons.notifications_none_rounded, size: 18),
            label: Text(l10n.onboardingNotifyEnable),
          ),
        const SizedBox(height: AppSpacing.md),
        Text(
          l10n.onboardingNotifyLater,
          textAlign: TextAlign.center,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
      ],
    );
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: context.tintFill,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 16, color: context.accentOnSurface),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                text,
                style: AppTypography.body.copyWith(
                  fontSize: 14,
                  color: context.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReadyStep extends ConsumerWidget {
  const _ReadyStep({required this.onTakeTour, required this.onSkipTour});

  final VoidCallback onTakeTour;
  final VoidCallback onSkipTour;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final name = ref.watch(displayNameProvider);

    return OnboardingStep(
      art: const OnboardingArt(icon: Icons.celebration_rounded, size: 140),
      title: name == null
          ? l10n.onboardingReadyTitle
          : l10n.onboardingReadyTitleNamed(name),
      body: l10n.onboardingReadyBody,
      children: [
        ElevatedButton.icon(
          onPressed: onTakeTour,
          icon: const Icon(Icons.school_rounded, size: 19),
          label: Text(l10n.onboardingTakeTour),
        ),
        const SizedBox(height: AppSpacing.md),
        OutlinedButton(
          onPressed: onSkipTour,
          child: Text(l10n.onboardingGoToApp),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          l10n.onboardingTourLater,
          textAlign: TextAlign.center,
          style: AppTypography.caption.copyWith(color: context.textSecondary),
        ),
      ],
    );
  }
}
