/// Supported languages in the application.
///
/// Each enum value represents a language with its locale code and English name.
enum Language {
  english('en', 'English'),
  french('fr', 'French');

  const Language(this.code, this.name);

  final String code;
  final String name;

  /// Get language from code.
  ///
  /// Returns the matching [Language] for the given [code], or [english] as default.
  static Language fromCode(String code) {
    return Language.values.firstWhere((lang) => lang.code == code, orElse: () => Language.english);
  }
}
