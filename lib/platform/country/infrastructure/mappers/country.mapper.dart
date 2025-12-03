import 'package:ip_country_lookup/models/ip_country_data_model.dart' show IpCountryData;
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

import '../models/hive/country/country.model.dart' show CountryModel;

/// Mapper for converting IP country lookup data to CountryModel.
///
/// Provides pure transformation functions to map IpCountryData from the
/// ip_country_lookup package to CountryModel. Enriches data with dial code
/// from world_countries package.
class CountryMapper {
  const CountryMapper._();

  /// Converts [IpCountryData] from ip_country_lookup package to [CountryModel].
  ///
  /// Enriches the data with dial code from world_countries package using ISO code.
  /// Falls back to '+1' if country dial code cannot be determined.
  static CountryModel countryFromIpData(IpCountryData data) {
    String dialCode = '+1';

    try {
      final country = WorldCountry.maybeFromCodeShort(data.country_code);
      if (country != null && country.idd.phoneCode().isNotEmpty) {
        dialCode = country.idd.phoneCode();
      }
    } catch (e) {
      dialCode = '+1';
    }

    return CountryModel(
      dialCode: dialCode,
      name: data.country_name,
      isoCode: data.country_code,
      lastUpdated: DateTime.now().toIso8601String(),
    );
  }
}
