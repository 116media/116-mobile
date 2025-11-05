import '../../../infrastructure/models/hive/user/user.model.dart' show UserModel;

/// Local data source for authentication operations.
///
/// Defines the contract for managing authentication-related data
/// in local storage (cache/database).
abstract class IAuthLocalDataSource {
  /// Persists user information to local storage.
  ///
  /// Stores the [user] model containing user profile data.
  Future<void> setUser(UserModel user);

  /// Retrieves the stored user information from local storage.
  ///
  /// Returns [UserModel] if available, null otherwise.
  Future<UserModel?> getUser();

  /// Persists the authentication token to local storage.
  Future<void> setToken(String token);

  /// Retrieves the stored authentication token from local storage.
  ///
  /// Returns the token string if available, null otherwise.
  Future<String?> getToken();

  /// Removes the authentication token from local storage.
  ///
  /// Used during logout or token invalidation.
  Future<void> clearToken();
}
