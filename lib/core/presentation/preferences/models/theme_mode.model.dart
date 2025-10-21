/// Enum representing the application's theme mode options.
///
/// This enum is used throughout the app to manage and track the current
/// theme preference selected by the user during onboarding or in settings.
///
enum AppThemeMode {
  light,
  dark;

  bool get isDark => this == AppThemeMode.dark;
  bool get isLight => this == AppThemeMode.light;
}
