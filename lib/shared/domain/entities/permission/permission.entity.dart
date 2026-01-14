import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission.entity.freezed.dart';

/// Permission entity representing granular access rights.
///
/// Domain entity for individual permissions assigned to users or roles.
/// Permissions define specific actions users can perform on resources,
/// including ID, resource name, action type, and description.
@freezed
abstract class PermissionEntity with _$PermissionEntity {
  const factory PermissionEntity({
    required String id,
    required String resource,
    required String action,
    required String description,
  }) = _PermissionEntity;
}
