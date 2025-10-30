import 'package:flutter/material.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../modules/auth/presentation/utils/dialog.utils.dart' show showAuthDialog;
import '../../../../modules/auth/presentation/widgets/dialog/signin.dialog.widget.dart'
    show SignInDialog;
import '../constants/onboardings.constant.dart' show kIncrementPercentage;
import '../models/onboarding.model.dart' show onboardingItemList;
import '../widgets/onboarding.background.widget.dart' show OnboardingBackground;
import '../widgets/onboarding.content.widget.dart' show OnboardingContent;

/// Main onboarding screen that guides users through the app's key features.
///
/// Displays a series of swipeable pages with images, titles, and descriptions
/// that introduce users to the app.
///
/// The screen manages:
/// - Current page index and progress percentage
/// - PageController for swipe gestures and animations
/// - Image pre-caching for smooth transitions
/// - Navigation callbacks for skip and get started actions
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController? _controller;
  double percentage = kIncrementPercentage;

  /// Initializes the page controller
  /// and registers the page change listener.
  @override
  initState() {
    super.initState();
    _controller = PageController(initialPage: currentIndex);
    _controller!.addListener(_onPageChanged);
  }

  /// Cleans up the page controller
  /// and removes listeners to prevent memory leaks.
  @override
  void dispose() {
    _controller!.removeListener(_onPageChanged);
    _controller!.dispose();
    super.dispose();
  }

  /// Updates the current index and progress percentage when the page changes.
  ///
  /// Rounds the page controller's fractional position to determine the active page
  /// and calculates the completion percentage based on total pages.
  void _onPageChanged() {
    setState(() {
      currentIndex = _controller!.page!.round();
      percentage = (currentIndex + 1) / onboardingItemList.length;
    });
  }

  /// Shows the sign-in dialog with a slide-up animation.
  Future<void> _showSignInDialog() async {
    await showAuthDialog(context, const SignInDialog());
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
              padding: EdgeInsets.symmetric(
                horizontal: context.sizing.s24,
                vertical: context.sizing.s12,
              ),
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
                onSkip: _showSignInDialog,
                onGetStarted: _showSignInDialog,
                onContinueAsGuest: () {
                  // direct the user to the homepage
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
