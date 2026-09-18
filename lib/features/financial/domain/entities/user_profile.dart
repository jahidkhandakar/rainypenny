/// The signed-in user, from Supabase auth plus the `profiles` table — or from
/// the demo dataset when the build has no backend.
class UserProfile {
  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.initials,
    required this.memberSince,
    required this.currencyCode,
    required this.currencySymbol,
    this.avatarUrl,
  });

  final String id;
  final String name;
  final String email;
  final String initials;
  final DateTime memberSince;
  final String currencyCode;
  final String currencySymbol;

  /// Where the profile photo lives, if one has been set. Null falls back to the
  /// initials badge, which every account always has.
  final String? avatarUrl;

  bool get hasAvatar => avatarUrl != null && avatarUrl!.trim().isNotEmpty;

  /// [initials] is derived rather than passed so a renamed profile can never
  /// keep the badge of the name it used to have.
  UserProfile copyWith({
    String? name,
    String? currencyCode,
    String? currencySymbol,
    String? avatarUrl,
    bool clearAvatar = false,
  }) {
    final nextName = name ?? this.name;
    return UserProfile(
      id: id,
      name: nextName,
      email: email,
      initials: initialsFor(nextName.isEmpty ? email : nextName),
      memberSince: memberSince,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      avatarUrl: clearAvatar ? null : (avatarUrl ?? this.avatarUrl),
    );
  }

  /// `Alex Morgan` becomes `AM`; a single word gives its first two letters.
  ///
  /// Lives on the entity rather than only in the row mapper so a profile
  /// renamed in the app derives its badge exactly as one loaded from the
  /// database does.
  static String initialsFor(String value) {
    final parts = value
        .trim()
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .toList();
    if (parts.isEmpty) return '?';
    if (parts.length == 1) {
      final word = parts.first;
      return word.substring(0, word.length >= 2 ? 2 : 1).toUpperCase();
    }
    return '${parts.first[0]}${parts[1][0]}'.toUpperCase();
  }
}
