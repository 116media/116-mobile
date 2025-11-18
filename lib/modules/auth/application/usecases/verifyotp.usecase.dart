import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Verify OTP use case implementing business logic for email verification.
///
/// Orchestrates the OTP verification flow: validates the OTP code via repository,
/// updates user verification status, and returns verification response.
/// Part of the application layer in Clean Architecture, containing business
/// rules independent of frameworks and UI.
class VerifyOtpUseCase implements IUseCase<VerifyOtpCredentialsModel, VerifyOtpResponseEntity> {
  final IAuthRepository _authRepository;

  const VerifyOtpUseCase(this._authRepository);

  @override
  Future<Either<Failure, VerifyOtpResponseEntity>> execute(
    VerifyOtpCredentialsModel credentials,
  ) async {
    return await _authRepository.verifyOtp(credentials);
  }
}
