import 'package:flutter/material.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// A drag handle indicator for bottom sheets and modal dialogs.
///
/// Displays a centered horizontal bar that indicates the sheet can be dragged.
/// Commonly used at the top of bottom sheets to provide a visual affordance
/// for the drag-to-dismiss gesture.
class BottomSheetPullBar extends StatelessWidget {
  const BottomSheetPullBar({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.isDarkMode ? ColorsUtil.gray600 : ColorsUtil.gray300;

    return Center(
      child: Container(
        width: context.sizing.s80,
        height: context.sizing.s4,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(context.sizing.s2),
        ),
      ),
    );
  }
}
