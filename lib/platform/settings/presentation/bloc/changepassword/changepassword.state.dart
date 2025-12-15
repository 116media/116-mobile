import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/changepassword-response/changepassword.response.entity.dart'
    show ChangePasswordResponseEntity;

/// Base class for all ChangePassword states.
abstract class ChangePasswordState extends Equatable {
  const ChangePasswordState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any password change attempt.
class ChangePasswordInitial extends ChangePasswordState {
  const ChangePasswordInitial();
}

/// State when password change request is in progress.
class ChangePasswordLoading extends ChangePasswordState {
  const ChangePasswordLoading();
}

/// State when password change succeeds.
class ChangePasswordSuccess extends ChangePasswordState {
  final ChangePasswordResponseEntity response;

  const ChangePasswordSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// State when password change fails.
class ChangePasswordFailure extends ChangePasswordState {
  final Failure failure;

  const ChangePasswordFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
