import 'package:go_router/go_router.dart' show ShellRoute;

import '../../../../modules/discover/presentation/routes/discover.route.dart' show discoverRoutes;
import '../../../../modules/favorite/presentation/routes/favorite.route.dart' show favoriteRoutes;
import '../../../../modules/home/presentation/routes/home.route.dart' show homeRoutes;
import '../../../../modules/shows/presentation/routes/shows.route.dart' show showsRoutes;
import 'main.shell.layout.dart' show MainShellLayout;

/// Main shell route configuration with nested bottom navigation routes.
///
/// This shell route wraps all bottom navigation screens (Home, Discover, Shows, Favorite)
/// with persistent UI elements (app bar and bottom navigation).
final mainShellRoutes = [
  ShellRoute(
    builder: (context, state, child) => MainShellLayout(child: child),
    routes: [...homeRoutes, ...discoverRoutes, ...showsRoutes, ...favoriteRoutes],
  ),
];
