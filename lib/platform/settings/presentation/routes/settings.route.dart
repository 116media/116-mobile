import 'package:go_router/go_router.dart' show GoRoute;

import '../constants/settings.constants.dart' show kSettingsRoutePath, kSettingsRouteName;
import '../screens/settings.screen.dart' show SettingsScreen;

/// Settings route configuration.
final settingsRoutes = [
  GoRoute(
    path: kSettingsRoutePath,
    name: kSettingsRouteName,
    builder: (context, state) => const SettingsScreen(),
  ),
];
