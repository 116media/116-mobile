import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../../i18n/strings.g.dart' show t;
import '../../../../shared/infrastructure/exceptions/local/readfailed.cache.exception.dart'
    show ReadFailedCacheException;
import '../../../../shared/infrastructure/exceptions/local/writefailed.cache.exception.dart'
    show WriteFailedCacheException;
import '../../application/data-sources/country.local.datasource.port.dart'
    show ICountryLocalDataSource;
import '../constants/hive.constants.dart' show kCountryKey;
import '../models/hive/country/country.model.dart' show CountryModel;

/// Local data source implementation for country operations using Hive.
///
/// Concrete implementation that manages country information in Hive local storage.
/// Handles persistence of country data detected from user's IP address.
/// Throws cache exceptions that will be converted to failures by the repository.
class CountryLocalDataSource implements ICountryLocalDataSource {
  final Box<dynamic> _countryBox;

  CountryLocalDataSource(this._countryBox);

  @override
  Future<CountryModel?> getCountry() async {
    try {
      return _countryBox.get(kCountryKey) as CountryModel?;
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'CountryLocalDataSource.getCountry',
        detail: t.country.cacheError.getCountry(error: e.toString()),
      );
    }
  }

  @override
  Future<void> setCountry(CountryModel country) async {
    try {
      await _countryBox.put(kCountryKey, country);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'CountryLocalDataSource.setCountry',
        detail: t.country.cacheError.setCountry(error: e.toString()),
      );
    }
  }

  @override
  Future<void> clearCountry() async {
    try {
      await _countryBox.delete(kCountryKey);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'CountryLocalDataSource.clearCountry',
        detail: t.country.cacheError.clearCountry(error: e.toString()),
      );
    }
  }

  @override
  Stream<CountryModel?> watchCountry() async* {
    try {
      yield _countryBox.get(kCountryKey) as CountryModel?;

      await for (final event in _countryBox.watch(key: kCountryKey)) {
        yield event.value as CountryModel?;
      }
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'CountryLocalDataSource.watchCountry',
        detail: t.country.cacheError.watchCountry(error: e.toString()),
      );
    }
  }
}
