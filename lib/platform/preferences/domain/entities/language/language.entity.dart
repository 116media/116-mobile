import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.entity.freezed.dart';

/// Entity representing a language option.
///
/// Used during onboarding and in settings to allow users to select
/// their preferred app language.
@freezed
abstract class LanguageEntity with _$LanguageEntity {
  const factory LanguageEntity({
    required String code,
    required String nativeName,
    required String englishName,
    required String flagEmoji,
  }) = _LanguageEntity;
}
