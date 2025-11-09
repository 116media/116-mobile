import 'package:equatable/equatable.dart' show Equatable;

import '../entities/language.entity.dart' show LanguageEntity;

/// Value Object representing the collection of supported languages.
///
/// Immutable value object that encapsulates all languages supported
/// by the application, following DDD principles.
class Languages extends Equatable {
  final List<LanguageEntity> _languages;

  const Languages._(this._languages);

  factory Languages.defaults() {
    return const Languages._([
      LanguageEntity(code: 'en', nativeName: 'English', englishName: 'English', flagEmoji: '🇬🇧'),
      LanguageEntity(code: 'fr', nativeName: 'Français', englishName: 'French', flagEmoji: '🇫🇷'),
    ]);
  }

  /// Get all supported languages.
  List<LanguageEntity> get all => List.unmodifiable(_languages);

  /// Find a language by code.
  LanguageEntity? findByCode(String code) {
    try {
      return _languages.firstWhere((lang) => lang.code == code);
    } catch (_) {
      return null;
    }
  }

  /// Get the count of supported languages.
  int get count => _languages.length;

  @override
  List<Object?> get props => [_languages];
}
