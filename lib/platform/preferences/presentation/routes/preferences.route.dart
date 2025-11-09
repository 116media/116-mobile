import 'package:go_router/go_router.dart';

import '../constants/preferences.constants.dart' show kPreferencesRoutePath, kPreferencesRouteName;
import '../screens/preference.screen.dart' show PreferenceScreen;

/// Preferences route configuration.
final preferencesRoutes = [
  GoRoute(
    path: kPreferencesRoutePath,
    name: kPreferencesRouteName,
    builder: (context, state) => const PreferenceScreen(),
  ),
];