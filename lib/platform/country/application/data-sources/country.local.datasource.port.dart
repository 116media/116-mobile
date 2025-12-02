import '../../infrastructure/models/hive/country/country.model.dart' show CountryModel;

/// Local data source for country information operations.
///
/// Defines the contract for managing country-related data
/// in local storage (cache/database).
///
/// **Exception Handling:**
/// All methods may throw:
/// - [CacheException] if local storage operations fail (read, write, delete)
abstract class ICountryLocalDataSource {
  /// Retrieves the stored country information from local storage.
  ///
  /// **Returns:** [CountryModel] if available, null otherwise.
  ///
  /// **Throws:**
  /// - [CacheException] if reading from local storage fails
  Future<CountryModel?> getCountry();

  /// Persists country information to local storage.
  ///
  /// Stores the [country] model containing country data detected from IP.
  ///
  /// **Throws:**
  /// - [CacheException] if writing to local storage fails
  Future<void> setCountry(CountryModel country);

  /// Removes the country information from local storage.
  ///
  /// **Throws:**
  /// - [CacheException] if deleting from local storage fails
  Future<void> clearCountry();

  /// Watches the stored country information reactively.
  ///
  /// **Returns:** A [Stream] of [CountryModel?] that updates whenever data changes.
  ///
  /// **Throws:**
  /// - [CacheException] if watching local storage fails
  Stream<CountryModel?> watchCountry();
}
