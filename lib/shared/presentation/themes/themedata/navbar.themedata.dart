import 'package:flutter/material.dart';

import '../../utils/colors.util.dart' show ColorsUtil;

/// AppBar theme data configuration.
///
/// Defines consistent AppBar styling across the application
/// for both light and dark modes.
class NavBarThemeData {
  NavBarThemeData._();

  /// Light theme configuration for AppBar.
  static AppBarTheme lightTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: ColorsUtil.primary,
    foregroundColor: ColorsUtil.neutral900,
    iconTheme: const IconThemeData(color: ColorsUtil.neutral50),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  );

  /// Dark theme configuration for AppBar.
  static AppBarTheme darkTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: ColorsUtil.primary,
    foregroundColor: ColorsUtil.neutral50,
    iconTheme: const IconThemeData(color: ColorsUtil.neutral50),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  );
}
