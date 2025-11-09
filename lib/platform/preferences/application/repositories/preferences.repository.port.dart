import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;
import '../../domain/enums/thememode.enum.dart' show AppThemeMode;

/// Repository port for user preferences operations.
///
/// Defines the contract for managing user preferences including
/// language and theme mode selection.
abstract class IPreferencesRepository {
  /// Gets the current user preferences.
  ///
  /// Returns [Right] with [UserPreferencesEntity] on success,
  /// or [Left] with [Failure] if preferences cannot be loaded.
  Future<Either<Failure, UserPreferencesEntity>> getPreferences();

  /// Updates the language preference.
  ///
  /// Returns [Right] with updated [UserPreferencesEntity] on success,
  /// or [Left] with [Failure] if update fails.
  Future<Either<Failure, UserPreferencesEntity>> updateLanguage(String languageCode);

  /// Updates the theme mode preference.
  ///
  /// Returns [Right] with updated [UserPreferencesEntity] on success,
  /// or [Left] with [Failure] if update fails.
  Future<Either<Failure, UserPreferencesEntity>> updateThemeMode(AppThemeMode themeMode);

  /// Returns a stream that emits preferences changes.
  ///
  /// Emits [UserPreferencesEntity] whenever preferences are updated.
  Stream<UserPreferencesEntity> get onPreferencesChange;
}