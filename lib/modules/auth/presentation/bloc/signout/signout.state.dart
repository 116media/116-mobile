import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;

/// Base class for all SignOut states.
abstract class SignOutState extends Equatable {
  const SignOutState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any sign out attempt.
class SignOutInitial extends SignOutState {
  const SignOutInitial();
}

/// State when sign out request is in progress.
class SignOutLoading extends SignOutState {
  const SignOutLoading();
}

/// State when sign out succeeds.
class SignOutSuccess extends SignOutState {
  final SignOutResponseEntity response;

  const SignOutSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when sign out fails.
class SignOutFailure extends SignOutState {
  final Failure failure;

  const SignOutFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
