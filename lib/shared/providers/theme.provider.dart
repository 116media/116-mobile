import 'package:flutter/material.dart';

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

  /// Toggles the application theme between light and dark modes.
  ///
  /// The [isDark] parameter determines which theme to apply:
  /// - `true`: Switches to dark theme
  /// - `false`: Switches to light theme
  ///
  /// After changing the theme, notifies all listeners to rebuild widgets
  /// that depend on the theme state.
  void toggleTheme(bool isDark) {
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
