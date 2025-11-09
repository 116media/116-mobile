import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// A solid button widget that adapts to the platform (iOS/Android).
///
/// Provides consistent button styling with size variants across platforms.
class SolidButton extends StatelessWidget {
  final String text;
  final String size;
  final bool isFull;
  final Color? textColor;
  final Color? background;
  final VoidCallback onPressed;

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
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: context.sizing.s12),
      onPressed: onPressed,
      material: (_, _) => MaterialElevatedButtonData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          backgroundColor: background,
          splashFactory: InkRipple.splashFactory,
          foregroundColor: ColorsUtil.white.withAlpha(context.sizing.s48.toInt()),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
        ),
      ),
      cupertino: (_, _) => CupertinoElevatedButtonData(padding: EdgeInsets.zero),
      child: SizedBox(
        height: _getHeight(),
        width: isFull ? double.infinity : null,
        child: Center(
          child: Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: textColor, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
