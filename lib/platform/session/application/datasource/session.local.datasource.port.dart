import '../../infrastructure/models/hive/session.state.model.dart' show SessionStateModel;

/// Local data source port for session state operations.
///
/// Defines the contract for managing session state persistence
/// in local storage (Hive).
abstract class ISessionLocalDataSource {
  /// Retrieves the stored session state from local storage.
  ///
  /// Returns [SessionStateModel] if available, null otherwise.
  Future<SessionStateModel?> getSessionState();

  /// Persists session state to local storage.
  ///
  /// Stores the complete [state] model containing all session data.
  Future<void> setSessionState(SessionStateModel state);

  /// Removes all session data from local storage.
  ///
  /// Used during logout or session reset.
  Future<void> clearSessionState();

  /// Returns a stream that emits session state changes.
  ///
  /// Emits [SessionStateModel] whenever session data is updated in storage.
  Stream<SessionStateModel> watchSessionState();
}
