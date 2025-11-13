import 'package:flutter/material.dart';

import '../../../platform/preferences/domain/enums/thememode.enum.dart' show AppThemeMode;

/// A provider class for managing application theme state.
///
/// This provider uses Flutter's [ChangeNotifier] to manage and notify listeners
/// about theme changes throughout the application. It integrates with the
/// Provider package for state management.
///
/// The theme mode can be:
/// - [ThemeMode.light]: Force light theme
/// - [ThemeMode.dark]: Force dark theme
/// - [ThemeMode.system]: Follow system theme (default)
class ThemeProvider extends ChangeNotifier {
  /// The current theme mode of the application.
  ///
  /// Defaults to [ThemeMode.system] which follows the device's system theme.
  ThemeMode themeMode = ThemeMode.system;

  /// Sets the application theme mode based on [AppThemeMode].
  ///
  /// The [appThemeMode] parameter determines which theme to apply:
  /// - [AppThemeMode.light]: Switches to light theme
  /// - [AppThemeMode.dark]: Switches to dark theme
  /// - [AppThemeMode.system]: Follows system theme (default)
  ///
  /// After changing the theme, notifies all listeners to rebuild widgets
  /// that depend on the theme state.
  void setThemeMode(AppThemeMode appThemeMode) {
    switch (appThemeMode) {
      case AppThemeMode.light:
        themeMode = ThemeMode.light;
        break;
      case AppThemeMode.dark:
        themeMode = ThemeMode.dark;
        break;
      case AppThemeMode.system:
        themeMode = ThemeMode.system;
        break;
    }
    notifyListeners();
  }
}
