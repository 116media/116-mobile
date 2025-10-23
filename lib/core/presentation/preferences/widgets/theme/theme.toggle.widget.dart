import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../../models/theme_mode.model.dart' show AppThemeMode;
import 'theme.options.widget.dart' show ThemeOptions;

/// A sliding segmented control widget for toggling between light and dark themes.
///
/// This widget provides an iOS-style sliding toggle using [CupertinoSlidingSegmentedControl]
/// that allows users to switch between light and dark theme modes with a smooth animation.
///
class SlidingThemeToggle extends StatelessWidget {
  final bool isDarkMode;
  final Function(bool) onToggle;

  const SlidingThemeToggle({super.key, required this.isDarkMode, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    final currentTheme = isDarkMode ? AppThemeMode.dark : AppThemeMode.light;
    final backgroundColor = isDarkMode ? ColorsUtil.slate400 : ColorsUtil.slate200;

    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(2),
        child: CupertinoSlidingSegmentedControl<AppThemeMode>(
          groupValue: currentTheme,
          thumbColor: context.primaryColor,
          backgroundColor: Colors.transparent,
          onValueChanged: (AppThemeMode? value) {
            if (value != null) {
              onToggle(value.isDark);
            }
          },
          children: {
            AppThemeMode.light: ThemeOptions(
              icon: Icons.light_mode,
              isSelected: !isDarkMode,
              label: 'Light',
            ),
            AppThemeMode.dark: ThemeOptions(
              icon: Icons.dark_mode,
              isSelected: isDarkMode,
              label: 'Dark',
            ),
          },
        ),
      ),
    );
  }
}
