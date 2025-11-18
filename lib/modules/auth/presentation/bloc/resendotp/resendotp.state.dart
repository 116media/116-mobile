import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/resendotp-response/resendotp.response.entity.dart'
    show ResendOtpResponseEntity;

/// Base class for all ResendOtp states.
abstract class ResendOtpState extends Equatable {
  const ResendOtpState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any resend OTP attempt.
class ResendOtpInitial extends ResendOtpState {
  const ResendOtpInitial();
}

/// State when resend OTP request is in progress.
class ResendOtpLoading extends ResendOtpState {
  const ResendOtpLoading();
}

/// State when resend OTP succeeds.
class ResendOtpSuccess extends ResendOtpState {
  final ResendOtpResponseEntity response;

  const ResendOtpSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when resend OTP fails.
class ResendOtpFailure extends ResendOtpState {
  final Failure failure;

  const ResendOtpFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
