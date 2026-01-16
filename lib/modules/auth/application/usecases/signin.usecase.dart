import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;

/// Sign-in use case implementing business logic for user authentication.
///
/// Orchestrates the signin flow: authenticates user via repository, stores
/// authentication token and user data in local storage, and returns authentication
/// response.
class SignInUseCase implements IUseCase<SignInCredentialsModel, AuthResponseEntity> {
  final IAuthCachedRepository _authCachedRepository;

  const SignInUseCase(this._authCachedRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(SignInCredentialsModel credentials) async {
    return await _authCachedRepository.signIn(credentials);
  }
}
