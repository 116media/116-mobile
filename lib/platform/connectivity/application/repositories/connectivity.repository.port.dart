import '../../domain/entities/connectivity.status.entity.dart' show ConnectivityStatusEntity;

/// Repository port for connectivity operations.
///
/// Defines the contract for connectivity status access.
abstract class IConnectivityRepository {
  /// Gets the current connectivity status.
  ///
  /// Returns [ConnectivityStatusEntity] with current connection state.
  Future<ConnectivityStatusEntity> getStatus();

  /// Returns a stream that emits connectivity status changes.
  ///
  /// Emits [ConnectivityStatusEntity] whenever connection status changes.
  Stream<ConnectivityStatusEntity> get onStatusChange;
}
