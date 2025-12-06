import 'package:equatable/equatable.dart' show Equatable;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;

/// Base class for all UpdateAvatar states.
abstract class UpdateAvatarState extends Equatable {
  const UpdateAvatarState();

  @override
  List<Object?> get props => [];
}

/// Initial state before any avatar update attempt.
class UpdateAvatarInitial extends UpdateAvatarState {
  const UpdateAvatarInitial();
}

/// State when avatar update request is in progress.
class UpdateAvatarLoading extends UpdateAvatarState {
  const UpdateAvatarLoading();
}

/// State when avatar update succeeds.
class UpdateAvatarSuccess extends UpdateAvatarState {
  final ProfileResponseEntity profileResponse;

  const UpdateAvatarSuccess(this.profileResponse);

  @override
  List<Object?> get props => [profileResponse];
}

/// State when avatar update fails.
class UpdateAvatarFailure extends UpdateAvatarState {
  final Failure failure;

  const UpdateAvatarFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
