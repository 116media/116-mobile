import '../../../../api/client/api_116.models.swagger.dart' show PublicRefreshTokenResponse;
import '../../../../shared/domain/entities/token-response/token.response.entity.dart'
    show TokenResponseEntity;
import '../../../../modules/auth/infrastructure/mappers/auth.mapper.dart' show AuthMapper;
import '../../domain/entities/refresh-token-response/refresh.token.response.dart'
    show RefreshTokenResponseEntity;

/// Mapper for converting API DTOs to domain entities in the session module.
///
/// Provides pure transformation functions to map data transfer objects (DTOs)
/// from the API layer to clean domain entities for session management.
/// Handles token refresh responses and user data mapping.
class SessionMapper {
  const SessionMapper._();

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

  /// Maps PublicRefreshTokenResponse to RefreshTokenResponseEntity domain entity.
  static RefreshTokenResponseEntity refreshTokenResponseFromPublicRefreshTokenDto(
    PublicRefreshTokenResponse response,
  ) {
    return RefreshTokenResponseEntity(
      tokenResponse: _createTokenResponse(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        accessTokenExpiresAt: response.accessTokenExpiresAt,
        refreshTokenExpiresAt: response.refreshTokenExpiresAt,
        tokenType: response.tokenType,
      ),
      user: AuthMapper.userFromDto(response.user),
    );
  }
}
