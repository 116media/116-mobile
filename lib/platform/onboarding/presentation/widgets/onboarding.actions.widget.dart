import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../shared/presentation/widgets/buttons/outline.button.dart' show OutlineButton;
import '../../domain/value-objects/onboarding.items.dart' show OnboardingItems;

/// Widget that displays action buttons for onboarding screens.
///
/// **Note:** This widget uses Cupertino-style buttons exclusively for
/// consistent iOS-style appearance across all platforms.
///
/// Shows either:
/// - "Get Started" button on the last page
/// - "Skip" and "Next" buttons on other pages
class OnboardingActions extends StatelessWidget {
  final OnboardingItems onboardingItems;
  final Color textColor;
  final int currentIndex;
  final double percentage;
  final PageController controller;

  final VoidCallback onSkip;
  final VoidCallback onGetStarted;
  final VoidCallback onContinueAsGuest;

  const OnboardingActions({
    super.key,
    required this.onboardingItems,
    required this.textColor,
    required this.controller,
    required this.currentIndex,
    required this.percentage,
    required this.onSkip,
    required this.onGetStarted,
    required this.onContinueAsGuest,
  });

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = EdgeInsets.symmetric(
      vertical: context.sizing.s12,
      horizontal: context.sizing.s0_5,
    );

    return currentIndex == onboardingItems.count - 1
        ? FadeAnimation(
            reverse: true,
            child: Padding(
              padding: padding,
              child: Column(
                spacing: context.sizing.s12,
                children: [
                  SolidButton(
                    isFull: true,
                    size: ButtonSize.sm,
                    text: "Sign In / Sign Up",
                    onPressed: onGetStarted,
                  ),
                  OutlineButton(text: "Continue as guest", onPressed: onContinueAsGuest),
                ],
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                padding: padding,
                onPressed: onSkip,
                child: Text(
                  'Skip',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor.withValues(alpha: context.sizing.s0_5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              CupertinoButton(
                padding: padding,
                onPressed: () {
                  if (currentIndex < onboardingItems.count - 1) {
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
                      width: context.sizing.s52,
                      height: context.sizing.s52,
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
