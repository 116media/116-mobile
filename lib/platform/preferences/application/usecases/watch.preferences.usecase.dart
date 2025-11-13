import '../../../../shared/application/usecases/stream.usecase.port.dart' show IStreamUseCase;
import '../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;
import '../repositories/preferences.repository.port.dart' show IPreferencesRepository;

/// Use case for watching preferences changes.
///
/// Provides a stream of preferences updates. This is used
/// to reactively update UI based on preference changes.
class WatchPreferencesUseCase implements IStreamUseCase<UserPreferencesEntity> {
  final IPreferencesRepository _repository;

  const WatchPreferencesUseCase(this._repository);

  /// Returns a stream of preferences changes.
  @override
  Stream<UserPreferencesEntity> execute() {
    return _repository.onPreferencesChange;
  }
}