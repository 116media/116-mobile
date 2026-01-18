import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;

/// Repository port (interface) for transient authentication operations.
///
/// Contains operations that are transient and don't benefit from caching.
abstract class IAuthTransientRepository {
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
    ForgotPasswordCredentialsModel credentials,
  );

  /// Resets user password using OTP code and new password from [ResetPasswordCredentialsModel].
  ///
  /// Returns [Right] with [ResetPasswordResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ResetPasswordResponseEntity>> resetPassword(
    ResetPasswordCredentialsModel credentials,
  );
}
