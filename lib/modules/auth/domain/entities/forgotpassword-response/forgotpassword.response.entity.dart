import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword.response.entity.freezed.dart';

/// Domain entity representing the response from a forgot password request.
///
/// Contains the success status and email indicating whether a password
/// reset OTP was successfully sent to the user's email.
@freezed
abstract class ForgotPasswordResponseEntity with _$ForgotPasswordResponseEntity {
  const factory ForgotPasswordResponseEntity({
    required String email,
    required bool isSuccess,
  }) = _ForgotPasswordResponseEntity;
}