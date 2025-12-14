import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;

/// A widget that displays a single theme option with an icon and label.
///
/// This widget is used within the [SlidingThemeToggle] to represent each theme choice
/// (light or dark mode) with appropriate visual styling based on selection state.
class ThemeOptions extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final String label;

  const ThemeOptions({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = isSelected ? Colors.white : ColorsUtil.black;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: context.sizing.s14,
            ),
          ),
          Gap(context.sizing.s8),
          Icon(icon, size: context.sizing.s20, color: textColor),
        ],
      ),
    );
  }
}
