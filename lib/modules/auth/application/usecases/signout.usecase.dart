import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;
import '../repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;

/// Use case for signing out the current user.
///
/// Orchestrates sign out operation by delegating to the auth repository
/// to clear local session data (authentication token and user profile).
class SignOutUseCase implements IUseCase<void, SignOutResponseEntity> {
  final IAuthCachedRepository _authCachedRepository;

  const SignOutUseCase(this._authCachedRepository);

  @override
  Future<Either<Failure, SignOutResponseEntity>> execute(void request) async {
    return await _authCachedRepository.signOut();
  }
}
