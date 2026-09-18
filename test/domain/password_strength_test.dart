import 'package:flutter_test/flutter_test.dart';
import 'package:rainypenny/features/auth/domain/entities/password_strength.dart';

void main() {
  group('scorePassword', () {
    test('anything under the minimum is rejected outright', () {
      for (final password in ['', 'a', 'abc', '1234567']) {
        final score = scorePassword(password);
        expect(score, PasswordStrength.tooShort, reason: password);
        expect(score.isAcceptable, isFalse, reason: password);
      }
      expect(scorePassword('12345678').isAcceptable, isTrue);
    });

    test('length carries more weight than punctuation', () {
      // The short-but-fiddly password is the one people are pushed towards by
      // composition rules, and it is the weaker of the two.
      final fiddly = scorePassword('P@ss1!aZ');
      final passphrase = scorePassword('correct horse battery staple');
      expect(passphrase.fraction, greaterThan(fiddly.fraction));
    });

    test('the obvious shapes cannot reach the top on length alone', () {
      // Long enough to score well on length, and still a terrible password.
      expect(scorePassword('password123'), PasswordStrength.weak);
      expect(scorePassword('P@ssw0rd!!'), PasswordStrength.weak);
      expect(scorePassword('iloveyouiloveyou'), PasswordStrength.weak);
      expect(scorePassword('rainypenny2024'), PasswordStrength.weak);
    });

    test('a run of one character is not treated as long', () {
      expect(scorePassword('aaaaaaaaaaaaaaaa'), PasswordStrength.weak);
      expect(scorePassword('abababababababab'), PasswordStrength.weak);
    });

    test('digits alone never pass, however many', () {
      expect(scorePassword('19842004199120'), PasswordStrength.weak);
    });

    test('a long mixed passphrase reaches the top', () {
      expect(scorePassword('Tr0ubador&Horse-Battery'), PasswordStrength.strong);
    });

    test('the meter fill rises with the score', () {
      const order = [
        PasswordStrength.tooShort,
        PasswordStrength.weak,
        PasswordStrength.fair,
        PasswordStrength.good,
        PasswordStrength.strong,
      ];
      for (var i = 1; i < order.length; i++) {
        expect(order[i].fraction, greaterThan(order[i - 1].fraction));
      }
    });
  });

  group('isValidEmail', () {
    test('accepts the shapes real addresses come in', () {
      const valid = [
        'a@b.co',
        'alex.morgan@email.com',
        'alex+budget@email.co.uk',
        'ALEX@EMAIL.COM',
        '  spaced@email.com  ',
        'user_name-1@sub.domain.org',
      ];
      for (final email in valid) {
        expect(isValidEmail(email), isTrue, reason: email);
      }
    });

    test('rejects what is plainly not an address', () {
      const invalid = [
        '',
        'not-an-email',
        'missing@tld',
        '@email.com',
        'two@@at.com',
        'spaces in@email.com',
        'trailing@dot.',
      ];
      for (final email in invalid) {
        expect(isValidEmail(email), isFalse, reason: email);
      }
    });
  });
}
