/// Every navigable location in the app, in one place.
abstract final class AppRoutes {
  static const splash = '/';

  // Authentication.
  static const welcome = '/welcome';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
  static const forgotPassword = '/forgot-password';
  static const resetPassword = '/reset-password';

  /// First-run setup, and the beginner's guide that follows it.
  static const onboarding = '/onboarding';
  static const tutorial = '/guide';

  // Bottom-navigation branches.
  static const home = '/home';
  static const transactions = '/transactions';
  static const reports = '/reports';
  static const profile = '/profile';

  // Pushed destinations.
  static const addTransaction = '/add';
  static const budget = '/budget';
  static const savings = '/savings';
  static const loans = '/loans';
  static const loanDetail = '/loans/:id';

  /// The breakdown behind the health score on the home screen.
  static const financialHealth = '/health';

  /// Name, photo and the address the account signs in with.
  static const personalInformation = '/settings/personal';

  /// Which day of the month the salary cycle starts on.
  static const payday = '/settings/payday';

  /// The detail location for one debt.
  static String loanDetailPath(String id) => '/loans/$id';
  static const notifications = '/notifications';
  static const settings = '/settings';
  static const notificationSettings = '/settings/notifications';
  static const currency = '/settings/currency';
  static const language = '/settings/language';
  static const appearance = '/settings/appearance';
  static const categories = '/settings/categories';

  /// The four branches, in bottom-navigation order.
  static const branches = [home, transactions, reports, profile];

  /// The front door: the screens whose whole job is getting someone signed in.
  ///
  /// Once there is a session these are behind the user, so the redirect sends
  /// them to the dashboard instead.
  static const authRoutes = {welcome, signIn, signUp, forgotPassword};

  /// Everything a signed-out user is allowed to reach.
  ///
  /// The language picker is in here and not in [authRoutes] for a reason: the
  /// auth screens offer a language button, and this is the one point in the
  /// app where someone who cannot read the current language has no other way
  /// to change it — Settings is behind the very sign-in they are stuck on. It
  /// must stay reachable while signed out *and* while signed in, which is why
  /// the two sets are not the same.
  static const publicRoutes = {...authRoutes, language};
}
