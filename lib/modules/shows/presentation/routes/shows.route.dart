import 'package:go_router/go_router.dart';

import '../constants/shows.constants.dart' show kShowsRoutePath, kShowsRouteName;
import '../screens/shows.screen.dart' show ShowsScreen;

/// Shows route configuration.
final showsRoutes = [
  GoRoute(
    path: kShowsRoutePath,
    name: kShowsRouteName,
    builder: (context, state) => const ShowsScreen(),
  ),
];