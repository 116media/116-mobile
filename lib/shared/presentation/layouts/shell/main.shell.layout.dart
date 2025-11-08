import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../card.dart' show Card4;
import '../../../../modules/discover/presentation/constants/discover.constants.dart'
    show kDiscoverRoutePath;
import '../../../../modules/favorite/presentation/constants/favorite.constants.dart'
    show kFavoriteRoutePath;
import '../../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../../modules/shows/presentation/constants/shows.constants.dart' show kShowsRoutePath;
import '../appbar/appbar.layout.dart' show AppBarLayout;
import '../bottombar/bottombar.layout.dart' show BottomBarLayout;

/// Shell widget that wraps all bottom navigation routes.
///
/// This widget provides the persistent UI elements (app bar and bottom navigation)
/// while the child widget changes based on the current route.
///
/// **Navigation Sections:**
/// 1. /home - Main content feed
/// 2. /discover - Content discovery
/// 3. /shows - Shows/events listing
/// 4. /favorite - User's favorited content
class MainShellLayout extends StatelessWidget {
  final Widget child;

  const MainShellLayout({super.key, required this.child});

  /// Route-to-index mapping for O(1) lookup performance.
  static const Map<String, int> _routeToIndex = {
    kHomeRoutePath: 0,
    kDiscoverRoutePath: 1,
    kShowsRoutePath: 2,
    kFavoriteRoutePath: 3,
  };

  /// Index-to-route mapping for O(1) lookup performance.
  static const List<String> _indexToRoute = [
    kHomeRoutePath,
    kDiscoverRoutePath,
    kShowsRoutePath,
    kFavoriteRoutePath,
  ];

  /// Determines the current navigation index based on the route path.
  int _getCurrentIndex(String location) {
    for (final entry in _routeToIndex.entries) {
      if (location.startsWith(entry.key)) {
        return entry.value;
      }
    }

    // Default to home
    return 0;
  }

  /// Handles bottom navigation item taps.
  /// Uses direct array access for O(1) performance.
  void _onItemTapped(BuildContext context, int index) {
    if (index >= 0 && index < _indexToRoute.length) {
      context.go(_indexToRoute[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.path;
    final currentIndex = _getCurrentIndex(location);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarLayout(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(padding: const EdgeInsets.all(18.0), child: Card4()),
              child,
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarLayout(
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(context, index),
      ),
    );
  }
}
