import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.response.entity.freezed.dart';

/// Token response entity containing JWT tokens and expiration information.
///
/// Domain entity representing authentication token data received from the API.
/// Contains both access and refresh tokens with their expiration timestamps
/// and token type for proper authorization header formatting.
@freezed
abstract class TokenResponseEntity with _$TokenResponseEntity {
  const factory TokenResponseEntity({
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiresAt,
    required DateTime refreshTokenExpiresAt,
    required String tokenType,
  }) = _TokenResponseEntity;
}
