import 'package:equatable/equatable.dart' show Equatable;

import '../../../../shared/presentation/constants/shared.constants.dart' show kAppName;
import '../entities/onboarding-item/onboarding.item.entity.dart' show OnboardingItemEntity;

/// Value Object representing the collection of onboarding items.
///
/// Immutable value object that encapsulates all onboarding screens
/// and configuration, following DDD principles.
class OnboardingItems extends Equatable {
  final List<OnboardingItemEntity> _items;

  const OnboardingItems._(this._items);

  /// Factory constructor providing the default onboarding items.
  factory OnboardingItems.defaults() {
    return const OnboardingItems._([
      OnboardingItemEntity(
        image: "assets/onboarding/podcast.webp",
        title: "Welcome to $kAppName",
        description: '''
Discover stories, cultures, and artists shaping the sound of a new generation,
from the streets to the global stage.
''',
      ),
      OnboardingItemEntity(
        image: "assets/onboarding/articles.webp",
        title: "News Beyond Music",
        description: '''
Stay informed with news, magazines, and deep dives into the people, trends
that celebrate creativity.
''',
      ),
      OnboardingItemEntity(
        image: "assets/onboarding/videos.webp",
        title: "Exclusive Shows & Media",
        description: '''
Experience the urban culture through interviews, documentaries,
podcasts, raw studio sessions, etc.
''',
      ),
      OnboardingItemEntity(
        image: "assets/onboarding/community.webp",
        title: "Be Part of the Culture",
        description: '''
Like, comment, and share your favorite artists. Discover new talents
and stay connected with the music pulse.
''',
      ),
    ]);
  }

  /// Get all onboarding items.
  List<OnboardingItemEntity> get all => List.unmodifiable(_items);

  /// Get the count of onboarding items.
  int get count => _items.length;

  @override
  List<Object?> get props => [_items];
}
