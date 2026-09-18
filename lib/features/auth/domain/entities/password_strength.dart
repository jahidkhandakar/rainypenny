/// How good a password is, on a four-step scale the meter can render.
enum PasswordStrength {
  /// Too short to accept at all. The submit button stays disabled.
  tooShort,
  weak,
  fair,
  good,
  strong;

  /// Whether the password clears the bar for creating an account.
  ///
  /// Deliberately only length: refusing a long passphrase because it has no
  /// digit pushes people towards `Password1!`, which is worse. The meter
  /// nudges towards better; it does not gate on composition.
  bool get isAcceptable => this != PasswordStrength.tooShort;

  /// 0..1, for the meter's fill.
  double get fraction => switch (this) {
    PasswordStrength.tooShort => 0.12,
    PasswordStrength.weak => 0.3,
    PasswordStrength.fair => 0.55,
    PasswordStrength.good => 0.8,
    PasswordStrength.strong => 1.0,
  };
}

/// The shortest password the app will create an account with.
const kMinPasswordLength = 8;

/// Scores a password for the strength meter.
///
/// A local heuristic rather than a breach-list lookup: it has to run on every
/// keystroke, offline, without sending anything anyone typed to a server.
/// Length carries most of the weight because it is what actually resists an
/// offline attack; variety adds a little on top. The obvious-password check
/// exists so `password123` cannot reach the top of the meter on length alone
/// and give a beginner false confidence.
PasswordStrength scorePassword(String password) {
  if (password.length < kMinPasswordLength) return PasswordStrength.tooShort;

  var score = 0;
  if (password.length >= 10) score++;
  if (password.length >= 14) score++;
  if (password.length >= 20) score++;

  final classes = [
    RegExp(r'[a-z]'),
    RegExp(r'[A-Z]'),
    RegExp(r'[0-9]'),
    RegExp(r'[^A-Za-z0-9]'),
  ].where((r) => r.hasMatch(password)).length;
  if (classes >= 2) score++;
  if (classes >= 3) score++;

  // A single repeated character or a straight run reads as long without being
  // any harder to guess, so it should not earn the length points above.
  if (_isLowVariety(password)) score -= 2;
  if (_looksObvious(password)) score -= 2;

  return switch (score) {
    <= 1 => PasswordStrength.weak,
    2 => PasswordStrength.fair,
    3 => PasswordStrength.good,
    _ => PasswordStrength.strong,
  };
}

bool _isLowVariety(String password) =>
    password.toLowerCase().split('').toSet().length <= 3;

/// Character swaps that people reach for to satisfy a composition rule.
///
/// They add nothing an attacker's wordlist does not already try, so they are
/// undone before the password is matched against the shapes below. Without
/// this, `P@ssw0rd!!` strips down to `psswrd`, matches nothing, and scores
/// two steps higher than the `password` it plainly is.
const _leetSubstitutions = {
  '0': 'o',
  '1': 'i',
  '3': 'e',
  '4': 'a',
  '5': 's',
  '7': 't',
  '8': 'b',
  '@': 'a',
  '\$': 's',
  '!': 'i',
  '+': 't',
};

/// The handful of shapes that dominate every leaked-password list.
bool _looksObvious(String password) {
  var normalised = password.toLowerCase();
  for (final entry in _leetSubstitutions.entries) {
    normalised = normalised.replaceAll(entry.key, entry.value);
  }
  final stripped = normalised.replaceAll(RegExp(r'[^a-z]'), '');
  const shapes = [
    'password',
    'passwd',
    'qwerty',
    'azerty',
    'letmein',
    'welcome',
    'admin',
    'iloveyou',
    'monkey',
    'dragon',
    'football',
    'sunshine',
    'princess',
    'rainypenny',
  ];
  return shapes.any((shape) => stripped.contains(shape)) ||
      RegExp(r'^\d+$').hasMatch(password);
}

/// The e-mail shape the forms accept.
///
/// Intentionally loose. A stricter pattern rejects valid addresses — plus
/// tags, new TLDs, non-ASCII local parts — and the only check that ever
/// really settles it is the confirmation mail.
final _emailPattern = RegExp(r"^[^@\s]+@[^@\s.]+(\.[^@\s.]+)+$");

bool isValidEmail(String value) => _emailPattern.hasMatch(value.trim());
