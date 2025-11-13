import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;
import '../repositories/preferences.repository.port.dart' show IPreferencesRepository;

/// Use case for updating language preference.
///
/// Updates the user's selected language code (e.g., 'en', 'fr').
/// Triggers app locale change.
class UpdateLanguageUseCase implements IUseCase<String, UserPreferencesEntity> {
  final IPreferencesRepository _repository;

  const UpdateLanguageUseCase(this._repository);

  @override
  Future<Either<Failure, UserPreferencesEntity>> execute(String languageCode) async {
    return await _repository.updateLanguage(languageCode);
  }
}