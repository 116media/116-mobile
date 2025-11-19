import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Forgot password use case implementing business logic for password reset flow.
///
/// Orchestrates the forgot password flow: sends a password reset OTP to the
/// user's email via repository, and returns the response indicating success.
/// Part of the application layer in Clean Architecture, containing business
/// rules independent of frameworks and UI.
class ForgotPasswordUseCase
    implements IUseCase<ForgotPasswordCredentialsModel, ForgotPasswordResponseEntity> {
  final IAuthRepository _authRepository;

  const ForgotPasswordUseCase(this._authRepository);

  @override
  Future<Either<Failure, ForgotPasswordResponseEntity>> execute(
    ForgotPasswordCredentialsModel credentials,
  ) async {
    return await _authRepository.forgotPassword(credentials);
  }
}
