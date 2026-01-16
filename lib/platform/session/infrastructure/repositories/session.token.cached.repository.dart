import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../shared/domain/entities/token-response/token.response.entity.dart'
    show TokenResponseEntity;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../application/repositories/session.token.local.repository.port.dart'
    show ISessionTokenLocalRepository;
import '../../application/repositories/session.token.remote.repository.port.dart'
    show ISessionTokenRemoteRepository;
import '../../domain/entities/refresh-token-response/refresh.token.response.dart'
    show RefreshTokenResponseEntity;

/// Cached session token repository (decorator pattern).
///
/// Wraps the remote repository and adds local caching functionality.
/// Delegates remote token refresh to the remote repository, then persists
/// successful results to secure storage.
class SessionTokenCachedRepository
    implements ISessionTokenRemoteRepository, ISessionTokenLocalRepository {
  final ISessionTokenRemoteRepository _remoteRepository;
  final IAuthLocalDataSource _localDataSource;
  final ISessionTokenSecureDataSource _tokenSecureDataSource;

  const SessionTokenCachedRepository(
    this._remoteRepository,
    this._localDataSource,
    this._tokenSecureDataSource,
  );

  /// Helper method to store token response securely.
  ///
  /// Stores all token fields (accessToken, refreshToken, expiration times, tokenType)
  /// in secure storage using SessionSecureDataSource.
  Future<void> _storeTokenResponse(TokenResponseEntity tokenResponse) async {
    await _tokenSecureDataSource.setAccessToken(tokenResponse.accessToken);
    await _tokenSecureDataSource.setRefreshToken(tokenResponse.refreshToken);
    await _tokenSecureDataSource.setAccessTokenExpiresAt(
      tokenResponse.accessTokenExpiresAt.toIso8601String(),
    );
    await _tokenSecureDataSource.setRefreshTokenExpiresAt(
      tokenResponse.refreshTokenExpiresAt.toIso8601String(),
    );
    await _tokenSecureDataSource.setTokenType(tokenResponse.tokenType);
  }

  @override
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken() async {
    final result = await _remoteRepository.refreshToken();

    // Only persist if successful
    return result.fold((failure) => Left(failure), (tokenEntity) async {
      try {
        await _storeTokenResponse(tokenEntity.tokenResponse);
        await _localDataSource.setUser(UserModel.fromEntity(tokenEntity.user));
        return Right(tokenEntity);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }

  @override
  Future<Either<Failure, void>> clearLocalTokens() async {
    try {
      await _tokenSecureDataSource.clearSession();
      return const Right(null);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
