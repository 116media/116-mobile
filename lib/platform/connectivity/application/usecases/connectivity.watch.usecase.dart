import '../../../../shared/application/usecases/stream.usecase.port.dart' show IStreamUseCase;
import '../../domain/entities/connectivity-status/connectivity.status.entity.dart'
    show ConnectivityStatusEntity;
import '../repositories/connectivity.repository.port.dart' show IConnectivityRepository;

/// Use case for watching connectivity status changes.
///
/// Provides a stream of connectivity status updates. This is used
/// to reactively update UI based on network connectivity.
class ConnectivityWatchUseCase implements IStreamUseCase<ConnectivityStatusEntity> {
  final IConnectivityRepository _repository;

  const ConnectivityWatchUseCase(this._repository);

  /// Returns a stream of connectivity status changes.
  @override
  Stream<ConnectivityStatusEntity> execute() {
    return _repository.onStatusChange;
  }
}
