import 'package:equatable/equatable.dart' show Equatable;

import '../../models/profile.model.dart' show ProfileModel;

/// Base class for all UpdateProfile events.
abstract class UpdateProfileEvent extends Equatable {
  const UpdateProfileEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits profile update.
class UpdateProfileSubmitted extends UpdateProfileEvent {
  final ProfileModel profile;

  const UpdateProfileSubmitted(this.profile);

  @override
  List<Object?> get props => [profile];
}
