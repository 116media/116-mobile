import 'package:ip_country_lookup/models/ip_country_data_model.dart' show IpCountryData;

/// Remote data source for fetching country information from IP address.
///
/// Defines the contract for fetching country data from external services.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [ServerException] if the IP lookup API fails
abstract class ICountryRemoteDataSource {
  /// Fetches country data based on the user's public IP address.
  ///
  /// **Returns:** [IpCountryData] containing country information.
  ///
  /// **Throws:**
  /// - [ServerException] if the IP lookup fails
  Future<IpCountryData> getCountryFromIp();
}
