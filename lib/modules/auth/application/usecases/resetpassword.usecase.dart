import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;
import '../repositories/auth.transient.repository.port.dart' show IAuthTransientRepository;

/// Use case for resetting user password using OTP code.
///
/// This use case is part of the password recovery flow. It validates and
/// submits the OTP code along with a new password to reset the user's password.
/// Coordinates with the auth repository to execute the reset operation.
class ResetPasswordUseCase implements IUseCase<ResetPasswordCredentialsModel, void> {
  final IAuthTransientRepository _authTransientRepository;

  const ResetPasswordUseCase(this._authTransientRepository);

  @override
  Future<Either<Failure, ResetPasswordResponseEntity>> execute(
    ResetPasswordCredentialsModel credentials,
  ) async {
    return _authTransientRepository.resetPassword(credentials);
  }
}
