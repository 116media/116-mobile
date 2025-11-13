import '../../../../domain/entities/permission.entity.dart' show PermissionEntity;

/// Hive model for persisting [PermissionEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class PermissionModel {
  final String id;
  final String resource;
  final String action;
  final String description;

  const PermissionModel({
    required this.id,
    required this.resource,
    required this.action,
    required this.description,
  });

  /// Converts this model to a domain entity.
  PermissionEntity toEntity() {
    return PermissionEntity(id: id, resource: resource, action: action, description: description);
  }

  /// Creates a model from a domain entity.
  factory PermissionModel.fromEntity(PermissionEntity entity) {
    return PermissionModel(
      id: entity.id,
      resource: entity.resource,
      action: entity.action,
      description: entity.description,
    );
  }
}
