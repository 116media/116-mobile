import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show PlatformWidget, PlatformTextButton;

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;
import 'enums/button.size.enum.dart' show ButtonSize;

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
///   color: ColorsUtil.primary, // Optional custom color for border and text
///   size: ButtonSize.sm, // Optional size variant
/// )
/// ```
class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFull;
  final bool isLoading;
  final bool isDisabled;
  final Color? color;
  final ButtonSize size;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = ButtonSize.md,
    this.color,
    this.isFull = false,
    this.isLoading = false,
    this.isDisabled = false,
  });

  /// Returns the height based on the size variant.
  double _getHeight(BuildContext context) {
    return switch (size) {
      ButtonSize.xs => context.sizing.s40,
      ButtonSize.sm => context.sizing.s48,
      ButtonSize.md => context.sizing.s60,
      ButtonSize.lg => context.sizing.s72,
    };
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;
    final defaultBorderColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;
    final textColor = color ?? defaultTextColor;
    final borderColor = color ?? defaultBorderColor;
    final bool isButtonDisabled = isDisabled || isLoading;

    return Opacity(
      opacity: isDisabled && !isLoading ? 0.6 : 1.0,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: _getHeight(context),
          minWidth: isFull ? double.infinity : 0,
        ),
        child: PlatformWidget(
          cupertino: (context, platform) => Container(
            height: _getHeight(context),
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1.5),
              borderRadius: BorderRadius.circular(context.sizing.s8),
            ),
            child: PlatformTextButton(
              onPressed: isButtonDisabled ? null : onPressed,
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
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
              minimumSize: Size.fromHeight(_getHeight(context)),
              disabledForegroundColor: isLoading ? textColor : textColor.withValues(alpha: 0.6),
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
                horizontal: context.sizing.s16,
              ),
              backgroundColor: Colors.transparent,
              splashFactory: InkRipple.splashFactory,
              side: BorderSide(
                width: context.sizing.s1_5,
                color: isDisabled && !isLoading ? borderColor.withValues(alpha: 0.6) : borderColor,
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
      ),
    );
  }
}
