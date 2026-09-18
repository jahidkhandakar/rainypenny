import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/editor_sheet.dart';
import '../../../../core/widgets/entrance.dart';
import '../../../../core/widgets/states.dart';
import '../../../financial/domain/entities/user_profile.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// Name, photo and the address the account signs in with.
///
/// This used to be a tile that raised a "coming soon" snackbar, which is the
/// worst of both worlds: it looks like a destination and behaves like a dead
/// end.
class PersonalInformationScreen extends ConsumerWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppL10n.of(context);
    final profile = ref.watch(profileProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.personalInformation)),
      body: profile.when(
        data: (user) => _Form(user: user),
        loading: () => const Padding(
          padding: EdgeInsets.all(AppSpacing.page),
          child: Column(
            children: [
              SkeletonCard(height: 120, lines: 2),
              SizedBox(height: AppSpacing.lg),
              SkeletonCard(height: 180, lines: 3),
            ],
          ),
        ),
        error: (_, _) => ErrorState(
          message: l10n.somethingWentWrong,
          retryLabel: l10n.retry,
          onRetry: () => ref.invalidate(profileProvider),
        ),
      ),
    );
  }
}

class _Form extends ConsumerStatefulWidget {
  const _Form({required this.user});

  final UserProfile user;

  @override
  ConsumerState<_Form> createState() => _FormState();
}

class _FormState extends ConsumerState<_Form> {
  late final TextEditingController _name = TextEditingController(
    text: widget.user.name,
  );
  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  bool get _isDirty => _name.text.trim() != widget.user.name.trim();

  Future<void> _save() async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final trimmed = _name.text.trim();

    if (trimmed.isEmpty) {
      setState(() => _error = l10n.nameRequired);
      return;
    }

    setState(() {
      _saving = true;
      _error = null;
    });

    try {
      await ref.read(profileRepositoryProvider).updateName(trimmed);
      // The greeting on the dashboard reads this rather than the profile
      // record, so it has to move with the rename or the home screen keeps
      // addressing the user by their old name until the next launch.
      ref.read(displayNameProvider.notifier).set(trimmed);
      ref.invalidate(profileProvider);

      if (!mounted) return;
      messenger.showSnackBar(SnackBar(content: Text(l10n.profileUpdated)));
      setState(() => _saving = false);
    } catch (_) {
      // A failed write has to say so. Silently returning to a clean form would
      // tell the user their new name was saved when it was not.
      if (!mounted) return;
      setState(() {
        _saving = false;
        _error = l10n.somethingWentWrong;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);

    return ListView(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.page,
        AppSpacing.lg,
        AppSpacing.page,
        AppSpacing.section,
      ),
      children: [
        FadeSlideIn(
          child: Center(
            child: Column(
              children: [
                _Avatar(user: widget.user, pendingName: _name.text),
                const SizedBox(height: AppSpacing.md),
                Text(
                  l10n.memberSince(dates.monthYear(widget.user.memberSince)),
                  style: AppTypography.caption.copyWith(
                    color: context.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),

        FadeSlideIn(
          index: 1,
          child: Text(
            l10n.personalInformationIntro,
            style: AppTypography.body.copyWith(
              color: context.textSecondary,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),

        FadeSlideIn(
          index: 2,
          child: SheetField(
            label: l10n.fullNameLabel,
            child: TextField(
              controller: _name,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: l10n.fullNameHint,
                errorText: _error,
              ),
              // Keeps the avatar initials and the Save button in step with
              // what has actually been typed.
              onChanged: (_) => setState(() => _error = null),
              onSubmitted: (_) => _save(),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),

        FadeSlideIn(
          index: 3,
          child: SheetField(
            label: l10n.emailLabel,
            child: AppCard(
              color: context.subtleFill,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.lg,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.mail_outline_rounded,
                    size: 19,
                    color: context.textSecondary,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      widget.user.email,
                      style: AppTypography.body.copyWith(
                        color: context.textSecondary,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.lock_outline_rounded,
                    size: 16,
                    color: context.textDisabled,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          l10n.emailNotEditable,
          style: AppTypography.caption.copyWith(color: context.textDisabled),
        ),
        const SizedBox(height: AppSpacing.section),

        FadeSlideIn(
          index: 4,
          child: ElevatedButton(
            onPressed: (_saving || !_isDirty) ? null : _save,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
            ),
            child: _saving
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.2,
                      color: Colors.white,
                    ),
                  )
                : Text(l10n.saveChanges),
          ),
        ),
      ],
    );
  }
}

/// The initials badge, previewing the name currently in the field rather than
/// the saved one — so the change reads as immediate.
class _Avatar extends StatelessWidget {
  const _Avatar({required this.user, required this.pendingName});

  final UserProfile user;
  final String pendingName;

  @override
  Widget build(BuildContext context) {
    final initials = UserProfile.initialsFor(
      pendingName.trim().isEmpty ? user.email : pendingName,
    );

    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        gradient: context.brandGradient,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: context.accent.withValues(alpha: 0.24),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        initials,
        style: AppTypography.heading.copyWith(fontSize: 32, color: Colors.white),
      ),
    );
  }
}
