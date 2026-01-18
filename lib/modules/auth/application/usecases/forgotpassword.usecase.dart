import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../repositories/auth.transient.repository.port.dart' show IAuthTransientRepository;

/// Forgot password use case implementing business logic for password reset flow.
///
/// Orchestrates the forgot password flow: sends a password reset OTP to the
/// user's email via repository, and returns the response indicating success.
class ForgotPasswordUseCase
    implements IUseCase<ForgotPasswordCredentialsModel, ForgotPasswordResponseEntity> {
  final IAuthTransientRepository _authTransientRepository;

  const ForgotPasswordUseCase(this._authTransientRepository);

  @override
  Future<Either<Failure, ForgotPasswordResponseEntity>> execute(
    ForgotPasswordCredentialsModel credentials,
  ) async {
    return await _authTransientRepository.forgotPassword(credentials);
  }
}
