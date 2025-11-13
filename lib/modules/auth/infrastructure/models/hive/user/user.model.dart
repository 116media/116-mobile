import '../../../../domain/entities/user.entity.dart' show UserEntity;
import '../file/file.model.dart' show FileModel;
import '../permission/permission.model.dart' show PermissionModel;
import '../role/role.model.dart' show RoleModel;

/// Hive model for persisting [UserEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class UserModel {
  final String id;
  final String? email;
  final String userName;
  final List<RoleModel> roles;
  final List<PermissionModel> permissions;
  final String authProvider;
  final bool isVerified;
  final bool isActive;
  final bool isLoggedIn;
  final String? lastLoginAt;
  final FileModel? avatar;
  final String? countryName;
  final String? countryFlagUrl;
  final String? countryIsoCode;
  final String? countryDialCode;
  final String? partialPhoneNumber;
  final String? fullPhoneNumber;
  final String? createdAt;
  final String? updatedAt;

  const UserModel({
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

  /// Converts this model to a domain entity.
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      userName: userName,
      roles: roles.map((r) => r.toEntity()).toList(),
      permissions: permissions.map((p) => p.toEntity()).toList(),
      authProvider: authProvider,
      isVerified: isVerified,
      isActive: isActive,
      isLoggedIn: isLoggedIn,
      lastLoginAt: lastLoginAt,
      avatar: avatar?.toEntity(),
      countryName: countryName,
      countryFlagUrl: countryFlagUrl,
      countryIsoCode: countryIsoCode,
      countryDialCode: countryDialCode,
      partialPhoneNumber: partialPhoneNumber,
      fullPhoneNumber: fullPhoneNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Creates a model from a domain entity.
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      userName: entity.userName,
      roles: entity.roles.map((r) => RoleModel.fromEntity(r)).toList(),
      permissions: entity.permissions.map((p) => PermissionModel.fromEntity(p)).toList(),
      authProvider: entity.authProvider,
      isVerified: entity.isVerified,
      isActive: entity.isActive,
      isLoggedIn: entity.isLoggedIn,
      lastLoginAt: entity.lastLoginAt,
      avatar: entity.avatar != null ? FileModel.fromEntity(entity.avatar!) : null,
      countryName: entity.countryName,
      countryFlagUrl: entity.countryFlagUrl,
      countryIsoCode: entity.countryIsoCode,
      countryDialCode: entity.countryDialCode,
      partialPhoneNumber: entity.partialPhoneNumber,
      fullPhoneNumber: entity.fullPhoneNumber,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}
