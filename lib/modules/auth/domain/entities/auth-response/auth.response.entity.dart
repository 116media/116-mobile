import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.entity.dart';

part 'auth.response.entity.freezed.dart';

/// Authentication response entity returned after successful signin.
///
/// Domain entity representing the complete authentication state.
/// Contains both the JWT token for API authentication and the
/// authenticated user's data.
@freezed
abstract class AuthResponseEntity with _$AuthResponseEntity {
  const factory AuthResponseEntity({required String token, required UserEntity user}) =
      _AuthResponseEntity;
}
