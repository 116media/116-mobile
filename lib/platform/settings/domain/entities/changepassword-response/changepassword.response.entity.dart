import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepassword.response.entity.freezed.dart';

/// Domain entity representing the response from a change password request.
///
/// Contains the success status indicating whether the password
/// was successfully changed or not.
@freezed
abstract class ChangePasswordResponseEntity with _$ChangePasswordResponseEntity {
  const factory ChangePasswordResponseEntity({required bool isSuccess}) =
      _ChangePasswordResponseEntity;
}
