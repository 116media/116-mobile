import 'package:cent16/shared/themes/widgets/sizing.theme.dart';
import 'package:flutter/material.dart';
import '../utils/colors.util.dart';

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
    scaffoldBackgroundColor: ColorsUtil.slate50,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: ColorsUtil.primary,
      surface: ColorsUtil.slate50,
      secondary: ColorsUtil.secondary,
      error: ColorsUtil.error,
    ),
    extensions: <ThemeExtension<dynamic>>[SizingTheme.values],
  );

  /// Returns the dark theme configuration for the application.
  ///
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: ColorsUtil.slate800,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsUtil.primary,
      surface: ColorsUtil.slate800,
      secondary: ColorsUtil.secondary,
      error: ColorsUtil.error,
    ),
    extensions: <ThemeExtension<dynamic>>[SizingTheme.values],
  );
}
