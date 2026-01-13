/// Port (interface) for secure device ID storage.
///
/// Defines contract for storing and retrieving unique device identifier
/// using platform-specific secure storage (iOS Keychain, Android Keystore).
/// The device ID is generated once on first app launch and persists across
/// app sessions and updates.
///
/// **Security:**
/// - Stores device ID in encrypted storage isolated from app data
/// - Uses iOS Keychain / Android Keystore with AES encryption
/// - Persists across app reinstalls (platform-dependent)
///
/// **Usage:**
/// - Device ID is sent in `X-Device-Id` header with all API requests
/// - Backend uses it to track user sessions across devices
/// - Generated using UUID v4 on first initialization
abstract class IDeviceSecureDataSource {
  /// Stores the device ID securely.
  ///
  /// **Parameters:**
  /// - `deviceId` - UUID v4 string identifying this device
  ///
  /// **Throws:**
  /// - [Exception] if storage fails (platform error, insufficient permissions)
  Future<void> setDeviceId(String deviceId);

  /// Retrieves the stored device ID.
  ///
  /// **Returns:** The device ID string, or `null` if not set
  ///
  /// **Throws:**
  /// - [Exception] if retrieval fails (platform error)
  Future<String?> getDeviceId();

  /// Clears the stored device ID.
  ///
  /// Removes device ID from secure storage. Used for testing or
  /// when user wants to reset device identification.
  ///
  /// **Throws:**
  /// - [Exception] if deletion fails (platform error)
  Future<void> clearDeviceId();
}
