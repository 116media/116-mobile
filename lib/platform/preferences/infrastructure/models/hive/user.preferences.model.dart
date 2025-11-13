import '../../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;
import '../../../domain/enums/thememode.enum.dart' show AppThemeMode;

/// Hive model for persisting [UserPreferencesEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class UserPreferencesModel {
  final String languageCode;
  final String themeMode;

  const UserPreferencesModel({required this.languageCode, required this.themeMode});

  /// Converts this model to a domain entity.
  UserPreferencesEntity toEntity() {
    return UserPreferencesEntity(
      languageCode: languageCode,
      themeMode: AppThemeMode.values.firstWhere(
        (e) => e.name == themeMode,
        orElse: () => AppThemeMode.light,
      ),
    );
  }

  /// Creates a model from a domain entity.
  factory UserPreferencesModel.fromEntity(UserPreferencesEntity entity) {
    return UserPreferencesModel(
      languageCode: entity.languageCode,
      themeMode: entity.themeMode.name,
    );
  }

  /// Creates default preferences model.
  factory UserPreferencesModel.defaults() {
    return UserPreferencesModel(languageCode: 'en', themeMode: AppThemeMode.system.name);
  }
}
