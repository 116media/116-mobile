import 'package:cent16/shared/themes/extensions/sizing.extension.dart' show Sizing;
import 'package:flutter/material.dart';

/// An extension on BuildContext for easy access to theme properties.
extension ThemeExtension on BuildContext {
  /// Returns true if the current theme is dark mode, false otherwise.
  bool get isDarkMode {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.dark;
  }

  /// Quick access to the current ColorScheme
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Quick access to the current TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Quick access to primary color
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  /// Quick access to surface color
  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  /// Quick access to background color
  Color get backgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// Quick access to SizingTheme extension
  Sizing get sizing => Theme.of(this).extension<Sizing>()!;
}
