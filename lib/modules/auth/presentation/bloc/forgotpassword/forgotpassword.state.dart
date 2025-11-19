import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/forgotpassword-response/forgotpassword.response.entity.dart'
    show ForgotPasswordResponseEntity;

/// Base class for all ForgotPassword states.
abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any forgot password attempt.
class ForgotPasswordInitial extends ForgotPasswordState {
  const ForgotPasswordInitial();
}

/// State when forgot password request is in progress.
class ForgotPasswordLoading extends ForgotPasswordState {
  const ForgotPasswordLoading();
}

/// State when forgot password succeeds.
class ForgotPasswordSuccess extends ForgotPasswordState {
  final ForgotPasswordResponseEntity response;

  const ForgotPasswordSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when forgot password fails.
class ForgotPasswordFailure extends ForgotPasswordState {
  final Failure failure;

  const ForgotPasswordFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
