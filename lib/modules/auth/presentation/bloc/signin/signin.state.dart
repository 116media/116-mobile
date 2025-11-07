import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../core/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;

/// Base class for all SignIn states.
abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any sign in attempt.
class SignInInitial extends SignInState {
  const SignInInitial();
}

/// State when sign in request is in progress.
class SignInLoading extends SignInState {
  const SignInLoading();
}

/// State when sign in succeeds.
class SignInSuccess extends SignInState {
  final AuthResponseEntity authResponse;

  const SignInSuccess(this.authResponse);

  @override
  List<Object?> get props => [authResponse];
}

/// State when sign in fails.
class SignInFailure extends SignInState {
  final Failure failure;

  const SignInFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
