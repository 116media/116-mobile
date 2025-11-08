import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../core/domain/failures/failure.dart' show Failure;
import '../../../../core/infrastructure/exceptions/problem.mapper.g.dart' show ProblemMapper;
import '../../../../core/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../application/datasource/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../application/repositories/auth.repository.port.dart' show IAuthRepository;
import '../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../mappers/auth.mapper.dart' show AuthMapper;

/// Remote authentication repository implementation.
///
/// Handles ONLY remote API calls and DTO-to-entity mapping.
/// Does NOT handle caching - that's delegated to the proxy/decorator.
/// Part of the infrastructure layer in Clean Architecture.
class AuthRemoteRepository implements IAuthRepository {
  final IAuthRemoteDataSource _remoteDataSource;

  const AuthRemoteRepository(this._remoteDataSource);

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials) async {
    try {
      final response = await _remoteDataSource.signIn(credentials);
      final authEntity = AuthMapper.authResponseFromPublicLoginDto(response);
      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials) async {
    try {
      final response = await _remoteDataSource.signUp(credentials);
      final authEntity = AuthMapper.authResponseFromPublicSignUpDto(response);
      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
