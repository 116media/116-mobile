import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/token-response/token.response.entity.dart';
import '../../../../../shared/domain/entities/user/user.entity.dart';

part 'refresh.token.response.freezed.dart';

/// Refresh token response entity returned after successful request.
///
/// Domain entity representing the complete refresh token state.
/// Contains the new token response with JWT access/refresh tokens and the
/// new user's data.
@freezed
abstract class RefreshTokenResponseEntity with _$RefreshTokenResponseEntity {
  const factory RefreshTokenResponseEntity({
    required TokenResponseEntity tokenResponse,
    required UserEntity user,
  }) = _RefreshTokenResponseEntity;
}
