import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Use case for resetting user password using OTP code.
///
/// This use case is part of the password recovery flow. It validates and
/// submits the OTP code along with a new password to reset the user's password.
/// Coordinates with the auth repository to execute the reset operation.
class ResetPasswordUseCase {
  final IAuthRepository _repository;

  const ResetPasswordUseCase(this._repository);

  /// Executes the reset password operation.
  ///
  /// Returns [Right] with [ResetPasswordResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ResetPasswordResponseEntity>> execute(
    ResetPasswordCredentialsModel credentials,
  ) async {
    return _repository.resetPassword(credentials);
  }
}
