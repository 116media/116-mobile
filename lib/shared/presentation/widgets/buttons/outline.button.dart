import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show PlatformWidget, PlatformTextButton;

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// A platform-aware outlined button for secondary actions.
///
/// Displays an outlined button with transparent background and border,
/// suitable for cancel actions or secondary navigation.
///
/// Example usage:
/// ```dart
/// OutlineButton(
///   text: 'Cancel',
///   onPressed: () => Navigator.pop(context),
///   isLoading: false,
///   isDisabled: false,
/// )
/// ```
class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isDisabled;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;
    final borderColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;
    final bool isButtonDisabled = isDisabled || isLoading;

    return Opacity(
      opacity: isDisabled && !isLoading ? 0.6 : 1.0,
      child: PlatformWidget(
        cupertino: (context, platform) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(context.sizing.s8),
          ),
          child: PlatformTextButton(
            onPressed: isButtonDisabled ? null : onPressed,
            padding: EdgeInsets.symmetric(
              vertical: context.sizing.s14,
              horizontal: context.sizing.s16,
            ),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      width: context.sizing.s20,
                      height: context.sizing.s20,
                      child: CupertinoActivityIndicator(color: textColor),
                    )
                  : Text(text, style: context.buttonTextStyle(textColor)),
            ),
          ),
        ),
        material: (context, platform) => OutlinedButton(
          onPressed: isButtonDisabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            disabledForegroundColor: isLoading ? textColor : textColor.withValues(alpha: 0.6),
            padding: EdgeInsets.symmetric(
              vertical: context.sizing.s14,
              horizontal: context.sizing.s16,
            ),
            backgroundColor: Colors.transparent,
            splashFactory: InkRipple.splashFactory,
            side: BorderSide(
              color: isDisabled && !isLoading ? borderColor.withValues(alpha: 0.6) : borderColor,
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: context.sizing.s20,
                    height: context.sizing.s20,
                    child: CircularProgressIndicator(
                      strokeWidth: context.sizing.s2,
                      valueColor: AlwaysStoppedAnimation<Color>(textColor),
                    ),
                  )
                : Text(text, style: context.buttonTextStyle(textColor)),
          ),
        ),
      ),
    );
  }
}
