import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.state.repository.port.dart' show ISessionStateRepository;

/// Use case for updating onboarding completion status.
///
/// Marks onboarding as completed when user finishes the onboarding flow.
/// This determines whether the user should see the onboarding screen on app launch.
class UpdateOnboardingStatusUseCase implements IUseCase<bool, SessionStateEntity> {
  final ISessionStateRepository _repository;

  const UpdateOnboardingStatusUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(bool completed) async {
    return await _repository.updateOnboardingStatus(completed);
  }
}
