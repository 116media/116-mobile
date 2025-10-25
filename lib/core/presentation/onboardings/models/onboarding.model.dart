import '../../../../shared/constants/shared.constants.dart' show kAppName;

/// Represents the content for a single onboarding screen.
///
/// Each onboarding screen displays an image, title, and description
/// to introduce users to the app's key features and value propositions.
class OnboardingItem {
  String image;
  String title;
  String description;

  /// Creates an instance of [OnboardingItem].
  ///
  /// All params are required to ensure each onboarding screen has complete content.
  OnboardingItem({required this.image, required this.title, required this.description});
}

/// Predefined list of onboarding screens shown to new users.
///
/// Contains four screens that introduce the app's main features:
/// 1. Welcome and app introduction
/// 2. News and magazine content
/// 3. Exclusive shows and media
/// 4. Community engagement features
List<OnboardingItem> onboardingItemList = [
  OnboardingItem(
    image: "assets/onboarding/podcast.webp",
    title: "Welcome to $kAppName",
    description: '''
Discover stories, cultures, and artists shaping the sound of a new generation, 
from the streets to the global stage.
''',
  ),
  OnboardingItem(
    image: "assets/onboarding/articles.webp",
    title: "News Beyond Music",
    description: '''
Stay informed with news, magazines, and deep dives into the people, trends 
that celebrate creativity.
''',
  ),
  OnboardingItem(
    image: "assets/onboarding/videos.webp",
    title: "Exclusive Shows & Media",
    description: '''
Experience the urban culture through interviews, documentaries, 
podcasts, raw studio sessions, etc.
''',
  ),
  OnboardingItem(
    image: "assets/onboarding/community.webp",
    title: "Be Part of the Culture",
    description: '''
Like, comment, and share your favorite artists. Discover new talents 
and stay connected with the music pulse.
''',
  ),
];
