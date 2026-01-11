import 'package:flutter_secure_storage/flutter_secure_storage.dart' show FlutterSecureStorage;

import '../../application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../constants/secure.storage.constants.dart'
    show
        kAccessTokenKey,
        kRefreshTokenKey,
        kAccessTokenExpiresAtKey,
        kRefreshTokenExpiresAtKey,
        kTokenTypeKey;

/// Implementation of [ISessionSecureDataSource] using flutter_secure_storage.
///
/// Stores authentication session tokens in platform-specific secure storage:
/// **Storage Keys:**
/// - `access_token` - JWT access token
/// - `refresh_token` - JWT refresh token
/// - `access_token_expires_at` - Access token expiration timestamp (ISO 8601)
/// - `refresh_token_expires_at` - Refresh token expiration timestamp (ISO 8601)
/// - `token_type` - Token type (e.g., "Bearer")
class SessionTokenSecureDataSource implements ISessionTokenSecureDataSource {
  final FlutterSecureStorage _secureStorage;

  const SessionTokenSecureDataSource(this._secureStorage);

  @override
  Future<void> setAccessToken(String accessToken) async {
    await _secureStorage.write(key: kAccessTokenKey, value: accessToken);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: kAccessTokenKey);
  }

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    await _secureStorage.write(key: kRefreshTokenKey, value: refreshToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: kRefreshTokenKey);
  }

  @override
  Future<void> setAccessTokenExpiresAt(String expiresAt) async {
    await _secureStorage.write(key: kAccessTokenExpiresAtKey, value: expiresAt);
  }

  @override
  Future<String?> getAccessTokenExpiresAt() async {
    return await _secureStorage.read(key: kAccessTokenExpiresAtKey);
  }

  @override
  Future<void> setRefreshTokenExpiresAt(String expiresAt) async {
    await _secureStorage.write(key: kRefreshTokenExpiresAtKey, value: expiresAt);
  }

  @override
  Future<String?> getRefreshTokenExpiresAt() async {
    return await _secureStorage.read(key: kRefreshTokenExpiresAtKey);
  }

  @override
  Future<void> setTokenType(String tokenType) async {
    await _secureStorage.write(key: kTokenTypeKey, value: tokenType);
  }

  @override
  Future<String?> getTokenType() async {
    return await _secureStorage.read(key: kTokenTypeKey);
  }

  @override
  Future<void> clearSession() async {
    await _secureStorage.delete(key: kAccessTokenKey);
    await _secureStorage.delete(key: kRefreshTokenKey);
    await _secureStorage.delete(key: kAccessTokenExpiresAtKey);
    await _secureStorage.delete(key: kRefreshTokenExpiresAtKey);
    await _secureStorage.delete(key: kTokenTypeKey);
  }
}
