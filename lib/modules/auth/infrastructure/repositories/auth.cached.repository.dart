import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../core/domain/failures/failure.dart' show Failure;
import '../../../../core/infrastructure/exceptions/local/cache.exception.dart' show CacheException;
import '../../../../core/infrastructure/exceptions/problem.mapper.g.dart' show ProblemMapper;
import '../../application/datasource/auth.local.datasource.port.dart' show IAuthLocalDataSource;
import '../../application/repositories/auth.repository.port.dart' show IAuthRepository;
import '../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../models/hive/user/user.model.dart' show UserModel;

/// Cached authentication repository (decorator pattern).
///
/// Wraps the inner repository and adds local caching functionality.
/// Delegates remote operations to the inner repository, then persists
/// successful results to local storage.
class AuthCachedRepository implements IAuthRepository {
  final IAuthRepository _innerRepository;
  final IAuthLocalDataSource _localDataSource;

  const AuthCachedRepository(this._innerRepository, this._localDataSource);

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials) async {
    final result = await _innerRepository.signIn(credentials);

    // Only persist if successful
    return result.fold((failure) => Left(failure), (authEntity) async {
      try {
        await _localDataSource.setToken(authEntity.token);
        await _localDataSource.setUser(UserModel.fromEntity(authEntity.user));
        return Right(authEntity);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials) async {
    final result = await _innerRepository.signUp(credentials);

    // Only persist if successful
    return result.fold((failure) => Left(failure), (authEntity) async {
      try {
        await _localDataSource.setToken(authEntity.token);
        await _localDataSource.setUser(UserModel.fromEntity(authEntity.user));
        return Right(authEntity);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }
}
