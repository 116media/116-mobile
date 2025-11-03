import 'package:fpdart/fpdart.dart' show Either;

import '../../../../core/application/usecase/usecase.port.dart' show IUseCase;
import '../../../../core/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../repositories/auth.repository.dart' show IAuthRepository;

/// Sign-in use case implementing business logic for user authentication.
///
/// Orchestrates the signin flow: authenticates user via repository, stores
/// authentication token and user data in local storage, and returns authentication
/// response. Part of the application layer in Clean Architecture, containing
/// business rules independent of frameworks and UI.
class SignInUseCase implements IUseCase<SignInCredentialsModel, AuthResponseEntity> {
  final IAuthRepository _authRepository;

  const SignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(SignInCredentialsModel credentials) async {
    return await _authRepository.signIn(credentials);
  }
}
