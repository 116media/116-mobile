import 'package:go_router/go_router.dart';

import '../constants/favorite.constants.dart' show kFavoriteRoutePath, kFavoriteRouteName;
import '../screens/favorite.screen.dart' show FavoriteScreen;

/// Favorite route configuration.
final favoriteRoutes = [
  GoRoute(
    path: kFavoriteRoutePath,
    name: kFavoriteRouteName,
    builder: (context, state) => const FavoriteScreen(),
  ),
];
