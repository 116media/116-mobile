import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/resetpassword-response/resetpassword.response.entity.dart'
    show ResetPasswordResponseEntity;

/// Base class for all ResetPassword states.
abstract class ResetPasswordState extends Equatable {
  const ResetPasswordState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any password reset attempt.
class ResetPasswordInitial extends ResetPasswordState {
  const ResetPasswordInitial();
}

/// State when password reset request is in progress.
class ResetPasswordLoading extends ResetPasswordState {
  const ResetPasswordLoading();
}

/// State when password reset succeeded.
class ResetPasswordSuccess extends ResetPasswordState {
  final ResetPasswordResponseEntity response;

  const ResetPasswordSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when password reset failed.
class ResetPasswordFailure extends ResetPasswordState {
  final Failure failure;

  const ResetPasswordFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
