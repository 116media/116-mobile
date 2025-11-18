import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding.item.entity.freezed.dart';

/// Represents the content for a single onboarding screen.
///
/// Each onboarding screen displays an image, title, and description
/// to introduce users to the app's key features and value propositions.
@freezed
abstract class OnboardingItemEntity with _$OnboardingItemEntity {
  const factory OnboardingItemEntity({
    required String image,
    required String title,
    required String description,
  }) = _OnboardingItemEntity;
}
