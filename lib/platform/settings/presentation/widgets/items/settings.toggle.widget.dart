import 'package:flutter/material.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;

/// A settings tile with a toggle switch.
///
/// Used for boolean settings like notifications, dark mode, etc.
class SettingsToggle extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final Color? textColor;

  const SettingsToggle({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
    this.iconBackgroundColor,
    this.subtitle,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final defaultIconColor = iconColor ?? Colors.white;
    final defaultTextColor = textColor ?? context.textTheme.bodyLarge?.color;
    final defaultIconBackgroundColor = iconBackgroundColor ?? context.primaryColor;
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate100;

    return Container(
      margin: EdgeInsets.symmetric(vertical: context.sizing.s2_5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.sizing.s8),
      ),
      child: SizedBox(
        height: context.sizing.s80,
        child: Center(
          child: SwitchListTile(
            value: value,
            onChanged: onChanged,
            contentPadding: EdgeInsets.symmetric(horizontal: context.sizing.s16, vertical: 0),
            secondary: Container(
              width: context.sizing.s48,
              height: context.sizing.s48,
              decoration: BoxDecoration(
                color: defaultIconBackgroundColor,
                borderRadius: BorderRadius.circular(context.sizing.s8),
              ),
              child: Icon(icon, color: defaultIconColor, size: context.sizing.s24),
            ),
            title: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            subtitle: subtitle != null
                ? Text(
                    subtitle!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: defaultTextColor?.withValues(alpha: context.sizing.s0_5),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
