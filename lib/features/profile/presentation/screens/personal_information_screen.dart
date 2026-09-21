import 'package:flutter/cupertino.dart';
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
  late final TextEditingController _name = TextEditingController(text: widget.user.name);
  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  bool get _isDirty => _name.text.trim() != widget.user.name.trim();

  void _onAvatarEditTapped() {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      const SnackBar(
        content: Text('Avatar customization will be available once the backend is ready.'),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
      ),
    );
  }

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
      ref.read(displayNameProvider.notifier).set(trimmed);
      ref.invalidate(profileProvider);

      if (!mounted) return;
      messenger.showSnackBar(SnackBar(content: Text(l10n.profileUpdated)));
      setState(() => _saving = false);
    } catch (_) {
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
                _Avatar(user: widget.user, pendingName: _name.text, onEditTap: _onAvatarEditTapped),
                const SizedBox(height: AppSpacing.md),
                Text(
                  l10n.memberSince(dates.monthYear(widget.user.memberSince)),
                  style: AppTypography.caption.copyWith(color: context.textSecondary),
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
            style: AppTypography.body.copyWith(color: context.textSecondary, height: 1.5),
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
              decoration: InputDecoration(hintText: l10n.fullNameHint, errorText: _error),
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
                  Icon(CupertinoIcons.envelope, size: 19, color: context.textSecondary),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      widget.user.email,
                      style: AppTypography.body.copyWith(color: context.textSecondary),
                    ),
                  ),
                  Icon(CupertinoIcons.lock, size: 16, color: context.textDisabled),
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
            style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            child: _saving
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2.2, color: Colors.white),
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
  const _Avatar({required this.user, required this.pendingName, required this.onEditTap});

  final UserProfile user;
  final String pendingName;
  final VoidCallback onEditTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initials = UserProfile.initialsFor(pendingName.trim().isEmpty ? user.email : pendingName);

    return SizedBox(
      width: 104,
      height: 104,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main circular avatar
          Center(
            child: Container(
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
            ),
          ),

          // Pencil Edit Badge Button
          Positioned(
            right: 0,
            bottom: 0,
            child: Material(
              color: theme.colorScheme.surface,
              shape: const CircleBorder(),
              elevation: 3,
              shadowColor: Colors.black.withValues(alpha: 0.3),
              child: InkWell(
                onTap: onEditTap,
                customBorder: const CircleBorder(),
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: theme.colorScheme.surface, width: 2.5),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.edit_rounded, size: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
