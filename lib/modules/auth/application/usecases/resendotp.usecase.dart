import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Use case for resending OTP verification codes.
///
/// Encapsulates the business logic for requesting a new OTP to be sent
/// to the user's email. Follows the Clean Architecture pattern by
/// coordinating between the presentation and infrastructure layers.
class ResendOtpUseCase {
  final IAuthRepository _authRepository;

  const ResendOtpUseCase(this._authRepository);

  /// Executes the resend OTP operation.
  ///
  /// Returns [Right] with [ResendOtpResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ResendOtpResponseEntity>> execute(
    ResendOtpCredentialsModel credentials,
  ) async {
    return _authRepository.resendOtp(credentials);
  }
}
