import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.entity.freezed.dart';

/// Role entity representing user authorization roles.
///
/// Domain entity for user roles in the system. Roles group permissions
/// and define what users can do in the application, including ID, name,
/// and description.
@freezed
abstract class RoleEntity with _$RoleEntity {
  const factory RoleEntity({
    required String id,
    required String name,
    required String description,
  }) = _RoleEntity;
}
