/// Datasource port for network connectivity checks.
///
/// Defines the contract for checking internet connectivity status.
abstract class IConnectivityDataSource {
  /// Checks if the device currently has internet connectivity.
  ///
  /// Returns `true` if connected, `false` otherwise.
  Future<bool> hasConnection();

  /// Returns a stream that emits connectivity status changes.
  ///
  /// Emits `true` when connected, `false` when disconnected.
  Stream<bool> get onStatusChange;
}
