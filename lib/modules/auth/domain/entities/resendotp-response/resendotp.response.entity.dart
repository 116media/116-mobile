import 'package:freezed_annotation/freezed_annotation.dart';

part 'resendotp.response.entity.freezed.dart';

/// Domain entity representing the response from a resend OTP request.
///
/// Contains the success status indicating whether a new OTP
/// was successfully sent to the user's email.
@freezed
abstract class ResendOtpResponseEntity with _$ResendOtpResponseEntity {
  const factory ResendOtpResponseEntity({required bool isSuccess}) = _ResendOtpResponseEntity;
}
