import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouter, GoRouterState;

import '../../../modules/auth/application/usecases/clear.local.user.data.usecase.dart'
    show ClearLocalUserDataUseCase;
import '../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../platform/session/application/usecases/clear.local.tokens.usecase.dart'
    show ClearLocalTokensUseCase;
import '../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../infrastructure/service.locator.dart' show sl;
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
import '../../../platform/session/presentation/bloc/session.state.dart'
    show SessionSuccess, SessionExpired;
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

  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

  AppRouter(this.sessionBloc) {
    _listenToSessionExpired();
  }

  /// Creates the GoRouter instance with session-based guards.
  GoRouter createRouter() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: kSplashRoutePath,
      redirect: (BuildContext context, GoRouterState state) {
        final sessionState = sessionBloc.state;

        if (sessionState is SessionExpired) return null;

        if (state.matchedLocation == kSplashRoutePath) return null;

        // Wait for session to load (for other routes)
        if (sessionState is! SessionSuccess) return kSplashRoutePath;

        final session = sessionState.sessionState;

        // Route guards based on session state
        // Flow: Splash → Preferences → Onboarding → Home

        // First check: preferences not set - show preferences screen
        if (session.shouldShowPreferences) {
          if (state.matchedLocation != kPreferencesRoutePath) return kPreferencesRoutePath;
          return null;
        }

        // Second check: onboarding not completed - show onboarding screen
        if (session.shouldShowOnboarding) {
          if (state.matchedLocation != kOnboardingRoutePath) return kOnboardingRoutePath;
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
        if (state.matchedLocation == kSplashRoutePath) return kPreferencesRoutePath;

        return null;
      },
      refreshListenable: SessionBlocRefreshNotifier(sessionBloc),
      routes: [
        ...splashRoutes,
        ...preferencesRoutes,
        ...onboardingRoutes,
        ...settingsRoutes,
        ...mainShellRoutes,
      ],
      //TODO: design a better 404 page later
      errorBuilder: (context, state) =>
          Scaffold(body: Center(child: Text('Page not found: ${state.uri.path}'))),
    );
  }

  /// Listens for SessionExpired state and clears session data.
  ///
  /// After clearing session data, redirects to home page. The redirect is
  /// scheduled using SchedulerBinding to ensure any error dialogs from failed
  /// API calls have time to display before navigation occurs.
  void _listenToSessionExpired() {
    sessionBloc.stream.listen((state) async {
      if (state is SessionExpired) await _clearSessionData();
    });
  }

  /// Clears all session data using use cases.
  ///
  /// Uses:
  /// - [ClearLocalTokensUseCase] to clear tokens from secure storage
  /// - [ClearLocalUserDataUseCase] to clear user data from Hive
  /// - [UpdateAuthStatusUseCase] to set auth status to guest (keeps preferences & onboarding)
  ///
  /// This mimics the signout flow - keeping preferences and onboarding flags
  /// so the user stays on the home page as guest instead of being redirected.
  ///
  /// **Note:** Device ID should NOT be cleared across sessions.
  static Future<void> _clearSessionData() async {
    await sl<ClearLocalTokensUseCase>().execute(null);
    await sl<ClearLocalUserDataUseCase>().execute(null);
    await sl<UpdateAuthStatusUseCase>().execute((status: AuthStatus.guest, userId: null));
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
