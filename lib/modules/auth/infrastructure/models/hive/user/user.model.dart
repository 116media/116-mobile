import '../../../../domain/entities/user.entity.dart' show UserEntity;
import '../file/file.model.dart' show FileModel;
import '../permission/permission.model.dart' show PermissionModel;
import '../role/role.model.dart' show RoleModel;

/// Hive model for persisting [UserEntity] to local storage.
///
/// Uses JSON serialization for Hive storage without code generation.
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

  /// Deserializes from JSON (used by Hive internally).
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      email: json['email'] as String?,
      userName: json['userName'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => RoleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      authProvider: json['authProvider'] as String,
      isVerified: json['isVerified'] as bool,
      isActive: json['isActive'] as bool,
      isLoggedIn: json['isLoggedIn'] as bool,
      lastLoginAt: json['lastLoginAt'] as String?,
      avatar: json['avatar'] != null
          ? FileModel.fromJson(json['avatar'] as Map<String, dynamic>)
          : null,
      countryName: json['countryName'] as String?,
      countryFlagUrl: json['countryFlagUrl'] as String?,
      countryIsoCode: json['countryIsoCode'] as String?,
      countryDialCode: json['countryDialCode'] as String?,
      partialPhoneNumber: json['partialPhoneNumber'] as String?,
      fullPhoneNumber: json['fullPhoneNumber'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );
  }

  /// Serializes to JSON (used by Hive internally).
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'userName': userName,
      'roles': roles.map((r) => r.toJson()).toList(),
      'permissions': permissions.map((p) => p.toJson()).toList(),
      'authProvider': authProvider,
      'isVerified': isVerified,
      'isActive': isActive,
      'isLoggedIn': isLoggedIn,
      'lastLoginAt': lastLoginAt,
      'avatar': avatar?.toJson(),
      'countryName': countryName,
      'countryFlagUrl': countryFlagUrl,
      'countryIsoCode': countryIsoCode,
      'countryDialCode': countryDialCode,
      'partialPhoneNumber': partialPhoneNumber,
      'fullPhoneNumber': fullPhoneNumber,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

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
