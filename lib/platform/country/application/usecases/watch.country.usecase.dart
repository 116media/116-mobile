import '../../../../shared/application/usecases/stream.usecase.port.dart' show IStreamUseCase;
import '../../domain/entities/country/country.entity.dart' show CountryEntity;
import '../repositories/country.repository.port.dart' show ICountryRepository;

/// Use case for watching country data changes.
///
/// Provides a stream of country data updates. This is used
/// to reactively update UI based on country changes.
class WatchCountryUseCase implements IStreamUseCase<CountryEntity?> {
  final ICountryRepository _repository;

  const WatchCountryUseCase(this._repository);

  /// Returns a stream of country data changes.
  @override
  Stream<CountryEntity?> execute() {
    return _repository.onCountryChange;
  }
}
