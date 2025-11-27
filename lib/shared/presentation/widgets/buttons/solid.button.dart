import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show
        PlatformElevatedButton,
        MaterialElevatedButtonData,
        CupertinoElevatedButtonData,
        PlatformWidget;

import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;
import 'enums/button.size.enum.dart' show ButtonSize;

/// A solid button widget that adapts to the platform (iOS/Android).
///
/// Provides consistent button styling with size variants across platforms.
class SolidButton extends StatelessWidget {
  final String text;
  final ButtonSize size;
  final bool isFull;
  final bool isDisabled;
  final bool isLoading;
  final Color? textColor;
  final Color? background;
  final VoidCallback onPressed;

  const SolidButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = ColorsUtil.white,
    this.background = ColorsUtil.primary,
    this.size = ButtonSize.md,
    this.isFull = false,
    this.isDisabled = false,
    this.isLoading = false,
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
    final bool isButtonDisabled = isDisabled || isLoading;
    final spinnerColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;

    return PlatformElevatedButton(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: context.sizing.s12),
      onPressed: isButtonDisabled ? null : onPressed,
      material: (_, _) => MaterialElevatedButtonData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          backgroundColor: background,
          splashFactory: InkRipple.splashFactory,
          foregroundColor: ColorsUtil.white.withValues(alpha: context.sizing.s48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
        ),
      ),
      cupertino: (_, _) => CupertinoElevatedButtonData(padding: EdgeInsets.zero, color: background),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: _getHeight(context),
          minWidth: isFull ? double.infinity : 0,
        ),
        child: IntrinsicWidth(
          child: Container(
            height: _getHeight(context),
            width: isFull ? double.infinity : null,
            padding: EdgeInsets.symmetric(horizontal: context.sizing.s24),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      width: context.sizing.s20,
                      height: context.sizing.s20,
                      child: PlatformWidget(
                        cupertino: (_, _) => CupertinoActivityIndicator(color: spinnerColor),
                        material: (_, _) => CircularProgressIndicator(
                          strokeWidth: context.sizing.s2,
                          valueColor: AlwaysStoppedAnimation<Color>(spinnerColor),
                        ),
                      ),
                    )
                  : Text(text, style: context.buttonTextStyle(textColor!)),
            ),
          ),
        ),
      ),
    );
  }
}
