import 'package:flutter/material.dart';

import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../domain/value-objects/onboarding.items.dart' show OnboardingItems;

/// Widget displays swipeable onboarding pages with animated content.
///
/// Uses [PageView] to show horizontally scrollable pages, each containing
/// a title and description with staggered fade-in animations
class OnboardingView extends StatelessWidget {
  final Color textColor;
  final PageController controller;
  final OnboardingItems onboardingItems;
  final ValueChanged<int> onPageChanged;

  const OnboardingView({
    super.key,
    required this.textColor,
    required this.controller,
    required this.onPageChanged,
    required this.onboardingItems,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: PageView.builder(
        controller: controller,
        onPageChanged: onPageChanged,
        itemCount: onboardingItems.count,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / context.sizing.s2_5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Wrap(
                  spacing: context.sizing.s20,
                  runSpacing: context.sizing.s20,
                  alignment: WrapAlignment.center,
                  children: [
                    // title
                    FadeAnimation(
                      delay: 1.0,
                      reverse: true,
                      child: Text(
                        textAlign: TextAlign.center,
                        onboardingItems.all[index].title,
                        style: context.textTheme.titleLarge?.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w700,
                          fontSize: context.sizing.s24,
                        ),
                      ),
                    ),

                    // description
                    FadeAnimation(
                      delay: 0.5,
                      child: Text(
                        textAlign: TextAlign.center,
                        onboardingItems.all[index].description,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: context.sizing.s16,
                          color: textColor.withValues(alpha: context.sizing.s0_5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
