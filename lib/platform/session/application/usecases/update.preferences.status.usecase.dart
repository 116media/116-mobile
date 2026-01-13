import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.state.repository.port.dart' show ISessionStateRepository;

/// Use case for updating preferences setup status.
///
/// Marks preferences as configured when user completes the preferences flow.
/// This determines whether the user should see the preferences screen after onboarding.
class UpdatePreferencesStatusUseCase implements IUseCase<bool, SessionStateEntity> {
  final ISessionStateRepository _repository;

  const UpdatePreferencesStatusUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(bool completed) async {
    return await _repository.updatePreferencesStatus(completed);
  }
}
