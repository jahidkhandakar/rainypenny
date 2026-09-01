/// The signed-in identity, independent of the profile record that hangs off it.
class AuthUser {
  const AuthUser({required this.id, required this.email, this.name});

  final String id;
  final String email;
  final String? name;
}
