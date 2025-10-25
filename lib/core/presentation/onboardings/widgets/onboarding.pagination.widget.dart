import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../models/onboarding.model.dart' show onboardingItemList;

/// Widget that displays pagination dots for onboarding screens.
///
/// Shows a row of dots indicating the current page position,
/// with the active dot being wider than inactive dots.
class OnboardingPagination extends StatelessWidget {
  final int currentIndex;

  const OnboardingPagination({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.isDarkMode;

    final Color activeColor = isDarkMode ? ColorsUtil.slate500 : ColorsUtil.slate700;
    final Color inactiveColor = isDarkMode ? ColorsUtil.slate700 : ColorsUtil.slate500;

    return Padding(
      padding: EdgeInsets.only(bottom: context.sizing.s32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          onboardingItemList.length,
          (int index) => AnimatedContainer(
            curve: Curves.easeInOut,
            height: context.sizing.s9,
            duration: const Duration(milliseconds: 800),
            margin: EdgeInsets.symmetric(horizontal: context.sizing.s3),
            width: currentIndex == index ? context.sizing.s18 : context.sizing.s9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.sizing.s24),
              color: (index == currentIndex) ? activeColor : inactiveColor,
            ),
          ),
        ),
      ),
    );
  }
}
