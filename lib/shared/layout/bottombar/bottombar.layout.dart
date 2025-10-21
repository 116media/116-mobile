import 'package:flutter/material.dart';

import '../../../shared/themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// Bottom navigation bar layout for main app navigation.
///
/// Provides a fixed bottom navigation with rounded top corners and theme
/// integration. Supports dynamic tab selection and callbacks.
class BottomBarLayout extends StatelessWidget {
  const BottomBarLayout({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.items = const [],
  });

  final int currentIndex;

  final ValueChanged<int> onTap;

  /// List of navigation items to display.
  /// If empty, default items (Home, Discover, Shows, Favorite) will be used.
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    final navigationItems = items.isEmpty ? _defaultItems(context) : items;

    return ClipRRect(
      borderRadius: BorderRadius.circular(context.sizing.s16),
      child: BottomNavigationBar(
        elevation: 0,
        onTap: onTap,
        items: navigationItems,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.colors.surface,
        selectedItemColor: context.colors.secondary,
        unselectedItemColor: ColorsUtil.slate100,
      ),
    );
  }

  /// Default navigation items for the app.
  List<BottomNavigationBarItem> _defaultItems(BuildContext context) {
    return [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Padding(
          padding: EdgeInsets.only(top: context.sizing.s8),
          child: const Icon(Icons.home),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Discover',
        icon: Padding(
          padding: EdgeInsets.only(top: context.sizing.s8),
          child: const Icon(Icons.lightbulb),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Shows',
        icon: Padding(
          padding: EdgeInsets.only(top: context.sizing.s8),
          child: const Icon(Icons.tv),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Favorite',
        icon: Padding(
          padding: EdgeInsets.only(top: context.sizing.s8),
          child: const Icon(Icons.favorite),
        ),
      ),
    ];
  }
}
