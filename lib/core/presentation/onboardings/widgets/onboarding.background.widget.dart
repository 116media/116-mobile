import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;

/// Onboarding background widget with blurred image and animated shapes.
///
/// Displays the onboarding background image covering entire screen with
/// a blur effect and animated Rive shapes overlay.
class OnboardingBackground extends StatefulWidget {
  const OnboardingBackground({super.key, required this.backgroundImage});

  final String backgroundImage;

  @override
  State<OnboardingBackground> createState() => _OnboardingBackgroundState();
}

class _OnboardingBackgroundState extends State<OnboardingBackground> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final screenHeight = MediaQuery.of(context).size.height;

    final gradientEndColor = isDarkMode ? ColorsUtil.black : ColorsUtil.white;
    final gradientMidColor = isDarkMode ? ColorsUtil.slate900 : ColorsUtil.slate100;

    return Scaffold(
      body: Stack(
        children: [
          // Top half: Background image with blur and gradient
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight * 0.5,
            child: Stack(
              children: [
                // onboarding image
                Positioned.fill(child: Image.asset(widget.backgroundImage, fit: BoxFit.cover)),

                // gradient overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ColorsUtil.primary.withValues(alpha: 2.5),
                          ColorsUtil.secondary.withValues(alpha: 0.5),
                        ],
                      ),
                    ),
                  ),
                ),

                // blur effect
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: context.sizing.s2_5,
                      sigmaY: context.sizing.s2_5,
                    ),
                    child: const SizedBox(),
                  ),
                ),
              ],
            ),
          ),

          // Bottom half: Gradient fading to solid color (adapts to theme)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: screenHeight,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    gradientMidColor,
                    gradientEndColor,
                  ],
                  stops: const [0, 0.25, 0.5, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
