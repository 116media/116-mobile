import 'package:flutter/material.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../searchbar/searchbar.layout.dart' show SearchBarLayout;

/// Main application bar layout with integrated search functionality.
///
/// Displays a sticky app bar with menu icon, logo, and profile icon,
/// plus a search bar in the bottom section. Uses [SliverAppBar] for
/// scroll behavior integration.
class AppBarLayout extends StatelessWidget {
  const AppBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: true,
      floating: true,
      centerTitle: true,
      toolbarHeight: context.sizing.s64,
      backgroundColor: Theme.of(context).colorScheme.primary,
      actionsPadding: EdgeInsets.only(right: context.sizing.s4),
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        iconSize: context.sizing.s32,
        onPressed: () {
          /// TODO: Implement hamburger menu action
        },
      ),
      title: Logo(type: LogoType.plain, isDarkTheme: true, height: context.sizing.s32),
      actions: [
        IconButton(
          iconSize: context.sizing.s32,
          icon: const Icon(Icons.account_circle, color: Colors.white),
          onPressed: () {
            /// TODO: Implement user account action
          },
        ),
      ],
      bottom: SearchBarLayout(
        onTap: () {
          /// TODO: Implement search bar tap action
        },
      ),
    );
  }
}
