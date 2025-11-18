import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifyotp.response.entity.freezed.dart';

/// Domain entity representing the response from an OTP verification request.
///
/// Contains the verification status indicating whether the OTP
/// was successfully verified.
@freezed
abstract class VerifyOtpResponseEntity with _$VerifyOtpResponseEntity {
  const factory VerifyOtpResponseEntity({required bool isSuccess}) = _VerifyOtpResponseEntity;
}
