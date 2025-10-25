/// Model representing a language option in the language selector.
///
/// Used during onboarding and in settings to allow users to select
/// their preferred app language.
class LanguageModel {
  final String code;
  final String nativeName;
  final String englishName;
  final String flagEmoji;

  const LanguageModel({
    required this.code,
    required this.nativeName,
    required this.englishName,
    required this.flagEmoji,
  });

  /// List of all supported languages in the application.
  static const List<LanguageModel> languagesList = [
    LanguageModel(code: 'en', nativeName: 'English', englishName: 'English', flagEmoji: '🇬🇧'),
    LanguageModel(code: 'fr', nativeName: 'Français', englishName: 'French', flagEmoji: '🇫🇷'),
  ];
}
