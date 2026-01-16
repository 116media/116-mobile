import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/refresh-token-response/refresh.token.response.dart'
    show RefreshTokenResponseEntity;

/// Repository port (interface) for remote session token operations.
///
/// Defines the contract for remote/API token operations only.
abstract class ISessionTokenRemoteRepository {
  /// Refreshes the access token using a valid refresh token.
  ///
  /// Validates and rotates the refresh token to obtain a new access token.
  /// Implements token rotation - the old refresh token becomes invalid after successful refresh.
  ///
  /// Returns [Right] with [RefreshTokenResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken();
}
