import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../../presentation/models/profile.model.dart' show ProfileModel;

/// Port interface for settings repository.
///
/// Defines contract for profile update operations following the repository pattern.
/// Returns Either<Failure, Success> for functional error handling.
abstract class ISettingsRepository {
  /// Updates the authenticated user's profile information.
  ///
  /// Returns [Right] with [ProfileResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, ProfileResponseEntity>> updateProfile(ProfileModel profile);
}
