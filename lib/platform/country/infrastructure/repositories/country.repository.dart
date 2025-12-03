import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/country.local.datasource.port.dart'
    show ICountryLocalDataSource;
import '../../application/repositories/country.repository.port.dart' show ICountryRepository;
import '../../domain/entities/country/country.entity.dart' show CountryEntity;
import '../data-sources/country.remote.datasource.dart' show CountryRemoteDataSource;
import '../mappers/country.mapper.dart' show CountryMapper;

/// Implementation of country repository.
///
/// Handles fetching country data from IP, caching to local storage,
/// and entity/model conversion. Converts exceptions to failures.
class CountryRepository implements ICountryRepository {
  final CountryRemoteDataSource _remoteDataSource;
  final ICountryLocalDataSource _localDataSource;

  const CountryRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, CountryEntity>> getRemoteCountry() async {
    try {
      final ipData = await _remoteDataSource.getCountryFromIp();
      final countryModel = CountryMapper.countryFromIpData(ipData);

      await _localDataSource.setCountry(countryModel);

      return Right(countryModel.toEntity());
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, CountryEntity?>> getLocalCountry() async {
    try {
      final model = await _localDataSource.getCountry();
      return Right(model?.toEntity());
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Stream<CountryEntity?> get onCountryChange {
    return _localDataSource.watchCountry().map((model) => model?.toEntity());
  }
}
