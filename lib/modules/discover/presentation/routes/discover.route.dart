import 'package:go_router/go_router.dart';

import '../constants/discover.constants.dart' show kDiscoverRoutePath, kDiscoverRouteName;
import '../screens/discover.screen.dart' show DiscoverScreen;

/// Discover route configuration.
final discoverRoutes = [
  GoRoute(
    path: kDiscoverRoutePath,
    name: kDiscoverRouteName,
    builder: (context, state) => const DiscoverScreen(),
  ),
];
