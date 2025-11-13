import 'package:equatable/equatable.dart' show Equatable;

import '../../models/signup.credentials.model.dart' show SignUpCredentialsModel;

/// Base class for all SignUp events.
abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits sign up credentials.
class SignUpSubmitted extends SignUpEvent {
  final SignUpCredentialsModel credentials;

  const SignUpSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
