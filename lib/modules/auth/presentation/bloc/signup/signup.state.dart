import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;

/// Base class for all SignUp states.
abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any sign up attempt.
class SignUpInitial extends SignUpState {
  const SignUpInitial();
}

/// State when sign up request is in progress.
class SignUpLoading extends SignUpState {
  const SignUpLoading();
}

/// State when sign up succeeds.
class SignUpSuccess extends SignUpState {
  final AuthResponseEntity authResponse;

  const SignUpSuccess(this.authResponse);

  @override
  List<Object?> get props => [authResponse];
}

/// State when sign up fails.
class SignUpFailure extends SignUpState {
  final Failure failure;

  const SignUpFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
