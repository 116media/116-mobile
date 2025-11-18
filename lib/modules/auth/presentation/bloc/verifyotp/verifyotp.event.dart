import 'package:equatable/equatable.dart' show Equatable;

import '../../models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Base class for all VerifyOtp events.
abstract class VerifyOtpEvent extends Equatable {
  const VerifyOtpEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits OTP verification code.
class VerifyOtpSubmitted extends VerifyOtpEvent {
  final VerifyOtpCredentialsModel credentials;

  const VerifyOtpSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
