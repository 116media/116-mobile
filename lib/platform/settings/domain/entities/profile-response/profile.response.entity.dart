import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../modules/auth/domain/entities/user/user.entity.dart';

part 'profile.response.entity.freezed.dart';

/// Entity representing the profile update response.
///
/// Contains the updated user information returned from the API
/// after a successful profile update operation.
@freezed
abstract class ProfileResponseEntity with _$ProfileResponseEntity {
  const factory ProfileResponseEntity({required UserEntity user}) = _ProfileResponseEntity;
}
