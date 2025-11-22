import 'package:flutter/material.dart';

import '../utils/colors.util.dart' show ColorsUtil;
import 'sizing.theme.dart' show SizingTheme;
import 'themedata/bottomnav.themedata.dart' show BottomNavThemeData;
import 'themedata/navbar.themedata.dart' show NavBarThemeData;

/// Defines the application's theme configurations for both light and dark modes.
///
/// This class provides centralized theme definitions using Material Design 3 (Material You)
/// with custom color schemes, typography, theme extensions, etc.
///
class AppTheme {
  /// Returns the light theme configuration for the application.
  ///
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: ColorsUtil.neutral50,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: ColorsUtil.primary,
      surface: ColorsUtil.slate100,
      secondary: ColorsUtil.secondary,
      error: ColorsUtil.error,
    ),
    appBarTheme: NavBarThemeData.lightTheme,
    bottomNavigationBarTheme: BottomNavThemeData.lightTheme,
    extensions: <ThemeExtension<dynamic>>[SizingTheme.values],
  );

  /// Returns the dark theme configuration for the application.
  ///
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: ColorsUtil.neutral900,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsUtil.primary,
      surface: ColorsUtil.slate800,
      secondary: ColorsUtil.secondary,
      error: ColorsUtil.error,
    ),
    appBarTheme: NavBarThemeData.darkTheme,
    bottomNavigationBarTheme: BottomNavThemeData.darkTheme,
    extensions: <ThemeExtension<dynamic>>[SizingTheme.values],
  );
}
