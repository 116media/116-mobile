import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetpassword.response.entity.freezed.dart';

/// Domain entity representing the response from a reset password request.
///
/// Contains the success status indicating whether the password
/// was successfully reset using the provided OTP code.
@freezed
abstract class ResetPasswordResponseEntity with _$ResetPasswordResponseEntity {
  const factory ResetPasswordResponseEntity({required bool isSuccess}) =
      _ResetPasswordResponseEntity;
}
