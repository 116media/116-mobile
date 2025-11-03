import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../core/domain/failures/failure.dart' show Failure;
import '../../../../core/infrastructure/exceptions/local/cache.exception.dart' show CacheException;
import '../../../../core/infrastructure/exceptions/problem.mapper.g.dart' show ProblemMapper;
import '../../../../core/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../application/datasource/local/auth.local.datasource.dart' show IAuthLocalDataSource;
import '../../application/datasource/remote/auth.remote.datasource.dart' show IAuthRemoteDataSource;
import '../../application/repositories/auth.repository.dart' show IAuthRepository;
import '../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../mappers/auth.mapper.dart' show AuthMapper;
import '../models/hive/user/user.model.dart' show UserModel;

/// Authentication repository implementation using REST API and local storage.
///
/// Concrete implementation of the auth repository port. Communicates with the
/// backend API via remote data source, maps DTOs to domain entities, and persists
/// authentication data to local storage using the proxy pattern.
/// Part of the infrastructure layer in Clean Architecture.
///
/// Converts exceptions to failures using [ProblemMapper] and returns [Either].
class AuthRepositoryImpl implements IAuthRepository {
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  const AuthRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials) async {
    try {
      // Fetch from remote API
      final response = await _remoteDataSource.signIn(credentials);

      // Map to domain entity
      final authEntity = AuthMapper.authResponseFromPublicLoginDto(response);

      // Persist to local storage (proxy pattern)
      await _localDataSource.setToken(authEntity.token);
      await _localDataSource.setUser(UserModel.fromEntity(authEntity.user));

      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials) async {
    try {
      // Fetch from remote API
      final response = await _remoteDataSource.signUp(credentials);

      // Map to domain entity
      final authEntity = AuthMapper.authResponseFromPublicSignUpDto(response);

      // Persist to local storage (proxy pattern)
      await _localDataSource.setToken(authEntity.token);
      await _localDataSource.setUser(UserModel.fromEntity(authEntity.user));

      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
