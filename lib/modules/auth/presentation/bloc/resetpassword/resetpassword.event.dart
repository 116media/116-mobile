import 'package:equatable/equatable.dart' show Equatable;

import '../../models/resetpassword.credentials.model.dart' show ResetPasswordCredentialsModel;

/// Base class for all ResetPassword events.
abstract class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits password reset with OTP code.
///
/// Initiates the password reset flow by validating the OTP code
/// and updating the user's password to the new password provided.
class ResetPasswordSubmitted extends ResetPasswordEvent {
  final ResetPasswordCredentialsModel credentials;

  const ResetPasswordSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
