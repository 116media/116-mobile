import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../application/repositories/preferences.repository.port.dart'
    show IPreferencesRepository;
import '../../domain/entities/user-preferences/user.preferences.entity.dart'
    show UserPreferencesEntity;
import '../../domain/enums/thememode.enum.dart' show AppThemeMode;
import '../models/hive/user.preferences.model.dart' show UserPreferencesModel;

/// Implementation of preferences repository.
///
/// Delegates to the local datasource, handles entity/model conversion,
/// and converts cache exceptions to failures.
class PreferencesRepository implements IPreferencesRepository {
  final IPreferencesLocalDataSource _localDataSource;

  const PreferencesRepository(this._localDataSource);

  @override
  Future<Either<Failure, UserPreferencesEntity>> getPreferences() async {
    try {
      final model = await _localDataSource.getPreferences();

      // If no preferences exist, create and save defaults
      if (model == null) {
        final defaults = UserPreferencesModel.defaults();
        await _localDataSource.setPreferences(defaults);
        return Right(defaults.toEntity());
      }

      return Right(model.toEntity());
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, UserPreferencesEntity>> updateLanguage(String languageCode) async {
    try {
      // Get current preferences
      final model = await _localDataSource.getPreferences() ?? UserPreferencesModel.defaults();

      // Update language
      final updatedEntity = model.toEntity().copyWith(languageCode: languageCode);
      final updatedModel = UserPreferencesModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.setPreferences(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, UserPreferencesEntity>> updateThemeMode(AppThemeMode themeMode) async {
    try {
      // Get current preferences
      final model = await _localDataSource.getPreferences() ?? UserPreferencesModel.defaults();

      // Update theme mode
      final updatedEntity = model.toEntity().copyWith(themeMode: themeMode);
      final updatedModel = UserPreferencesModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.setPreferences(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Stream<UserPreferencesEntity> get onPreferencesChange {
    return _localDataSource.watchPreferences().map((model) => model.toEntity());
  }
}
