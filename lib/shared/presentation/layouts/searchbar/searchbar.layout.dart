import 'package:flutter/material.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// Search bar widget designed to be used as a bottom component in app bars.
///
/// Implements [PreferredSizeWidget] to allow usage in [AppBar.bottom] or
/// [SliverAppBar.bottom]. Provides a styled search input field with theme
/// integration.
class SearchBarLayout extends StatelessWidget implements PreferredSizeWidget {
  const SearchBarLayout({super.key, this.onTap});

  final VoidCallback? onTap;

  /// The preferred height for this widget when used in an app bar.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    final fillColor = isDarkMode ? Colors.black38 : Colors.white38;
    final hintColor = isDarkMode ? Colors.white38 : Colors.black38;

    final iconColor = isDarkMode ? ColorsUtil.slate50 : ColorsUtil.slate900;
    final textColor = isDarkMode ? ColorsUtil.white : ColorsUtil.black;

    return AppBar(
      titleSpacing: context.sizing.s16,
      backgroundColor: context.colors.primary,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: context.sizing.s12, top: context.sizing.s4),
          child: TextField(
            onTap: onTap,
            style: TextStyle(color: textColor),
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              hintText: 'Search...',
              hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.w500),
              prefixIcon: Icon(
                Icons.search,
                color: iconColor,
                size: context.sizing.s20,
                fontWeight: FontWeight.w600,
              ),
              fillColor: fillColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(context.sizing.s8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
