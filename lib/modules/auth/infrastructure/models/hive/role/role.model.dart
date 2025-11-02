import '../../../../domain/entities/role.entity.dart' show RoleEntity;

/// Hive model for persisting [RoleEntity] to local storage.
///
/// Uses JSON serialization for Hive storage without code generation.
class RoleModel {
  final String id;
  final String name;
  final String description;

  const RoleModel({
    required this.id,
    required this.name,
    required this.description,
  });

  /// Deserializes from JSON (used by Hive internally).
  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }

  /// Serializes to JSON (used by Hive internally).
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  /// Converts this model to a domain entity.
  RoleEntity toEntity() {
    return RoleEntity(
      id: id,
      name: name,
      description: description,
    );
  }

  /// Creates a model from a domain entity.
  factory RoleModel.fromEntity(RoleEntity entity) {
    return RoleModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
    );
  }
}
