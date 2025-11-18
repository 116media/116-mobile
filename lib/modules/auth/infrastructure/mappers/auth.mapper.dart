import '../../../../api/client/api_116.models.swagger.dart'
    show
        AdminLoginResponse,
        FileDto,
        PermissionDto,
        PublicForgotPasswordResponse,
        PublicLoginResponse,
        PublicResendOtpResponse,
        PublicResetPasswordResponse,
        PublicSignUpResponse,
        PublicVerifyOtpResponse,
        RoleDto,
        UserResponseDto;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../domain/entities/file/file.entity.dart' show FileEntity;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../domain/entities/permission/permission.entity.dart' show PermissionEntity;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;
import '../../domain/entities/role/role.entity.dart' show RoleEntity;
import '../../domain/entities/user/user.entity.dart' show UserEntity;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;

/// Mapper for converting API DTOs to domain entities in the auth module.
///
/// Provides pure transformation functions to map data transfer objects (DTOs)
/// from the API layer to clean domain entities. Handles null/undefined values
/// and nested object mappings. All methods are stateless pure functions.
class AuthMapper {
  const AuthMapper._();

  /// Maps RoleDto to RoleEntity domain entity.
  static RoleEntity roleFromDto(RoleDto dto) {
    return RoleEntity(id: dto.id, name: dto.name, description: dto.description);
  }

  /// Maps PermissionDto to PermissionEntity domain entity.
  static PermissionEntity permissionFromDto(PermissionDto dto) {
    return PermissionEntity(
      id: dto.id,
      resource: dto.resource,
      action: dto.action,
      description: dto.description,
    );
  }

  /// Maps FileDto to FileEntity domain entity.
  static FileEntity fileFromDto(FileDto dto) {
    return FileEntity(
      id: dto.id,
      fileName: dto.fileName,
      originalFileName: dto.originalFileName,
      mimeType: dto.mimeType,
      storageUrl: dto.storageUrl,
      sizeInBytes: dto.sizeInBytes,
      isDeleted: dto.isDeleted,
    );
  }

  /// Maps UserResponseDto to UserEntity domain entity.
  static UserEntity userFromDto(UserResponseDto dto) {
    return UserEntity(
      id: dto.id,
      email: dto.email,
      userName: dto.userName,
      roles: dto.roles.map(roleFromDto).toList(),
      permissions: dto.permissions.map(permissionFromDto).toList(),
      authProvider: dto.authProvider,
      isVerified: dto.isVerified,
      isActive: dto.isActive,
      isLoggedIn: dto.isLoggedIn,
      lastLoginAt: dto.lastLoginAt?.toIso8601String(),
      avatar: dto.avatar != null ? fileFromDto(dto.avatar!) : null,
      countryName: dto.countryName,
      countryFlagUrl: dto.countryFlagUrl,
      countryIsoCode: dto.countryIsoCode,
      countryDialCode: dto.countryDialCode,
      partialPhoneNumber: dto.partialPhoneNumber,
      fullPhoneNumber: dto.fullPhoneNumber,
      createdAt: dto.createdAt?.toIso8601String(),
      updatedAt: dto.updatedAt?.toIso8601String(),
    );
  }

  /// Maps AdminLoginResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromDto(AdminLoginResponse response) {
    return AuthResponseEntity(token: response.token, user: userFromDto(response.user));
  }

  /// Maps PublicLoginResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromPublicLoginDto(PublicLoginResponse response) {
    return AuthResponseEntity(token: response.token, user: userFromDto(response.user));
  }

  /// Maps PublicSignUpResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromPublicSignUpDto(PublicSignUpResponse response) {
    return AuthResponseEntity(token: response.token, user: userFromDto(response.user));
  }

  /// Maps PublicVerifyOtpResponse to VerifyOtpResponseEntity domain entity.
  static VerifyOtpResponseEntity verifyOtpResponseFromDto(PublicVerifyOtpResponse response) {
    return VerifyOtpResponseEntity(isSuccess: response.isSuccess);
  }

  /// Maps PublicResendOtpResponse to ResendOtpResponseEntity domain entity.
  static ResendOtpResponseEntity resendOtpResponseFromDto(PublicResendOtpResponse response) {
    return ResendOtpResponseEntity(isSuccess: response.isSuccess);
  }

  /// Maps PublicForgotPasswordResponse to ForgotPasswordResponseEntity domain entity.
  static ForgotPasswordResponseEntity forgotPasswordResponseFromDto(
      PublicForgotPasswordResponse response) {
    return ForgotPasswordResponseEntity(isSuccess: response.isSuccess, email: response.email);
  }

  /// Maps PublicResetPasswordResponse to ResetPasswordResponseEntity domain entity.
  static ResetPasswordResponseEntity resetPasswordResponseFromDto(
      PublicResetPasswordResponse response) {
    return ResetPasswordResponseEntity(isSuccess: response.isSuccess);
  }
}
