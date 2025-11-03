import '../../../../domain/entities/permission.entity.dart' show PermissionEntity;

/// Hive model for persisting [PermissionEntity] to local storage.
///
/// Uses JSON serialization for Hive storage without code generation.
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

  /// Deserializes from JSON (used by Hive internally).
  factory PermissionModel.fromJson(Map<String, dynamic> json) {
    return PermissionModel(
      id: json['id'] as String,
      resource: json['resource'] as String,
      action: json['action'] as String,
      description: json['description'] as String,
    );
  }

  /// Serializes to JSON (used by Hive internally).
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'resource': resource,
      'action': action,
      'description': description,
    };
  }

  /// Converts this model to a domain entity.
  PermissionEntity toEntity() {
    return PermissionEntity(
      id: id,
      resource: resource,
      action: action,
      description: description,
    );
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
