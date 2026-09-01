/// The signed-in user. Mocked for the demo; later hydrated from Supabase auth
/// plus the `profiles` table.
class UserProfile {
  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.initials,
    required this.memberSince,
    required this.currencyCode,
    required this.currencySymbol,
  });

  final String id;
  final String name;
  final String email;
  final String initials;
  final DateTime memberSince;
  final String currencyCode;
  final String currencySymbol;
}
