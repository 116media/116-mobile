import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all FacebookSignIn events.
abstract class FacebookSignInEvent extends Equatable {
  const FacebookSignInEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits Facebook sign-in request.
class FacebookSignInSubmitted extends FacebookSignInEvent {
  const FacebookSignInSubmitted();
}
