import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;
import 'onboarding.actions.widget.dart' show OnboardingActions;
import 'onboarding.view.widget.dart' show OnboardingView;
import 'onboarding.pagination.widget.dart' show OnboardingPagination;

/// Main content widget for onboarding screens.
///
/// Combines three key components into a cohesive onboarding experience:
///
/// - [OnboardingView]: Swipeable pages with title and description
/// - [OnboardingPagination]: Animated dots showing current page position
/// - [OnboardingActions]: Skip/Next buttons with progress indicator
class OnboardingContent extends StatelessWidget {
  final int currentIndex;
  final double percentage;
  final PageController controller;
  final VoidCallback onSkip;
  final VoidCallback onGetStarted;
  final ValueChanged<int> onPageChanged;

  const OnboardingContent({
    super.key,
    required this.controller,
    required this.percentage,
    required this.currentIndex,
    required this.onSkip,
    required this.onPageChanged,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    final Color textColor = context.isDarkMode ? ColorsUtil.slate100 : ColorsUtil.slate700;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // onboarding pages view
        OnboardingView(textColor: textColor, controller: controller, onPageChanged: onPageChanged),

        // pagination dots
        OnboardingPagination(currentIndex: currentIndex),

        // skip and next action buttons
        OnboardingActions(
          textColor: textColor,
          controller: controller,
          percentage: percentage,
          currentIndex: currentIndex,
          onSkip: onSkip,
          onGetStarted: onGetStarted,
        ),
      ],
    );
  }
}
