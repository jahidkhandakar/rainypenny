import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/localization/generated/app_localizations.dart';
import 'core/routing/app_router.dart';
import 'core/settings/settings_providers.dart';
import 'core/theme/app_theme.dart';
import 'features/notifications/data/services/local_notification_service.dart';
import 'features/notifications/presentation/widgets/notification_sync.dart';

class RainyPennyApp extends ConsumerWidget {
  const RainyPennyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    final themeMode = ref.watch(themeModeProvider);
    final router = ref.watch(appRouterProvider);

    // Tapping a notification deep-links to the screen it is about.
    LocalNotificationService.onNotificationTapped = router.go;

    return MaterialApp.router(
      title: 'RainyPenny',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      locale: locale,
      localizationsDelegates: AppL10n.localizationsDelegates,
      supportedLocales: AppL10n.supportedLocales,
      builder: (context, child) {
        // Keep the layout readable regardless of the device text-size setting.
        final scale = MediaQuery.textScalerOf(context).clamp(
          minScaleFactor: 0.9,
          maxScaleFactor: 1.3,
        );
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: scale),
          // Inside the localisations scope, so notification copy is rendered
          // in the language the user has chosen.
          child: NotificationSync(child: child ?? const SizedBox.shrink()),
        );
      },
    );
  }
}
