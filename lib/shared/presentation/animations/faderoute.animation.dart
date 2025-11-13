import 'package:flutter/material.dart';

/// A custom page route that transitions between screens using a fade animation.
///
/// This route builder replaces the default slide transition with a smooth fade-in/fade-out
/// effect when navigating between screens. The animation uses Flutter's built-in
/// [FadeTransition] widget.
///
/// Example usage:
/// ```dart
/// // Navigate to a new screen with fade animation
/// Navigator.push(
///   context,
///   FadeRouteAnimation(screen: MyNewScreen()),
/// );
///
/// // Replace current route with fade animation
/// Navigator.pushReplacement(
///   context,
///   FadeRouteAnimation(screen: HomeScreen()),
/// );
/// ```
///
/// The fade animation automatically handles both forward (push) and reverse (pop) transitions.
class FadeRouteAnimation extends PageRouteBuilder {
  final Widget screen;

  /// Creates a [FadeRouteAnimation] for the specified [screen].
  ///
  /// The [screen] parameter is the widget that will be displayed after the transition.
  ///
  /// The constructor configures:
  /// - [pageBuilder]: Returns the destination screen
  /// - [transitionsBuilder]: Applies the fade transition effect using [FadeTransition]
  FadeRouteAnimation({required this.screen})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );
}
