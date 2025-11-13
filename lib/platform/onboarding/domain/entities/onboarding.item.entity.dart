/// Represents the content for a single onboarding screen.
///
/// Each onboarding screen displays an image, title, and description
/// to introduce users to the app's key features and value propositions.
class OnboardingItemEntity {
  final String image;
  final String title;
  final String description;

  /// Creates an instance of [OnboardingItemEntity].
  ///
  /// All params are required to ensure each onboarding screen has complete content.
  const OnboardingItemEntity({required this.image, required this.title, required this.description});
}
