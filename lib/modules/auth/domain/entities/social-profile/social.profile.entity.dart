import 'package:freezed_annotation/freezed_annotation.dart';

part 'social.profile.entity.freezed.dart';

/// Social profile entity representing user data from OAuth providers.
///
/// Domain entity containing profile information retrieved from social
/// authentication providers (Google, Facebook). Used to send profile
/// data to backend for user creation/authentication.
@freezed
abstract class SocialProfileEntity with _$SocialProfileEntity {
  const factory SocialProfileEntity({
    required String email,
    String? displayName,
    String? photoUrl,
    String? idToken,
  }) = _SocialProfileEntity;
}
