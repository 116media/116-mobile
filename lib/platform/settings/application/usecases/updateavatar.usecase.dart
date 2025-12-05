import 'dart:io' show File;

import 'package:cent16/platform/settings/application/constants/avatar.cloudinary.constants.dart'
    show kAvatarsFolderName, kAvatarsUploadPreset;
import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/services/cloudinary/cloudinary.service.port.dart'
    show CloudinaryService;
import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../repositories/settings.repository.port.dart' show ISettingsRepository;

/// Use case for updating user avatar.
///
/// Orchestrates the avatar update operation by:
/// 1. Uploading the image file to Cloudinary
/// 2. Calling the repository to update the avatar URL via API
/// 3. Updating the local cache with the new user data
///
/// Follows the single responsibility principle and clean architecture patterns.
class UpdateAvatarUseCase implements IUseCase<File, ProfileResponseEntity> {
  final CloudinaryService _cloudinaryService;
  final ISettingsRepository _settingsRepository;

  const UpdateAvatarUseCase(this._cloudinaryService, this._settingsRepository);

  @override
  Future<Either<Failure, ProfileResponseEntity>> execute(File avatarFile) async {
    final avatarUrl = await _cloudinaryService.uploadImage(
      avatarFile,
      kAvatarsFolderName,
      kAvatarsUploadPreset,
    );
    return await _settingsRepository.updateAvatar(avatarUrl);
  }
}
