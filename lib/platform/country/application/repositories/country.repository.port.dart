import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/country/country.entity.dart' show CountryEntity;

/// Repository port (interface) for country data operations.
///
/// Defines the contract for fetching and managing country information.
/// Uses Either type for functional error handling.
abstract class ICountryRepository {
  /// Fetches country data from IP and saves it to local storage.
  ///
  /// Returns [Right] with [CountryEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, CountryEntity>> getRemoteCountry();

  /// Retrieves the stored country data from local storage.
  ///
  /// Returns [Right] with nullable [CountryEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, CountryEntity?>> getLocalCountry();

  /// Watches for changes to the stored country data.
  ///
  /// Returns a stream of nullable [CountryEntity].
  Stream<CountryEntity?> get onCountryChange;
}
