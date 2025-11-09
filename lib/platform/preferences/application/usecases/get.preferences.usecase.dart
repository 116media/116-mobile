import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;
import '../repositories/preferences.repository.port.dart' show IPreferencesRepository;

/// Use case for retrieving user preferences.
///
/// Returns the current language and theme mode preferences.
/// Used on app startup and when navigating to settings.
class GetPreferencesUseCase implements IUseCase<void, UserPreferencesEntity> {
  final IPreferencesRepository _repository;

  const GetPreferencesUseCase(this._repository);

  @override
  Future<Either<Failure, UserPreferencesEntity>> execute(void request) async {
    return await _repository.getPreferences();
  }
}