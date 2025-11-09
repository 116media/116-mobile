import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../themes/extensions/build.context.extension.dart';

/// Defines the type of logo to display.
///
/// - [icon]: Displays the icon-only version of the logo
/// - [plain]: Displays the full logo with text
enum LogoType { icon, plain }

/// A reusable widget that displays the application logo in SVG format.
///
/// The logo automatically adapts to the current theme (dark/light) and supports
/// different logo variations (icon-only or full logo with text).
///
/// Example usage:
/// ```dart
/// Logo(
///   type: LogoType.plain,
///   isDarkTheme: true,
///   height: 48.0,
/// )
/// ```
///
/// The widget expects SVG assets to be organized in the following structure:
/// - assets/logos/dark/dark_icon.svg
/// - assets/logos/dark/dark_plain.svg
/// - assets/logos/light/light_icon.svg
/// - assets/logos/light/light_plain.svg
class Logo extends StatelessWidget {
  final LogoType type;
  final bool isDarkTheme;
  final double? width;
  final double? height;

  const Logo({super.key, required this.type, required this.isDarkTheme, this.width, this.height});

  /// Constructs the SVG asset path based on the current theme and logo type.
  ///
  /// This method dynamically builds the path string by:
  /// 1. Determining the theme folder ('dark' or 'light') based on [isDarkTheme]
  /// 2. Selecting the appropriate SVG file based on [type] (icon or plain)
  String _getSvgAssetPath() {
    final theme = isDarkTheme ? 'dark' : 'light';

    switch (type) {
      case LogoType.icon:
        return 'assets/logos/$theme/${theme}_icon.svg';
      case LogoType.plain:
        return 'assets/logos/$theme/${theme}_plain.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    final svgAssetPath = _getSvgAssetPath();

    return SvgPicture.asset(
      svgAssetPath,
      height: height,
      width: width ?? MediaQuery.of(context).size.width * context.sizing.s0_5,
      semanticsLabel: '$type logo',
    );
  }
}
