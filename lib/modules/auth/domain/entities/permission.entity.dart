import 'package:equatable/equatable.dart' show Equatable;

/// Permission entity representing granular access rights.
///
/// Domain entity for individual permissions assigned to users or roles.
/// Permissions define specific actions users can perform on resources,
/// including ID, resource name, action type, and description.
class PermissionEntity extends Equatable {
  final String id;
  final String resource;
  final String action;
  final String description;

  const PermissionEntity({
    required this.id,
    required this.resource,
    required this.action,
    required this.description,
  });

  @override
  List<Object?> get props => [id, resource, action, description];
}
