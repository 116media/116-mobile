import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;

/// Repository port (interface) for local authentication operations.
///
/// Defines the contract for local/cache authentication operations only.
abstract class IAuthLocalRepository {
  /// Clears local user data without making remote API call.
  ///
  /// Removes profile data from hive without attempting to invalidate the session on the server.
  /// Used when tokens are already expired or session is already invalid.
  ///
  /// Returns [Right] with void on success,
  /// or [Left] with [Failure] if local clear operation fails.
  Future<Either<Failure, void>> clearLocalUserData();
}
