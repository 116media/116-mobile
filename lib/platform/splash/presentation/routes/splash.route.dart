import 'package:go_router/go_router.dart';

import '../constants/splash.constants.dart' show kSplashRoutePath, kSplashRouteName;
import '../screens/splash.screen.dart' show SplashScreen;

/// Splash route configuration.
final splashRoutes = [
  GoRoute(
    path: kSplashRoutePath,
    name: kSplashRouteName,
    builder: (context, state) => const SplashScreen(),
  ),
];
