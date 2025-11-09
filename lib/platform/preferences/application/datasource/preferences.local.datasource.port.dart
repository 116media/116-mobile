import '../../infrastructure/models/hive/user.preferences.model.dart' show UserPreferencesModel;

/// Local data source port for user preferences operations.
///
/// Defines the contract for managing user preferences persistence
/// in local storage (Hive).
abstract class IPreferencesLocalDataSource {
  /// Retrieves the stored user preferences from local storage.
  ///
  /// Returns [UserPreferencesModel] if available, null otherwise.
  Future<UserPreferencesModel?> getPreferences();

  /// Persists user preferences to local storage.
  ///
  /// Stores the [preferences] model containing language and theme data.
  Future<void> savePreferences(UserPreferencesModel preferences);

  /// Removes all preferences data from local storage.
  Future<void> clearPreferences();

  /// Returns a stream that emits preferences changes.
  ///
  /// Emits [UserPreferencesModel] whenever preferences are updated in storage.
  Stream<UserPreferencesModel> watchPreferences();
}
