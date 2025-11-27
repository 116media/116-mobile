import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Consumer;

import '../../../utils/colors.util.dart' show ColorsUtil;
import '../../sidemenu/sidemenu.controller.dart' show SideMenuController;
import '../../../themes/extensions/build.context.extension.dart';
import 'main.scaffold.widget.dart' show MainScaffold;

/// Animated sliding container for main content.
///
/// Translates horizontally based on [SideMenuController] progress.
/// Adds shadow effect and absorbs pointer when menu is open.
class SlidingContent extends StatelessWidget {
  final Widget child;

  const SlidingContent({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Consumer<SideMenuController>(
      builder: (context, controller, _) {
        return AnimatedBuilder(
          animation: controller.animationController,
          builder: (context, _) {
            final progress = controller.animationController.value;
            final slideOffset = screenWidth * controller.slidePercentage * progress;
            final showEffects = progress > 0;

            return Transform.translate(
              offset: Offset(slideOffset, 0),
              child: GestureDetector(
                onTap: controller.isOpen ? controller.close : null,
                child: AbsorbPointer(
                  absorbing: controller.isOpen,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: showEffects
                          ? BorderRadius.only(
                              topLeft: Radius.circular(context.sizing.s16),
                              bottomLeft: Radius.circular(context.sizing.s16),
                            )
                          : null,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: context.sizing.s4,
                          offset: Offset(-context.sizing.s4, 0),
                          color: ColorsUtil.black.withAlpha(50),
                        ),
                      ],
                    ),
                    child: MainScaffold(child: child),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
