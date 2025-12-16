import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all SignOut events.
abstract class SignOutEvent extends Equatable {
  const SignOutEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user initiates sign out.
class SignOutSubmitted extends SignOutEvent {
  const SignOutSubmitted();
}
