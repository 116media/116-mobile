import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/session.remote.datasource.port.dart'
    show ISessionRemoteDataSource;
import '../../application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../application/repositories/session.token.remote.repository.port.dart'
    show ISessionTokenRemoteRepository;
import '../../domain/entities/refresh-token-response/refresh.token.response.dart'
    show RefreshTokenResponseEntity;
import '../mappers/session.mapper.dart' show SessionMapper;

/// Remote session token repository implementation.
///
/// Handles ONLY remote API calls and DTO-to-entity mapping for token refresh.
/// Does NOT handle caching - that's delegated to the cached repository decorator.
/// Part of the infrastructure layer in Clean Architecture.
///
/// Implements [ISessionTokenRemoteRepository] following Interface Segregation Principle.
class SessionTokenRemoteRepository implements ISessionTokenRemoteRepository {
  final ISessionRemoteDataSource _remoteDataSource;
  final ISessionTokenSecureDataSource _tokenSecureDataSource;

  const SessionTokenRemoteRepository(this._remoteDataSource, this._tokenSecureDataSource);

  @override
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken() async {
    try {
      // Retrieve refresh token from secure storage
      final refreshToken = await _tokenSecureDataSource.getRefreshToken();

      final response = await _remoteDataSource.refreshToken(refreshToken ?? "");
      final tokenEntity = SessionMapper.refreshTokenResponseFromPublicRefreshTokenDto(response);
      return Right(tokenEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
