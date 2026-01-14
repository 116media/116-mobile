import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/token-response/token.response.entity.dart';
import '../../../../../shared/domain/entities/user/user.entity.dart';

part 'auth.response.entity.freezed.dart';

/// Authentication response entity returned after successful authentication.
///
/// Domain entity representing the complete authentication state.
/// Contains the token response with JWT access/refresh tokens and the
/// authenticated user's data.
@freezed
abstract class AuthResponseEntity with _$AuthResponseEntity {
  const factory AuthResponseEntity({
    required TokenResponseEntity tokenResponse,
    required UserEntity user,
  }) = _AuthResponseEntity;
}
