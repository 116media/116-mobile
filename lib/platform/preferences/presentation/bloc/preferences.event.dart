import 'package:equatable/equatable.dart' show Equatable;

import '../../domain/entities/user-preferences/user.preferences.entity.dart'
    show UserPreferencesEntity;
import '../../domain/enums/thememode.enum.dart' show AppThemeMode;

/// Base class for all preferences events.
abstract class PreferencesEvent extends Equatable {
  const PreferencesEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load the current preferences.
class PreferencesLoadStarted extends PreferencesEvent {
  const PreferencesLoadStarted();
}

/// Event triggered when language preference changes.
class PreferencesLanguageChanged extends PreferencesEvent {
  final String languageCode;

  const PreferencesLanguageChanged(this.languageCode);

  @override
  List<Object?> get props => [languageCode];
}

/// Event triggered when theme mode preference changes.
class PreferencesThemeModeChanged extends PreferencesEvent {
  final AppThemeMode themeMode;

  const PreferencesThemeModeChanged(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}

/// Internal event triggered when preferences state changes.
class PreferencesStateChanged extends PreferencesEvent {
  final UserPreferencesEntity preferences;

  const PreferencesStateChanged(this.preferences);

  @override
  List<Object?> get props => [preferences];
}
