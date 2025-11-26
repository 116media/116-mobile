import 'package:flutter/material.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;

/// A reusable settings list tile widget.
///
/// Displays a leading icon, title, optional subtitle, and trailing widget.
/// Supports tap interactions for navigation or actions.
class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final Color? textColor;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.iconBackgroundColor,
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
          child: ListTile(
            leading: Container(
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
              style: context.textTheme.titleMedium?.copyWith(
                color: defaultTextColor,
                fontWeight: FontWeight.w600,
              ),
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
            trailing:
                trailing ??
                Icon(
                  size: context.sizing.s18,
                  Icons.adaptive.arrow_forward,
                  color: defaultTextColor?.withValues(alpha: context.sizing.s0_5),
                ),
            onTap: onTap,
            contentPadding: EdgeInsets.symmetric(horizontal: context.sizing.s16, vertical: 0),
          ),
        ),
      ),
    );
  }
}
