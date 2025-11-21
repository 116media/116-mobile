import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;

/// Base class for all FacebookSignIn states.
abstract class FacebookSignInState extends Equatable {
  const FacebookSignInState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any Facebook sign-in attempt.
class FacebookSignInInitial extends FacebookSignInState {
  const FacebookSignInInitial();
}

/// State when Facebook sign-in request is in progress.
class FacebookSignInLoading extends FacebookSignInState {
  const FacebookSignInLoading();
}

/// State when Facebook sign-in succeeds.
class FacebookSignInSuccess extends FacebookSignInState {
  final AuthResponseEntity authResponse;

  const FacebookSignInSuccess(this.authResponse);

  @override
  List<Object?> get props => [authResponse];
}

/// State when Facebook sign-in fails.
class FacebookSignInFailure extends FacebookSignInState {
  final Failure failure;

  const FacebookSignInFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
