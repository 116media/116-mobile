import 'dart:io' show File;

import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all UpdateAvatar events.
abstract class UpdateAvatarEvent extends Equatable {
  const UpdateAvatarEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when user submits avatar update.
class UpdateAvatarSubmitted extends UpdateAvatarEvent {
  final File avatarFile;

  const UpdateAvatarSubmitted(this.avatarFile);

  @override
  List<Object?> get props => [avatarFile];
}
