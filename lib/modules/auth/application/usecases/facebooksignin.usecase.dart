import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Facebook sign-in use case implementing business logic for Facebook OAuth authentication.
///
/// Orchestrates the Facebook sign-in flow: repository gets user profile from Facebook SDK,
/// sends profile to backend API, stores authentication token and user data in local
/// storage, and returns authentication response. Part of the application layer in
/// Clean Architecture, containing business rules independent of frameworks and UI.
class FacebookSignInUseCase implements IUseCase<void, AuthResponseEntity> {
  final IAuthRepository _authRepository;

  const FacebookSignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(void _) async {
    return await _authRepository.signInWithFacebook();
  }
}
