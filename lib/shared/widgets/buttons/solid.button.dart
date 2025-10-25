import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../utils/colors.util.dart' show ColorsUtil;

/// A solid button widget that adapts to the platform (iOS/Android).
///
/// Provides consistent button styling with size variants across platforms.
class SolidButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? background;
  final Color? textColor;
  final String text;
  final String size;
  final bool isFull;

  const SolidButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.background = ColorsUtil.primary,
    this.size = 'md',
    this.isFull = false,
  });

  /// Returns the height based on the size variant.
  double _getHeight() {
    switch (size) {
      case 'xs':
        return 40.0;
      case 'sm':
        return 50.0;
      case 'md':
        return 60.0;
      case 'lg':
        return 70.0;
      default:
        return 60.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformElevatedButton(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
      onPressed: onPressed,
      material: (_, _) => MaterialElevatedButtonData(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: EdgeInsets.zero,
          elevation: 0,
        ),
      ),
      cupertino: (_, _) => CupertinoElevatedButtonData(padding: EdgeInsets.zero),
      child: Container(
        height: _getHeight(),
        alignment: Alignment.center,
        width: isFull ? double.infinity : null,
        decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: textColor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
