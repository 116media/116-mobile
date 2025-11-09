import '../../../../domain/entities/role.entity.dart' show RoleEntity;

/// Hive model for persisting [RoleEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class RoleModel {
  final String id;
  final String name;
  final String description;

  const RoleModel({required this.id, required this.name, required this.description});

  /// Converts this model to a domain entity.
  RoleEntity toEntity() {
    return RoleEntity(id: id, name: name, description: description);
  }

  /// Creates a model from a domain entity.
  factory RoleModel.fromEntity(RoleEntity entity) {
    return RoleModel(id: entity.id, name: entity.name, description: entity.description);
  }
}
