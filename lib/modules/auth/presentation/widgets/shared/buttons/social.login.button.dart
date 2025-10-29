import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';

import '../../../../../../shared/extensions/string.extension.dart';
import '../../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/utils/colors.util.dart' show ColorsUtil;

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
/// )
/// ```
class SocialLoginButton extends StatelessWidget {
  final SocialPlatform platform;
  final VoidCallback onPressed;

  const SocialLoginButton({super.key, required this.platform, required this.onPressed});

  /// Returns the iconify icon string for the specified platform.
  String get _iconData {
    switch (platform) {
      case SocialPlatform.google:
        return Logos.google_icon;
      case SocialPlatform.facebook:
        return Logos.facebook;
    }
  }

  /// Returns the display text by capitalizing the platform enum name.
  String get _text => platform.name.toCapitalized();

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;
    final borderColor = context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300;

    return PlatformWidget(
      cupertino: (_, _) => Container(
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Iconify(_iconData, size: context.sizing.s24),
              SizedBox(width: context.sizing.s12),
              Text(
                _text,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
      material: (_, _) => OutlinedButton(
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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Iconify(_iconData, size: context.sizing.s24),
            SizedBox(width: context.sizing.s12),
            Text(
              _text,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
