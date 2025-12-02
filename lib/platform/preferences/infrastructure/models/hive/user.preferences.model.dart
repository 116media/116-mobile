import '../../../domain/entities/user-preferences/user.preferences.entity.dart'
    show UserPreferencesEntity;
import '../../../domain/enums/thememode.enum.dart' show AppThemeMode;

/// Hive model for persisting [UserPreferencesEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class UserPreferencesModel {
  final String themeMode;
  final String languageCode;

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
      themeMode: entity.themeMode.name,
      languageCode: entity.languageCode,
    );
  }

  /// Creates default preferences model.
  factory UserPreferencesModel.defaults() {
    return UserPreferencesModel(languageCode: 'en', themeMode: AppThemeMode.system.name);
  }
}
