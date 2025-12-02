import '../../../../domain/entities/country/country.entity.dart' show CountryEntity;

/// Hive model for persisting [CountryEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class CountryModel {
  final String? name;
  final String? isoCode;
  final String? dialCode;
  final String? lastUpdated;

  const CountryModel({this.name, this.isoCode, this.dialCode, this.lastUpdated});

  /// Converts this model to a domain entity.
  CountryEntity toEntity() {
    return CountryEntity(
      name: name,
      isoCode: isoCode,
      dialCode: dialCode,
      lastUpdated: DateTime.parse(lastUpdated ?? DateTime.now().toIso8601String()),
    );
  }

  /// Creates a model from a domain entity.
  factory CountryModel.fromEntity(CountryEntity entity) {
    return CountryModel(
      name: entity.name,
      isoCode: entity.isoCode,
      dialCode: entity.dialCode,
      lastUpdated: entity.lastUpdated?.toIso8601String(),
    );
  }
}
