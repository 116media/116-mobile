import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/user-preferences/user.preferences.entity.dart'
    show UserPreferencesEntity;
import '../../domain/enums/thememode.enum.dart' show AppThemeMode;
import '../repositories/preferences.repository.port.dart' show IPreferencesRepository;

/// Use case for updating theme mode preference.
///
/// Updates the user's selected theme mode (light or dark).
/// Triggers app theme change.
class UpdateThemeModeUseCase implements IUseCase<AppThemeMode, UserPreferencesEntity> {
  final IPreferencesRepository _repository;

  const UpdateThemeModeUseCase(this._repository);

  @override
  Future<Either<Failure, UserPreferencesEntity>> execute(AppThemeMode themeMode) async {
    return await _repository.updateThemeMode(themeMode);
  }
}
