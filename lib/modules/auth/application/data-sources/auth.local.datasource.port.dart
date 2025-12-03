import '../../infrastructure/models/hive/user/user.model.dart' show UserModel;

/// Local data source for authentication operations.
///
/// Defines the contract for managing authentication-related data
/// in local storage (cache/database).
///
/// **Exception Handling:**
/// All methods may throw:
/// - [CacheException] if local storage operations fail (read, write, delete)
abstract class IAuthLocalDataSource {
  /// Persists user information to local storage.
  ///
  /// Stores the [user] model containing user profile data in Hive.
  ///
  /// **Throws:**
  /// - [CacheException] if writing to local storage fails
  Future<void> setUser(UserModel user);

  /// Retrieves the stored user information from local storage.
  ///
  /// **Returns:** [UserModel] if available, null otherwise.
  ///
  /// **Throws:**
  /// - [CacheException] if reading from local storage fails
  Future<UserModel?> getUser();

  /// Watches the stored user information reactively.
  /// The stream also emits the current value immediately upon subscription.
  ///
  /// **Returns:** A broadcast [Stream] of [UserModel?] that updates whenever data changes.
  ///
  /// **Throws:**
  /// - [CacheException] if watching local storage fails
  Stream<UserModel?> watchUser();

  /// Persists the authentication token to local storage.
  ///
  /// Stores the JWT token for subsequent authenticated API requests.
  ///
  /// **Throws:**
  /// - [CacheException] if writing to local storage fails
  Future<void> setToken(String token);

  /// Retrieves the stored authentication token from local storage.
  ///
  /// **Returns:** The token string if available, null otherwise.
  ///
  /// **Throws:**
  /// - [CacheException] if reading from local storage fails
  Future<String?> getToken();

  /// Removes the authentication token from local storage.
  ///
  /// Used during logout or token invalidation to clear the user's session.
  ///
  /// **Throws:**
  /// - [CacheException] if deleting from local storage fails
  Future<void> clearToken();
}
