import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/animations/fade.animation.dart' show FadeAnimation;
import '../models/onboarding.model.dart' show onboardingItemList;

/// Widget displays swipeable onboarding pages with animated content.
///
/// Uses [PageView] to show horizontally scrollable pages, each containing
/// a title and description with staggered fade-in animations
class OnboardingView extends StatelessWidget {
  final Color textColor;
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const OnboardingView({
    super.key,
    required this.textColor,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: PageView.builder(
        controller: controller,
        onPageChanged: onPageChanged,
        itemCount: onboardingItemList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * context.sizing.s0_5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    // title
                    FadeAnimation(
                      delay: 1.0,
                      reverse: true,
                      child: Text(
                        textAlign: TextAlign.center,
                        onboardingItemList[index].title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
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
                        onboardingItemList[index].description,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
