import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../../../../shared/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../shared/animations/faderoute.animation.dart' show FadeRouteAnimation;
import '../constants/splash.constants.dart'
    show
        kAnimationDuration,
        kFinalScale,
        kInitialScale,
        kZoomStartInterval,
        kZoomEndInterval,
        kInitialOpacity,
        kFinalOpacity,
        kFadeStartInterval,
        kFadeEndInterval;

/// Animated splash screen that displays on app launch after Flutter initializes.
///
/// The animation sequence:
/// 1. Logo starts extremely zoomed in (only background color visible)
/// 2. Zooms out smoothly to normal size (20% of screen width)
/// 3. Fades out
/// 4. Navigates to the next screen
///
/// Total duration: ~2.5 seconds
class SplashScreen extends StatefulWidget {
  final Widget nextScreen;

  const SplashScreen({super.key, required this.nextScreen});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _zoomAnimation;
  late Animation<double> _fadeAnimation;

  /// Initializes the splash screen animation controller and sequences.
  ///
  /// Creates a 2.5-second animation with two phases:
  ///
  /// **Zoom Animation (0% - 40% / 0.0s - 1.0s):**
  /// - Scales the logo from 25x (extremely zoomed in) down to 1x (normal size)
  /// - Uses easeInOut curve for smooth acceleration and deceleration
  ///
  /// **Fade Animation (80% - 100% / 2.0s - 2.5s):**
  /// - Fades the logo from fully visible (opacity 1.0) to invisible (opacity 0.0)
  /// - Starts at 80% to give a brief pause after zoom completes
  /// - Uses easeIn curve for a smooth fade-out effect
  ///
  /// **Navigation:**
  /// - Waits for animation to fully complete before navigating
  /// - Uses [whenComplete] to ensure navigation happens only after animation finishes
  /// - Navigates to [widget.nextScreen] with a [FadeRouteAnimation] transition
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: kAnimationDuration),
    );

    _zoomAnimation = Tween<double>(begin: kInitialScale, end: kFinalScale).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(kZoomStartInterval, kZoomEndInterval, curve: Curves.easeInOut),
      ),
    );

    _fadeAnimation = Tween<double>(begin: kInitialOpacity, end: kFinalOpacity).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(kFadeStartInterval, kFadeEndInterval, curve: Curves.easeIn),
      ),
    );

    // Start animation and navigate when it completes
    _controller.forward().whenComplete(() {
      if (mounted) {
        Navigator.pushReplacement(context, FadeRouteAnimation(screen: widget.nextScreen));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final targetWidth = MediaQuery.of(context).size.width / context.sizing.s2_5;
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _fadeAnimation.value,
              child: Transform.scale(
                scale: _zoomAnimation.value,
                child: Logo(
                  width: targetWidth,
                  type: LogoType.plain,
                  isDarkTheme: context.isDarkMode,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
