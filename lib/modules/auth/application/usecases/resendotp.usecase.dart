import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../repositories/auth.transient.repository.port.dart' show IAuthTransientRepository;

/// Use case for resending OTP verification codes.
///
/// Encapsulates the business logic for requesting a new OTP to be sent
/// to the user's email.
class ResendOtpUseCase implements IUseCase<ResendOtpCredentialsModel, void> {
  final IAuthTransientRepository _authTransientRepository;

  const ResendOtpUseCase(this._authTransientRepository);

  @override
  Future<Either<Failure, ResendOtpResponseEntity>> execute(
    ResendOtpCredentialsModel credentials,
  ) async {
    return _authTransientRepository.resendOtp(credentials);
  }
}
