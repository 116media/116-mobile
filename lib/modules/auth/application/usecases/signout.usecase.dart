import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Use case for signing out the current user.
///
/// Orchestrates sign out operation by delegating to the auth repository
/// to clear local session data (authentication token and user profile).
///
/// **Returns:** [Either<Failure, SignOutResponseEntity>]
/// - [Right] with success response on successful sign out
/// - [Left] with [Failure] if clearing local data fails
class SignOutUseCase implements IUseCase<void, SignOutResponseEntity> {
  final IAuthRepository _authRepository;

  const SignOutUseCase(this._authRepository);

  @override
  Future<Either<Failure, SignOutResponseEntity>> execute(void request) async {
    return await _authRepository.signOut();
  }
}
