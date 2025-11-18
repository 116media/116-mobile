import 'package:equatable/equatable.dart' show Equatable;

import '../../models/forgotpassword.credentials.model.dart' show ForgotPasswordCredentialsModel;

/// Base class for all ForgotPassword events.
abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user requests password reset.
///
/// Initiates the forgot password flow by sending a password reset OTP
/// to the user's email address.
class ForgotPasswordRequested extends ForgotPasswordEvent {
  final ForgotPasswordCredentialsModel credentials;

  const ForgotPasswordRequested(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
