import 'package:flutter/material.dart';
import 'package:rainypenny/core/theme/app_theme.dart';
import 'package:rainypenny/core/theme/app_typography.dart';
import 'package:rainypenny/features/financial/domain/entities/user_profile.dart';

class RoundAvatar extends StatelessWidget {
  const RoundAvatar({super.key, required this.user});

  final UserProfile user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initials = UserProfile.initialsFor(user.email);

    void onAvatarEditTapped() {
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
                onTap: onAvatarEditTapped,
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
