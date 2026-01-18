import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../repositories/session.token.repository.port.dart' show ISessionTokenRepository;

/// Use case for clearing session tokens from local storage.
///
/// Removes all authentication tokens from secure storage without making
/// a remote API call. Used when tokens are already expired and remote
/// signout would fail anyway (e.g., refresh token expiry scenario).
///
/// Clears:
/// - access_token
/// - refresh_token
/// - access_token_expires_at
/// - refresh_token_expires_at
/// - token_type
///
/// Preserves:
/// - device_id (persists across sessions)
class ClearLocalTokensUseCase implements IUseCase<void, void> {
  final ISessionTokenRepository _tokenRepository;

  const ClearLocalTokensUseCase(this._tokenRepository);

  @override
  Future<Either<Failure, void>> execute(void request) async {
    return await _tokenRepository.clearLocalTokens();
  }
}
