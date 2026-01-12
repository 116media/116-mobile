import 'package:freezed_annotation/freezed_annotation.dart';

import '../file/file.entity.dart';
import '../permission/permission.entity.dart';
import '../role/role.entity.dart';

part 'user.entity.freezed.dart';

/// User entity representing authenticated users in the system.
///
/// Core domain entity for users containing authentication state,
/// profile information, authorization data, and contact details including
/// roles, permissions, auth provider, verification status, avatar, and
/// country/phone information.
@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    String? email,
    required String userName,
    required List<RoleEntity> roles,
    required List<PermissionEntity> permissions,
    required String authProvider,
    required bool isVerified,
    required bool isActive,
    FileEntity? avatar,
    String? countryName,
    String? countryIsoCode,
    String? countryDialCode,
    String? partialPhoneNumber,
    String? fullPhoneNumber,
    String? createdAt,
    String? updatedAt,
  }) = _UserEntity;
}
