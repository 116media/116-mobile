import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.repository.port.dart' show ISessionRepository;

/// Use case for retrieving the current session state.
///
/// Returns the current state of user session including onboarding,
/// preferences, and authentication status. Used for initial app
/// routing and access control decisions.
class GetSessionStateUseCase implements IUseCase<void, SessionStateEntity> {
  final ISessionRepository _repository;

  const GetSessionStateUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(void request) async {
    return await _repository.getSessionState();
  }
}
