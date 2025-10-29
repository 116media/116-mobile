import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/utils/colors.util.dart' show ColorsUtil;

/// A platform-aware outlined button for guest access.
///
/// Displays an outlined button similar to social login buttons but without an icon,
/// allowing users to continue without creating an account or signing in.
///
/// Example usage:
/// ```dart
/// GuestButton(
///   text: 'Continuer sans compte',
///   onPressed: () => Navigator.push(...MainScreen()),
/// )
/// ```
class GuestButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GuestButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final borderColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;

    return PlatformWidget(
      cupertino: (context, platform) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(context.sizing.s8),
        ),
        child: PlatformTextButton(
          onPressed: onPressed,
          padding: EdgeInsets.symmetric(
            vertical: context.sizing.s14,
            horizontal: context.sizing.s16,
          ),
          child: Center(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
      material: (context, platform) => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: context.sizing.s14,
            horizontal: context.sizing.s16,
          ),
          backgroundColor: Colors.transparent,
          splashFactory: InkRipple.splashFactory,
          side: BorderSide(color: borderColor, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
