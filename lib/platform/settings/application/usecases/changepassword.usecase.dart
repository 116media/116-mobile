import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/changepassword-response/changepassword.response.entity.dart'
    show ChangePasswordResponseEntity;
import '../../presentation/models/changepassword.credentials.model.dart'
    show ChangePasswordCredentialsModel;
import '../repositories/settings.repository.port.dart' show ISettingsRepository;

/// Use case for changing authenticated user's password.
///
/// Orchestrates password change operation by delegating to the settings
/// repository. Validates current password and sets new password for the
/// authenticated user.
class ChangePasswordUseCase
    implements IUseCase<ChangePasswordCredentialsModel, ChangePasswordResponseEntity> {
  final ISettingsRepository _settingsRepository;

  const ChangePasswordUseCase(this._settingsRepository);

  @override
  Future<Either<Failure, ChangePasswordResponseEntity>> execute(
    ChangePasswordCredentialsModel request,
  ) async {
    return await _settingsRepository.changePassword(request);
  }
}
