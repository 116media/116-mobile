import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;
import '../repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;

/// Verify OTP use case implementing business logic for email verification.
///
/// Orchestrates the OTP verification flow: validates the OTP code via repository,
/// updates user verification status, and returns verification response.
class VerifyOtpUseCase implements IUseCase<VerifyOtpCredentialsModel, VerifyOtpResponseEntity> {
  final IAuthCachedRepository _authCachedRepository;

  const VerifyOtpUseCase(this._authCachedRepository);

  @override
  Future<Either<Failure, VerifyOtpResponseEntity>> execute(
    VerifyOtpCredentialsModel credentials,
  ) async {
    return await _authCachedRepository.verifyOtp(credentials);
  }
}
