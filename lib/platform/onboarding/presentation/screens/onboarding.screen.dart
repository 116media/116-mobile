import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../modules/auth/presentation/utils/dialog.utils.dart' show showAuthDialog;
import '../../../../modules/auth/presentation/widgets/dialog/signin.dialog.widget.dart'
    show SignInDialog;
import '../../../session/application/usecases/update.onboarding.status.usecase.dart'
    show UpdateOnboardingStatusUseCase;
import '../../domain/value-objects/onboarding.items.dart' show OnboardingItems;
import '../constants/onboarding.constants.dart' show kProgressIncrement;
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
  final OnboardingItems _onboardingItems = OnboardingItems.defaults();
  double percentage = kProgressIncrement;

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
      percentage = (currentIndex + 1) / _onboardingItems.count;
    });
  }

  /// Marks onboarding as completed in session state.
  ///
  /// This ensures the user won't see the onboarding screen again on future app launches.
  Future<void> _markOnboardingCompleted() async {
    final updateOnboardingStatusUseCase = sl<UpdateOnboardingStatusUseCase>();
    await updateOnboardingStatusUseCase.execute(true);
  }

  /// Handles the skip button action.
  ///
  /// Shows the sign-in dialog without marking onboarding as completed.
  /// Onboarding will be marked complete after dialog dismisses.
  Future<void> _handleSkip() async {
    if (mounted) {
      await showAuthDialog(context, const SignInDialog());
      // Mark onboarding complete after dialog dismisses
      await _markOnboardingCompleted();
    }
  }

  /// Handles the get started button action.
  ///
  /// Shows the sign-in dialog without marking onboarding as completed.
  /// Onboarding will be marked complete after dialog dismisses.
  Future<void> _handleGetStarted() async {
    if (mounted) {
      await showAuthDialog(context, const SignInDialog());
      // Mark onboarding complete after dialog dismisses
      await _markOnboardingCompleted();
    }
  }

  /// Handles the continue as guest button action.
  ///
  /// Marks onboarding as completed and navigates to the home screen.
  /// The router will automatically redirect based on session state.
  Future<void> _handleContinueAsGuest() async {
    await _markOnboardingCompleted();
    if (mounted) {
      context.go(kHomeRoutePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(_onboardingItems.all[currentIndex].image), context);

    return Stack(
      children: [
        // Background with current onboarding image
        OnboardingBackground(backgroundImage: _onboardingItems.all[currentIndex].image),

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
                onboardingItems: _onboardingItems,
                currentIndex: currentIndex,
                percentage: percentage,
                controller: _controller!,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                    percentage = (index + 1) / _onboardingItems.count;
                  });
                },
                onSkip: _handleSkip,
                onGetStarted: _handleGetStarted,
                onContinueAsGuest: _handleContinueAsGuest,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
