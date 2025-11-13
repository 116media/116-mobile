import '../../../../shared/application/usecases/stream.usecase.port.dart' show IStreamUseCase;
import '../../domain/entities/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.repository.port.dart' show ISessionRepository;

/// Use case for watching session state changes.
///
/// Provides a stream of session state updates. This is used
/// to reactively update UI based on session changes.
class WatchSessionStateUseCase implements IStreamUseCase<SessionStateEntity> {
  final ISessionRepository _repository;

  const WatchSessionStateUseCase(this._repository);

  /// Returns a stream of session state changes.
  @override
  Stream<SessionStateEntity> execute() {
    return _repository.onSessionChange;
  }
}