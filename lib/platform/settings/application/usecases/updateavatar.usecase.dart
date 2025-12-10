import 'dart:io' show File;

import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../repositories/settings.repository.port.dart' show ISettingsRepository;

/// Use case for updating user avatar.
///
/// Orchestrates the avatar update operation by:
/// 1. Calling the repository to upload the file via multipart form-data
/// 2. The backend handles Cloudinary upload automatically
/// 3. Updating the local cache with the new user data
///
/// Follows the single responsibility principle and clean architecture patterns.
class UpdateAvatarUseCase implements IUseCase<File, ProfileResponseEntity> {
  final ISettingsRepository _settingsRepository;

  const UpdateAvatarUseCase(this._settingsRepository);

  @override
  Future<Either<Failure, ProfileResponseEntity>> execute(File avatarFile) async {
    return await _settingsRepository.updateAvatar(avatarFile);
  }
}
