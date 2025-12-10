import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../../presentation/models/profile.model.dart' show ProfileModel;
import '../repositories/settings.repository.port.dart' show ISettingsRepository;

/// Use case for updating user profile information.
///
/// Orchestrates the profile update operation by delegating to the repository.
/// Follows the single responsibility principle - handles only profile update logic.
class UpdateProfileUseCase implements IUseCase<ProfileModel, ProfileResponseEntity> {
  final ISettingsRepository _settingsRepository;

  const UpdateProfileUseCase(this._settingsRepository);

  @override
  Future<Either<Failure, ProfileResponseEntity>> execute(ProfileModel profile) async {
    return await _settingsRepository.updateProfile(profile);
  }
}
