import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;

/// Repository port (interface) for local session token operations.
///
/// Defines the contract for local/cache token operations only.
abstract class ISessionTokenLocalRepository {
  /// Clears all session tokens from secure storage.
  ///
  /// Removes all authentication tokens from secure storage without attempting
  /// to invalidate the session on the server. Used when tokens are already expired.
  ///
  /// - access_token
  /// - refresh_token
  /// - access_token_expires_at
  /// - refresh_token_expires_at
  /// - token_type
  ///
  /// Returns [Right] with void on success,
  /// or [Left] with [Failure] if clear operation fails.
  Future<Either<Failure, void>> clearLocalTokens();
}
