import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;

/// Base class for all UpdateProfile states.
abstract class UpdateProfileState extends Equatable {
  const UpdateProfileState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any profile update attempt.
class UpdateProfileInitial extends UpdateProfileState {
  const UpdateProfileInitial();
}

/// State when profile update request is in progress.
class UpdateProfileLoading extends UpdateProfileState {
  const UpdateProfileLoading();
}

/// State when profile update succeeds.
class UpdateProfileSuccess extends UpdateProfileState {
  final ProfileResponseEntity profileResponse;

  const UpdateProfileSuccess(this.profileResponse);

  @override
  List<Object?> get props => [profileResponse];
}

/// State when profile update fails.
class UpdateProfileFailure extends UpdateProfileState {
  final Failure failure;

  const UpdateProfileFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
