/// Every navigable location in the app, in one place.
abstract final class AppRoutes {
  static const splash = '/';
  static const signIn = '/sign-in';

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
  static const notifications = '/notifications';
  static const settings = '/settings';
  static const notificationSettings = '/settings/notifications';

  /// The four branches, in bottom-navigation order.
  static const branches = [home, transactions, reports, profile];
}
