import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/refresh-token-response/refresh.token.response.dart'
    show RefreshTokenResponseEntity;

/// Repository port (interface) for session token management operations.
///
/// Defines the contract for token lifecycle operations. Following the
/// Ports & Adapters architecture pattern, this port is implemented by
/// infrastructure layer adapters. This abstraction allows the application
/// layer to remain independent of specific data sources (REST API, secure storage, etc.).
///
/// Returns [Either<Failure, T>] where Left contains failures and Right contains success data.
abstract class ISessionTokenRepository {
  /// Refreshes the access token using a valid refresh token.
  ///
  /// Validates and rotates the refresh token to obtain a new access token.
  /// Implements token rotation - the old refresh token becomes invalid after successful refresh.
  /// New tokens are automatically saved to secure storage.
  ///
  /// Returns [Right] with [RefreshTokenResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken();
}
