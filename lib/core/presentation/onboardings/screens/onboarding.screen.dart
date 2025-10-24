import 'package:flutter/material.dart';

import '../constants/onboardings.constant.dart' show kIncrementPercentage;
import '../models/onboarding.model.dart' show onboardingItemList;
import '../widgets/onboarding.background.widget.dart' show OnboardingBackground;
import '../widgets/onboarding.content.widget.dart' show OnboardingContent;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController? _controller;
  double percentage = kIncrementPercentage;

  @override
  initState() {
    super.initState();
    _controller = PageController(initialPage: currentIndex);
    _controller!.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _controller!.removeListener(_onPageChanged);
    _controller!.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    setState(() {
      currentIndex = _controller!.page!.round();
      percentage = (currentIndex + 1) / onboardingItemList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(onboardingItemList[currentIndex].image), context);

    return Stack(
      children: [
        // Background with current onboarding image
        OnboardingBackground(backgroundImage: onboardingItemList[currentIndex].image),

        // Foreground with contents
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: OnboardingContent(
                currentIndex: currentIndex,
                percentage: percentage,
                controller: _controller!,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                    percentage = (index + 1) / onboardingItemList.length;
                  });
                },
                onSkip: () {
                  // Navigate to signup screen
                },
                onGetStarted: () {
                  // Navigate to signup screen
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
