import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;

/// Base class for all VerifyOtp states.
abstract class VerifyOtpState extends Equatable {
  const VerifyOtpState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any OTP verification attempt.
class VerifyOtpInitial extends VerifyOtpState {
  const VerifyOtpInitial();
}

/// State when OTP verification request is in progress.
class VerifyOtpLoading extends VerifyOtpState {
  const VerifyOtpLoading();
}

/// State when OTP verification succeeds.
class VerifyOtpSuccess extends VerifyOtpState {
  final VerifyOtpResponseEntity response;

  const VerifyOtpSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when OTP verification fails.
class VerifyOtpFailure extends VerifyOtpState {
  final Failure failure;

  const VerifyOtpFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
