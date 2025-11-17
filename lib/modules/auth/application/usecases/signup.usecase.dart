import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../repositories/auth.repository.port.dart' show IAuthRepository;

/// Sign-up use case implementing business logic for user registration.
///
/// Orchestrates the signup flow: registers user via repository, stores
/// authentication token and user data in local storage, and returns authentication
/// response. Part of the application layer in Clean Architecture, containing
/// business rules independent of frameworks and UI.
class SignUpUseCase implements IUseCase<SignUpCredentialsModel, AuthResponseEntity> {
  final IAuthRepository _authRepository;

  const SignUpUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(SignUpCredentialsModel credentials) async {
    final response = await _authRepository.signUp(credentials);
    return response;
  }
}
