import '../../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../../../domain/enums/auth.status.enum.dart' show AuthStatus;

/// Hive model for persisting [SessionStateEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class SessionStateModel {
  final bool hasCompletedOnboarding;
  final bool hasSetPreferences;
  final String authStatus; // Stored as string for adapter compatibility
  final String? userId;

  const SessionStateModel({
    required this.hasCompletedOnboarding,
    required this.hasSetPreferences,
    required this.authStatus,
    this.userId,
  });

  /// Converts this model to a domain entity.
  SessionStateEntity toEntity() {
    return SessionStateEntity(
      hasCompletedOnboarding: hasCompletedOnboarding,
      hasSetPreferences: hasSetPreferences,
      authStatus: AuthStatus.values.firstWhere(
        (e) => e.name == authStatus,
        orElse: () => AuthStatus.guest,
      ),
      userId: userId,
    );
  }

  /// Creates a model from a domain entity.
  factory SessionStateModel.fromEntity(SessionStateEntity entity) {
    return SessionStateModel(
      hasCompletedOnboarding: entity.hasCompletedOnboarding,
      hasSetPreferences: entity.hasSetPreferences,
      authStatus: entity.authStatus.name,
      userId: entity.userId,
    );
  }

  /// Creates a default initial session state.
  factory SessionStateModel.initial() {
    return SessionStateModel(
      hasCompletedOnboarding: false,
      hasSetPreferences: false,
      authStatus: AuthStatus.guest.name,
      userId: null,
    );
  }
}
