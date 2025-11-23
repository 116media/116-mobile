import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../layouts/shell/main.shell.route.dart' show mainShellRoutes;
import '../../../platform/onboarding/presentation/constants/onboarding.constants.dart'
    show kOnboardingRoutePath;
import '../../../platform/onboarding/presentation/routes/onboarding.route.dart'
    show onboardingRoutes;
import '../../../platform/preferences/presentation/constants/preferences.constants.dart'
    show kPreferencesRoutePath;
import '../../../platform/preferences/presentation/routes/preferences.route.dart'
    show preferencesRoutes;
import '../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../platform/session/presentation/bloc/session.state.dart' show SessionSuccess;
import '../../../platform/settings/presentation/routes/settings.route.dart' show settingsRoutes;
import '../../../platform/splash/presentation/constants/splash.constants.dart'
    show kSplashRoutePath;
import '../../../platform/splash/presentation/routes/splash.route.dart' show splashRoutes;

/// Application router configuration with session-based route guards.
///
/// Implements navigation logic based on user session state:
/// - Flow: Splash → Preferences → Onboarding → Home
/// - Redirects to preferences if not set (first step after splash)
/// - Redirects to onboarding if preferences set but onboarding not completed
/// - Allows access to main app only after both preferences and onboarding complete
class AppRouter {
  final SessionBloc sessionBloc;

  AppRouter(this.sessionBloc);

  /// Creates the GoRouter instance with session-based guards.
  GoRouter createRouter() {
    return GoRouter(
      initialLocation: kSplashRoutePath,
      redirect: (BuildContext context, GoRouterState state) {
        final sessionState = sessionBloc.state;

        // Wait for session to load
        if (sessionState is! SessionSuccess) {
          if (state.matchedLocation != kSplashRoutePath) {
            return kSplashRoutePath;
          }
          return null;
        }

        final session = sessionState.sessionState;

        // Route guards based on session state
        // Flow: Splash → Preferences → Onboarding → Home

        // First check: preferences not set - show preferences screen
        if (session.shouldShowPreferences) {
          if (state.matchedLocation != kPreferencesRoutePath) {
            return kPreferencesRoutePath;
          }
          return null;
        }

        // Second check: onboarding not completed - show onboarding screen
        if (session.shouldShowOnboarding) {
          if (state.matchedLocation != kOnboardingRoutePath) {
            return kOnboardingRoutePath;
          }
          return null;
        }

        // User can access app - redirect from splash/onboarding/preferences to home
        if (session.canAccessApp) {
          if (state.matchedLocation == kSplashRoutePath ||
              state.matchedLocation == kOnboardingRoutePath ||
              state.matchedLocation == kPreferencesRoutePath) {
            return kHomeRoutePath;
          }
          return null;
        }

        // Fallback: if on splash and none of the above conditions matched,
        // redirect to preferences as the starting point
        if (state.matchedLocation == kSplashRoutePath) {
          return kPreferencesRoutePath;
        }

        return null;
      },
      refreshListenable: SessionBlocRefreshNotifier(sessionBloc),
      routes: [...splashRoutes, ...preferencesRoutes, ...onboardingRoutes, ...settingsRoutes, ...mainShellRoutes],
      errorBuilder: (context, state) =>
          Scaffold(body: Center(child: Text('Page not found: ${state.uri.path}'))),
    );
  }
}

/// Notifies GoRouter when SessionBloc state changes.
///
/// This makes GoRouter react to session changes and re-run redirect logic.
class SessionBlocRefreshNotifier extends ChangeNotifier {
  final SessionBloc sessionBloc;

  SessionBlocRefreshNotifier(this.sessionBloc) {
    sessionBloc.stream.listen((_) {
      notifyListeners();
    });
  }
}
