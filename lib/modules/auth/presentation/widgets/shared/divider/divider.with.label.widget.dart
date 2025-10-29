import 'package:flutter/material.dart';

import '../../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/utils/colors.util.dart' show ColorsUtil;

/// A horizontal divider with centered text label.
///
/// Displays a horizontal line on both sides of a text label,
/// commonly used to separate sections with labels like "OR".
///
/// Example usage:
/// ```dart
/// DividerWithLabel(label: 'OR')
/// ```
class DividerWithLabel extends StatelessWidget {
  /// The text label to display in the center of the divider.
  final String label;

  const DividerWithLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final dividerColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;
    final textColor = context.isDarkMode ? ColorsUtil.slate500 : ColorsUtil.slate400;

    return Row(
      children: [
        Expanded(
          child: Divider(thickness: context.sizing.s0_5, color: dividerColor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.sizing.s12),
          child: Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ),
        Expanded(
          child: Divider(thickness: context.sizing.s0_5, color: dividerColor),
        ),
      ],
    );
  }
}
