import 'package:go_router/go_router.dart';

import '../constants/home.constants.dart' show kHomeRoutePath, kHomeRouteName;
import '../screens/home.screen.dart' show HomeScreen;

/// Home route configuration.
final homeRoutes = [
  GoRoute(
    path: kHomeRoutePath,
    name: kHomeRouteName,
    builder: (context, state) => const HomeScreen(),
  ),
];
