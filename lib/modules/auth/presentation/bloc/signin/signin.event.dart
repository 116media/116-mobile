import 'package:equatable/equatable.dart' show Equatable;

import '../../models/signin.credentials.model.dart' show SignInCredentialsModel;

/// Base class for all SignIn events.
abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits sign in credentials.
class SignInSubmitted extends SignInEvent {
  final SignInCredentialsModel credentials;

  const SignInSubmitted(this.credentials);

  @override
  List<Object?> get props => [credentials];
}
