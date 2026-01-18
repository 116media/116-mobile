import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;

/// Sign-up use case implementing business logic for user registration.
///
/// Orchestrates the signup flow: registers user via repository, stores
/// authentication token and user data in local storage, and returns authentication
/// response.
class SignUpUseCase implements IUseCase<SignUpCredentialsModel, AuthResponseEntity> {
  final IAuthCachedRepository _authCachedRepository;

  const SignUpUseCase(this._authCachedRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> execute(SignUpCredentialsModel credentials) async {
    final response = await _authCachedRepository.signUp(credentials);
    return response;
  }
}
