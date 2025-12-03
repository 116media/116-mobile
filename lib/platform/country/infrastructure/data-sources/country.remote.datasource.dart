import 'package:ip_country_lookup/ip_country_lookup.dart' show IpCountryLookup;
import 'package:ip_country_lookup/models/ip_country_data_model.dart' show IpCountryData;

import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/exceptions/remote/unknown.exception.dart'
    show UnknownException;
import '../../application/data-sources/country.remote.datasource.port.dart'
    show ICountryRemoteDataSource;

/// Remote data source for fetching country information from IP address.
///
/// Uses the ip_country_lookup package to detect the user's country
/// based on their public IP address.
class CountryRemoteDataSource implements ICountryRemoteDataSource {
  final IpCountryLookup _ipCountryLookup;

  CountryRemoteDataSource(this._ipCountryLookup);

  @override
  Future<IpCountryData> getCountryFromIp() async {
    try {
      final data = await _ipCountryLookup.getIpLocationData();
      return data;
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }
}
