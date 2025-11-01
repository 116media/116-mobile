import 'file.entity.dart';
import 'permission.entity.dart';
import 'role.entity.dart';

/// User entity representing authenticated users in the system.
///
/// Core domain entity for users containing authentication state,
/// profile information, authorization data, and contact details including
/// roles, permissions, auth provider, verification status, avatar, and
/// country/phone information.
class UserEntity {
  final String id;
  final String? email;
  final String userName;
  final List<RoleEntity> roles;
  final List<PermissionEntity> permissions;
  final String authProvider;
  final bool isVerified;
  final bool isActive;
  final bool isLoggedIn;
  final String? lastLoginAt;
  final FileEntity? avatar;
  final String? countryName;
  final String? countryFlagUrl;
  final String? countryIsoCode;
  final String? countryDialCode;
  final String? partialPhoneNumber;
  final String? fullPhoneNumber;
  final String? createdAt;
  final String? updatedAt;

  const UserEntity({
    required this.id,
    this.email,
    required this.userName,
    required this.roles,
    required this.permissions,
    required this.authProvider,
    required this.isVerified,
    required this.isActive,
    required this.isLoggedIn,
    this.lastLoginAt,
    this.avatar,
    this.countryName,
    this.countryFlagUrl,
    this.countryIsoCode,
    this.countryDialCode,
    this.partialPhoneNumber,
    this.fullPhoneNumber,
    this.createdAt,
    this.updatedAt,
  });
}
