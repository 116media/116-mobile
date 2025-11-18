import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Repository port (interface) for authentication operations.
///
/// Defines the contract for authentication data access. Following the
/// Ports & Adapters architecture pattern, this port is implemented by
/// infrastructure layer adapters. This abstraction allows the application
/// layer to remain independent of specific data sources (REST API, mock, etc.).
///
/// Returns [Either<Failure, T>] where Left contains failures and Right contains success data.
abstract class IAuthRepository {
  /// Authenticates a user using the [SignInCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials);

  /// Registers a new user account using the [SignUpCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials);

  /// Verifies OTP code for email verification using the [VerifyOtpCredentialsModel].
  ///
  /// Returns [Right] with [VerifyOtpResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, VerifyOtpResponseEntity>> verifyOtp(VerifyOtpCredentialsModel credentials);

  /// Resends a new OTP verification code using the [ResendOtpCredentialsModel].
  ///
  /// Returns [Right] with [ResendOtpResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ResendOtpResponseEntity>> resendOtp(ResendOtpCredentialsModel credentials);

  /// Initiates password reset flow by sending OTP using the [ForgotPasswordCredentialsModel].
  ///
  /// Returns [Right] with [ForgotPasswordResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ForgotPasswordResponseEntity>> forgotPassword(
      ForgotPasswordCredentialsModel credentials);
}
