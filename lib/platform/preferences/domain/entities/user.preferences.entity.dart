import '../enums/thememode.enum.dart' show AppThemeMode;

/// Entity representing user preferences.
///
/// Stores the user's selected language and theme mode preferences.
/// These preferences are set during onboarding and can be changed in settings.
class UserPreferencesEntity {
  final String languageCode;
  final AppThemeMode themeMode;

  const UserPreferencesEntity({
    required this.languageCode,
    required this.themeMode,
  });

  /// Creates a copy of this entity with updated fields.
  UserPreferencesEntity copyWith({
    String? languageCode,
    AppThemeMode? themeMode,
  }) {
    return UserPreferencesEntity(
      languageCode: languageCode ?? this.languageCode,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  /// Creates default preferences (English, System theme).
  factory UserPreferencesEntity.defaults() {
    return const UserPreferencesEntity(
      languageCode: 'en',
      themeMode: AppThemeMode.system,
    );
  }
}
