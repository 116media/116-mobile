import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.repository.port.dart' show ISessionRepository;

/// Use case for clearing session data (logout).
///
/// Resets the session to initial state, removing authentication and
/// setting status to guest. Used during logout flow.
class ClearSessionUseCase implements IUseCase<void, SessionStateEntity> {
  final ISessionRepository _repository;

  const ClearSessionUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(void request) async {
    return await _repository.clearSession();
  }
}
