import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A reusable platform-aware icon button widget for toggling password visibility in text fields.
///
/// This widget displays either a visibility or visibility_off icon depending on
/// the current password visibility state. It's commonly used as a suffix icon
/// in password input fields.
///
/// The icon color is automatically set to the theme's primary color.
/// Uses [PlatformIconButton] to adapt to iOS/Android platform conventions.
class VisibleIconButton extends StatelessWidget {
  final bool isPasswordVisible;
  final VoidCallback onPressed;

  const VisibleIconButton({super.key, required this.onPressed, required this.isPasswordVisible});

  /// Builds the visibility toggle icon button with platform-aware styling.
  ///
  /// Returns a [PlatformIconButton] that adapts to the current platform:
  /// - iOS: CupertinoButton with icon
  /// - Android: Material IconButton with circular ripple
  ///
  /// The icon switches between [Icons.visibility] and [Icons.visibility_off]
  /// based on [isPasswordVisible].
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: PlatformIconButton(
        padding: EdgeInsets.zero,
        materialIcon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Theme.of(context).primaryColor,
          size: 24,
        ),
        cupertinoIcon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Theme.of(context).primaryColor,
          size: 24,
        ),
        onPressed: onPressed,
        material: (_, _) => MaterialIconButtonData(
          padding: const EdgeInsets.all(8.0),
          constraints: const BoxConstraints(),
          style: IconButton.styleFrom(
            shape: const CircleBorder(),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
}
