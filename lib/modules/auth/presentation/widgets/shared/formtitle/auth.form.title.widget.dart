import 'package:flutter/material.dart';

/// A styled text widget for displaying authentication form section titles.
///
/// Uses the theme's titleMedium style with semi-bold weight (w600)
/// for consistent form heading appearance across the app.
///
/// Example usage:
/// ```dart
/// AuthFormTitle(text: 'Personal Information')
/// ```
class AuthFormTitle extends StatelessWidget {
  final String text;

  const AuthFormTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
