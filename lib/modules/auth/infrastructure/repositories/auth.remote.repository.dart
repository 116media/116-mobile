import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../platform/session/application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../application/data-sources/facebook.auth.datasource.port.dart'
    show IFacebookAuthDataSource;
import '../../application/data-sources/google.auth.datasource.port.dart' show IGoogleAuthDataSource;
import '../../application/repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;
import '../../application/repositories/auth.transient.repository.port.dart'
    show IAuthTransientRepository;
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
import '../mappers/auth.mapper.dart' show AuthMapper;

/// Remote authentication repository implementation.
///
/// Handles ONLY remote API calls and DTO-to-entity mapping.
/// Does NOT handle caching - that's delegated to the proxy/decorator.
class AuthRemoteRepository implements IAuthCachedRepository, IAuthTransientRepository {
  final IAuthRemoteDataSource _remoteDataSource;
  final IGoogleAuthDataSource _googleAuthDataSource;
  final IFacebookAuthDataSource _facebookAuthDataSource;
  final ISessionTokenSecureDataSource _sessionTokenSecureDataSource;

  const AuthRemoteRepository(
    this._remoteDataSource,
    this._googleAuthDataSource,
    this._facebookAuthDataSource,
    this._sessionTokenSecureDataSource,
  );

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

  @override
  Future<Either<Failure, VerifyOtpResponseEntity>> verifyOtp(
    VerifyOtpCredentialsModel credentials,
  ) async {
    try {
      final response = await _remoteDataSource.verifyOtp(credentials);
      final verifyOtpEntity = AuthMapper.verifyOtpResponseFromDto(response);
      return Right(verifyOtpEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, ResendOtpResponseEntity>> resendOtp(
    ResendOtpCredentialsModel credentials,
  ) async {
    try {
      final response = await _remoteDataSource.resendOtp(credentials);
      final resendOtpEntity = AuthMapper.resendOtpResponseFromDto(response);
      return Right(resendOtpEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, ForgotPasswordResponseEntity>> forgotPassword(
    ForgotPasswordCredentialsModel credentials,
  ) async {
    try {
      final response = await _remoteDataSource.forgotPassword(credentials);
      final forgotPasswordEntity = AuthMapper.forgotPasswordResponseFromDto(response);
      return Right(forgotPasswordEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, ResetPasswordResponseEntity>> resetPassword(
    ResetPasswordCredentialsModel credentials,
  ) async {
    try {
      final response = await _remoteDataSource.resetPassword(credentials);
      final resetPasswordEntity = AuthMapper.resetPasswordResponseFromDto(response);
      return Right(resetPasswordEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signInWithGoogle() async {
    try {
      // Step 1: Get user profile from Google SDK
      final profile = await _googleAuthDataSource.signIn();

      // Step 2: Send profile to backend and get auth response
      final response = await _remoteDataSource.signInWithGoogle(profile);
      final authEntity = AuthMapper.authResponseFromPublicSocialLoginDto(response);
      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, AuthResponseEntity>> signInWithFacebook() async {
    try {
      // Step 1: Get user profile from Facebook SDK
      final profile = await _facebookAuthDataSource.signIn();

      // Step 2: Send profile to backend and get auth response
      final response = await _remoteDataSource.signInWithFacebook(profile);
      final authEntity = AuthMapper.authResponseFromPublicSocialLoginDto(response);
      return Right(authEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SignOutResponseEntity>> signOut() async {
    try {
      // Retrieve refresh token from secure storage
      final refreshToken = await _sessionTokenSecureDataSource.getRefreshToken();

      final response = await _remoteDataSource.signOut(refreshToken ?? "");
      final signoutEntity = AuthMapper.signoutResponseFromDto(response);
      return Right(signoutEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
