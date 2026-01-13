/// Port (interface) for secure session token storage.
///
/// Defines contract for storing and retrieving authentication session data
/// using platform-specific secure storage (iOS Keychain, Android Keystore).
/// Implementations should use hardware-backed encryption where available.
///
/// **Security:**
/// - Stores tokens in encrypted storage isolated from app data
/// - Uses iOS Keychain / Android Keystore with AES encryption
/// - Data persists across app reinstalls (depending on platform settings)
///
/// **Storage Keys:**
/// - `access_token` - JWT access token for API authorization
/// - `refresh_token` - JWT refresh token for obtaining new access tokens
/// - `access_token_expires_at` - ISO 8601 timestamp for access token expiration
/// - `refresh_token_expires_at` - ISO 8601 timestamp for refresh token expiration
/// - `token_type` - Token type (e.g., "Bearer")
abstract class ISessionTokenSecureDataSource {
  /// Stores the access token securely.
  ///
  /// **Parameters:**
  /// - `accessToken` - JWT access token string
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setAccessToken(String accessToken);

  /// Retrieves the stored access token.
  ///
  /// **Returns:** The access token string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getAccessToken();

  /// Stores the refresh token securely.
  ///
  /// **Parameters:**
  /// - `refreshToken` - JWT refresh token string
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setRefreshToken(String refreshToken);

  /// Retrieves the stored refresh token.
  ///
  /// **Returns:** The refresh token string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getRefreshToken();

  /// Stores the access token expiration timestamp securely.
  ///
  /// **Parameters:**
  /// - `expiresAt` - ISO 8601 timestamp string
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setAccessTokenExpiresAt(String expiresAt);

  /// Retrieves the stored access token expiration timestamp.
  ///
  /// **Returns:** ISO 8601 timestamp string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getAccessTokenExpiresAt();

  /// Stores the refresh token expiration timestamp securely.
  ///
  /// **Parameters:**
  /// - `expiresAt` - ISO 8601 timestamp string
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setRefreshTokenExpiresAt(String expiresAt);

  /// Retrieves the stored refresh token expiration timestamp.
  ///
  /// **Returns:** ISO 8601 timestamp string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getRefreshTokenExpiresAt();

  /// Stores the token type securely.
  ///
  /// **Parameters:**
  /// - `tokenType` - Token type string (e.g., "Bearer")
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setTokenType(String tokenType);

  /// Retrieves the stored token type.
  ///
  /// **Returns:** Token type string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getTokenType();

  /// Clears all stored session tokens.
  ///
  /// Removes access token, refresh token, expiration timestamps, and token type
  /// from secure storage. Used during sign out or session invalidation.
  ///
  /// **Throws:**
  /// - [Exception] if deletion fails (platform error)
  Future<void> clearSession();
}
