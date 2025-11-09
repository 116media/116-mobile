import 'package:go_router/go_router.dart';

import '../constants/onboarding.constants.dart' show kOnboardingRoutePath, kOnboardingRouteName;
import '../screens/onboarding.screen.dart' show OnboardingScreen;

/// Onboarding route configuration.
final onboardingRoutes = [
  GoRoute(
    path: kOnboardingRoutePath,
    name: kOnboardingRouteName,
    builder: (context, state) => const OnboardingScreen(),
  ),
];