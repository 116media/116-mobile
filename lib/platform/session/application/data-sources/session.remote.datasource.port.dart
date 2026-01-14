import '../../../../api/client/api_116.models.swagger.dart' show PublicRefreshTokenResponse;

/// Remote data source for session token operations.
///
/// Defines the contract for making session-related API calls
/// to the remote backend server, specifically for token lifecycle management.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [ServerException] if the server returns an error response
/// - [UnknownException] if network is unreachable or other unexpected errors occur
abstract class ISessionRemoteDataSource {
  /// Refreshes the access token using a valid refresh token.
  ///
  /// Calls the PublicRefreshToken API endpoint with the current refresh token.
  /// The backend implements token rotation - the old refresh token becomes invalid
  /// after successful refresh and a new refresh token is issued.
  ///
  /// **Parameters:**
  /// - `refreshToken` - Current valid refresh token
  ///
  /// **Returns:** [PublicRefreshTokenResponse] new access-token, new refresh-token, and user-data.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicRefreshTokenResponse> refreshToken(String refreshToken);
}
