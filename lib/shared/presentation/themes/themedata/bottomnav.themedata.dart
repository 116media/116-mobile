import 'package:flutter/material.dart';

/// Bottom navigation bar theme data configuration.
///
/// Defines text styles for selected and unselected navigation items
/// for both light and dark modes.
class BottomNavThemeData {
  BottomNavThemeData._();

  /// Light theme configuration for bottom navigation bar.
  static const BottomNavigationBarThemeData lightTheme = BottomNavigationBarThemeData(
    selectedLabelStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
    unselectedLabelStyle: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
  );

  /// Dark theme configuration for bottom navigation bar.
  static const BottomNavigationBarThemeData darkTheme = BottomNavigationBarThemeData(
    selectedLabelStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
    unselectedLabelStyle: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
  );
}
