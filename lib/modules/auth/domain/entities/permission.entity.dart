/// Permission entity representing granular access rights.
///
/// Domain entity for individual permissions assigned to users or roles.
/// Permissions define specific actions users can perform on resources,
/// including ID, resource name, action type, and description.
class PermissionEntity {
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
}
