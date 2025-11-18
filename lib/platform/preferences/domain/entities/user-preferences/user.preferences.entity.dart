import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/thememode.enum.dart' show AppThemeMode;

part 'user.preferences.entity.freezed.dart';

/// Entity representing user preferences.
///
/// Stores the user's selected language and theme mode preferences.
/// These preferences are set during onboarding and can be changed in settings.
@freezed
abstract class UserPreferencesEntity with _$UserPreferencesEntity {
  const factory UserPreferencesEntity({
    required String languageCode,
    required AppThemeMode themeMode,
  }) = _UserPreferencesEntity;

  /// Creates default preferences (English, System theme).
  factory UserPreferencesEntity.defaults() {
    return const UserPreferencesEntity(languageCode: 'en', themeMode: AppThemeMode.system);
  }
}
