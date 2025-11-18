import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    show InternetConnection, InternetStatus;

import '../../application/data-sources/connectivity.datasource.port.dart'
    show IConnectivityDataSource;

/// Implementation of connectivity datasource using internet_connection_checker_plus.
///
/// Uses InternetConnection to check actual internet connectivity
/// (not just network connection).
class ConnectivityDataSource implements IConnectivityDataSource {
  final InternetConnection _internetConnection;

  const ConnectivityDataSource(this._internetConnection);

  @override
  Future<bool> hasConnection() async {
    final status = await _internetConnection.internetStatus;
    return status == InternetStatus.connected;
  }

  @override
  Stream<bool> get onStatusChange {
    return _internetConnection.onStatusChange.map((status) => status == InternetStatus.connected);
  }
}
