import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/auth.local.datasource.port.dart' show IAuthLocalDataSource;
import '../../application/repositories/auth.repository.port.dart' show IAuthRepository;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;
import '../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;
import '../models/hive/user/user.model.dart' show UserModel;

/// Cached authentication repository (decorator pattern).
///
/// Wraps the inner repository and adds local caching functionality.
/// Delegates remote operations to the inner repository, then persists
/// successful results to local storage.
class AuthCachedRepository implements IAuthRepository {
  final IAuthRepository _remoteRepository;
  final IAuthLocalDataSource _localDataSource;

  const AuthCachedRepository(this._remoteRepository, this._localDataSource);

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials) async {
    final result = await _remoteRepository.signIn(credentials);

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
    final result = await _remoteRepository.signUp(credentials);

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
  Future<Either<Failure, VerifyOtpResponseEntity>> verifyOtp(
    VerifyOtpCredentialsModel credentials,
  ) async {
    final result = await _remoteRepository.verifyOtp(credentials);

    // Update cached user's isVerified status if successful
    return result.fold((failure) => Left(failure), (verifyOtpEntity) async {
      if (verifyOtpEntity.isSuccess) {
        try {
          final cachedUser = await _localDataSource.getUser();
          if (cachedUser != null) {
            final userEntity = cachedUser.toEntity();
            final updatedEntity = userEntity.copyWith(isVerified: true);
            final updatedUser = UserModel.fromEntity(updatedEntity);
            await _localDataSource.setUser(updatedUser);
          }
        } on CacheException catch (exception) {
          return Left(ProblemMapper.toFailure(exception));
        }
      }
      return Right(verifyOtpEntity);
    });
  }

  @override
  Future<Either<Failure, ResendOtpResponseEntity>> resendOtp(
    ResendOtpCredentialsModel credentials,
  ) async {
    // No caching needed - resendOtp is a transient operation that only triggers
    // an email send. The success/failure result doesn't need to be persisted.
    return _remoteRepository.resendOtp(credentials);
  }

  @override
  Future<Either<Failure, ForgotPasswordResponseEntity>> forgotPassword(
    ForgotPasswordCredentialsModel credentials,
  ) async {
    // No caching needed - forgotPassword is a transient operation that only triggers
    // a password reset OTP email send. The success/failure result doesn't need to be persisted.
    return _remoteRepository.forgotPassword(credentials);
  }

  @override
  Future<Either<Failure, ResetPasswordResponseEntity>> resetPassword(
    ResetPasswordCredentialsModel credentials,
  ) async {
    // No caching needed - resetPassword is a transient operation that changes password.
    // The success/failure result doesn't need to be persisted.
    return _remoteRepository.resetPassword(credentials);
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signInWithGoogle() async {
    final result = await _remoteRepository.signInWithGoogle();

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
  Future<Either<Failure, AuthResponseEntity>> signInWithFacebook() async {
    final result = await _remoteRepository.signInWithFacebook();

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
  Future<Either<Failure, SignOutResponseEntity>> signOut() async {
    final result = await _remoteRepository.signOut();

    // Only clear cache if successful
    return result.fold((failure) => Left(failure), (authEntity) async {
      try {
        await _localDataSource.clearUser();
        await _localDataSource.clearToken();
        return Right(authEntity);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }
}
