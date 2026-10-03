import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app.dart';
import 'core/ads/ad_service.dart';
import 'core/config/app_config.dart';
import 'core/settings/settings_store.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Catch errors during Flutter framework rendering
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);

        // TODO: Log to crash reporting service (e.g., Sentry, Crashlytics)
      };

      // Restrict orientation
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      // Load SharedPreferences
      final prefs = await SharedPreferences.getInstance();

      // Load .env safely (fallback gracefully if missing)
      try {
        await dotenv.load(fileName: ".env");
      } catch (e) {
        debugPrint('Warning: .env file missing or failed to load: $e');
      }

      // Initialize Supabase safely
      if (AppConfig.hasBackend) {
        try {
          await Supabase.initialize(
            url: AppConfig.supabaseUrl,
            publishableKey: AppConfig.supabaseAnonKey,
          );
        } catch (e) {
          debugPrint('Supabase initialization failed: $e');
        }
      }

      // Unawaited AdService initialization wrapped in error handler
      unawaited(
        AdService.initialize().catchError((error) {
          debugPrint('AdService initialization failed: $error');
        }),
      );

      runApp(
        ProviderScope(
          overrides: [settingsStoreProvider.overrideWithValue(PrefsSettingsStore(prefs))],
          child: const LavioApp(),
        ),
      );
    },
    (error, stackTrace) {
      debugPrint('Uncaught async error: $error\n$stackTrace');
    },
  );
}
