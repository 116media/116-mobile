import 'package:equatable/equatable.dart' show Equatable;

import '../../../../i18n/strings.g.dart' show t;
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
    return OnboardingItems._([
      OnboardingItemEntity(
        image: "assets/onboarding/podcast.webp",
        title: t.onboarding.pages[0].title(app: kAppName),
        description: t.onboarding.pages[0].description,
      ),

      OnboardingItemEntity(
        image: "assets/onboarding/articles.webp",
        title: t.onboarding.pages[1].title,
        description: t.onboarding.pages[1].description,
      ),

      OnboardingItemEntity(
        image: "assets/onboarding/videos.webp",
        title: t.onboarding.pages[2].title,
        description: t.onboarding.pages[2].description,
      ),

      OnboardingItemEntity(
        image: "assets/onboarding/community.webp",
        title: t.onboarding.pages[3].title,
        description: t.onboarding.pages[3].description,
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
