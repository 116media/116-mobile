import '../../../../api/client/api_116.models.swagger.dart'
    show
        FileDto,
        PermissionDto,
        PublicForgotPasswordResponse,
        PublicLoginResponse,
        PublicResendOtpResponse,
        PublicResetPasswordResponse,
        PublicSignUpResponse,
        PublicSocialLoginResponse,
        PublicVerifyOtpResponse,
        RoleDto,
        UserResponseDto,
        PublicSignOutResponse;
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
import '../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;
import '../../domain/entities/token-response/token.response.entity.dart' show TokenResponseEntity;
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

  /// Creates TokenResponseEntity from individual token fields.
  ///
  /// **Parameters:**
  /// - `accessToken` - JWT access token for API authorization
  /// - `refreshToken` - JWT refresh token for obtaining new access tokens
  /// - `accessTokenExpiresAt` - Access token expiration timestamp
  /// - `refreshTokenExpiresAt` - Refresh token expiration timestamp
  /// - `tokenType` - Token type (e.g., "Bearer")
  static TokenResponseEntity _createTokenResponse({
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiresAt,
    required DateTime refreshTokenExpiresAt,
    required String tokenType,
  }) {
    return TokenResponseEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      accessTokenExpiresAt: accessTokenExpiresAt,
      refreshTokenExpiresAt: refreshTokenExpiresAt,
      tokenType: tokenType,
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
      avatar: dto.avatar != null ? fileFromDto(dto.avatar!) : null,
      countryName: dto.countryName,
      countryIsoCode: dto.countryIsoCode,
      countryDialCode: dto.countryDialCode,
      partialPhoneNumber: dto.partialPhoneNumber,
      fullPhoneNumber: dto.fullPhoneNumber,
      createdAt: dto.createdAt?.toIso8601String(),
      updatedAt: dto.updatedAt?.toIso8601String(),
    );
  }

  /// Maps PublicLoginResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromPublicLoginDto(PublicLoginResponse response) {
    return AuthResponseEntity(
      tokenResponse: _createTokenResponse(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        accessTokenExpiresAt: response.accessTokenExpiresAt,
        refreshTokenExpiresAt: response.refreshTokenExpiresAt,
        tokenType: response.tokenType,
      ),
      user: userFromDto(response.user),
    );
  }

  /// Maps PublicSignUpResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromPublicSignUpDto(PublicSignUpResponse response) {
    return AuthResponseEntity(
      tokenResponse: _createTokenResponse(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        accessTokenExpiresAt: response.accessTokenExpiresAt,
        refreshTokenExpiresAt: response.refreshTokenExpiresAt,
        tokenType: response.tokenType,
      ),
      user: userFromDto(response.user),
    );
  }

  /// Maps PublicSocialLoginResponse to AuthResponseEntity domain entity.
  static AuthResponseEntity authResponseFromPublicSocialLoginDto(
    PublicSocialLoginResponse response,
  ) {
    return AuthResponseEntity(
      tokenResponse: _createTokenResponse(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        accessTokenExpiresAt: response.accessTokenExpiresAt,
        refreshTokenExpiresAt: response.refreshTokenExpiresAt,
        tokenType: response.tokenType,
      ),
      user: userFromDto(response.user),
    );
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
    PublicForgotPasswordResponse response,
  ) {
    return ForgotPasswordResponseEntity(isSuccess: response.isSuccess, email: response.email);
  }

  /// Maps PublicResetPasswordResponse to ResetPasswordResponseEntity domain entity.
  static ResetPasswordResponseEntity resetPasswordResponseFromDto(
    PublicResetPasswordResponse response,
  ) {
    return ResetPasswordResponseEntity(isSuccess: response.isSuccess);
  }

  /// Maps PublicSignOutResponse to SignOutResponseEntity domain entity.
  static SignOutResponseEntity signoutResponseFromDto(PublicSignOutResponse response) {
    return SignOutResponseEntity(isSuccess: response.isSuccess);
  }
}
