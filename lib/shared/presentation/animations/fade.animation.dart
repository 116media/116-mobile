import 'package:flutter/material.dart';

/// A widget that animates its child with a fade-in effect combined with vertical translation.
///
/// The animation consists of two simultaneous effects:
/// 1. Opacity: Fades from 0.0 (invisible) to 1.0 (fully visible)
/// 2. Translation: Slides vertically from +30px or -30px to its final position (0px)
///
/// The animation uses an easeOut curve for smooth deceleration and runs for 300ms.
///
/// Example usage:
/// ```dart
/// FadeAnimation(
///   delay: 0.5,
///   reverse: true,
///   child: Text('Hello World'),
/// )
/// ```
class FadeAnimation extends StatefulWidget {
  final double delay;
  final Widget child;
  final bool reverse;

  const FadeAnimation({super.key, this.delay = 0.25, required this.child, this.reverse = false});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _translateAnimation;

  /// Initializes the animation controller and sets up fade and translate animations.
  ///
  /// The animation starts after a delay calculated from [widget.delay] * 500ms.
  /// Both animations use an easeOut curve for smooth deceleration.
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));

    final curve = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    // Fade animation: 0.0 (invisible) → 1.0 (fully visible)
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(curve);

    // Translate animation: slides from +30px or -30px → 0px (final position)
    _translateAnimation = Tween<double>(
      begin: widget.reverse ? 30.0 : -30.0,
      end: 0.0,
    ).animate(curve);

    // Start animation after delay (delay * 500ms)
    Future.delayed(Duration(milliseconds: (500 * widget.delay).round()), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Builds the animated widget with fade and translate effects.
  ///
  /// Wraps the child in an [Opacity] widget (for fade) and [Transform.translate]
  /// (for vertical slide), both controlled by the animation controller.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _fadeAnimation.value,
          child: Transform.translate(
            offset: Offset(0, _translateAnimation.value),
            child: widget.child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
