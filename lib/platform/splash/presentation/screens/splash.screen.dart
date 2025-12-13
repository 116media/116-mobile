import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
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
/// 4. GoRouter handles navigation based on session state
///
/// Total duration: ~2.5 seconds
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _zoomAnimation;
  late final Animation<double> _fadeAnimation;

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
  /// - GoRouter automatically handles navigation based on session state after animation completes
  /// - The router guards will redirect to the appropriate screen (preferences, onboarding, or home)
  ///
  /// **Timing:**
  /// - Waits 2.5 seconds (synchronized with native splash removal) before starting animation
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

    // Navigate after animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        context.go("/");
      }
    });

    // Wait for native splash to be removed (2.5s) before starting animation
    Future.delayed(const Duration(milliseconds: kAnimationDuration), () {
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
