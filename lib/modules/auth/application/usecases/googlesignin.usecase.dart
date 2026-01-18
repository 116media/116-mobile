import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;

/// Google sign-in use case implementing business logic for Google OAuth authentication.
///
/// Orchestrates the Google sign-in flow: repository gets user profile from Google SDK,
/// sends profile to backend API, stores authentication token and user data in local
/// storage, and returns authentication response.
class GoogleSignInUseCase implements IUseCase<void, AuthResponseEntity> {
  final IAuthCachedRepository _authCachedRepository;

  const GoogleSignInUseCase(this._authCachedRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(void _) async {
    return await _authCachedRepository.signInWithGoogle();
  }
}
