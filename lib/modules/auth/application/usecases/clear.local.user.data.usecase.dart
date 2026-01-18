import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../repositories/auth.local.repository.port.dart' show IAuthLocalRepository;

/// Use case for clearing local user data without remote API call.
///
/// Removes user profile data from local storage without attempting to
/// invalidate the session on the server. Used when tokens are already
/// expired and remote signout would fail.
///
/// Clears:
/// - Hive: User profile data
///
/// Does NOT clear:
/// - Tokens (handled by session module)
/// - Session state (handled by session module)
/// - Device ID (persists across sessions)
class ClearLocalUserDataUseCase implements IUseCase<void, void> {
  final IAuthLocalRepository _authLocalRepository;

  const ClearLocalUserDataUseCase(this._authLocalRepository);

  @override
  Future<Either<Failure, void>> execute(void request) async {
    return await _authLocalRepository.clearLocalUserData();
  }
}
