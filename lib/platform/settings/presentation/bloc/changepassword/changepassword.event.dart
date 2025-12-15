import 'package:equatable/equatable.dart' show Equatable;

import '../../models/changepassword.credentials.model.dart' show ChangePasswordCredentialsModel;

/// Base class for all ChangePassword events.
abstract class ChangePasswordEvent extends Equatable {
  const ChangePasswordEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits password change.
class ChangePasswordSubmitted extends ChangePasswordEvent {
  final ChangePasswordCredentialsModel credentials;

  const ChangePasswordSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
