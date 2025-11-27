import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider;

import '../sidemenu/sidemenu.controller.dart' show SideMenuController;
import '../sidemenu/sidemenu.layout.dart' show SideMenuLayout;
import 'widgets/sliding.content.widget.dart' show SlidingContent;

/// Shell widget that wraps all bottom navigation routes.
///
/// Provides side menu with swipe gesture and hamburger button support.
/// Main content pushes 80% right when menu opens.
class MainShellLayout extends StatefulWidget {
  final Widget child;

  const MainShellLayout({super.key, required this.child});

  @override
  State<MainShellLayout> createState() => _MainShellLayoutState();
}

class _MainShellLayoutState extends State<MainShellLayout> with SingleTickerProviderStateMixin {
  late final SideMenuController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SideMenuController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider.value(
      value: _controller,
      child: GestureDetector(
        onHorizontalDragUpdate: (details) =>
            _controller.handleDragUpdate(details.primaryDelta ?? 0, screenWidth),
        onHorizontalDragEnd: (details) => _controller.handleDragEnd(details.primaryVelocity ?? 0),
        child: Stack(
          children: [
            SideMenuLayout(onClose: _controller.close),
            SlidingContent(child: widget.child),
          ],
        ),
      ),
    );
  }
}
