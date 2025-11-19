import '../../../session/application/usecases/update.onboarding.status.usecase.dart'
    show UpdateOnboardingStatusUseCase;
import '../../../../shared/infrastructure/service.locator.dart' show sl;

/// Utility class for managing onboarding state in the authentication flow.
class OnboardingUtil {
  OnboardingUtil._();

  /// Marks onboarding as completed.
  ///
  /// Call this after successful sign-in, sign-up with verification,
  /// or when user chooses to continue as guest.
  ///
  /// Example:
  /// ```dart
  /// if (state is SignInSuccess) {
  ///   await OnboardingUtil.markCompleted();
  ///   context.go(kHomeRoutePath);
  /// }
  /// ```
  static Future<void> markCompleted() async {
    final updateOnboardingStatusUseCase = sl<UpdateOnboardingStatusUseCase>();
    await updateOnboardingStatusUseCase.execute(true);
  }
}
