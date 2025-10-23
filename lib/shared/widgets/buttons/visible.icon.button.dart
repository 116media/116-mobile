import 'package:flutter/material.dart';

/// A reusable icon button widget for toggling password visibility in text fields.
///
/// This widget displays either a visibility or visibility_off icon depending on
/// the current password visibility state. It's commonly used as a suffix icon
/// in password input fields.
///
/// The icon color is automatically set to the theme's primary color.
class VisibleIconButton extends StatelessWidget {
  final bool isPasswordVisible;
  final VoidCallback onPressed;

  const VisibleIconButton({
    super.key,
    required this.onPressed,
    required this.isPasswordVisible,
  });

  /// Builds the visibility toggle icon button.
  ///
  /// Returns an [IconButton] wrapped in a [Container] with right margin.
  /// The icon switches between [Icons.visibility] and [Icons.visibility_off]
  /// based on [isPasswordVisible].
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2.0),
      child: IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
