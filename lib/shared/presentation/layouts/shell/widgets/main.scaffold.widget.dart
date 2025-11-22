import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouter;
import 'package:provider/provider.dart' show ReadContext;

import '../../../../../modules/discover/presentation/constants/discover.constants.dart'
    show kDiscoverRoutePath;
import '../../../../../modules/favorite/presentation/constants/favorite.constants.dart'
    show kFavoriteRoutePath;
import '../../../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../../../modules/shows/presentation/constants/shows.constants.dart'
    show kShowsRoutePath;
import '../../../themes/extensions/build.context.extension.dart';
import '../../appbar/appbar.layout.dart' show AppBarLayout;
import '../../bottombar/bottombar.layout.dart' show BottomBarLayout;
import '../../sidemenu/sidemenu.controller.dart' show SideMenuController;

/// Main scaffold containing app bar, content, and bottom navigation.
class MainScaffold extends StatelessWidget {
  final Widget child;

  const MainScaffold({super.key, required this.child});

  static const _routeToIndex = {
    kHomeRoutePath: 0,
    kDiscoverRoutePath: 1,
    kShowsRoutePath: 2,
    kFavoriteRoutePath: 3,
  };

  static const _indexToRoute = [
    kHomeRoutePath,
    kDiscoverRoutePath,
    kShowsRoutePath,
    kFavoriteRoutePath,
  ];

  int _indexForRoute(String location) {
    for (final entry in _routeToIndex.entries) {
      if (location.startsWith(entry.key)) return entry.value;
    }
    return 0;
  }

  void _navigateTo(BuildContext context, int index) {
    if (index >= 0 && index < _indexToRoute.length) {
      GoRouter.of(context).go(_indexToRoute[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.path;
    final currentIndex = _indexForRoute(location);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarLayout(onMenuTap: context.read<SideMenuController>().toggle),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: context.sizing.s12),
              child: child,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarLayout(
        currentIndex: currentIndex,
        onTap: (index) => _navigateTo(context, index),
      ),
    );
  }
}
