import 'package:equatable/equatable.dart' show Equatable;

import '../../models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;

/// Base class for all ResendOtp events.
abstract class ResendOtpEvent extends Equatable {
  const ResendOtpEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits to resend OTP.
///
/// This event can be used across different OTP flows:
/// - Email verification
/// - Password reset
/// - Two-factor authentication
/// - Account recovery
class ResendOtpSubmitted extends ResendOtpEvent {
  final ResendOtpCredentialsModel credentials;

  const ResendOtpSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
