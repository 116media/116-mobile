import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.entity.freezed.dart';

/// Domain entity representing a country.
///
/// Holds core country information such as name, ISO code, dial code,
/// and the last time the data was updated.
/// Part of the domain layer in Clean Architecture.
@freezed
abstract class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    required String? name,
    required String? isoCode,
    required String? dialCode,
    required DateTime? lastUpdated,
  }) = _CountryEntity;
}
