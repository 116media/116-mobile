import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart' show PlatformTextButton;

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/animations/fade.animation.dart' show FadeAnimation;
import '../../../../shared/widgets/buttons/solid.button.dart' show SolidButton;
import '../models/onboarding.model.dart' show onboardingItemList;

/// Widget that displays action buttons for onboarding screens.
///
/// Shows either:
/// - "Get Started" button on the last page
/// - "Skip" and "Next" buttons on other pages
class OnboardingActions extends StatelessWidget {
  final Color textColor;
  final int currentIndex;
  final double percentage;
  final PageController controller;

  final VoidCallback onSkip;
  final VoidCallback onGetStarted;

  const OnboardingActions({
    super.key,
    required this.textColor,
    required this.controller,
    required this.currentIndex,
    required this.percentage,
    required this.onSkip,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    return currentIndex == onboardingItemList.length - 1
        ? FadeAnimation(
            reverse: true,
            child: SolidButton(size: "sm", text: "Get Started", onPressed: onGetStarted),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PlatformTextButton(
                onPressed: onSkip,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: context.sizing.s12),
                child: Text(
                  'Skip',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor.withValues(alpha: 0.75),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: context.sizing.s12),
                onPressed: () {
                  if (currentIndex < onboardingItemList.length - 1) {
                    controller.nextPage(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 200),
                    );
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        value: percentage,
                        backgroundColor: context.colors.primary.withValues(
                          alpha: context.sizing.s0_5,
                        ),
                        valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: context.colors.primary,
                      child: const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
