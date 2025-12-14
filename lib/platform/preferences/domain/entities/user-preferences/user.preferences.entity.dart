import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/enums/language.enum.dart' show Language;
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

  /// Creates default preferences (French, System theme).
  factory UserPreferencesEntity.defaults() {
    return UserPreferencesEntity(
      themeMode: AppThemeMode.system,
      languageCode: Language.french.code,
    );
  }
}
