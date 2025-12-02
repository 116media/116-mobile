import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/country/country.entity.dart' show CountryEntity;
import '../repositories/country.repository.port.dart' show ICountryRepository;

/// Use case for initializing country data on app start.
///
/// Fetches country information from IP address and saves to local storage.
class InitializeCountryUseCase implements IUseCase<void, CountryEntity> {
  final ICountryRepository _repository;

  const InitializeCountryUseCase(this._repository);

  @override
  Future<Either<Failure, CountryEntity>> execute(void request) async {
    return await _repository.getRemoteCountry();
  }
}
