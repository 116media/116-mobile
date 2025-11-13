import 'package:equatable/equatable.dart' show Equatable;

/// Role entity representing user authorization roles.
///
/// Domain entity for user roles in the system. Roles group permissions
/// and define what users can do in the application, including ID, name,
/// and description.
class RoleEntity extends Equatable {
  final String id;
  final String name;
  final String description;

  const RoleEntity({required this.id, required this.name, required this.description});

  @override
  List<Object?> get props => [id, name, description];
}
