import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;

/// Base class for all GoogleSignIn states.
abstract class GoogleSignInState extends Equatable {
  const GoogleSignInState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any Google sign-in attempt.
class GoogleSignInInitial extends GoogleSignInState {
  const GoogleSignInInitial();
}

/// State when Google sign-in request is in progress.
class GoogleSignInLoading extends GoogleSignInState {
  const GoogleSignInLoading();
}

/// State when Google sign-in succeeds.
class GoogleSignInSuccess extends GoogleSignInState {
  final AuthResponseEntity authResponse;

  const GoogleSignInSuccess(this.authResponse);

  @override
  List<Object?> get props => [authResponse];
}

/// State when Google sign-in fails.
class GoogleSignInFailure extends GoogleSignInState {
  final Failure failure;

  const GoogleSignInFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
