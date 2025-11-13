/// Entity representing a language option.
///
/// Used during onboarding and in settings to allow users to select
/// their preferred app language.
class LanguageEntity {
  final String code;
  final String nativeName;
  final String englishName;
  final String flagEmoji;

  const LanguageEntity({
    required this.code,
    required this.nativeName,
    required this.englishName,
    required this.flagEmoji,
  });
}
