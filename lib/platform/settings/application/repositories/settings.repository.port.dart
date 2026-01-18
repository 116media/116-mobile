import 'dart:io' show File;

import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/changepassword-response/changepassword.response.entity.dart'
    show ChangePasswordResponseEntity;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../../presentation/models/changepassword.credentials.model.dart'
    show ChangePasswordCredentialsModel;
import '../../presentation/models/profile.model.dart' show ProfileModel;

/// Repository port (interface) for settings operations.
///
/// Handles user profile updates and password management.
abstract class ISettingsRepository {
  /// Updates user profile information.
  Future<Either<Failure, ProfileResponseEntity>> updateProfile(ProfileModel profile);

  /// Updates user avatar.
  Future<Either<Failure, ProfileResponseEntity>> updateAvatar(File avatarFile);

  /// Changes user password.
  Future<Either<Failure, ChangePasswordResponseEntity>> changePassword(
    ChangePasswordCredentialsModel credentials,
  );
}
