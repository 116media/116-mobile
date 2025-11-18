import '../../application/data-sources/connectivity.datasource.port.dart'
    show IConnectivityDataSource;
import '../../application/repositories/connectivity.repository.port.dart'
    show IConnectivityRepository;
import '../../domain/entities/connectivity-status/connectivity.status.entity.dart'
    show ConnectivityStatusEntity;

/// Implementation of connectivity repository.
///
/// Delegates to the connectivity datasource and maps to domain entities.
class ConnectivityRepository implements IConnectivityRepository {
  final IConnectivityDataSource _dataSource;

  const ConnectivityRepository(this._dataSource);

  @override
  Future<ConnectivityStatusEntity> getStatus() async {
    final isConnected = await _dataSource.hasConnection();
    return ConnectivityStatusEntity(isConnected: isConnected);
  }

  @override
  Stream<ConnectivityStatusEntity> get onStatusChange {
    return _dataSource.onStatusChange.map(
      (isConnected) => ConnectivityStatusEntity(isConnected: isConnected),
    );
  }
}
