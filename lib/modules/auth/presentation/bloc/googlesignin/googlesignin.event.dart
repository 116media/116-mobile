import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all GoogleSignIn events.
abstract class GoogleSignInEvent extends Equatable {
  const GoogleSignInEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits Google sign-in request.
class GoogleSignInSubmitted extends GoogleSignInEvent {
  const GoogleSignInSubmitted();
}
