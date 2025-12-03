import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show PlatformWidget, PlatformTextButton;
import 'package:gap/gap.dart' show Gap;

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';

import '../../../../../../shared/presentation/extensions/string.extension.dart';
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;

/// Social media platform options for social login.
enum SocialPlatform { google, facebook }

/// A platform-aware button for social media authentication.
///
/// Displays a branded button with the corresponding social media platform's
/// colors and icon. Adapts to iOS/Android platform conventions.
///
/// Example usage:
/// ```dart
/// SocialLoginButton(
///   platform: SocialPlatform.google,
///   onPressed: () => _handleGoogleLogin(),
///   isLoading: false,
///   size: ButtonSize.md,
/// )
/// ```
class SocialLoginButton extends StatelessWidget {
  final SocialPlatform platform;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isDisabled;
  final ButtonSize size;

  const SocialLoginButton({
    super.key,
    required this.platform,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.size = ButtonSize.md,
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

  /// Returns the iconify icon string for the specified platform.
  String get _iconData => {
    SocialPlatform.google: Logos.google_icon,
    SocialPlatform.facebook: Logos.facebook,
  }[platform]!;

  /// Returns the display text by capitalizing the platform enum name.
  String get _text => platform.name.toCapitalized();

  /// Builds the button content row with icon and text
  Widget _buildButtonContent(BuildContext context, Color textColor, Widget spinner) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: context.sizing.s20,
          height: context.sizing.s20,
          child: isLoading ? spinner : Iconify(_iconData, size: context.sizing.s20),
        ),
        Gap(context.sizing.s12),
        Text(_text, style: context.buttonTextStyle(textColor)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;
    final borderColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;

    return Opacity(
      opacity: isDisabled ? 0.6 : 1.0,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: _getHeight(context)),
        child: PlatformWidget(
          cupertino: (_, _) => Container(
            height: _getHeight(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.sizing.s8),
              border: Border.all(color: borderColor, width: context.sizing.s1_5),
            ),
            child: PlatformTextButton(
              onPressed: isDisabled ? null : onPressed,
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
                horizontal: context.sizing.s16,
              ),
              child: _buildButtonContent(
                context,
                textColor,
                CupertinoActivityIndicator(color: textColor),
              ),
            ),
          ),
          material: (_, _) => OutlinedButton(
            onPressed: isDisabled ? null : onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size.fromHeight(_getHeight(context)),
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
                horizontal: context.sizing.s16,
              ),
              backgroundColor: Colors.transparent,
              splashFactory: InkRipple.splashFactory,
              side: BorderSide(color: borderColor, width: context.sizing.s1_5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
            ),
            child: _buildButtonContent(
              context,
              textColor,
              CircularProgressIndicator(
                strokeWidth: context.sizing.s2,
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
