import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session.state.entity.dart' show SessionStateEntity;
import '../../domain/enums/auth.status.enum.dart' show AuthStatus;

/// Repository port for session state operations.
///
/// Defines the contract for managing user session state including
/// onboarding, preferences, and authentication status.
abstract class ISessionRepository {
  /// Gets the current session state.
  ///
  /// Returns [Right] with [SessionStateEntity] on success,
  /// or [Left] with [Failure] if state cannot be loaded.
  Future<Either<Failure, SessionStateEntity>> getSessionState();

  /// Updates the onboarding completion status.
  ///
  /// Returns [Right] with updated [SessionStateEntity] on success,
  /// or [Left] with [Failure] if update fails.
  Future<Either<Failure, SessionStateEntity>> updateOnboardingStatus(bool completed);

  /// Updates the preferences setup status.
  ///
  /// Returns [Right] with updated [SessionStateEntity] on success,
  /// or [Left] with [Failure] if update fails.
  Future<Either<Failure, SessionStateEntity>> updatePreferencesStatus(bool completed);

  /// Updates the authentication status.
  ///
  /// Returns [Right] with updated [SessionStateEntity] on success,
  /// or [Left] with [Failure] if update fails.
  Future<Either<Failure, SessionStateEntity>> updateAuthStatus(
    AuthStatus status,
    String? userId,
  );

  /// Clears all session data (logout).
  ///
  /// Returns [Right] with reset [SessionStateEntity] on success,
  /// or [Left] with [Failure] if clear operation fails.
  Future<Either<Failure, SessionStateEntity>> clearSession();

  /// Returns a stream that emits session state changes.
  ///
  /// Emits [SessionStateEntity] whenever session state is updated.
  Stream<SessionStateEntity> get onSessionChange;
}
